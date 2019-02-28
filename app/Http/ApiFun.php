<?php
/**
 * Created by PhpStorm.
 * User: IBM
 * Date: 2016/12/20
 * Time: 16:03
 */

namespace App\Http;
use DB;
use Cookie;


class ApiFun
{



    //列举用户
    public  function UserList($utype,$compid,$no){
        if($utype==2){
            $res=px_user::where('usrtype','<=',$utype)->where('compid',$compid)->orderBy('ID','desc');
        }else{
            $res=px_user::where('usrtype',$utype)->where('compid',$compid)->orderBy('ID','desc');
        }
        if($no==1){
            $res=$res->where('vaild','有效');
        }

       return $res->get();
    }

//返回某一天的数据
    public  function WeekData($compid,$xq){
        //清楚过期数据
        $date=date('Y-m-d');
       $data= v_paike::where('kedate',$xq)->where('compid',$compid)->orderBy('starthour','asc')->get();
        return $data;
    }



    public  function getWeekStart($w)
    {

        $date=date('Y-m-d');  //当前日期
        $first=1; //$first =1 表示每周星期一为开始日期 0表示每周日为开始日期
        $ws=date('w',strtotime($date));  //获取当前周的第几天 周日是 0 周一到周六是 1 - 6
        $now_start=date('Y-m-d',strtotime("$date -".($ws ? $ws - $first : 6).' days')); //获取本周开始日期，如果$w是0，则表示周日，减去 6 天
        if($w<0){
            $w=abs($w);
            $w=$w*7;
            $last_start=date('Y-m-d',strtotime("$now_start - $w days"));  //上周开始日期
        }else{
            $w=$w*7;
            $last_start=date('Y-m-d',strtotime("$now_start + $w days"));  //上周开始日期
        }

        return $last_start;
    }

//0未上课  1 审核中  2上课中 3上课结束待评价 10 完成

//未完成课程
    public  function getNewKelist($id,$sbz=0)
    {
        if($sbz==0){
            return v_paike::where("tid",$id)->where("ok",0)->whereDate("kedate",'>',date("Y/m/d"))->get();
        }else{
            return v_paike::where("sid",$id)->where("ok",0)->whereDate("kedate",'>',date("Y/m/d"))->get();
        }

    }
//已完成上课
    public function getoldKelist($id,$sbz=0)
    {
        if($sbz==0){
            return v_paike::where("tid",$id)->where("ok",10)->orderBy("ID",'desc')->get();
        }else{
            return v_paike::where("sid",$id)->where("ok",10)->orderBy("ID",'desc')->get();
        }

    }
//今日需上课
    public  function getNowKelist($id,$sbz=0)
    {
        if($sbz==0){
            $noend=v_paike::where("tid",$id)->where("ok",'<',9)->where("ok",'>',0)->whereBetween("kedate", [date("Y/m/d",strtotime("-3 day")), date("Y/m/d")])->orderBy('starthour');
            $today=v_paike::where("tid",$id)->where("ok",0)->whereDate("kedate",date("Y/m/d"))->orderBy('starthour');
        }else{
            $noend=v_paike::where("sid",$id)->where("ok",'<',9)->where("ok",'>',0)->whereBetween("kedate", [date("Y/m/d",strtotime("-3 day")), date("Y/m/d")])->orderBy('starthour');
            $today=v_paike::where("sid",$id)->where("ok",0)->whereDate("kedate",date("Y/m/d"))->orderBy('starthour');
        }



        return $noend->unionAll($today)->get();
    }


    //今日需审核课
    public  function getKelist($compid)
    {
        return v_paike::where("ok",'>',0)->where('ok','<',4)->where('compid',$compid)->orderBy('starthour')->get();
    }


    //综合报表
    public  function getReport($tid,$sid,$m,$compid)
    {

        $sql="select ketype,teacher,tlevel,count(distinct heke) as kecs from v_paike where ok>2 and MONTH(kedate)=$m and compid=$compid";

        if($tid>0){$sql=$sql." and tid=$tid";}

        if($sid>0){$sql=$sql." and sid=$sid";};

        $sql=$sql." group BY ketype,teacher,tlevel";


        return DB::select($sql);
    }




public function test(){
        return "1111";
}





}
