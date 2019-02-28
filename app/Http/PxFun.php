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


class PxFun
{

    //列举指定周的星期
    public static function WeekList($w){

        //获取本周开始日期

        if(KomFun::iszh()){
            $sql= "select areaEN,area as xsm from area where area_ID=0 order by clickcs desc limit $num";
        }else{
            $sql= "select areaEN,areaEN as xsm from area where area_ID=0 order by clickcs desc limit $num";
        }
      return DB::select($sql);
    }


    //列举用户
    public static function UserList($utype,$id){
        if($utype==2){

            $sql="SELECT * from px_user WHERE id<>$id and usrtype<=$utype";
        }else{
            $sql="SELECT * from px_user WHERE id<>$id and usrtype=$utype";
        }

       return DB::select($sql);
    }
//返回某一周的数据
    public static function WeekData($w,$xq){

        $sql="SELECT * from v_paike WHERE kedate='$xq' order by starthour asc";

        return DB::select($sql);
    }



    public static function getWeekStart($w)
    {
        $date=date('Y-m-d');  //当前日期
        $first=1; //$first =1 表示每周星期一为开始日期 0表示每周日为开始日期
        $ws=date('w',strtotime($date));  //获取当前周的第几天 周日是 0 周一到周六是 1 - 6
        $now_start=date('Y-m-d',strtotime("$date -".($ws ? $ws - $first : 6).' days')); //获取本周开始日期，如果$w是0，则表示周日，减去 6 天
        $w=$w*7;
        $last_start=date('Y-m-d',strtotime("$now_start - $w days"));  //上周开始日期

        return $last_start;
    }

//0未上课  1 审核中  2上课中 3上课结束待评价 10 完成

//未完成课程
    public static function getNewKelist($id)
    {
        return v_paike::where("tid",$id)->where("ok",0)->whereDate("kedate",'>',date("Y/m/d"))->get();
    }
//已完成上课
    public static function getoldKelist($id)
    {
        return v_paike::where("tid",$id)->where("ok",10)->get();
    }
//今日需上课
    public static function getNowKelist($id)
    {
        $noend=v_paike::where("tid",$id)->where("ok",'<',9)->where("ok",'>',0)->whereBetween("kedate", [date("Y/m/d",strtotime("-3 day")), date("Y/m/d")])->orderBy('starthour');
        $today=v_paike::where("tid",$id)->where("ok",0)->whereDate("kedate",date("Y/m/d"))->orderBy('starthour');

        return $noend->unionAll($today)->get();
    }


    //今日需审核课
    public static function getKelist()
    {
        return v_paike::where("ok",1)->orWhere("ok",2)->orWhere("ok",3)->orderBy('starthour')->get();
    }


    //综合报表
    public static function getReport($tid,$sid,$m)
    {

        $sql="select ketype,teacher,tlevel,count(distinct heke) as kecs from v_paike where ok>2 and MONTH(kedate)=$m ";

        if($tid>0){$sql=$sql." and tid=$tid";}

        if($sid>0){$sql=$sql." and sid=$sid";};

        $sql=$sql." group BY ketype,teacher,tlevel";

        return DB::select($sql);
    }










}
