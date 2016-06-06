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
<link href="assets/plugins/editable/css/bootstrap-editable.css"
	rel="stylesheet" />
<link href="assets/plugins/ModalWindowEffects/css/component.css"
	rel="stylesheet" />
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
</style>
</head>

<body>
	<div class="md-modal md-effect-6" id="projectfile">
		<div class="md-content">
			<h3>工程文件</h3>
			<div class="uploadedfiles">
				<div id="emptyprojectfile" style="display:none;">
					<div class="col-sm-12">
						<h2 class="uline-title text-center">该小组还没上传文件</h2>
					</div>
					<div style="width:260px;margin:0 auto;margin-bottom:20px;">
						<img src="assets/img/emptyfile.png" alt="" />
					</div>
				</div>
				<div
					class="panel-body bk-bg-white bk-fg-inverse text-center bk-padding-15"
					id="loadedprojectfiles" style="">
					<div class="row">
						<div class="col-xs-8 text-left bk-vcenter">
							<div class="">
								<h1 class="bk-margin-off">已上传文件</h1>
							</div>
						</div>
						<div class="col-xs-4 bk-vcenter text-right">
							<i class="fa fa-download fa-3x"></i>
						</div>
					</div>
					<div class="table-responsive">
						<table class="table text-left bk-margin-off-bottom">
							<thead>
								<tr>
									<th style="text-align:left;">文件名</th>
									<th></th>
								</tr>
							</thead>
							<tbody id="uploadedprojectfiles">
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div>
				<button class="md-close">关闭!</button>
			</div>
		</div>
	</div>
	<div class="md-modal md-effect-6" id="code">
		<div class="md-content">
			<h3>源代码</h3>
			<div class="uploadedfiles">
				<div id="emptycode" style="display:none;">
					<div class="col-sm-12">
						<h2 class="uline-title text-center">该小组还没有上传文件</h2>
					</div>
					<div style="width:260px;margin:0 auto;margin-bottom:20px;">
						<img src="assets/img/emptyfile.png" alt="" />
					</div>
				</div>
				<div
					class="panel-body bk-bg-white bk-fg-inverse text-center bk-padding-15"
					id="loadedcode">
					<div class="row">
						<div class="col-xs-8 text-left bk-vcenter">
							<div class="">
								<h1 class="bk-margin-off">已上传文件</h1>
							</div>
						</div>
						<div class="col-xs-4 bk-vcenter text-right">
							<i class="fa fa-download fa-3x"></i>
						</div>
					</div>
					<div class="table-responsive">
						<table class="table text-left bk-margin-off-bottom">
							<thead>
								<tr>
									<th style="text-align:left;">文件名</th>
									<th></th>
								</tr>
							</thead>
							<tbody id="uploadedcode">
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div>
				<button class="md-close">关闭!</button>
			</div>
		</div>
	</div>
	<div class="md-modal md-effect-6" id="projectdoc">
		<div class="md-content">
			<h3>文档</h3>
			<div class="uploadedfiles">
				<div id="emptydoc" style="display:none;">
					<div class="col-sm-12">
						<h2 class="uline-title text-center">该小组还没有上传文件</h2>
					</div>
					<div style="width:260px;margin:0 auto;margin-bottom:20px;">
						<img src="assets/img/emptyfile.png" alt="" />
					</div>
				</div>
				<div
					class="panel-body bk-bg-white bk-fg-inverse text-center bk-padding-15"
					id="loadeddoc">
					<div class="row">
						<div class="col-xs-8 text-left bk-vcenter">
							<div class="">
								<h1 class="bk-margin-off">已上传文件</h1>
							</div>
						</div>
						<div class="col-xs-4 bk-vcenter text-right">
							<i class="fa fa-download fa-3x"></i>
						</div>
					</div>
					<div class="table-responsive">
						<table class="table text-left bk-margin-off-bottom">
							<thead>
								<tr>
									<th style="text-align:left;">文件名</th>
									<th></th>
								</tr>
							</thead>
							<tbody id="uploadeddoc">
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div>
				<button class="md-close">关闭!</button>
			</div>
		</div>
	</div>
	<div class="md-modal md-effect-6" id="record">
		<div class="md-content">
			<h3>工时记录</h3>
			<div class="uploadedfiles">
				<div id="emptyrecord" style="display:none;">
					<div class="col-sm-12">
						<h2 class="uline-title text-center">该小组还没有上传文件</h2>
					</div>
					<div style="width:260px;margin:0 auto;margin-bottom:20px;">
						<img src="assets/img/emptyfile.png" alt="" />
					</div>
				</div>
				<div
					class="panel-body bk-bg-white bk-fg-inverse text-center bk-padding-15"
					id="loadedrecord">
					<div class="row">
						<div class="col-xs-8 text-left bk-vcenter">
							<div class="">
								<h1 class="bk-margin-off">已上传文件</h1>
							</div>
						</div>
						<div class="col-xs-4 bk-vcenter text-right">
							<i class="fa fa-download fa-3x"></i>
						</div>
					</div>
					<div class="table-responsive">
						<table class="table text-left bk-margin-off-bottom">
							<thead>
								<tr>
									<th style="text-align:left;">文件名</th>
									<th></th>
								</tr>
							</thead>
							<tbody id="uploadedrecord">
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div>
				<button class="md-close">关闭!</button>
			</div>
		</div>
	</div>
	<!-- Start: Header -->
	<div class="navbar" role="navigation">
		<div class="container-fluid container-nav">
			<!-- Navbar Action -->
			<ul class="nav navbar-nav navbar-actions navbar-left">
				<li class="visible-md visible-lg"><a href="groupdetail.jsp#"
					id="main-menu-toggle"><i class="fa fa-th-large"></i></a></li>
				<li class="visible-xs visible-sm"><a href="groupdetail.jsp#"
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
							<li></li>
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
										<img src="assets/img/teacher.png" class="img-circle bk-img-60"
											alt="" />
									</div>
									<div class="bk-padding-top-10">
										<i class="fa fa-circle text-success"></i> <small class="name"
											id="small_username"></small>
									</div>
								</div>
								<div class="divider2"></div>
								<li><a href="index-teacher.jsp"> <i
										class="fa fa-bookmark-o" aria-hidden="true"></i><span>主页</span>
								</a></li>
								<li><a href="setparameter.jsp"> <i class="fa fa-laptop"
										aria-hidden="true"></i><span>参数设置</span>
								</a></li>
								<li><a href="onlinestudent.jsp"> <i class="fa fa-user"
										aria-hidden="true"></i><span>在线学生信息</span>
								</a></li>
								<li><a href="enterstudentinfo.jsp"> <i
										class="fa fa-pencil" aria-hidden="true"></i><span>学生信息录入</span>
								</a></li>
								<li><a href="managestudentinfo.jsp"> <i
										class="fa fa-briefcase" aria-hidden="true"></i><span>学生信息管理</span>
								</a></li>
								<li class="active"><a href="groupinfo.jsp"> <i
										class="fa  fa-users" aria-hidden="true"></i><span>小组实践</span>
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
							<li><a href="index-teacher.jsp"><i
									class="icon fa fa-home"></i>主页</a></li>
							<li class="active"><i class="fa fa-users"></i>团队详情</li>
						</ol>
					</div>
					<div class="pull-right">
						<h2>团队详情</h2>
					</div>
				</div>
				<!-- End Page Header -->
				<div class="col-lg-6">
					<div class="panel">
						<div class="panel-heading bk-bg-primary">
							<h6>
								<i class="fa fa-table red"></i><span class="break"></span>团队成员
							</h6>
							<div class="panel-actions">
								<a href="table.jsp#" class="btn-minimize"><i
									class="fa fa-chevron-up"></i></a>
							</div>
						</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th>姓名</th>
											<th>班级</th>
											<th>学号</th>
											<th>学生详情</th>
										</tr>
									</thead>
									<tbody>
										<s:iterator value="teamMemberList">
											<tr>
												<td>${studentName}</td>
												<td>${studentClass}</td>
												<td>${studentID }</td>
												<td><a class="btn btn-success"
													href="ShowStudentDetail?studentID=${studentID }"> <i
														class="fa fa-search-plus "></i>
												</a></td>
											</tr>
										</s:iterator>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="panel">
						<div class="panel-heading bk-bg-primary">
							<h6>
								<i class="fa fa-table red"></i><span class="break"></span>文件提交情况
							</h6>
							<div class="panel-actions">
								<a href="table.jsp#" class="btn-minimize"><i
									class="fa fa-chevron-up"></i></a>
							</div>
						</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th>类别</th>
											<th>状态</th>
											<th>下载</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>工程文件</td>
											<td><span class="" id="projectfile-stat"></span></td>
											<td><i class="fa fa-search"><a class="md-trigger"
													data-modal="projectfile">查看</a></i></td>
										</tr>
										<tr>
											<td>源代码</td>
											<td><span class="" id="code-stat"></span></td>
											<td><i class="fa fa-search"><a class="md-trigger"
													data-modal="code">查看</a></i></td>
										</tr>
										<tr>
											<td>文档</td>
											<td><span class="" id="doc-stat"></span></td>
											<td><i class="fa fa-search"><a class="md-trigger"
													data-modal="projectdoc">查看</a></i></td>
										</tr>
										<tr>
											<td>工时记录</td>
											<td><span class="" id="record-stat"></span></td>
											<td><i class="fa fa-search"><a class="md-trigger"
													data-modal="record">查看</a></i></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="panel">
						<div class="panel-heading bk-bg-primary">
							<h6>
								<i class="fa fa-table red"></i><span class="break"></span>打分
							</h6>
							<div class="panel-actions">
								<a href="table.jsp#" class="btn-minimize"><i
									class="fa fa-chevron-up"></i></a>
							</div>
						</div>
						<div class="panel-body">
							<div class="button-group pull-right"
								style="padding-bottom: 30px;">
								<button id="enable" class="btn btn-primary">编辑/取消修改分数</button>
								<button id="save" class="btn btn-primary">保存更改</button>
							</div>
							<div class="table-responsive">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th>项目</th>
											<th>分数</th>
										</tr>
									</thead>
									<tbody>
										<s:iterator value="projectScoreList" var="ps">
											<s:if test="#ps.detailType == 1">
												<tr>
													<td>部署系统</td>
													<td><a href="#" id="deploy" data-type="text"
														data-original-title="部署系统得分"
														class="editable editable-click editable-disabled">${projectScore}</a></td>
												</tr>
											</s:if>
											<s:if test="#ps.detailType == 2">
												<tr>
													<td>首页检测</td>
													<td><a href="#" id="index" data-type="text"
														data-original-title="部署系统得分"
														class="editable editable-click editable-disabled">${projectScore}</a></td>
												</tr>
											</s:if>
											<s:if test="#ps.detailType == 3">
												<tr>
													<td>功能测试</td>
													<td><a href="#" id="function" data-type="text"
														data-original-title="部署系统得分"
														class="editable editable-click editable-disabled">${projectScore}</a></td>
												</tr>
											</s:if>
											<s:if test="#ps.detailType == 4">
												<tr>
													<td>性能测试</td>
													<td><a href="#" id="performance" data-type="text"
														data-original-title="部署系统得分"
														class="editable editable-click editable-disabled">${projectScore}</a></td>
												</tr>
											</s:if>
											<s:if test="#ps.detailType == 5">
												<tr>
													<td>压力测试</td>
													<td><a href="#" id="stress" data-type="text"
														data-original-title="部署系统得分"
														class="editable editable-click editable-disabled">${projectScore}</a></td>
												</tr>
											</s:if>
											<s:if test="#ps.detailType == 6">
												<tr>
													<td>代码检测</td>
													<td><a href="#" id="code" data-type="text"
														data-original-title="部署系统得分"
														class="editable editable-click editable-disabled">${projectScore}</a></td>
												</tr>
											</s:if>
											<s:if test="#ps.detailType == 7">
												<tr>
													<td>文档检测</td>
													<td><a href="#" id="document" data-type="text"
														data-original-title="部署系统得分"
														class="editable editable-click editable-disabled">${projectScore}</a></td>
												</tr>
											</s:if>
										</s:iterator>
										<tr>
											<td>总分</td>
											<td id="total"></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
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
	<script src="assets/plugins/ModalWindowEffects/js/classie.js"></script>
	<script src="assets/plugins/ModalWindowEffects/js/modalEffects.js"></script>
	<script>
		// this is important for IEs
		var polyfilter_scriptpath = '/js/';
	</script>
	<script src="assets/plugins/ModalWindowEffects/js/cssParser.js"></script>
	<script
		src="assets/plugins/ModalWindowEffects/js/css-filters-polyfill.js"></script>
	<!-- Theme JS -->
	<script src="assets/js/jquery.mmenu.min.js"></script>
	<script src="assets/js/core.min.js"></script>

	<!-- Pages JS -->
	<script src="assets/plugins/editable/js/bootstrap-editable.min.js"></script>
	<script type="text/javascript">
		var time = 0;
		function computetotal() {
			var total = 0;
			var deploy = parseInt($('#deploy').html());
			var index = parseInt($('#index').html());
			var func = parseInt($('#function').html());
			var performance = parseInt($('#performance').html());
			var stress = parseInt($('#stress').html());
			var code = parseInt($('#code').html());
			var doc = parseInt($('#document').html());
			total = deploy + index + func + performance + stress + code + doc;
			$('#total').html(total);
		}
		computetotal();
		$('#enable').click(function() {
			if (time == 0) {
				$('.editable').editable('toggleDisabled');
				$('.editable').editable('toggleDisabled');
				time++;
			} else {
				$('.editable').editable('toggleDisabled');
			}
			computetotal();
		});
		$('#save').click(function() {
			//保存分数的代码......
			var scoreList = $(this).nextSibling;
			var scoreList = $(scoreList).children;
			var str = "";
			var strdeploy = $(scoreList).find("a[id='deploy']").text();
			var strindex = $(scoreList).find("a[id='index']").text();
			var strfunction = $(scoreList).find("a[id='function']").text();
			var strperformance = $(scoreList).find("a[id='performance']").text();
			var strstress = $(scoreList).find("a[id='stress']").text();
			var strcode = $(scoreList).find("a[id='code']").text();
			var strdocument = $(scoreList).find("a[id='document']").text();
			var str = strdeploy + "/" + strindex+ "/" + strfunction+ "/" + strperformance+ "/" + strstress+ "/" + strcode+ "/" +strdocument;
			var teamID = getQueryString("teamID");
			$.ajax({
				url : "UpdateProjectDetailScore",
				type: "post",
				data: {"projectScoreString":str,"teamID":teamID},
				dataType : "json",
				success : function(data){
					alert("修改成功");
				}
			})
		})
	</script>
	<script>
		function getQueryString(name) {
			var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
			var r = window.location.search.substr(1).match(reg);
			if (r != null)
				return unescape(r[2]);
			return null;
		}
		var teamID = getQueryString("teamID");
		//显示工程文件
		function showProjectFile() {
			$
					.ajax({
						url : "showProjectfile",
						type : "post",
						data : {
							"teamID" : teamID
						},
						dataType : "json",
						success : function(data) {
							if (data == "") {
								$('#emptyprojectfile').attr("style", "");
								$('#loadedprojectfiles').attr("style",
										"display:none;");
								$('#projectfile-stat').attr("class","label label-warning");
								$('#projectfile-stat').html("未提交");
							} else {
								$('#emptyprojectfile').attr("style",
										"display:none;");
								$('#loadedprojectfiles').attr("style", "");
								$('#uploadedprojectfiles').children('tr')
										.remove();
								$('#projectfile-stat').attr("class","label label-success");
								$('#projectfile-stat').html("已提交");
								$
										.each(
												data,
												function(i, list) {
													var tr = $("<tr>"
															+ "<td>"
															+ list.fileName
															+ "</td>"
															+ "<td class='bk-padding-off-right'>"
															+ "<ul class='list-inline bk-margin-off-bottom text-right' style='padding-bottom:0px;'>"
															+ "<li class='bk-padding-off-right'>"
															+ "<a class='bk-round bk-border-info bk-border-darken bk-bg-lighten bk-border-3x bk-icon bk-icon-default bk-bg-info' data-toggle='tooltip' data-placement='top' data-original-title='download' href='" + list.path + "' download='" + list.fileName + "'>"
															+ "<i class='fa fa-arrow-down'></i>"
															+ "</a>" + "</li>"
															+ "</ul>" + "</td>"
															+ "</tr>");
													$('#uploadedprojectfiles')
															.append(tr);
												});
							}
						}
					});
		}
		//显示源代码
		function showCode() {
			$
					.ajax({
						url : "showCode",
						type : "post",
						data : {
							"teamID" : teamID
						},
						dataType : "json",
						success : function(data) {
							if (data == "") {
								$('#emptycode').attr("style", "");
								$('#loadedcode').attr("style", "display:none;");
								$('#code-stat').attr("class","label label-warning");
								$('#code-stat').html("未提交");
							} else {
								$('#emptycode').attr("style", "display:none;");
								$('#loadedcode').attr("style", "");
								$('#uploadedcode').children('tr').remove();
								$('#code-stat').attr("class","label label-success");
								$('#code-stat').html("已提交");
								$
										.each(
												data,
												function(i, list) {
													var tr = $("<tr>"
															+ "<td>"
															+ list.fileName
															+ "</td>"
															+ "<td class='bk-padding-off-right'>"
															+ "<ul class='list-inline bk-margin-off-bottom text-right' style='padding-bottom:0px;'>"
															+ "<li class='bk-padding-off-right'>"
															+ "<a class='bk-round bk-border-info bk-border-darken bk-bg-lighten bk-border-3x bk-icon bk-icon-default bk-bg-info' data-toggle='tooltip' data-placement='top' data-original-title='download' href='" + list.path + "' download='" + list.fileName + "'>"
															+ "<i class='fa fa-arrow-down'></i>"
															+ "</a>" + "</li>"
															+ "</ul>" + "</td>"
															+ "</tr>");
													$('#uploadedcode').append(
															tr);
												});
							}
						}
					});
		}
		//显示项目文档
		function showProjectDoc() {
			$
					.ajax({
						url : "showProjectDoc",
						type : "post",
						data : {
							"teamID" : teamID
						},
						dataType : "json",
						success : function(data) {
							if (data == "") {
								$('#emptydoc').attr("style", "");
								$('#loadeddoc').attr("style", "display:none;");
								$('#doc-stat').attr("class","label label-warning");
								$('#doc-stat').html("未提交");
							} else {
								$('#emptydoc').attr("style", "display:none;");
								$('#loadeddoc').attr("style", "");
								$('#uploadeddoc').children('tr').remove();
								$('#doc-stat').attr("class","label label-success");
								$('#doc-stat').html("已提交");
								$
										.each(
												data,
												function(i, list) {
													var tr = $("<tr>"
															+ "<td>"
															+ list.fileName
															+ "</td>"
															+ "<td class='bk-padding-off-right'>"
															+ "<ul class='list-inline bk-margin-off-bottom text-right' style='padding-bottom:0px;'>"
															+ "<li class='bk-padding-off-right'>"
															+ "<a class='bk-round bk-border-info bk-border-darken bk-bg-lighten bk-border-3x bk-icon bk-icon-default bk-bg-info' data-toggle='tooltip' data-placement='top' data-original-title='download' href='" + list.path + "' download='" + list.fileName + "'>"
															+ "<i class='fa fa-arrow-down'></i>"
															+ "</a>" + "</li>"
															+ "</ul>" + "</td>"
															+ "</tr>");
													$('#uploadeddoc')
															.append(tr);
												});
							}
						}
					});
		}
		//显示工时记录
		function showRecord() {
			$
					.ajax({
						url : "showRecord",
						type : "post",
						data : {
							"teamID" : teamID
						},
						dataType : "json",
						success : function(data) {
							if (data == "") {
								$('#emptyrecord').attr("style", "");
								$('#loadedrecord').attr("style",
										"display:none;");
							    $('#record-stat').attr("class","label label-warning");
								$('#record-stat').html("未提交");
							} else {
								$('#emptyrecord')
										.attr("style", "display:none;");
								$('#loadedrecord').attr("style", "");
								$('#uploadedrecord').children('tr').remove();
								$('#record-stat').attr("class","label label-success");
								$('#record-stat').html("已提交");
								$
										.each(
												data,
												function(i, list) {
													var tr = $("<tr>"
															+ "<td>"
															+ list.fileName
															+ "</td>"
															+ "<td class='bk-padding-off-right'>"
															+ "<ul class='list-inline bk-margin-off-bottom text-right' style='padding-bottom:0px;'>"
															+ "<li class='bk-padding-off-right'>"
															+ "<a class='bk-round bk-border-info bk-border-darken bk-bg-lighten bk-border-3x bk-icon bk-icon-default bk-bg-info' data-toggle='tooltip' data-placement='top' data-original-title='download' href='" + list.path + "' download='" + list.fileName + "'>"
															+ "<i class='fa fa-arrow-down'></i>"
															+ "</a>" + "</li>"
															+ "</ul>" + "</td>"
															+ "</tr>");
													$('#uploadedrecord')
															.append(tr);
												});
							}
						}
					});
		}
		showProjectFile();
		showCode();
		showProjectDoc();
		showRecord();
	</script>
	<!-- end: JavaScript-->

	<script type="text/javascript">
		$.ajax({
			url : "GetUserName",
			dataType : "json",
			success : function(data) {
				$(".name").html(data);
			}
		})
	</script>

</body>

</html>