<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="refresh" content="60">
    <script src="//cdn.bootcss.com/jquery/1.12.3/jquery.min.js"></script>
    <script src="layer/layer.js"></script>
    <style>

        .main{
            width: auto;
            border: solid 1px #cccccc;
            border-radius: 5px;
            padding: 10px;
        }
        .week{
            border-radius: 5px;
            min-height: 100px;
            background-color: #EEEEEE;

            padding: 5px;
            margin: 5px;
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
        }
        td {
            border: solid 1px #ffffff;
            span:0px;
            font-size: 14px;
            text-align: center;
        }
        .headth{
            background-color:  #98cbe8;
            padding: 10px;
        }


        a{

            text-decoration:none;
        }

        textarea{
            width: 98%;
            height: 100px;
        }
    </style>


</head>
<body>
<div class="main">
    <div class="head">
        <div ><a href="../menu/1"><span >主菜单</span></a></div>
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
                    <th>{{$ke->student}}</th><th>{{$ke->kedate}}--{{$ke->starthour}}</th><th>{{$ke->ketype}}</th><th>

                        <input type="submit"  disabled  value="发起请求" >
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

                <form name="apply" action="../apply/{{$ke->ID}}" method="post">
                <tr>
                    <th>{{$ke->student}}</th><th>{{$ke->kedate}}--{{$ke->starthour}}</th><th>{{$ke->ketype}}</th>



                    <th>

                            {{csrf_field()}}
                            @if($ke->ok==0)
                            <input type="submit"  value="立即上课">
                            @elseif($ke->ok==1)
                                <input type="submit"  value="等待确认">
                            @elseif($ke->ok==2)
                                <input type="submit"  value="完成课程">
                            @elseif($ke->ok==3)
                                <input type="submit"  value="课后评述">
                            @endif

                            <input type="hidden" name="ID" value="{{$ke->ID}}">
                            <input type="hidden" name="ok" value="{{$ke->ok}}">
                            <input type="hidden" name="tid" value="{{$ke->tid}}">

                    </th>

                </tr>
                    @if($ke->ok==3)
                <tr>
                    <th><textarea name="beforeke">课前：</textarea></th><th><textarea  name="midke">课中：</textarea></th><th colspan="2"><textarea  name="afterke">课后：</textarea></th>
                </tr>
                    @endif
                </form>
            @endforeach

        </table>



</div>

</body>
</html>