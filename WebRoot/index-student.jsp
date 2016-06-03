<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">

	<head>
	
		<!-- Basic -->
    	<meta charset="UTF-8" />

		<title>PIP项目检测平台</title>
		
		<!-- Mobile Metas -->
	    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		
		<!-- Import google fonts -->
        <link href="http://fonts.useso.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css" />
        
		<!-- Favicon and touch icons -->
		<link rel="shortcut icon" href="assets/ico/favicon.ico" type="image/x-icon" />
		<link rel="apple-touch-icon" href="assets/ico/apple-touch-icon.png" />
		<link rel="apple-touch-icon" sizes="57x57" href="assets/ico/apple-touch-icon-57x57.png" />
		<link rel="apple-touch-icon" sizes="72x72" href="assets/ico/apple-touch-icon-72x72.png" />
		<link rel="apple-touch-icon" sizes="76x76" href="assets/ico/apple-touch-icon-76x76.png" />
		<link rel="apple-touch-icon" sizes="114x114" href="assets/ico/apple-touch-icon-114x114.png" />
		<link rel="apple-touch-icon" sizes="120x120" href="assets/ico/apple-touch-icon-120x120.png" />
		<link rel="apple-touch-icon" sizes="144x144" href="assets/ico/apple-touch-icon-144x144.png" />
		<link rel="apple-touch-icon" sizes="152x152" href="assets/ico/apple-touch-icon-152x152.png" />
		
	    <!-- start: CSS file-->
		
		<!-- Vendor CSS-->
		<link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
		<link href="assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
		<link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
		
		<!-- Plugins CSS-->		
		<link href="assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />	
		<link href="assets/plugins/scrollbar/css/mCustomScrollbar.css" rel="stylesheet" />
		<link href="assets/plugins/fullcalendar/css/fullcalendar.css" rel="stylesheet" />
		<link href="assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css" rel="stylesheet" />
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
		table{
			text-align: center;
			vertical-align: middle;
		}
		td{
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
					<li class="visible-md visible-lg"><a href="index-student.jsp#" id="main-menu-toggle"><i class="fa fa-th-large"></i></a></li>
					<li class="visible-xs visible-sm"><a href="index-student.jsp#" id="sidebar-menu"><i class="fa fa-navicon"></i></a></li>			
				</ul>
				<!-- Navbar Right -->
				<div class="navbar-right">
					<!-- Userbox -->
					<div class="userbox">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<div class="profile-info">
								<span class="name">张三</span>
							</div>			
							<i class="fa custom-caret"></i>
						</a>
						<div class="dropdown-menu">
							<ul class="list-unstyled">
								<li>
									<a href="queryscore.jsp"><i class="fa fa-user"></i>我的项目</a>
								</li>
								<li>
									<a href="login.jsp"><i class="fa fa-power-off"></i>登出</a>
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
											<img src="assets/img/avatar.jpg" class="img-circle bk-img-60" alt="" />
										</div>
										<div class="bk-padding-top-10">
											<i class="fa fa-circle text-success"></i> <small>张三</small>
										</div>
									</div>
									<div class="divider2"></div>
									<li class="active">
										<a href="projectDetailStateShow.action">  <!-- index-student.jsp -->
											<i class="fa fa-laptop" aria-hidden="true"></i><span>检测流程</span>
										</a>
									</li>
									<li>
										<a href="uploadfile.jsp">
											<i class="fa fa-arrow-up" aria-hidden="true"></i><span>上传项目文档</span>
										</a>
									</li>
									<li>
										<a href="showTestCaseList.action">  <!-- testcase.jsp -->
											<i class="fa fa-copy" aria-hidden="true"></i><span>选择测试用例</span>
										</a>
									</li>
									<li>
										<a href="projectDetailStatueAndScoreShow.action"><!-- queryscore.jsp -->
											<i class="fa  fa-search" aria-hidden="true"></i><span>查询项目评分</span>
										</a>
									</li>
								</ul>
							</nav>
						</div>
						<!-- End Sidebar Menu-->
					</div>
					<!-- Sidebar Footer-->
					<div class="sidebar-footer">	
						<div class="copyright text-center" style="margin-top: 50px;">
						    <i class="fa fa-location-arrow"></i>北京市海淀区西土城路10号<br>
						    <i class="fa fa-envelope-o"></i>projectpip@163.com<br>
						    <i class="fa fa-phone"></i>010-62345789<br>
							<small>&copy北京邮电大学软件学院</small>
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
								<li><a href="index-student.jsp"><i class="icon fa fa-home"></i>主页</a></li>
								<li class="active"><i class="fa fa-laptop"></i>检测流程</li>
							</ol>						
						</div>
						<div class="pull-right">
							<h2>检测流程</h2>
						</div>					
					</div>
					<!-- End Page Header -->		
					<div class="row">		
						<div class="col-lg-12">
							<div class="panel">
								<div class="panel-heading bk-bg-primary">
									<h6><i class="fa fa-table red"></i><span class="break"></span>检测流程</h6>
								</div>
								<div class="panel-body">
									<div class="table-responsive">	
										<table class="table table-striped table-bordered">
											<thead>
												<tr>
													<th style="text-align: center;">流程</th>
													<th style="text-align: center;">状态</th>
													<th style="text-align: center;">操作</th>
												</tr>
											</thead>   
											<tbody>								
												<tr>
													<td>在编号为SPM-XXX的服务器上安装部署系统</td>
													<td>
														<s:if test="projectDetail[0] == 1">
															<span class="label label-success">成功</span>
														</s:if>
														<s:else>
															<span class="label label-warning">进行中</span>
														</s:else>
													</td>
													<td>
														<a class="btn btn-success" href="">
															<i class="fa fa-search-plus "></i>                                            
														</a>
													</td>
												</tr>
												<tr>
													<td>提交源程序，放到指定的目录：/SPM-组号</td>
													<td>
														<s:if test="projectDetail[1] == 1">
																<span class="label label-success">成功</span>
															</s:if>
															<s:else>
																<span class="label label-warning">进行中</span>
														</s:else>
													</td>
													<td>
														<a class="btn btn-success" href="uploadfile.jsp">
															<i class="fa fa-search-plus "></i>                                            
														</a>
													</td>
												</tr>
												<tr>
													<td>随机选择5个功能测试用例</td>
													<td>
														<s:if test="projectDetail[2] == 1">
																<span class="label label-success">成功</span>
															</s:if>
															<s:else>
																<span class="label label-warning">进行中</span>
														</s:else>
													</td>
													<td>
														<a class="btn btn-success" href="testcase.jsp">
															<i class="fa fa-search-plus "></i>                                            
														</a>
													</td>
												</tr>
												<tr>
													<td>随机选择5个性能测试用例</td>
													<td>
														<s:if test="projectDetail[3] == 1">
																<span class="label label-success">成功</span>
															</s:if>
															<s:else>
																<span class="label label-warning">进行中</span>
														</s:else>
													</td>
													<td>
														<a class="btn btn-success" href="testcase.jsp">
															<i class="fa fa-search-plus "></i>                                            
														</a>
													</td>
												</tr>
												<tr>
													<td>随机选择1个压力测试用例</td>
													<td>
														<s:if test="projectDetail[4] == 1">
																<span class="label label-success">成功</span>
															</s:if>
															<s:else>
																<span class="label label-warning">进行中</span>
														</s:else>
													</td>
													<td>
														<a class="btn btn-success" href="testcase.jsp">
															<i class="fa fa-search-plus "></i>                                            
														</a>
													</td>
												</tr>
												<tr>
													<td>提交需求文档、概要设计、详细设计，符合文件名字（BUPT-SPM-组号-SRS、BUPT-SPM-组号-HLD、BUPT-SPM-组号-DLD）、章节检查（参照模板）</td>
													<td>
														<s:if test="projectDetail[5] == 1">
																<span class="label label-success">成功</span>
															</s:if>
															<s:else>
																<span class="label label-warning">进行中</span>
														</s:else>
													</td>
													<td>
														<a class="btn btn-success" href="uploadfile.jsp">
															<i class="fa fa-search-plus "></i>                                            
														</a>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>					
					</div>						
				</div>
				<!--End Main Page-->
			
			</div>
		</div><!--/container-->
		
		
		<!-- start: JavaScript-->
		
		<!-- Vendor JS-->				
		<script src="assets/vendor/js/jquery.min.js"></script>
		<script src="assets/vendor/js/jquery-2.1.1.min.js"></script>
		<script src="assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
		<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="assets/vendor/skycons/js/skycons.js"></script>		
		
		<!-- Plugins JS-->		
		<script src="assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
		<script src="assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
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
		<script src="assets/plugins/d3/js/d3.min.js"></script>		
		<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
		
		<!-- Theme JS -->		
		<script src="assets/js/jquery.mmenu.min.js"></script>
		<script src="assets/js/core.min.js"></script>
		
		<!-- Pages JS -->
		<script src="assets/js/pages/index.js"></script>
		
		<!-- end: JavaScript-->
		
	</body>
	
</html>