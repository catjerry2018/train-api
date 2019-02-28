<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <script src="//cdn.bootcss.com/jquery/1.12.3/jquery.min.js"></script>
    <script src="layer/layer.js"></script>


    <script type="text/javascript">
        //判断表单是否已经修改的方法
        function IsModified(obj,buttonid)
        {
            if (obj.value != obj.defaultValue)
            {
                obj.style.backgroundColor = "#ff9000";
              document.getElementById(buttonid).style.display='inline';
                //document.getElementById("update"+buttonid).submit();
            }
        }

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
			margin:0px;
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

		.xm{
			width: 40px;
		}
		.sj{
			width: 80px;
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
		<div ><a href="../"><span >主菜单</span></a>[当前用户：{{Cookie::get('user')}}]</div>
    </div>

	<div class="week">
	<table cellpadding="0" cellspacing="0" width="100%">
	<tr>
	<th colspan=6 class="headth">{{$usn}}管理</th>
	</tr>
	<tr>
	<th>姓名</th><th>手机号</th><th>课数</th><th>等级</th><th>有效</th><th>操作</th>
	</tr>
	@foreach(\App\Http\PxFun::UserList($usrtype,0) as $user)
	<form name="saveuser" id="fm{{$user->ID}}" action="../saveuser/{{$usrtype}}" method="post" >
	<tr>
	{{csrf_field()}}
	<td><input type="text" name="usr" class="xm" value="{{$user->usr}}" onblur="IsModified(this,{{$user->ID}})"></td>
	<td><input type="text" name="mobile" class="sj" value="{{$user->mobile}}" onblur="IsModified(this,{{$user->ID}})"></td>
		@if($usrtype==3)
		<td><input type="text" name="kecs" class="xm" value="{{$user->kecs}}" onblur="IsModified(this,{{$user->ID}})"></td>
		@else
			<td><input type="text" name="kecs" class="xm" value="0" disabled></td>
		@endif
	<td>
    <select name="level"  onchange="IsModified(this,{{$user->ID}})">
		<option value="{{$user->level}}"  selected="{{$user->level}}">{{$user->level}}</option>
		@if($usrtype==3)
			<option value="V12">V12</option>
			<option value="V16">V16</option>
			<option value="V20">V20</option>
		@else
			<option value="T70">T70</option>
			<option value="T75">T75</option>
			<option value="T80">T80</option>
			<option value="T85">T85</option>
			<option value="T90">T90</option>
			<option value="T95">T95</option>
			<option value="T100">T100</option>
		@endif
	</select>
	</td>
		<td>
			<select name="vaild" onchange="IsModified(this,{{$user->ID}})">
				<option value="{{$user->vaild}}"  selected="{{$user->vaild}}">{{$user->vaild==1?"有效":"无效"}}</option>
				<option value="1">有效</option>
				<option value="0">无效</option>
				<option value="X">删除</option>
			</select>
		</td>
	<td>

	       <input type="button" id="{{$user->ID}}"  onclick="tjform(this,{{$user->ID}})" class="red" value="保存" style="display: none">
	       <input type="hidden" name="ID" value="{{$user->ID}}">

	</td>
	</tr>
	</form>

@endforeach

		<tr><th colspan=6>
				添加{{$usn}}
			</th></tr>

		<form name="addpk" id="fmuser" action="../adduser/{{$usrtype}}" method="post" >
		<tr>
			{{csrf_field()}}
			<td><input type="text" name="usr" class="xm"></td>
			<td><input type="text" name="mobile" class="sj"></td>
			@if($usrtype==3)
				<td><input type="text" name="kecs" class="xm" value=""></td>
			@else
				<td><input type="text" name="kecs" class="xm" value="0" disabled></td>
			@endif
			<td>
				<select name="level">
					@if($usrtype==3)
						<option value="V12">V12</option>
						<option value="V16">V16</option>
						<option value="V20">V20</option>
					@else
						<option value="T70">T70</option>
						<option value="T75">T75</option>
						<option value="T80">T80</option>
						<option value="T85">T85</option>
						<option value="T90">T90</option>
						<option value="T95">T95</option>
						<option value="T100">T100</option>
					@endif

				</select>
			</td>

			<td>
				<select name="vaild">

					<option value="1" selected>有效</option>
					<option value="0">无效</option>
				</select>
			</td>
			<td>
				<input type="button" id="addform" onclick="tjform(this,'user')" value="新增">
				<input type="hidden" name="usrtype" value="{{$usrtype}}">
				<input type="hidden" name="compid" value="">
			</td>
		</tr>


		</form>


	</table>
	</div>



</div>

</body>
</html>


