<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <script src="//cdn.bootcss.com/jquery/1.12.3/jquery.min.js"></script>


    <script src="https://cdn.bootcss.com/layer/3.1.0/layer.js"></script>

    <script type="text/javascript">

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
                <th colspan=5 class="headth">课程历史列表</th>
            </tr>
            <tr>
                <th>学生</th><th>时段</th><th>类型</th><th>操作</th>
            </tr>
            @foreach(\App\Http\PxFun::getoldKelist($tid) as $ke)
                <tr>
                    <th>{{$ke->student}}</th><th>[{{$ke->kedate}}]{{$ke->starthour}}</th><th>{{$ke->ketype}}</th><th>
                        <input type="button" onclick="keping({{$ke->ID}});"   value="查看课评" >
                    </th>
                </tr>
            @endforeach

        </table>

    </div>
</div>

</body>
</html>