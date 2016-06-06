<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="assets/css/sweetalert.css">
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
				<li class="visible-md visible-lg"><a href="teacherinfo.jsp#"
					id="main-menu-toggle"><i class="fa fa-th-large"></i></a></li>
				<li class="visible-xs visible-sm"><a href="teacherinfo.jsp#"
					id="sidebar-menu"><i class="fa fa-navicon"></i></a></li>
			</ul>
			<!-- Navbar Right -->
			<div class="navbar-right">
				<!-- Userbox -->
				<div class="userbox">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<div class="profile-info">
							<span class="name"></span>
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
										<img src="assets/img/administrator.png"
											class="img-circle bk-img-60" alt="" />
									</div>
									<div class="bk-padding-top-10">
										<i class="fa fa-circle text-success"></i> <small class="name"></small>
									</div>
								</div>
								<div class="divider2"></div>
								<li><a href="ShowStudentList.action"> <i
										class="fa fa-laptop" aria-hidden="true"></i><span>学生信息管理</span>
								</a></li>
								<li class="active"><a href="ShowTeacherList.action"> <i
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
							<li class="active"><i class="fa fa-laptop"></i>教师信息管理</li>
						</ol>
					</div>
					<div class="pull-right">
						<h2>教师信息管理</h2>
					</div>
				</div>
				<!-- End Page Header -->
				<!-- Add A Student-->
				<div class="col-lg-6">
					<div class="panel">
						<div class="panel-heading bk-bg-primary">
							<h6>
								<i class="fa fa-indent red"></i>添加教师
							</h6>
						</div>
						<div class="panel-body">
							<form class="form-horizontal ">
								<div class="form-group">
									<label class="col-sm-3 control-label" for="input-normal">姓名</label>
									<div class="col-sm-6">
										<input type="text" id="nameInput" name="teacherName"
											class="form-control" placeholder="姓名">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="input-normal">教工号</label>
									<div class="col-sm-6">
										<input type="text" id="idInput" name="teacherNum"
											class="form-control" placeholder="教工号">
									</div>
								</div>
								<div class="col-sm-offset-4">
									<input class="bk-margin-5 btn btn-primary col-sm-6"
										onclick="addTr()" value="提交">
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
								<i class="fa fa-table red"></i><span class="break"></span>教师信息
							</h6>
						</div>
						<s:if test="teacherList.size() == 0">
							<div id="emptyteacher">
								<div class="col-sm-12">
									<h2 class="uline-title text-center">还没有教师信息</h2>
								</div>
								<div style="width:260px;margin:0 auto;margin-bottom:20px;">
									<img src="assets/img/emptyrecord.png" alt="" />
								</div>
							</div>
							<div class="panel-body" id="teachers" style="display:none">
								<div class="button-group pull-right"
									style="padding-bottom: 30px;">
									<button id="selectall" class="btn btn-primary"
										onclick="selAll()">全选</button>
									<button id="reverseselect" class="btn btn-primary"
										onclick="unSel()">反选</button>
									<button id="deleteselected" class="btn btn-primary"
										onclick="delSel()">删除所选</button>
								</div>
								<div class="table-responsive">
									<table class="table table-striped">
										<thead>
											<tr>
												<th></th>
												<th>教工号</th>
												<th>姓名</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody id="teacherinfo">
											<s:iterator value="teacherList">
												<tr>
													<td><input type="checkbox"></td>
													<td>${teacherID}</td>
													<td>${teacherName}</td>
													<td><input type="button" value="删除"
														onclick="delTr(this);" teacherID=${teacherID}> <input
														type="button" value="修改" onclick="modTr(this);"
														teacherID=${teacherID}></td>
												</tr>
											</s:iterator>
										</tbody>
									</table>
								</div>
							</div>
						</s:if>
						<s:else>
						    <div id="emptyteacher" style="display:none">
								<div class="col-sm-12">
									<h2 class="uline-title text-center">还没有教师信息</h2>
								</div>
								<div style="width:260px;margin:0 auto;margin-bottom:20px;">
									<img src="assets/img/emptyrecord.png" alt="" />
								</div>
							</div>
							<div id="teachers" class="panel-body" style="">
								<div class="button-group pull-right"
									style="padding-bottom: 30px;">
									<button id="selectall" class="btn btn-primary"
										onclick="selAll()">全选</button>
									<button id="reverseselect" class="btn btn-primary"
										onclick="unSel()">反选</button>
									<button id="deleteselected" class="btn btn-primary"
										onclick="delSel()">删除所选</button>
								</div>
								<div class="table-responsive">
									<table class="table table-striped">
										<thead>
											<tr>
												<th></th>
												<th>教工号</th>
												<th>姓名</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody id="teacherinfo">
											<s:iterator value="teacherList">
												<tr>
													<td><input type="checkbox"></td>
													<td>${teacherID}</td>
													<td>${teacherName}</td>
													<td><input type="button" value="删除"
														onclick="delTr(this);" teacherID=${teacherID}> <input
														type="button" value="修改" onclick="modTr(this);"
														teacherID=${teacherID}></td>
												</tr>
											</s:iterator>
										</tbody>
									</table>
								</div>
							</div>
						</s:else>
					</div>
				</div>
				<!-- End StudentInfo-->
				<div id="over" style="display:none;">
					<div id="over_child">
						<p>修改教师信息</p>
						<table>
							<tbody id="over_tb"teacherID＝"">
								<tr>
									<td>教工号：</td>
									<td><input type="text"></td>
								</tr>

								<tr>
									<td>姓名：</td>
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
	<script src="assets/plugins/raphael/js/raphael.min.js"></script>
	<script src="assets/plugins/morris/js/morris.min.js"></script>
	<script src="assets/plugins/gauge/js/gauge.min.js"></script>
	<script src="assets/js/sweetalert.min.js"></script>
	<!-- Theme JS -->
	<script src="assets/js/jquery.mmenu.min.js"></script>
	<script src="assets/js/core.min.js"></script>

	<!-- Pages JS -->
	<script>
		$.ajax({
			url : "GetUserName",
			dataType : "json",
			success : function(data) {
				$(".name").html(data);
			}
		})
	</script>
	<script type="text/javascript">
		var currentobj;//当前操作的对象
		var createObj = function(tagName) {
			return document.createElement(tagName);
		}
		var addTr = function() {
			//1做添加，首先获取输入的值
			var idTxt = document.getElementById("idInput").value;
			var nameTxt = document.getElementById("nameInput").value;
			if (idTxt == "" || nameTxt == "") {
				swal("注意!", "请将所有信息输入完整！", "error");
				return;
			}
			$.ajax({
				url : "AddTeacher",
				data : {
					"teacherID" : idTxt,
					"teacherName" : nameTxt
				},
				dataType : "json",
				success : function(data) {
					if (data == "success") {
						//2创建tr
						var tr = createObj("tr");
						//3创建td
						var checkTd = createObj("td");
						var idTd = createObj("td");
						var nameTd = createObj("td");
						var dmlTd = createObj("td");
						//4将获得的信息添加到指定的为td中
						var checkBtn = createObj("input");
						checkBtn.type = "checkbox";//创建一个复选框按钮
						checkTd.appendChild(checkBtn);//将复选框添加到第一列；
						//将获得的值添加到创建的指定Td中；
						var tbody = document.getElementById("teacherinfo");
						var rows = tbody.rows.length;
						idTd.innerHTML = idTxt;
						nameTd.innerHTML = nameTxt;
						//创建个button按钮，添加到操作列；
						var delBtn = createObj("input");
						delBtn.type = "button";
						delBtn.value = "删除"
						delBtn.setAttribute("teacherid", idTxt);
						/*
						 *为新建的delBtn创建监听属性；
						 */

						delBtn.onclick = function() {
							delTr(this);
						};

						var changeBtn = createObj("input");
						changeBtn.type = "button";
						changeBtn.value = "修改";
						changeBtn.setAttribute("teacherid", idTxt);
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
						tr.appendChild(dmlTd);
						//6将新建的tr加入到tbody中
						var tbody = document.getElementById("teacherinfo");
						tbody.appendChild(tr);
						swal("成功", "添加教师作成功", "success");
						$('#emptyteacher').attr("style","display:none");
						$('#teachers').attr("style","");
					}
					if (data == "fail")
						swal("错误", "添加教师失败，请稍后再试！", "error");
					if (data == "duplicate")
						swal("错误", "已经存在教工号为：" + idTxt + "的教师，请检查！", "error");
				},
			});

		}
		var delTr = function(obj) {
			swal({
				title : "您确定要删除吗？",
				text : "您确定要删除这条记录吗？",
				type : "warning",
				showCancelButton : true,
				closeOnConfirm : false,
				confirmButtonText : "是的，我要删除",
				confirmButtonColor : "#ec6c62"
			}, function() {
				var tr = obj.parentNode.parentNode;
				var tDs = tr.getElementsByTagName("td");
				var teacherID = tDs[1].innerHTML;
				$.ajax({
					url : "DeleteTeacher",
					data : {
						"teacherID" : teacherID
					},
					dataType : "json",
					success : function(data) {
						if (data == "success") {
							var tbody = document.getElementById("teacherinfo");
							tbody.removeChild(obj.parentNode.parentNode);//this指删除按钮，父节点为当前的td,父节点为当前的tr;
							//每删除一行，后面的行数要都要减一，解决这个问题的思路：我直接获取执行删除按钮后tbody中的全部行，然后进行重新排列；
							swal("成功", "删除操作成功", "success");
							judgeempty();
						}
						if (data == "fail")
							swal("错误", "删除操作失败，请稍后再试！", "error");
					},
				});
			});
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
			var originteacherID = obj.getAttribute("teacherid");
			var tb = document.getElementById("over_tb");
			tb.setAttribute("teacherID", originteacherID);
			//5.获得遮罩层的tbody
			var tb = document.getElementById("over_tb");
			//6.获得tb中所有的input
			var inputs = tb.getElementsByTagName("input");
			//7.往遮罩层中的input填入从表格中取得来的数据
			inputs[0].value = idTxt;
			inputs[1].value = nameTxt;
			currentobj = obj;
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
			var originteacherID = tb.getAttribute("teacherID");
			//3.获得主页中的数据,将修改的数据填入到主页中,
			var tbody = document.getElementById("teacherinfo");
			var rows = tbody.rows.length; //获得所有的行
			for (var i = 0; i < rows; i++) {
				var tr = tbody.rows[i];
				if (tr.cells[1].innerHTML == idTxt) {
					if (tr != currentobj.parentNode.parentNode) {
						swal("错误", "已经存在教工号为：" + idTxt + "的教师，请检查！", "error");
						return;
					}
				}
			}
			$.ajax({
				//type:"post",
				url : "UpdateTeacher",
				data : {
					"teacherName" : nameTxt,
					"teacherID" : originteacherID,
					"newteacherID" : idTxt
				},
				dataType : "json",
				success : function(data) {
					if (data == "success") {
						currentobj.setAttribute("teacherid", idTxt);
						currentobj.parentNode.childNodes[1].setAttribute(
								"teacherid", idTxt);
						swal("成功", "成功修改教师信息！", "success")
						//隐藏遮罩层
						cancleBtn();
						//3.获得主页中的数据,将修改的数据填入到主页中,
						var tbody = document.getElementById("teacherinfo");
						var rows = tbody.rows.length; //获得所有的行
						for (var i = 0; i < rows; i++) {
							var tr = tbody.rows[i];
							if (tr.cells[1].innerHTML == originteacherID) {
								tr.cells[1].innerHTML = idTxt;
								tr.cells[2].innerHTML = nameTxt;
							}
						}
					}
					if (data == "fail") {
						swal("错误", "修改教师信息遇到错误，请稍后再试！", "error")
					}
				},
			});
		}

		//全选
		var selAll = function() {
			//1.获取tbody
			var tbody = document.getElementById("teacherinfo");
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
			var tbody = document.getElementById("teacherinfo");
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
			var teacherIds = "";
			//1.获得tbody对象
			var tbody = document.getElementById("teacherinfo");
			//2.获得tbody下的input元素
			var inputs = tbody.getElementsByTagName("input");
			for (var i = inputs.length - 1; i >= 0; i--) {
				//3.过滤出checkbox类型
				if (inputs[i].type == "checkbox") {
					var input = inputs[i];
					if (input.checked) {
						var td = input.parentNode.parentNode.childNodes[7];
						if (td != null) {
							teacherIds += td.childNodes[1]
									.getAttribute("teacherid");
							teacherIds += '/';
						} else {
							td = input.parentNode.parentNode.childNodes[3];
							teacherIds += td.childNodes[0]
									.getAttribute("teacherid");
							teacherIds += '/';
						}
					}
				}
			}
			swal(
					{
						title : "您确定要删除吗？",
						text : "您确定要删除这条记录吗？",
						type : "warning",
						showCancelButton : true,
						closeOnConfirm : false,
						confirmButtonText : "是的，我要删除",
						confirmButtonColor : "#ec6c62"
					},
					function() {
						$
								.ajax({
									//type:"post",
									url : "DeleteTeachers",
									data : {
										"teacherIDs" : teacherIds,
									},
									dataType : "json",
									success : function(data) {
										if (data == "success") {
											//1.获得tbody对象
											var tbody = document
													.getElementById("teacherinfo");
											//2.获得tbody下的input元素
											var inputs = tbody
													.getElementsByTagName("input");
											for (var i = inputs.length - 1; i >= 0; i--) {
												//3.过滤出checkbox类型
												if (inputs[i].type == "checkbox") {
													var input = inputs[i];
													//4.找出checkbox的所选择的行
													if (input.checked) { //5.删除已选择的行
														tbody
																.removeChild(input.parentNode.parentNode);
													}
												}
											}
											swal("成功", "成功删除所选数据！", "success");
											judgeempty();
										}
										if (data == "fail") {
											swal("错误", "删除出现错误，请稍后重试！", "error");
										}
									}
								});
					});
		}
		function judgeempty(){
		    var tbody = document.getElementById("teacherinfo");
			var inputs = tbody.getElementsByTagName("input");
			if(inputs.length == 0){
			    $('#teachers').attr("style","display:none");
			    $('#emptyteacher').attr("style","");
			}
		}
	</script>
	<!-- end: JavaScript-->

</body>

</html>