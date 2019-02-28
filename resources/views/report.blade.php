<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <script src="//cdn.bootcss.com/jquery/1.12.3/jquery.min.js"></script>
    <script src="layer/layer.js"></script>
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
            padding: 2px;
        }
        table tr{
            border-spacing:0;
            column-span: 0;
            row-span: 0;
        }
        th {
            border: solid 1px #ffffff;
            span:0px;
            font-size: 14px;
            padding: 3px;
        }
        td {
            border: solid 1px #ffffff;
            span:0px;
            font-size: 14px;
            text-align: center;
        }

        a{
            margin-left: 10px;
            text-decoration:none;
        }

        textarea{
            width: 98%;
            height: 100px;
            border-radius: 3px;
        }

        .sel{
            width: 52px;
        }
        .head{
            padding: 5px 0 5px 0;
        }
    </style>


</head>
<body>
<div class="main">
    <div class="head">
        <div ><a href="../"><span >主菜单</span></a>[当前用户：{{Cookie::get('user')}}]</div>
    </div>


    <div class="week">

        <table cellpadding="0" cellspacing="0" width="100%">

            <tr>
                <form name="report" action="../report" method="post">
                    {{csrf_field()}}
                <th colspan="4" class="headth">

                    教师
                    @if(Cookie::get('utype')==1)
                        <select id="tea" name="tid" class="sel" >
                            <option value="0"  selected>选择</option>
                            @foreach(\App\Http\PxFun::UserList(2,0) as $stu)
                                <option value="{{$stu->ID}}" {{$tid==$stu->ID?'selected':''}} >{{$stu->usr}}</option>
                            @endforeach
                        </select>
                    @elseif(Cookie::get('utype')==2)
                        <select id="tea" name="tid" class="sel" >
                            <option value={{Cookie::get('uid')}}  selected>{{Cookie::get('user')}}</option>
                        </select>
                    @endif


                    学生
                        <select id="tea" name="sid" class="sel" >
                            <option value="0"  selected="0">选择</option>
                            @foreach(\App\Http\PxFun::UserList(3,0) as $stu)
                                <option value="{{$stu->ID}}" {{$sid==$stu->ID?'selected':''}} >{{$stu->usr}}</option>
                            @endforeach
                        </select>


                        <select id="tea" name="m" class="sel">

                            <option value="0">月份</option>
                            @for($i=1;$i<13;$i++)
                            <option value="{{$i}}" {{$i==$m?'selected':''}} >{{$i}}月</option>
                            @endfor
                    </select>
                   <input type="submit"  value="确认"></th>
                </form>
            </tr>

            <tr>
                <th>授课教练</th>
                <th>课型类别</th>
                <th>{{$m}}月课数</th>
                <th>总计报酬</th>

            </tr>

            @foreach(\App\Http\PxFun::getReport($tid,$sid,$m) as $tj)
                <tr>
                    @if(Cookie::get('utype')==1)
                        <th>{{$tj->teacher}}[{{$tj->tlevel}}]</th>
                        @else
                        <th>{{$tj->teacher}}</th>
                    @endif
                    <th>{{$tj->ketype}}</th>
                    <th>{{$tj->kecs}}节</th>
                    <th></th>

                </tr>

            @endforeach

        </table>

</div>

</body>
</html>