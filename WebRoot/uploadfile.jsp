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
<link href="assets/plugins/dropzone/css/dropzone.css" rel="stylesheet" />
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
</style>

</head>

<body>

	<!-- Start: Header -->
	<div class="navbar" role="navigation">
		<div class="container-fluid container-nav">
			<!-- Navbar Action -->
			<ul class="nav navbar-nav navbar-actions navbar-left">
				<li class="visible-md visible-lg"><a href="uploadfile.jsp#"
					id="main-menu-toggle"><i class="fa fa-th-large"></i></a></li>
				<li class="visible-xs visible-sm"><a href="uploadfile.jsp#"
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
							<li><a href="queryscore.jsp"><i class="fa fa-user"></i>我的项目</a>
							</li>
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
										<img src="assets/img/student.png" class="img-circle bk-img-60"
											alt="" />
									</div>
									<div class="bk-padding-top-10">
										<i class="fa fa-circle text-success"></i> <small class="name"></small>
									</div>
								</div>
								<div class="divider2"></div>
								<li><a href="projectDetailStateShow.action"> <i
										class="fa fa-laptop" aria-hidden="true"></i><span>检测流程</span>
								</a></li>
								<li class="active"><a href="uploadfile.jsp"> <i
										class="fa fa-arrow-up" aria-hidden="true"></i><span>上传项目文档</span>
								</a></li>
								<li><a href="showTestCaseList.action"> <i class="fa fa-copy"
										aria-hidden="true"></i><span>选择测试用例</span>
								</a></li>
								<li><a href="projectDetailStatueAndScoreShow.action"> <i class="fa  fa-search"
										aria-hidden="true"></i><span>查询项目评分</span>
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
							<li><a href="index-student.jsp"><i
									class="icon fa fa-home"></i>主页</a></li>
							<li class="active"><i class="fa fa-laptop"></i>上传项目文档</li>
						</ol>
					</div>
					<div class="pull-right">
						<h2>上传项目文档</h2>
					</div>
				</div>
				<!-- End Page Header -->
				<!-- Add Your Content-->
				<div class="col-md-12">
					<h4>上传文档</h4>
					<div class="toggle" data-plugin-toggle
						data-plugin-options='{ "isAccordion": true }'>
						<div class="toggle active">
							<label>工程文件</label>
							<div class="toggle-content">
								<div class="uploadedfiles">
									<div id="emptyprojectfile" style="display:none;">
										<div class="col-sm-12">
											<h2 class="uline-title text-center">您还没有上传文件</h2>
										</div>
										<div style="width:260px;margin:0 auto;margin-bottom:20px;">
											<img src="assets/img/emptyfile.png" alt="" />
										</div>
									</div>
									<div class="panel-body bk-bg-white bk-fg-inverse text-center bk-padding-15" id="loadedprojectfiles">
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
														<th>文件名</th>
														<th></th>
													</tr>
												</thead>
												<tbody id="uploadedprojectfiles">
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label">将文件拖拽到此区域或直接点击此区域选择文件上传</label>
									<div class="controls">
										<div id="dropzone">
											<form action="uploadProjectfile" class="dropzone"
												id="projectfile" enctype="multipart/form-data">
												<div class="fallback">
													<input name="file" type="file" multiple="multiple"/>
												</div>
											</form>
										</div>
										<div style="margin-top:20px;text-align:right;">
											<a id="submit-projectfile" class="btn btn-primary"
												style="display:none;">上传</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="toggle">
							<label>源代码</label>
							<div class="toggle-content">
							    <div class="uploadedfiles">
									<div id="emptycode" style="display:none;">
										<div class="col-sm-12">
											<h2 class="uline-title text-center">您还没有上传文件</h2>
										</div>
										<div style="width:260px;margin:0 auto;margin-bottom:20px;">
											<img src="assets/img/emptyfile.png" alt="" />
										</div>
									</div>
									<div class="panel-body bk-bg-white bk-fg-inverse text-center bk-padding-15" id="loadedcode">
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
														<th>文件名</th>
														<th></th>
													</tr>
												</thead>
												<tbody id="uploadedcode">
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label">将文件拖拽到此区域或直接点击此区域选择文件上传</label>
									<div class="controls">
										<div id="dropzone">
											<form action="uploadCode" class="dropzone" id="code" enctype="multipart/form-data">
												<div class="fallback">
													<input name="file" type="file" multiple="multiple" />
												</div>
											</form>
										</div>
										<div style="margin-top:20px;text-align:right;">
									        <a id="submit-code" class="btn btn-primary" style="display:none;">上传</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="toggle">
							<label>项目文档</label>
							<div class="toggle-content">
								<div class="uploadedfiles">
									<div id="emptydoc" style="display:none;">
										<div class="col-sm-12">
											<h2 class="uline-title text-center">您还没有上传文件</h2>
										</div>
										<div style="width:260px;margin:0 auto;margin-bottom:20px;">
											<img src="assets/img/emptyfile.png" alt="" />
										</div>
									</div>
									<div class="panel-body bk-bg-white bk-fg-inverse text-center bk-padding-15" id="loadeddoc">
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
														<th>文件名</th>
														<th></th>
													</tr>
												</thead>
												<tbody id="uploadeddoc">
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label">将文件拖拽到此区域或直接点击此区域选择文件上传</label>
									<div class="controls">
										<div id="dropzone">
											<form action="uploadProjectDoc" class="dropzone" id="doc" enctype="multipart/form-data">
												<div class="fallback">
													<input name="file" type="file" multiple="multiple" />
												</div>											
											</form>
										</div>
										<div style="margin-top:20px;text-align:right;">
									        <a id="submit-doc" class="btn btn-primary" style="display:none;">上传</a>
										</div>
									</div>
								</div>

							</div>
						</div>
						<div class="toggle">
							<label>工时记录</label>
							<div class="toggle-content">
							    <div class="uploadedfiles">
									<div id="emptyrecord" style="display:none;">
										<div class="col-sm-12">
											<h2 class="uline-title text-center">您还没有上传文件</h2>
										</div>
										<div style="width:260px;margin:0 auto;margin-bottom:20px;">
											<img src="assets/img/emptyfile.png" alt="" />
										</div>
									</div>
									<div class="panel-body bk-bg-white bk-fg-inverse text-center bk-padding-15" id="loadedrecord">
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
														<th>文件名</th>
														<th></th>
													</tr>
												</thead>
												<tbody id="uploadedrecord">
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label">将文件拖拽到此区域或直接点击此区域选择文件上传</label>
									<div class="controls">
										<div id="dropzone">
											<form action="uploadRecord" class="dropzone" id="record" enctype="multipart/form-data">
												<div class="fallback">
													<input name="file" type="file" multiple="multiple" />
												</div>
											</form>
										</div>
										<div style="margin-top:20px;text-align:right;">
										    <a id="submit-record" class="btn btn-primary" style="display:none;">上传</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- End of Your Content-->
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
	<script src="assets/plugins/moment/js/moment.min.js"></script>
	<script src="assets/plugins/fullcalendar/js/fullcalendar.min.js"></script>
	<script src="assets/plugins/dropzone/js/dropzone.js"></script>
	<script src="assets/js/sweetalert.min.js"></script>
	<!-- Theme JS -->
	<script src="assets/js/jquery.mmenu.min.js"></script>
	<script src="assets/js/core.min.js"></script>

	<!-- Pages JS -->
	<script src="assets/js/pages/ui-elements.js"></script>
	<script>
	    var uploadflag = true;
	    //删除文件
	    function deleteFile(e){
	        var targ = e.target;
	        var fileID = targ.getAttribute("fileid");
	        var filename = targ.getAttribute("filename");
	        swal({
					title : "您确定要删除吗？",
					text : "您确定要删除文件：" + filename + "吗？",
					type : "warning",
					showCancelButton : true,
					closeOnConfirm : false,
					confirmButtonText : "是的，我要删除",
					confirmButtonColor : "#ec6c62"
				}, function() {
	         $.ajax({
	            url : "deleteFile",
			    data : {
					   "fileID" : fileID
				},
				dataType : "json",
			    success : function(data) {
			        if(data == "success"){
			            showProjectFile();
			            showCode();
			            showProjectDoc();
			            showRecord();
			            swal("成功","文件：" + filename + "删除成功！","success");
			        }
			        if(data == "fail")
			            swal("抱歉","删除文件：" + filename + "时遇到错误，请稍后再试","error");
			    }
			 });
			 });
	    }
	    //显示工程文件
	    function showProjectFile(){
	        $.ajax({
	            url : "showProjectfile",
			    type : "post",
			    dataType : "json",
			    success : function(data) {
			       if(data == ""){
			           $('#emptyprojectfile').attr("style","");
			           $('#loadedprojectfiles').attr("style","display:none;");
			       }
			       else{
			       $('#emptyprojectfile').attr("style","display:none;");
			       $('#loadedprojectfiles').attr("style","");
			       $('#uploadedprojectfiles').children('tr').remove();
			       $.each(data,function(i,list){
			           var tr = $("<tr>"
								       +"<td>"+ list.fileName +"</td>"
									   +"<td class='bk-padding-off-right'>"
									   +"<ul class='list-inline bk-margin-off-bottom text-right'>"
									   +"<li class='bk-padding-off-right'>"
									   +"<a class='bk-round bk-border-info bk-border-darken bk-bg-lighten bk-border-3x bk-icon bk-icon-default bk-bg-info' data-toggle='tooltip' data-placement='top' data-original-title='download' href='" + list.path + "' download='" + list.fileName + "'>" 
									   +"<i class='fa fa-arrow-down'></i>"
									   +"</a>"
									   +"</li>"
									   +"<li class='bk-padding-off-right'>"
									   +"<a class='bk-round bk-border-info bk-border-darken bk-bg-lighten bk-border-3x bk-icon bk-icon-default bk-bg-info' data-toggle='tooltip' data-placement='top' data-original-title='delete' fileid='" + list.fileID + "' filename='" + list.fileName + "' onclick='deleteFile(event)'>" 
									   +"<i class='fa fa-times' fileid='" + list.fileID + "' filename='" + list.fileName + "'></i>"
									   +"</a>"
									   +"</li>"
									   +"</ul>"
									   +"</td>"
									   +"</tr>");
			           $('#uploadedprojectfiles').append(tr);
			       });
			    }
			    }
			});
	    }
	    //显示源代码
	    function showCode(){
	        $.ajax({
	            url : "showCode",
			    type : "post",
			    dataType : "json",
			    success : function(data) {
			       if(data == ""){
			           $('#emptycode').attr("style","");
			           $('#loadedcode').attr("style","display:none;");
			       }
			       else{
			       $('#emptycode').attr("style","display:none;");
			       $('#loadedcode').attr("style","");
			       $('#uploadedcode').children('tr').remove();
			       $.each(data,function(i,list){
			           var tr = $("<tr>"
								       +"<td>"+ list.fileName +"</td>"
									   +"<td class='bk-padding-off-right'>"
									   +"<ul class='list-inline bk-margin-off-bottom text-right'>"
									   +"<li class='bk-padding-off-right'>"
									   +"<a class='bk-round bk-border-info bk-border-darken bk-bg-lighten bk-border-3x bk-icon bk-icon-default bk-bg-info' data-toggle='tooltip' data-placement='top' data-original-title='download' href='" + list.path + "' download='" + list.fileName + "'>" 
									   +"<i class='fa fa-arrow-down'></i>"
									   +"</a>"
									   +"</li>"
									   +"<li class='bk-padding-off-right'>"
									   +"<a class='bk-round bk-border-info bk-border-darken bk-bg-lighten bk-border-3x bk-icon bk-icon-default bk-bg-info' data-toggle='tooltip' data-placement='top' data-original-title='delete' fileid='" + list.fileID + "' filename='" + list.fileName + "' onclick='deleteFile(event)'>" 
									   +"<i class='fa fa-times' fileid='" + list.fileID + "' filename='" + list.fileName + "'></i>"
									   +"</a>"
									   +"</li>"
									   +"</ul>"
									   +"</td>"
									   +"</tr>");
			           $('#uploadedcode').append(tr);
			       });
			    }
			    }
			});
	    }
	    //显示项目文档
	    function showProjectDoc(){
	        $.ajax({
	            url : "showProjectDoc",
			    type : "post",
			    dataType : "json",
			    success : function(data) {
			       if(data == ""){
			           $('#emptydoc').attr("style","");
			           $('#loadeddoc').attr("style","display:none;");
			       }
			       else{
			       $('#emptydoc').attr("style","display:none;");
			       $('#loadeddoc').attr("style","");
			       $('#uploadeddoc').children('tr').remove();
			       $.each(data,function(i,list){
			           var tr = $("<tr>"
								       +"<td>"+ list.fileName +"</td>"
									   +"<td class='bk-padding-off-right'>"
									   +"<ul class='list-inline bk-margin-off-bottom text-right'>"
									   +"<li class='bk-padding-off-right'>"
									   +"<a class='bk-round bk-border-info bk-border-darken bk-bg-lighten bk-border-3x bk-icon bk-icon-default bk-bg-info' data-toggle='tooltip' data-placement='top' data-original-title='download' href='" + list.path + "' download='" + list.fileName + "'>" 
									   +"<i class='fa fa-arrow-down'></i>"
									   +"</a>"
									   +"</li>"
									   +"<li class='bk-padding-off-right'>"
									   +"<a class='bk-round bk-border-info bk-border-darken bk-bg-lighten bk-border-3x bk-icon bk-icon-default bk-bg-info' data-toggle='tooltip' data-placement='top' data-original-title='delete' fileid='" + list.fileID + "' filename='" + list.fileName + "' onclick='deleteFile(event)'>" 
									   +"<i class='fa fa-times' fileid='" + list.fileID + "' filename='" + list.fileName + "'></i>"
									   +"</a>"
									   +"</li>"
									   +"</ul>"
									   +"</td>"
									   +"</tr>");
			           $('#uploadeddoc').append(tr);
			       });
			    }
			    }
			});
	    }
	    //显示工时记录
	    function showRecord(){
	        $.ajax({
	            url : "showRecord",
			    type : "post",
			    dataType : "json",
			    success : function(data) {
			       if(data == ""){
			           $('#emptyrecord').attr("style","");
			           $('#loadedrecord').attr("style","display:none;");
			       }
			       else{
			       $('#emptyrecord').attr("style","display:none;");
			       $('#loadedrecord').attr("style","");
			       $('#uploadedrecord').children('tr').remove();
			       $.each(data,function(i,list){
			           var tr = $("<tr>"
								       +"<td>"+ list.fileName +"</td>"
									   +"<td class='bk-padding-off-right'>"
									   +"<ul class='list-inline bk-margin-off-bottom text-right'>"
									   +"<li class='bk-padding-off-right'>"
									   +"<a class='bk-round bk-border-info bk-border-darken bk-bg-lighten bk-border-3x bk-icon bk-icon-default bk-bg-info' data-toggle='tooltip' data-placement='top' data-original-title='download' href='" + list.path + "' download='" + list.fileName + "'>" 
									   +"<i class='fa fa-arrow-down'></i>"
									   +"</a>"
									   +"</li>"
									   +"<li class='bk-padding-off-right'>"
									   +"<a class='bk-round bk-border-info bk-border-darken bk-bg-lighten bk-border-3x bk-icon bk-icon-default bk-bg-info' data-toggle='tooltip' data-placement='top' data-original-title='delete' fileid='" + list.fileID + "' filename='" + list.fileName + "' onclick='deleteFile(event)'>" 
									   +"<i class='fa fa-times' fileid='" + list.fileID + "' filename='" + list.fileName + "'></i>"
									   +"</a>"
									   +"</li>"
									   +"</ul>"
									   +"</td>"
									   +"</tr>");
			           $('#uploadedrecord').append(tr);
			       });
			    }
			    }
			});
	    }
	    //加载页面时执行的函数
		$(document).ready(function() {
		$.ajax({
				url: "GetUserName",
				dataType: "json",
				success: function(data){
					$(".name").html(data);
				}
	    });
        showProjectFile();
        showCode();
        showProjectDoc();
        showRecord();
        //初始化dropzone
        Dropzone.options.projectfile = {
                paramName: "file",
                // 与input的name属性一致
                maxFilesize: 100,
                // MB
                autoProcessQueue: false,
                addRemoveLinks: true,
                dictResponseError: 'Error while uploading file!',
                parallelUploads: 100,
                init: function() {
                        var submitButton = document.querySelector("#submit-projectfile");
                        myDropzone = this; // closure
                        submitButton.addEventListener("click",
                        function() {
                                myDropzone.processQueue(); // Tell Dropzone to process all queued files.
                        });
                        //添加一个文件的事件
                        this.on("addedfile",
                        function(file) {
                                $('#submit-projectfile').attr("style", "");
                                if (this.files.length) {
                                    var _i, _len;
                                    for (_i = 0, _len = this.files.length; _i < _len - 1; _i++) // -1 to exclude current file
                                    {
                                        if(this.files[_i].name === file.name)
                                        {
                                            swal("错误", "文件：" + filename + "已经在上传队列中！不能重复添加。", "error");
                                            this.removeFile(file);
                                        }
                                    }
                                }
                        });
                        //删除文件的事件，当上传的文件为空时，使上传按钮不可用状态
                        this.on("removedfile",
                        function() {
                                if (this.getAcceptedFiles().length === 0) {
                                        $("#submit-projectfile").attr("style", "display:none");
                                }
                        });
                        //ajax请求收到回复后的事件
                        this.on("complete",
                        function(data) {
                                result = data.xhr.responseText;
                                if (result == '"fail"') {
                                        filename = data.name;
                                        var i, len, pre;
                                        swal("错误", "上传文件：" + filename + "时发生错误！", "error");
                                        uploadflag = false;
                                } else if (result == '"duplicate"') {
                                        filename = data.name;
                                        var i, len, pre;
                                        swal("错误", "您已上传名称为：" + filename + "的同名文件，请修改文件名称后重新上传！", "error");
                                        uploadflag = false;
                                } else {
                                        uploadflag = true;
                                        showProjectFile();
                                }
                        });
                        this.on("queuecomplete", function (file) {
                                if(uploadflag){
                                    swal("成功！","已上传您的文件！","success");
                                    this.removeAllFiles();
                                }
                        });
                }        
            };
            Dropzone.options.code = {
                paramName: "file",
                // 与input的name属性一致
                maxFilesize: 100,
                // MB
                autoProcessQueue: false,
                addRemoveLinks: true,
                dictResponseError: 'Error while uploading file!',
                parallelUploads: 100,
                init: function() {
                        var submitButton = document.querySelector("#submit-code");
                        myDropzone1 = this; // closure
                        submitButton.addEventListener("click",
                        function() {
                                myDropzone1.processQueue(); // Tell Dropzone to process all queued files.
                        });
                        //添加一个文件的事件
                        this.on("addedfile",
                        function(file) {
                                $('#submit-code').attr("style", "");
                                if (this.files.length) {
                                    var _i, _len;
                                    for (_i = 0, _len = this.files.length; _i < _len - 1; _i++) // -1 to exclude current file
                                    {
                                        if(this.files[_i].name === file.name)
                                        {
                                            swal("错误", "文件：" + filename + "已经在上传队列中！不能重复添加。", "error");
                                            this.removeFile(file);
                                        }
                                    }
                                }
                        });
                        //删除文件的事件，当上传的文件为空时，使上传按钮不可用状态
                        this.on("removedfile",
                        function() {
                                if (this.getAcceptedFiles().length === 0) {
                                        $("#submit-code").attr("style", "display:none");
                                }
                        });
                        //ajax请求收到回复后的事件
                        this.on("complete",
                        function(data) {
                                result = data.xhr.responseText;
                                if (result == '"fail"') {
                                        filename = data.name;
                                        var i, len, pre;
                                        swal("错误", "上传文件：" + filename + "时发生错误！", "error");
                                        uploadflag = false;
                                } else if (result == '"duplicate"') {
                                        filename = data.name;
                                        var i, len, pre;
                                        swal("错误", "您已上传名称为：" + filename + "的同名文件，请修改文件名称后重新上传！", "error");
                                        uploadflag = false;
                                } else {
                                        uploadflag = true;
                                        showCode();
                                }
                        });
                        this.on("queuecomplete", function (file) {
                                if(uploadflag){
                                    swal("成功！","已上传您的文件！","success");
                                    this.removeAllFiles();
                                }
                        });
                }        
            };
            Dropzone.options.doc = {
                paramName: "file",
                // 与input的name属性一致
                maxFilesize: 100,
                // MB
                autoProcessQueue: false,
                addRemoveLinks: true,
                dictResponseError: 'Error while uploading file!',
                parallelUploads: 100,
                init: function() {
                        var submitButton = document.querySelector("#submit-doc");
                        myDropzone2 = this; // closure
                        submitButton.addEventListener("click",
                        function() {
                                myDropzone2.processQueue(); // Tell Dropzone to process all queued files.
                        });
                        //添加一个文件的事件
                        this.on("addedfile",
                        function(file) {
                                $('#submit-doc').attr("style", "");
                                if (this.files.length) {
                                    var _i, _len;
                                    for (_i = 0, _len = this.files.length; _i < _len - 1; _i++) // -1 to exclude current file
                                    {
                                        if(this.files[_i].name === file.name)
                                        {
                                            swal("错误", "文件：" + filename + "已经在上传队列中！不能重复添加。", "error");
                                            this.removeFile(file);
                                        }
                                    }
                                }
                        });
                        //删除文件的事件，当上传的文件为空时，使上传按钮不可用状态
                        this.on("removedfile",
                        function() {
                                if (this.getAcceptedFiles().length === 0) {
                                        $("#submit-doc").attr("style", "display:none");
                                }
                        });
                        //ajax请求收到回复后的事件
                        this.on("complete",
                        function(data) {
                                result = data.xhr.responseText;
                                if (result == '"fail"') {
                                        filename = data.name;
                                        var i, len, pre;
                                        swal("错误", "上传文件：" + filename + "时发生错误！", "error");
                                        uploadflag = false;
                                } else if (result == '"duplicate"') {
                                        filename = data.name;
                                        var i, len, pre;
                                        swal("错误", "您已上传名称为：" + filename + "的同名文件，请修改文件名称后重新上传！", "error");
                                        uploadflag = false;
                                } else {
                                        uploadflag = true;
                                        showProjectDoc();
                                }
                        });
                        this.on("queuecomplete", function (file) {
                                if(uploadflag){
                                    swal("成功！","已上传您的文件！","success");
                                    this.removeAllFiles();
                                }
                        });
                }        
            };
            Dropzone.options.record = {
                paramName: "file",
                // 与input的name属性一致
                maxFilesize: 100,
                // MB
                autoProcessQueue: false,
                addRemoveLinks: true,
                dictResponseError: 'Error while uploading file!',
                parallelUploads: 100,
                init: function() {
                        var submitButton = document.querySelector("#submit-record");
                        myDropzone3 = this; // closure
                        submitButton.addEventListener("click",
                        function() {
                                myDropzone3.processQueue(); // Tell Dropzone to process all queued files.
                        });
                        //添加一个文件的事件
                        this.on("addedfile",
                        function(file) {
                                $('#submit-record').attr("style", "");
                                if (this.files.length) {
                                    var _i, _len;
                                    for (_i = 0, _len = this.files.length; _i < _len - 1; _i++) // -1 to exclude current file
                                    {
                                        if(this.files[_i].name === file.name)
                                        {
                                            swal("错误", "文件：" + filename + "已经在上传队列中！不能重复添加。", "error");
                                            this.removeFile(file);
                                        }
                                    }
                                }
                        });
                        //删除文件的事件，当上传的文件为空时，使上传按钮不可用状态
                        this.on("removedfile",
                        function() {
                                if (this.getAcceptedFiles().length === 0) {
                                        $("#submit-record").attr("style", "display:none");
                                }
                        });
                        //ajax请求收到回复后的事件
                        this.on("complete",
                        function(data) {
                                result = data.xhr.responseText;
                                if (result == '"fail"') {
                                        filename = data.name;
                                        var i, len, pre;
                                        swal("错误", "上传文件：" + filename + "时发生错误！", "error");
                                        uploadflag = false;
                                } else if (result == '"duplicate"') {
                                        filename = data.name;
                                        var i, len, pre;
                                        swal("错误", "您已上传名称为：" + filename + "的同名文件，请修改文件名称后重新上传！", "error");
                                        uploadflag = false;
                                } else {
                                        uploadflag = true;
                                        showRecord();
                                }
                        });
                        this.on("queuecomplete", function (file) {
                                if(uploadflag){
                                    swal("成功！","已上传您的文件！","success");
                                    this.removeAllFiles();
                                }
                        });
                }        
            };
        });
        
	</script>

	<!-- end: JavaScript-->

</body>

</html>