<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <script src="//cdn.bootcss.com/jquery/1.12.3/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/layer/3.1.0/layer.js"></script>

    <script type="text/javascript">
        //判断表单是否已经修改的方法
        function IsModified(obj,buttonid)
        {
            if (obj.value != obj.defaultValue)
            {
                obj.style.backgroundColor = "#ff9000";
              document.getElementById(buttonid).style.display='inline';
            }
        }


        //判断表单是否已经修改的方法
        function IsSeModified(obj,buttonid,tp)
        {
            if (obj.value != obj.defaultValue)
            {
                obj.style.backgroundColor = "#ff9000";
                document.getElementById(buttonid).style.display='inline';
                //document.getElementById("update"+buttonid).submit();
                // var obj = document.getElementByIdx_x(”testSelect”); //定位id

                var index = obj.selectedIndex; // 选中索引
                var text = obj.options[index].getAttribute("level"); // 选中文本
                if(tp=2){
                    document.getElementById("tlevel"+buttonid).value=text;
                }else{
                    document.getElementById("slevel"+buttonid).value=text;
                }


            }
        }



        //判断表单是否已经修改的方法
        function keping(id)
        {
            layer.open({
                type: 2,
                title: '',
                shadeClose: true,
                shade: 0.8,
                area: ['98%', '90%'],
                content: '../keping/'+id //iframe的url
            });
        }

        function tjform(obj,id) {
            obj.disabled=true;
            obj.value="提交中";
           document.getElementById("fm"+id).submit();
        }


        function toweek(id){
            window.location.href ="../paike/"+id;
            target = '_self';
        }

    </script>

    <style>
        body {
            margin: 0;
            padding: 0;
        }
        .main{
            width: auto;
            border: solid 5px #f9f9f9;
            border-radius: 5px;
            padding: 1px;
            background-color: rgba(255, 241, 37, 0.21);
        }
        .week{
            border-radius: 5px;
            min-height: 100px;
            background-color: #ececcd;

            padding: 5px;
            margin: 0px;
        }

        .headth{
            background-color: #d9e86f;
            padding: 10px;
        }

            table tr{
                border-spacing:0;
              }
            th {
                border: solid 1px #ffffff;
                font-size: 14px;
               }

              td {
                  border: solid 1px #ffffff;
                  font-size: 14px;
                  text-align: center;
                 }
        .sename{
            width: 85px;
        }

        .inhour{
            width: 25px;
        }

        .sedel{
            width: 45px;
        }

        a{
            margin-left: 10px;
            text-decoration:none;
        }
        .head{
            padding: 5px 0 5px 0;
        }


        .blue {background-color: #008CBA;} /* Blue */
        .red{background-color: #f44336;} /* Red */
        .gray{background-color: #e7e7e7; color: black;} /* Gray */
        .green{background-color: #4CAF50;} /* Green */



    </style>

</head>
<body>


<div class="main">
    <div class="head">
       <div ><a href="../"><span >主菜单</span></a><span style="float: right">

                <select name="week" class="sename" onchange="toweek(this.options[this.selectedIndex].value);">
                     <option value="0" selected >选择周次</option>
                    <option value="0" >本周</option>
                     <option value="1">上一周</option>
                    <option value="2">前两周</option>
                    <option value="3">前三周</option>
                   <option value="4">前四周</option>
                   <option value="5">前五周</option>
                   <option value="6">前六周</option>
                </select>
               {{ $w==0 ? "本周":"前 $w 周"}}</span></div>
    </div>
    @for ($i = 0; $i < 7; $i++)

        <div class="week">
        <table cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <th colspan=5 class="headth">{{date('Y-m-d',strtotime("$date1 +$i days"))}}      {{$i+1}}</th>
            </tr>
            <tr>
                <th>学生</th><th>时段</th><th>教练</th><th>类型</th><th>操作</th>
            </tr>
        @foreach(\App\Http\PxFun::WeekData($w,date('Y-m-d',strtotime("$date1 +$i days"))) as $pk)
            <form name="update" id="fm{{$pk->ID}}" action="../updatepk/{{$pk->ID}}" method="post" >
                <tr>

                       {{csrf_field()}}
                       <td>

                           <select name="stuname" class="sename" onchange="IsSeModified(this,{{$pk->ID}},3)">
                               <option value="{{$pk->sid}}" selected="{{$pk->student}}" level="{{$pk->slevel}}">{{$pk->student}}[{{$pk->slevel}}]</option>
                               @if($pk->ok==0 && date('Y-m-d',strtotime("$date1 +$i days")) >= date("Y-m-d",time()))
                               @foreach(\App\Http\PxFun::UserList(3,$pk->sid) as $stu)
                                   <option value="{{$stu->ID}}" level="{{$stu->level}}">{{$stu->usr}}[{{$stu->level}}]</option>
                                @endforeach
                               @endif

                           </select>
                       </td><td> <input type="text" name="starthour" class="inhour" value="{{$pk->starthour}}" onblur="IsModified(this,{{$pk->ID}})"></td><td>

                           <select id="tea" name="teacher" class="sename" onchange="IsSeModified(this,{{$pk->ID}},2)">
                               <option value="{{$pk->tid}}"  selected="{{$pk->teacher}}" level="{{$pk->tlevel}}">{{$pk->teacher}}[{{$pk->tlevel}}]</option>
                               @if($pk->ok==0 && date('Y-m-d',strtotime("$date1 +$i days")) >= date("Y-m-d",time()))
                                @foreach(\App\Http\PxFun::UserList(2,$pk->tid) as $stu)
                                   <option value="{{$stu->ID}}" level="{{$stu->level}}">{{$stu->usr}}[{{$stu->level}}]</option>
                                @endforeach
                               @endif
                           </select>

                           </td><td>
                           <select  name="ketype" class="sedel" onchange="IsModified(this,{{$pk->ID}})">
                               <option value="{{$pk->ketype}}" selected="{{$pk->ketype}}">{{$pk->ketype}}</option>
                               @if($pk->ok==0 && date('Y-m-d',strtotime("$date1 +$i days")) >= date("Y-m-d",time()))
                               <option value="A外" >A外</option>
                               <option value="B内" >B内</option>
                                   <option value="X" >删除</option>

                               @endif
                           </select></td>
                           <td align="center">
                              @if($pk->ok==0 && date('Y-m-d',strtotime("$date1 +$i days")) >= date("Y-m-d",time()))
                                   <input type="button" id="{{$pk->ID}}" class="red" onclick="tjform(this,{{$pk->ID}})" value="保存" style="display: none">
                               @elseif($pk->ok==10)
                                   <input type="button" onclick="keping({{$pk->ID}});" class="green"  value="课评">
                               @elseif($pk->ok==2)
                                   <input type="button"  disabled value="课中">
                               @elseif($pk->ok==1)
                                   <input type="button" class="blue" value="待审">
                               @elseif($pk->ok==3)
                                   <input type="button" class="gray" value="课后">
                               @endif
                               <input type="hidden" name="ID" value="{{$pk->ID}}"><input type="hidden" name="w" value="{{$w}}">
                                  <input type="hidden" name="tlevel" id="tlevel{{$pk->ID}}" value="{{$pk->tlevel}}"><input type="hidden" name="slevel" id="slevel{{$pk->ID}}" value="{{$pk->slevel}}">

                       </td>
                </tr>
                </form>
        @endforeach
            <tr>
                <th colspan=5 style="padding: 10px;">
                    @if(date('Y-m-d',strtotime("$date1 +$i days")) >= date("Y-m-d",time()))
                    <form name="addpk" id="fm{{$i}}" action="../addpk/0" method="post" >
                        <input type="hidden" name="kedate" value="{{date('Y-m-d',strtotime("$date1 +$i days"))}}">
                        {{csrf_field()}}<input type="button"  onclick="tjform(this,{{$i}})" value="增加排课">
                    </form>
                    @endif

              </th>
            </tr>
        </table>
    </div>

    @endfor


	

</div>

</body>
</html>

