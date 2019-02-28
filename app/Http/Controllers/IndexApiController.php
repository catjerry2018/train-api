<?php
namespace App\Http\Controllers;
use App\Http\px_paike;
use App\Http\px_type;
use App\Http\px_user;
use App\Http\ApiFun;
use App\Http\v_paike;
use App\Http\v_user;
use App\Http\px_comp;
use Cookie;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;
use DB;


class IndexApiController extends ApiController
{

//登录
    public function login()
    {
        $pwdinput = md5(request('password'));
        $userinfo = v_user::where('mobile', request('mobile'))->where('password', $pwdinput)->get();

        if ($userinfo->count()==1) {
          return $userinfo;
        }else{
            return "0";
        }
    }

 //今日课程
    public function todaykelist($tid,$sbz=0){
        $apis=new ApiFun();

      $newlist=$apis->getNewKelist($tid,$sbz);
      $nowlist=$apis->getNowKelist($tid,$sbz);

      return '{"newlist":'.$newlist.',"nowlist":'.$nowlist.'}';

    }

    //管理待审批课程
    public function applykelist($compid){
        $apis=new ApiFun();
        $applylist=$apis->getKelist($compid);
        return $applylist;
    }

    //某个教师的历史课程
    public function history($id,$sbz=0){
        $apis=new ApiFun();
        return $apis->getoldKelist($id,$sbz);
    }

//课程状态的处理
    public function applyke($utype){

        $input=Input::all();

        $tid=Input::get("teacher");
        $sid=Input::get("stuname");
        $ok=Input::get("ok")+1;
        $ID=Input::get("ID");

        //管理员自己上课申请 直接审批
        if($utype==1 && $ok==4){
            $input['ok']=10;
            px_paike::where('ID',$ID)->update($input);
            return "../today/index";
        }

        if($utype==2 && $ok==4){
            $input=Input::except('_token');
            px_paike::where('ID',$ID)->update($input);
            return "../today/index";//本页面
        }
        //扣除可用课数ID
        if($ok==3){
            px_user::where('ID',$sid)->decrement('kecs',1);
        }
        px_paike::where('id',$ID)->update(array('ok'=>$ok));
        if($ok==2 && $utype==1){
            return "../apply/index";
        }
        return "../today/index";//本页面

    }



    public function report($compid=1){
        $apis=new ApiFun();
        $input=Input::all();

        $tid=$input["tid"];
        $sid=$input["sid"];
        $m=$input["m"];

        return $apis->getReport($tid,$sid,$m,$compid);

    }
//0 all 2teacher 3 studend   $no=1表示不取无效用户
    public function getuserlist($op,$compid,$no=0)
    {
        $apis = new ApiFun();
        $res=$apis->UserList($op,$compid,$no);
      return $res;
    }

//修改密码

    public function pass(){

        if(Input::get('oldpassword')!==null) {
            $pwdinput = md5(Input::get('oldpassword'));
            $input=Input::all();
            $re = px_user::where('mobile',$input['mobile'])->where('password', $pwdinput)->update(['password'=>md5($input['password'])]);

            if($re>0){
                return "1";
            }
        }

        return "0";
    }



    //新增用户或教练
    public  function adduser()
    {
        $input=Input::all();
        $re=px_user::create($input);
        return "0";
    }

    //修改用户或教练
    public  function saveuser()
    {
        $input=Input::all();
        $del=$input['vaild'];

        if($del=="X"){
            $deleted = px_user::where('ID', $input['ID'])->delete();
        }else{
            $re=px_user::where('ID',$input['ID'])->update($input);
        }

        return "0";
    }



    public function paike($compid,$w){


        $apis = new ApiFun();
        //$w   0代表本周  1上周  2上周
        $date1=$apis->getWeekStart($w); //$w周开始日期
        $date2=date('Y-m-d',strtotime("$date1 +6 days"));//$w周结束日期
        $date0=date('Y-m-d');//今天

        $pk=[];
        $weeklist=["一","二","三","四","五","六","日"];
        for ($i = 0; $i < 7; $i++){

            $dqdate=date('Y-m-d',strtotime("$date1 +$i days"));
            $data=$apis->WeekData($compid,$dqdate);

            $timebz=0;
            if($dqdate<$date0){
                $timebz=1;  //过期
            }

            $pk[$i]=[
             'weekdate'=>$dqdate.' | 周'.$weeklist[$i],
             'pklist'=> $data,
             'timebz'=>  $timebz,
			 'kedate'=>$dqdate,
			 'compid'=>$compid
            ];
        }

       return $pk;
    }


    //
    public function updatepk(){

        $del=Input::get("ketype");

        $input=Input::except("pageweek");

        if($del=="X"){

            $deleted = px_paike::where('ID', $input['ID'])->delete();
            if($deleted){
                return "0";
            }else{
                return "1";
            };
        }

		
      

        $re=px_paike::where('ID',$input['ID'])->update($input); 

   
        if($re){
            return "0";
           
        }else{
           return "1";
        };
    }



    //增加排课
    public function addpk(){

        $kedate=Input::get("kedate");
		$compid=Input::get("compid");

        $re=px_paike::where('kedate',$kedate)->where('compid',$compid);//当天的排课

        $lsre=px_paike::where('kedate',date("Y/m/d",strtotime("-7 day",strtotime($kedate))))->where('compid',$compid); //拷贝上个礼拜的排课



        if($re->count()>0){ //如果当天有了排课 只拷贝最新的一条 否则拷贝上个礼拜的排课
            $sql="Insert into px_paike(stuname,starthour,teacher,ketype,slevel,tlevel,kedate,compid) select stuname,starthour,teacher,ketype,slevel,tlevel,'$kedate',compid from px_paike where compid=$compid ORDER BY id desc limit 1";
        }else{

			if($lsre->count()==0){
			//插入空记录
               $sql="Insert into px_paike(kedate,compid)values('$kedate',$compid)";
			}else{
			//拷贝上周数据
			  $sql="Insert into px_paike(stuname,starthour,teacher,ketype,slevel,tlevel,kedate,compid) select stuname,starthour,teacher,ketype,slevel,tlevel,'$kedate',compid from px_paike  where compid=$compid and kedate='".date("Y/m/d",strtotime("-7 day",strtotime($kedate)))."'";
			}
          
        }



     DB::insert($sql);

	 return "0";

    }


    //注册公司
    public function reg(){
        $compn=Input::get("compn");
        $usn=Input::get("user");
        $mobile=Input::get("mobile");

        $user = new px_user();
        $user->usr = $usn;
        $user->usrtype=1;
        $user->level=0;
        $user->mobile = $mobile;
        $user->save();

        $uid = $user->ID;


        $comp = new px_comp();
        $comp->compn = $compn;
        $comp->userid = $uid;
        $comp->save();
        $compid = $comp->ID;

        $user->compid=$compid;
        $user->save();

        return "0";


    }


  public function copylastpk($w,$compid){

      $apis = new ApiFun();
      $date1=$apis->getWeekStart($w); //$w当前周开始日期
      $w=$w-1;
      $date2=$apis->getWeekStart($w); //$w上周开始日期
      //拷贝上周数据
      for ($i = 0; $i < 7; $i++) {
          $dqdate1 = date('Y-m-d', strtotime("$date1 +$i days")); //$w当前周当前日期
          $dqdate2 = date('Y-m-d', strtotime("$date2 +$i days"));//$w上周当前日期

          $sql="Insert into px_paike(stuname,starthour,teacher,ketype,slevel,tlevel,kedate,compid) select stuname,starthour,teacher,ketype,slevel,tlevel,'$dqdate1',compid from px_paike  where compid=$compid and kedate='".$dqdate2."'";
          DB::insert($sql);
      }
      return "0";

  }



    public function gettype($compid){
      if($compid==null || $compid==""){
          return  "x";
      }
      $typelist=px_type::where('compid',$compid);
      if($typelist->count()==0){
          return px_type::where('compid',0)->get();
      }else{
          return $typelist->get();
      }

    }

    public function updatetype($compid){
        $input=Input::all();
        if(px_type::where('compid',$compid)->count()==1){
            px_type::where('compid',$compid)->update($input);
        }else{
            px_type::create($input);
        }
        return 0;
    }


}