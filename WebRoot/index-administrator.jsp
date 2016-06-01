<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">

<head>

<!-- Basic -->
<meta charset="UTF-8" />

<title>PIP项目检测平台</title>

<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<!-- Import google fonts -->
<link
	href="http://fonts.useso.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light"
	rel="stylesheet" type="text/css" />

<!-- Favicon and touch icons -->
<link rel="shortcut icon" href="assets/ico/favicon.ico"
	type="image/x-icon" />
<link rel="apple-touch-icon" href="assets/ico/apple-touch-icon.png" />
<link rel="apple-touch-icon" sizes="57x57"
	href="assets/ico/apple-touch-icon-57x57.png" />
<link rel="apple-touch-icon" sizes="72x72"
	href="assets/ico/apple-touch-icon-72x72.png" />
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/ico/apple-touch-icon-76x76.png" />
<link rel="apple-touch-icon" sizes="114x114"
	href="assets/ico/apple-touch-icon-114x114.png" />
<link rel="apple-touch-icon" sizes="120x120"
	href="assets/ico/apple-touch-icon-120x120.png" />
<link rel="apple-touch-icon" sizes="144x144"
	href="assets/ico/apple-touch-icon-144x144.png" />
<link rel="apple-touch-icon" sizes="152x152"
	href="assets/ico/apple-touch-icon-152x152.png" />

<!-- start: CSS file-->

<!-- Vendor CSS-->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
<link href="assets/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />

<!-- Plugins CSS-->
<link href="assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />
<link href="assets/plugins/scrollbar/css/mCustomScrollbar.css"
	rel="stylesheet" />
<link href="assets/plugins/fullcalendar/css/fullcalendar.css"
	rel="stylesheet" />
<link href="assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css"
	rel="stylesheet" />
<link href="assets/plugins/xcharts/css/xcharts.min.css" rel="stylesheet" />
<link href="assets/plugins/morris/css/morris.css" rel="stylesheet" />

<!-- Theme CSS -->
<link href="assets/css/jquery.mmenu.css" rel="stylesheet" />

<!-- Page CSS -->
<link href="assets/css/style.css" rel="stylesheet" />
<link href="assets/css/add-ons.min.css" rel="stylesheet" />

<!-- end: CSS file-->


<!-- Head Libs -->
<script src="assets/plugins/modernizr/js/modernizr.js"></script>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
<style type="text/css">
table {
	text-align: center;
	vertical-align: middle;
}

td {
	vertical-align: middle !important;
}

th {
	text-align: center;
}

#over {
	position: absolute;
	left: 0px;
	top: 0px;
	opacity: 0.8;
	z-index: 1;
}

#over #over_child {
	width: 300px;
	height: 300px;
	padding: 15px;
	margin-left: auto;
	margin-right: auto;
	background-color: white;
	opacity: 1;
	position: relative;
	z-index: 100;
	border-radius: 20px;
	border: 10px solid black;
}

#over #over_child p {
	text-align: center;
	font-size: 20px;
	font-weight: bold;
	color: #2D3F51;
}

#over #over_child table {
	margin-left: auto;
	margin-right: auto;
	border-collapse: separate;
	border-spacing: 10px;
}

#over table input[type="button"] {
	width: 60px;
	height: 30px;
	background-color: #2D3F51;
	color: white;
	border: 0px;
	border-radius: 5px;
}
</style>
</head>

<body>

	<!-- Start: Header -->
	<div class="navbar" role="navigation">
		<div class="container-fluid container-nav">
			<!-- Navbar Action -->
			<ul class="nav navbar-nav navbar-actions navbar-left">
				<li class="visible-md visible-lg"><a
					href="index-administrator.jsp#" id="main-menu-toggle"><i
						class="fa fa-th-large"></i></a></li>
				<li class="visible-xs visible-sm"><a
					href="index-administrator.jsp#" id="sidebar-menu"><i
						class="fa fa-navicon"></i></a></li>
			</ul>
			<!-- Navbar Right -->
			<div class="navbar-right">
				<!-- Userbox -->
				<div class="userbox">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<div class="profile-info">
							<span class="name">张三</span>
						</div> <i class="fa custom-caret"></i>
					</a>
					<div class="dropdown-menu">
						<ul class="list-unstyled">
							<li><a href="login.jsp"><i class="fa fa-power-off"></i>登出</a>
							</li>
						</ul>
					</div>
				</div>
				<!-- End Userbox -->
			</div>
			<!-- End Navbar Right -->
		</div>
	</div>
	<!-- End: Header -->
	<!-- Start: Content -->
	<div class="container-fluid content">
		<div class="row">
			<!-- Sidebar -->
			<div class="sidebar">
				<div class="sidebar-collapse">
					<!-- Sidebar Header Logo-->
					<div class="sidebar-header">
						<img src="assets/img/logo.png" class="img-responsive" alt="" />
					</div>
					<!-- Sidebar Menu-->
					<div class="sidebar-menu">
						<nav id="menu" class="nav-main" role="navigation">
							<ul class="nav nav-sidebar">
								<div class="panel-body text-center">
									<div class="bk-avatar">
										<img src="assets/img/avatar.jpg" class="img-circle bk-img-60"
											alt="" />
									</div>
									<div class="bk-padding-top-10">
										<i class="fa fa-circle text-success"></i> <small>张三</small>
									</div>
								</div>
								<div class="divider2"></div>
								<li class="active"><a href="index-administrator.jsp"> <i
										class="fa fa-laptop" aria-hidden="true"></i><span>学生信息管理</span>
								</a></li>
								<li><a href="teacherinfo.jsp"> <i
										class="fa fa-laptop" aria-hidden="true"></i><span>教师信息管理</span>
								</a></li>
							</ul>
						</nav>
					</div>
					<!-- End Sidebar Menu-->

				</div>
				<!-- Sidebar Footer-->
				<div class="sidebar-footer">
					<div class="copyright text-center" style="margin-top: 50px;">
						<i class="fa fa-location-arrow"></i>北京市海淀区西土城路10号<br> <i
							class="fa fa-envelope-o"></i>projectpip@163.com<br> <i
							class="fa fa-phone"></i>010-62345789<br> <small>&copy北京邮电大学软件学院</small>
					</div>
				</div>
				<!-- End Sidebar Footer-->
			</div>
			<!-- End Sidebar -->

			<!-- Main Page -->
			<div class="main ">
				<!-- Page Header -->
				<div class="page-header">
					<div class="pull-left">
						<ol class="breadcrumb visible-sm visible-md visible-lg">
							<li><a href="index-administrator.jsp"><i
									class="icon fa fa-home"></i>主页</a></li>
							<li class="active"><i class="fa fa-laptop"></i>学生信息管理</li>
						</ol>
					</div>
					<div class="pull-right">
						<h2>学生信息管理</h2>
					</div>
				</div>
				<!-- End Page Header -->
				<!-- Add A Student-->
				<div class="col-lg-6">
					<div class="panel">
						<div class="panel-heading bk-bg-primary">
							<h6>
								<i class="fa fa-indent red"></i>添加学生
							</h6>
						</div>
						<div class="panel-body">
							<form class="form-horizontal ">
								<div class="form-group">
									<label class="col-sm-3 control-label" for="input-normal">姓名</label>
									<div class="col-sm-6">
										<input type="text" id="nameInput" name="input-normal"
											class="form-control" placeholder="姓名">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="input-normal">学号</label>
									<div class="col-sm-6">
										<input type="text" id="idInput" name="input-normal"
											class="form-control" placeholder="学号">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="input-normal">班级</label>
									<div class="col-sm-6">
										<input type="text" id="classInput" name="input-normal"
											class="form-control" placeholder="班级">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="input-normal">组号</label>
									<div class="col-sm-6">
										<input type="text" id="groupInput" name="input-normal"
											class="form-control" placeholder="组号">
									</div>
								</div>
								<div class="col-sm-offset-4">
									<a class="bk-margin-5 btn btn-primary col-sm-6" onclick="addTr()">添加</a>
								</div>
							</form>
						</div>
					</div>
				</div>
				<!-- End Add A Student-->
				<!--StudentInfo-->
				<div class="col-lg-6">
					<div class="panel">
						<div class="panel-heading bk-bg-primary">
							<h6>
								<i class="fa fa-table red"></i><span class="break"></span>学生信息
							</h6>
						</div>
						<div class="panel-body">
							<div class="button-group pull-right"
								style="padding-bottom: 30px;">
								<button id="selectall" class="btn btn-primary" onclick="selAll()">全选</button>
								<button id="reverseselect" class="btn btn-primary" onclick="unSel()">反选</button>
								<button id="deleteselected" class="btn btn-primary" onclick="delSel()">删除所选</button>
							</div>
							<div class="table-responsive">
								<table class="table table-striped">
									<thead>
										<tr>
											<th></th>
											<th>学号</th>
											<th>姓名</th>
											<th>班级</th>
											<th>组号</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody id="studentinfo">
										<tr>
											<td><input type="checkbox"></td>
											<td>2013212XXX</td>
											<td>学生X</td>
											<td>201321250X</td>
											<td>3</td>
											<td>
											  <input type="button" value="删除" onclick="delTr(this);">
											  <input type="button" value="修改" onclick="modTr(this);">
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<!-- End StudentInfo-->
				<div id="over" style="display:none;">
					<div id="over_child">
						<p>修改学生信息</p>
						<table>
							<tbody id="over_tb">
								<tr>
									<td>学号：</td>
									<td><input type="text" disabled="disabled"></td>
								</tr>

								<tr>
									<td>姓名：</td>
									<td><input type="text" disabled="disabled"></td>
								</tr>

								<tr>
									<td>班级：</td>
									<td><input type="text"></td>
								</tr>
								<tr>
									<td>组号：</td>
									<td><input type="text"></td>
								</tr>
							</tbody>
							<tr>
								<td colspan="2"><input type="button" value="取消"
									onclick="cancleBtn();" /> <input type="button" value="确认"
									onclick="okBtn();" /></td>
							</tr>

						</table>
					</div>
				</div>
			</div>
			<!--End Main Page-->

		</div>
	</div>
	<!--/container-->


	<!-- start: JavaScript-->

	<!-- Vendor JS-->
	<script src="assets/vendor/js/jquery.min.js"></script>
	<script src="assets/vendor/js/jquery-2.1.1.min.js"></script>
	<script src="assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/skycons/js/skycons.js"></script>

	<!-- Plugins JS-->
	<script src="assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
	<script
		src="assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="assets/plugins/bootkit/js/bootkit.js"></script>
	<script src="assets/plugins/moment/js/moment.min.js"></script>
	<script src="assets/plugins/fullcalendar/js/fullcalendar.min.js"></script>
	<script src="assets/plugins/touchpunch/js/jquery.ui.touch-punch.min.js"></script>
	<script src="assets/plugins/flot/js/jquery.flot.min.js"></script>
	<script src="assets/plugins/flot/js/jquery.flot.pie.min.js"></script>
	<script src="assets/plugins/flot/js/jquery.flot.resize.min.js"></script>
	<script src="assets/plugins/flot/js/jquery.flot.stack.min.js"></script>
	<script src="assets/plugins/flot/js/jquery.flot.time.min.js"></script>
	<script src="assets/plugins/xcharts/js/xcharts.min.js"></script>
	<script src="assets/plugins/autosize/jquery.autosize.min.js"></script>
	<script src="assets/plugins/placeholder/js/jquery.placeholder.min.js"></script>
	<script src="assets/plugins/datatables/js/dataTables.bootstrap.min.js"></script>
	<script src="assets/plugins/datatables/js/jquery.dataTables.min.js"></script>
	<script src="assets/plugins/raphael/js/raphael.min.js"></script>
	<script src="assets/plugins/morris/js/morris.min.js"></script>
	<script src="assets/plugins/gauge/js/gauge.min.js"></script>

	<!-- Theme JS -->
	<script src="assets/js/jquery.mmenu.min.js"></script>
	<script src="assets/js/core.min.js"></script>

	<!-- Pages JS -->
	<script type="text/javascript">
		var $ = function(id) {
			return document.getElementById(id);
		}
		var createObj = function(tagName) {
			return document.createElement(tagName);
		}
		var addTr = function() {
			//1做添加，首先获取输入的值
			var idTxt = document.getElementById("idInput").value;
			var nameTxt = document.getElementById("nameInput").value;
			var classTxt = document.getElementById("classInput").value;
			var groupTxt = document.getElementById("groupInput").value;
			if (idTxt == "" || nameTxt == "" || classTxt == ""
					|| groupTxt == "") {
				alert("请将所有信息输入完整！");
				return;
			}
			//2创建tr
			var tr = createObj("tr");
			//3创建td
			var checkTd = createObj("td");
			var idTd = createObj("td");
			var nameTd = createObj("td");
			var classTd = createObj("td");
			var groupTd = createObj("td");
			var dmlTd = createObj("td");
			//4将获得的信息添加到指定的为td中
			var checkBtn = createObj("input");
			checkBtn.type = "checkbox";//创建一个复选框按钮
			checkTd.appendChild(checkBtn);//将复选框添加到第一列；
			//将获得的值添加到创建的指定Td中；
			var tbody = document.getElementById("studentinfo");
			var rows = tbody.rows.length;
			idTd.innerHTML = idTxt;
			nameTd.innerHTML = nameTxt;
			classTd.innerHTML = classTxt;
			groupTd.innerHTML = groupTxt;
			//创建个button按钮，添加到操作列；
			var delBtn = createObj("input");
			delBtn.type = "button";
			delBtn.value = "删除"
			/*
			 *为新建的delBtn创建监听属性；
			 */

			delBtn.onclick = function() {
				delTr(this);
			};

			var changeBtn = createObj("input");
			changeBtn.type = "button";
			changeBtn.value = "修改";
			/*
			 *为新建的changeBtn创建监听属性；
			 */
			changeBtn.onclick = function() {
				modTr(this);
			}
			var space = createObj("space");
			space.innerHTML = " ";
			dmlTd.appendChild(delBtn);
			dmlTd.appendChild(space);
			dmlTd.appendChild(changeBtn);
			//5将新建的td加入到新建的行中
			tr.appendChild(checkTd);
			tr.appendChild(idTd);
			tr.appendChild(nameTd);
			tr.appendChild(classTd);
			tr.appendChild(groupTd);
			tr.appendChild(dmlTd);
			//6将新建的tr加入到tbody中
			var tbody = document.getElementById("studentinfo");
			tbody.appendChild(tr);
		}
		var delTr = function(obj) {
			var flag = window.confirm("确定删除？");
			if (flag) {
				var tbody = document.getElementById("studentinfo");
				tbody.removeChild(obj.parentNode.parentNode);//this指删除按钮，父节点为当前的td,父节点为当前的tr;
				//每删除一行，后面的行数要都要减一，解决这个问题的思路：我直接获取执行删除按钮后tbody中的全部行，然后进行重新排列；
			} else {
				return;
			}
		}
		var modTr = function(obj) {
			//1.获得隐藏的DIV
			var overDiv = document.getElementById("over");
			//2.将隐藏的div有隐藏显现出来hidden-->block
			overDiv.style.display = "block";
			/**
			 *控制遮罩层的宽度，高度；
			 *
			 */
			var w = window.innerWidth;//返回窗口的文档显示区的宽度;
			var h = window.innerHeight;//返回窗口的文档显示区的高度;
			console.log("w=" + w + "h=" + h);
			//改变div over的宽度，高度；
			overDiv.style.height = h + "px";
			overDiv.style.width = w + "px";
			/*遮罩层的内部div垂直居中*/
			var childDiv = document.getElementById("over_child");
			var middle = Math.floor((h - 300) / 2);
			childDiv.style.top = middle + "px";

			//3.通过按钮来获得tr;
			var tr = obj.parentNode.parentNode;
			//4.获得一行中的所有td-->tr.cells
			//获得需要修改的内容
			var idTxt = tr.cells[1].innerHTML;
			var nameTxt = tr.cells[2].innerHTML;
			var classTxt = tr.cells[3].innerHTML;
			var groupTxt = tr.cells[4].innerHTML;
			//5.获得遮罩层的tbody
			var tb = document.getElementById("over_tb");
			//6.获得tb中所有的input
			var inputs = tb.getElementsByTagName("input");
			//7.往遮罩层中的input填入从表格中取得来的数据
			inputs[0].value = idTxt;
			inputs[1].value = nameTxt;
			inputs[2].value = classTxt;
			inputs[3].value = groupTxt;
		}
		var cancleBtn = function() {
			//将遮罩层的内容隐藏掉
			//1.获得隐藏div
			var overDiv = document.getElementById("over");
			overDiv.style.display = "none";

		}
		var okBtn = function() {
			//1.获得遮罩层中的tbody
			var tb = document.getElementById("over_tb");
			//2.获得tb中的所有的input的值，并且赋值给变量
			var inputs = tb.getElementsByTagName("input");
			var idTxt = inputs[0].value;
			var nameTxt = inputs[1].value;
			var classTxt = inputs[2].value;
			var groupTxt = inputs[3].value;
			//隐藏遮罩层
			cancleBtn();
			//3.获得主页中的数据,将修改的数据填入到主页中,
			var tbody = document.getElementById("studentinfo");
			var rows = tbody.rows.length; //获得所有的行
			for (var i = 0; i < rows; i++) {
				var tr = tbody.rows[i];
				if (tr.cells[1].innerHTML == idTxt) {
					if (tr.cells[2].innerHTML == nameTxt) {
						if (tr.cells[3].innerHTML != classTxt) {//判断遮罩层中input的数据与表格中的数据是否相等，不相等就把遮罩层中的数据写入到表格中;
							tr.cells[3].innerHTML = classTxt;
						}
						if (tr.cells[4].innerHTML != groupTxt) {
							tr.cells[4].innerHTML = groupTxt;
						}
					}
				}
			}
		}

		//全选
		var selAll = function() {
			//1.获取tbody
			var tbody = document.getElementById("studentinfo");
			//2.获取全部的input元素
			var inputs = tbody.getElementsByTagName("input");//返回一个集合；
			//3.过滤出所有checkbox属性出来
			for (var i = 0; i < inputs.length - 1; i++) {
				var input = inputs[i];
				if (input.type == "checkbox") {
					//4.设置checkbox为已选
					input.checked = true;
				}
			}
		}

		//反选
		var unSel = function() {
			//1.获取tbody对象
			var tbody = document.getElementById("studentinfo");
			//2.获取tbody下所有input标签
			var inputs = tbody.getElementsByTagName("input");
			for (var i = 0; i < inputs.length - 1; i++) {
				var input = inputs[i];
				//对input标签过滤，选出checkbox
				if (input.type == "checkbox") {
					input.checked = !input.checked;//check属性取反
				}
			}
		}

		//删除所选
		var delSel = function() {
			var flag = window.confirm("确定删除？");
			if (flag) {
				//1.获得tbody对象
				var tbody = document.getElementById("studentinfo");
				//2.获得tbody下的input元素
				var inputs = tbody.getElementsByTagName("input");
				for (var i = inputs.length - 1; i >= 0; i--) {
					//3.过滤出checkbox类型
					if (inputs[i].type == "checkbox") {
						var input = inputs[i];
						//4.找出checkbox的所选择的行
						if (input.checked) { //5.删除已选择的行
							tbody.removeChild(input.parentNode.parentNode);
						}
					}
				}
			}
		}
	</script>

	<!-- end: JavaScript-->

</body>

</html>