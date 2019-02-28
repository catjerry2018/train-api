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
            padding: 10px;
            background-color: rgba(255, 241, 37, 0.21);
        }

        .main div{
width: 90%;
    background-color: #d9e86f;
    margin: 0 auto;
    margin-bottom: 10px;
    margin-top: 10px;
    border-radius: 5px;
    text-align: center;
    padding: 10px;
}

a{
    text-decoration:none;
    margin-left: 10px;
}

    </style>
</head>
<body>
<div class="main">
    <div style="background-color: #cccccc;"><span>学生:{{$ke->student}}&nbsp;&nbsp;教师:{{$ke->teacher}}<br />上课时间:{{'['.$ke->kedate.']'.$ke->starthour}}</span></div>


    <div style="text-align: left;"><span >{{$ke->beforeke}}</span></div>
    <div style="text-align: left;"><span>{{$ke->midke}}</span></div>
    <div style="text-align: left;"><span>{{$ke->afterke}}</span></div>
</div>

</body>
</html>