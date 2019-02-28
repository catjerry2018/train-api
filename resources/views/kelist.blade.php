<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <script src="//cdn.bootcss.com/jquery/1.12.3/jquery.min.js"></script>
    <script src="layer/layer.js"></script>

    <script type="text/javascript">
    function tjform(obj,id) {
    obj.disabled=true;
    obj.value="提交中";
    document.getElementById("fm"+id).submit();
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
                <th colspan=5 class="headth">待完成课程列表</th>
            </tr>
            <tr>
                <th>学生</th><th>时段</th><th>类型</th><th>操作</th>
            </tr>
            @foreach(\App\Http\PxFun::getNewKelist($tid) as $ke)
                <tr>
                    <th>{{$ke->student}}</th><th>[{{$ke->kedate}}]{{$ke->starthour}}</th><th>{{$ke->ketype}}</th><th>

                        <input type="submit"  disabled  value="预排课程" >
                    </th>
                </tr>
            @endforeach

        </table>



        <table cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <th colspan=5 class="headth">今日待上课程列表</th>
            </tr>
            <tr>
                <th>学生</th><th>时段</th><th>类型</th><th>操作</th>
            </tr>
            @foreach(\App\Http\PxFun::getNowKelist($tid) as $ke)

                <form name="apply" id="fm{{$ke->ID}}" action="../apply/{{$ke->ID}}" method="post">
                <tr>
                    <th>{{$ke->student}}</th><th>[{{$ke->kedate}}]{{$ke->starthour}}</th><th>{{$ke->ketype}}</th>

                    <th>
                            {{csrf_field()}}
                            @if($ke->ok==0)
                            <input type="button" onclick="tjform(this,{{$ke->ID}})" value="上课确认">
                            @elseif($ke->ok==1)
                                <input type="button" disabled  value="等待确认">
                            @elseif($ke->ok==2)
                                <input type="button" onclick="tjform(this,{{$ke->ID}})"  value="完成课程">
                            @elseif($ke->ok==3)
                                <input type="button" onclick="tjform(this,{{$ke->ID}})"  value="提交课评">
                            @endif

                            <input type="hidden" name="ID" value="{{$ke->ID}}">
                            <input type="hidden" name="ok" value="{{$ke->ok}}">
                            <input type="hidden" name="teacher" value="{{$ke->tid}}">
                            <input type="hidden" name="stuname" value="{{$ke->sid}}">

                    </th>

                </tr>
                    @if($ke->ok==3)
                <tr>
                    <th><textarea name="beforeke">{{$ke->beforeke==null?"课前准备：":$ke->beforeke}}</textarea></th>
                    <th><textarea  name="midke">{{$ke->midke==null?"课程结评：":$ke->midke}}</textarea></th>
                    <th colspan="2"><textarea  name="afterke">{{$ke->afterke==null?"下节安排：":$ke->afterke}}</textarea></th>
                </tr>
                    @endif
                </form>
            @endforeach

        </table>


    </div>
</div>

</body>
</html>