<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <script src="//cdn.bootcss.com/jquery/1.12.3/jquery.min.js"></script>
    <script src="layer/layer.js"></script>
    <title></title>
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
    margin-bottom: 5px;
    margin-top: 8px;
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
    <div style="background-color: #cccccc;"><span>培训管理系统</span></div>


    <a href="/kecheng/{{Cookie::get('uid')}}"><div><span>今日课程</span></div></a>
    <a href="/history/{{Cookie::get('uid')}}"><div><span>课程历史</span></div></a>

    @if(Cookie::get('utype')==1)
        <a href="/paike/0"><div><span>排课管理</span></div></a>
        <a href="/adminke/0"><div><span>课程审核</span></div></a>
        <a href="/user/3"><div><span>学生管理</span></div></a>
        <a href="/user/2"><div><span>教练信息</span></div></a>

    @endif
    <a href="/report"><div><span>查询报表</span></div></a>
    <a href="/my"><div><span>修改账号</span></div></a>
    <a href="/loginout"><div><span>注销退出</span></div></a>





</div>

</body>
</html>