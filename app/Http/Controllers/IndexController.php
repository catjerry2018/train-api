<?php
namespace App\Http\Controllers;
use App\Http\px_paike;
use App\Http\px_user;
use App\Http\PxFun;
use App\Http\v_paike;
use Cookie;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;
use DB;


class IndexController extends Controller
{

    //
    public function index($w){
        //$w   0代表本周  1上周  2上周
        $date1=PxFun::getWeekStart($w);
        $date2=date('Y-m-d',strtotime("$date1 +6 days"));
        return view('index')->with("w",$w)->with("date1",$date1)->with("date2",$date2);
     }



    //
    public function updatepk($id){

        $del=Input::get("ketype");

        $w=Input::get("w");
        $input=Input::except('_token','w');

        if($del=="X"){

            $deleted = px_paike::where('ID', $input['ID'])->delete();
            if($deleted){
                echo '删除成功';
                return redirect("../paike/$w");
            }else{
                echo '修改失败,请退回！';
            };
        }
        //dd($input);
        $re=px_paike::where('ID',$input['ID'])->update($input);
        if($re){
            echo '修改成功';
            return redirect("../paike/$w");
        }else{
            echo '修改失败,请退回！';
        };
    }



    //增加排课
    public function addpk(){

        $kedate=Input::get("kedate");
        $re=px_paike::where('kedate',$kedate);

        $lsre=px_paike::where('kedate',date("Y/m/d",strtotime("-7 day",strtotime($kedate))));



        if($re->count()>0||$lsre->count()==0){
            $sql="Insert into px_paike(stuname,starthour,teacher,ketype,slevel,tlevel,kedate) select stuname,starthour,1,ketype,slevel,0,'$kedate' from px_paike ORDER BY id desc limit 1";
        }else{
            $sql="Insert into px_paike(stuname,starthour,teacher,ketype,slevel,tlevel,kedate) select stuname,starthour,teacher,ketype,slevel,tlevel,'$kedate' from px_paike  where kedate='".date("Y/m/d",strtotime("-7 day",strtotime($kedate)))."'";
        }

     DB::insert($sql);
     return redirect("../paike/0");

    }


    //新增用户或教练
    public static function adduser($usrtype)
    {
        $input=Input::except('_token');
        $re=px_user::create($input);

        return redirect("../user/$usrtype");

    }

    //
    public static function saveuser($usrtype)
    {
        $input=Input::except('_token');

        $del=$input['vaild'];

        if($del=="X"){

            $deleted = px_user::where('ID', $input['ID'])->delete();
            if($deleted){
                echo '删除成功';
                return redirect("../user/$usrtype");
            }else{
                echo '修改失败,请退回！';
            };
        }

        $re=px_user::where('ID',$input['ID'])->update($input);
        return redirect("../user/$usrtype");

    }
    
    
    //用户登录
    
    public function login(){

        if($input=Input::all()) {
           $pwdinput = md5($input['password']);

           $userinfo = DB::table('px_user')->where('mobile', $input['mobile'])->first();

        //dd($userinfo);

        if($userinfo) {
            $pwdsql = $userinfo->password;
            $uid = $userinfo->ID;
            $user = $userinfo->usr;
            $utype = $userinfo->usrtype;
            $mb = $userinfo->mobile;

            if($pwdinput==$pwdsql){
                Cookie::queue('uid',$uid,3600000);
                Cookie::queue('user',$user,3600000);
                Cookie::queue('utype',$utype,3600000);
                Cookie::queue('umb',$mb,3600000);
                return redirect('/');
            }else{
            echo "<Script>window.alert('登录错误');history.go(-1);</Script>";
            }
        }
      }
 }

	
	public function loginout(){
	    Cookie::queue('uid',null,-1);
	    Cookie::queue('user',null,-1);
        Cookie::queue('utype',null,-1);
        Cookie::queue('umb',null,-1);
	    return redirect()->back();
	    //return redirect('/');
	}


    public function userlist($usrtype){
        $usn=$usrtype==2?"教练":"学生";
        return view('user')->with("usrtype",$usrtype)->with("usn",$usn);
    }


    public function menu(){
        return view('menu');


    }



    public function kecheng($id){
        return view('kelist')->with("tid",$id);
    }

    public function history($id){
        return view('history')->with("tid",$id);
    }


    public function applyke(){

       // $sql="update px_paike set ok=9 where id=$id";
        $tid=Input::get("teacher");
        $sid=Input::get("stuname");
        $ok=Input::get("ok")+1;

        if(Cookie::get("utype")==1 && $ok==4){
            $input=Input::except('_token');
            $input['ok']=10;
            px_paike::where('ID',Input::get("ID"))->update($input);
            return redirect("../adminke/0");
        }

        if(Cookie::get("utype")==2 && $ok==4){
            $input=Input::except('_token');
            px_paike::where('ID',Input::get("ID"))->update($input);
            return redirect("../kecheng/$tid");
        }
        //扣除可用课数ID
        if($ok==3){
            px_user::where('ID',$sid)->decrement('kecs',1);
        }

        px_paike::where('id',Input::get("ID"))->update(array('ok'=>$ok));

        if($ok==2){
            return redirect("../adminke/0");
        }
            return redirect("../kecheng/$tid");
    }

    public function getreport(){
        return view('report')->with("tid",Input::get("tid"))->with('sid',Input::get("sid"))->with('m',Input::get("m"));
    }


    public function myprofile(){

        if(Input::get('oldpassword')!==null) {
            $pwdinput = md5(Input::get('oldpassword'));
            $input=Input::except('_token','oldpassword');
            $re = px_user::where('mobile',Cookie::get('umb'))->where('password', $pwdinput)->update(['password'=>md5($input['password'])]);

            if($re>0){
                return redirect("../");
            }else{
                echo "<Script>window.alert('密码修改不成功,请检查输入！');</Script>";
            }
        }

        return view('my');
    }

    public function keping($id){

        $ke=v_paike::find($id);
        return view('keping',compact('ke'));
    }


}




