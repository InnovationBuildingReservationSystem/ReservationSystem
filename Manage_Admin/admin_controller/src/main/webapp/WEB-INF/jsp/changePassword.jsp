<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>修改密码</title>

    <meta name="description" content="Common form elements and layouts" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/font-awesome/4.5.0/css/font-awesome.min.css" />

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jquery-ui.custom.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/chosen.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap-datepicker3.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap-timepicker.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/daterangepicker.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap-datetimepicker.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap-colorpicker.min.css" />

    <!-- text fonts -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fonts.googleapis.com.css" />

    <!-- ace styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

    <!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-skins.min.css" />
    <link rel="stylesheet" href=${pageContext.request.contextPath}/"assets/css/ace-rtl.min.css" />

    <!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="${pageContext.request.contextPath}/assets/js/ace-extra.min.js"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
</head>

<body class="no-skin">
    <div id="navbar" class="navbar navbar-default          ace-save-state">
        <div class="navbar-container ace-save-state" id="navbar-container">


            <div class="navbar-header pull-left">
                <a href="index.html" class="navbar-brand">
                    <small>
							<i class="fa fa-leaf"></i>
							首页
						</small>
                </a>
            </div>


        </div>
        <!-- /.navbar-container -->
    </div>

    <div class="main-container ace-save-state" id="main-container">
        <script type="text/javascript">
            try {
                ace.settings.loadState('main-container')
            } catch (e) {}
        </script>

        <div id="sidebar" class="sidebar                  responsive                    ace-save-state">
            <script type="text/javascript">
                try {
                    ace.settings.loadState('sidebar')
                } catch (e) {}
            </script>


            <ul class="nav nav-list">
                <li class="">
                    <a href="index.html">
                        <i class="menu-icon fa fa-tachometer"></i>
                        <span class="menu-text"> 首页 </span>
                    </a>

                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="#" class="dropdown-toggle">
                        <i class="menu-icon fa fa-desktop"></i>
                        <span class="menu-text">
							    信息管理
							</span>

                        <b class="arrow fa fa-angle-down"></b>
                    </a>

                    <b class="arrow"></b>

                    <ul class="submenu">


                        <li class="">
                            <a href="typography.html">
                                <i class="menu-icon fa fa-caret-right"></i> 学生信息管理
                            </a>

                            <b class="arrow"></b>
                        </li>

                        <li class="">
                            <a href="elements.html">
                                <i class="menu-icon fa fa-caret-right"></i> 教室信息管理
                            </a>

                            <b class="arrow"></b>
                        </li>
                    </ul>
                </li>
                <li class="">
                    <a href="#" class="dropdown-toggle">
                        <i class="menu-icon fa fa-desktop"></i>
                        <span class="menu-text">
                                预约管理
							</span>

                        <b class="arrow fa fa-angle-down"></b>
                    </a>

                    <b class="arrow"></b>

                    <ul class="submenu">


                        <li class="">
                            <a href="${pageContext.request.contextPath}/orderTable.html">
                                <i class="menu-icon fa fa-caret-right"></i> 学生预约信息查询
                            </a>

                            <b class="arrow"></b>
                        </li>

                        <li class="">
                            <a href="elements.html">
                                <i class="menu-icon fa fa-caret-right"></i> 教室预约信息查询
                            </a>

                            <b class="arrow"></b>
                        </li>
                    </ul>
                </li>


                <li class="">
                    <a href="${pageContext.request.contextPath}/changePassword.html">
                        <i class="menu-icon fa fa-caret-right"></i> 修改密码
                    </a>

                    <b class="arrow"></b>
                </li>

            </ul>
            <!-- /.nav-list -->

            <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
                <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
            </div>
        </div>

        <div class="main-content">
            <div class="main-content-inner">
                <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                    <ul class="breadcrumb">
                        <li>
                            <i class="ace-icon fa fa-home home-icon"></i>
                            <a href="#">主页面</a>
                        </li>
                        <li>
                            <a href="#">修改密码</a>
                        </li>
                    </ul>
                </div>
                <div class="page-header">
                    <h1>
                        修改密码
                    </h1>
                </div>
                <!-- /.page-header -->

                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        <form id="changePasswordForm" class="form-horizontal" role="form" action="${pageContext.request.contextPath}/changePasswordById.html" method="post">


                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> 原密码 </label>

                                <div class="col-sm-9">
                                    <input id="password" name="password" type="password"  placeholder="原密码" class="col-xs-10 col-sm-5" />
                                    <span class="help-inline col-xs-12 col-sm-7">
                                    <C:if test="${check eq 0}">
                                        <span class="middle" style="color: red">原密码输入错误</span>
                                    </C:if>
                                    </span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> 新密码 </label>

                                <div class="col-sm-9">
                                    <input id="newPassword" name="newPassword" type="password" id="form-field-2" placeholder="新密码" class="col-xs-10 col-sm-5" />
                                    <span id="checkPassword" class="help-inline col-xs-12 col-sm-7" style="display: none">
												<span class="middle">两次密码输入不一致</span>
                                    </span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> 再一次输入密码 </label>

                                <div class="col-sm-9">
                                    <input id="newPassword1" name="newPassword1" type="password" id="form-field-2" placeholder="再次输入密码" class="col-xs-10 col-sm-5" />
                                    <span class="help-inline col-xs-12 col-sm-7" style="display:none">
												<span class="middle">Inline help text</span>
                                    </span>
                                </div>
                            </div>
                            <div class="space-4"></div>





                            <div  class="space-4"></div>



                            <div class="space-4"></div>

                            <div class="clearfix form-actions">
                                <div class="col-md-offset-3 col-md-9">
                                    <button class="btn btn-info" type="button" onclick="changePassword();">
												<i class="ace-icon fa fa-check bigger-110"></i>
												确认修改
											</button> &nbsp; &nbsp; &nbsp;
                                    <button class="btn" type="reset">
												<i class="ace-icon fa fa-undo bigger-110"></i>
												重置信息
											</button>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
                <!-- PAGE CONTENT ENDS -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </div>

    <!-- /.main-content -->



    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
    </div>
    <!-- /.main-container -->

    <!-- basic scripts -->

    <!--[if !IE]> -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery-2.1.4.min.js"></script>

    <!-- <![endif]-->

    <!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
    <script type="text/javascript">
        if ('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
    </script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

    <!-- page specific plugin scripts -->

    <!--[if lte IE 8]>
		  <script src="${pageContext.request.contextPath}/assets/js/excanvas.min.js"></script>
		<![endif]-->
    <script src="${pageContext.request.contextPath}/assets/js/jquery-ui.custom.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery.ui.touch-punch.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/chosen.jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/spinbox.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap-datepicker.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap-timepicker.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/moment.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/daterangepicker.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap-datetimepicker.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap-colorpicker.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery.knob.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/autosize.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery.inputlimiter.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery.maskedinput.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap-tag.min.js"></script>

    <!-- ace scripts -->
    <script src="${pageContext.request.contextPath}/assets/js/ace-elements.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/ace.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery.js" type="text/javascript"></script>

    <script src="${pageContext.request.contextPath}/assets/js/jquery.validate.js" type="text/javascript"></script>
    <!-- inline scripts related to this page -->
    <script type="text/javascript">

        function  changePassword() {
            var password =$("#password").val();
            var newPassword=$("#newPassword").val();
            var newPassword1=$("#newPassword1").val();
            if(password.length<8||password.length>16)
            {

            }
            if(!newPassword1==newPassword)
            {
                $("#checkPassword").css('display','block');
            }
        }
    </script>
</body>

</html>