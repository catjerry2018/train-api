<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <script src="//cdn.bootcss.com/jquery/1.12.3/jquery.min.js"></script>
    <script src="layer/layer.js"></script>
    <style>

        table {
            border-collapse: collapse;
            font-family: Futura, Arial, sans-serif;
        }

        caption {
            font-size: larger;
            margin: 1em auto;
        }

        th,td {
            padding: .65em;
        }

        th {
            background: #555 nonerepeat scroll 0 0;
            border: 1px solid #777;
            color: #000;
        }

        td {
            border: 1px solid#777;
        }

    </style>
</head>
<body>

<table>
    <caption>排课明细</caption>
    <thead>

    <tr>
        <th rowspan=2>日期/学生</th>

        <th colspan=3>星期一</th> <th colspan=3>星期二</th> <th colspan=3>星期三</th> <th colspan=3>星期四</th> <th colspan=3>星期五</th> <th colspan=3>星期六</th> <th colspan=3>星期日</th>
    </tr>
    <tr>
        <th>时段</th><th>教练</th><th>类型</th> <th>时段</th><th>教练</th><th>类型</th> <th>时段</th><th>教练</th><th>类型</th> <th>时段</th><th>教练</th><th>类型</th> <th>时段</th><th>教练</th><th>类型</th> <th>时段</th><th>教练</th><th>类型</th> <th>时段</th><th>教练</th><th>类型</th>

    </tr>



    </thead>
    <tbody>

    @foreach(\App\Http\PxFun::UserList($w) as $user)
        <tr>

            <td>{{$user->student}}</td>

            @foreach(\App\Http\PxFun::WeekData($w,$user->sid) as $pk)
            <td>{{$pk->kedate}}{{$pk->starthour}}</td><td>{{$pk->teacher}}</td> <td>{{$pk->ketype}}</td>
            @endforeach

        </tr>
    @endforeach

    </tbody>
</table>

</body>
</html>