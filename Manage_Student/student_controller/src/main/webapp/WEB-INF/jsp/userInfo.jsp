<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>个人信息 - 创新楼教室预约系统</title>

    <meta name="description" content="Common UI Features &amp; Elements"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/font-awesome/4.5.0/css/font-awesome.min.css"/>

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jquery-ui.custom.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jquery.gritter.min.css"/>

    <!-- text fonts -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fonts.googleapis.com.css"/>

    <!-- ace styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.min.css" class="ace-main-stylesheet"
          id="main-ace-style"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-part2.min.css"
          class="ace-main-stylesheet"/>
    <![endif]-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-skins.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-rtl.min.css"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-ie.min.css"/>
    <![endif]-->

    <!-- inline styles related to this page -->
    <style>
        /* some elements used in demo only */
        .spinner-preview {
            width: 100px;
            height: 100px;
            text-align: center;
            margin-top: 60px;
        }

        .dropdown-preview {
            margin: 0 5px;
            display: inline-block;
        }

        .dropdown-preview > .dropdown-menu {
            display: block;
            position: static;
            margin-bottom: 5px;
        }
    </style>

    <!-- ace settings handler -->
    <script src="${pageContext.request.contextPath}/assets/js/ace-extra.min.js"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <script src="${pageContext.request.contextPath}/assets/js/html5shiv.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="no-skin">
<div id="navbar" class="navbar navbar-default          ace-save-state">
    <div class="navbar-container ace-save-state" id="navbar-container">
        <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
            <span class="sr-only">Toggle sidebar</span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>
        </button>

        <div class="navbar-header pull-left">
            <a href="${pageContext.request.contextPath}/student/personalOrder.html" class="navbar-brand">
                <small>
                    <i class="fa fa-leaf"></i>
                    创新楼教室预约系统
                </small>
            </a>
        </div>

        <div class="navbar-buttons navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav" style="text-align: right;">
                <li class="light-blue dropdown-modal">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <img class="nav-user-photo"
                             src="${pageContext.request.contextPath}/assets/images/avatars/user.jpg"
                             alt="User's Photo"/>
                        <span class="user-info">
									<small>Welcome,</small>
									${student.sname}
								</span>

                        <i class="ace-icon fa fa-caret-down"></i>
                    </a>

                    <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        <li>
                            <a href="${pageContext.request.contextPath}/student/passwordChange.html">
                                <i class="ace-icon fa fa-cog"></i>
                                修改密码
                            </a>
                        </li>

                        <li>
                            <a href="${pageContext.request.contextPath}/student/userInfo.html">
                                <i class="ace-icon fa fa-user"></i>
                                个人详情
                            </a>
                        </li>

                        <li class="divider"></li>

                        <li>
                            <a href="#">
                                <i class="ace-icon fa fa-power-off"></i>
                                退出
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div><!-- /.navbar-container -->
</div>

<div class="main-container ace-save-state" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.loadState('main-container')
        } catch (e) {
        }
    </script>

    <div id="sidebar" class="sidebar                  responsive                    ace-save-state">
        <script type="text/javascript">
            try {
                ace.settings.loadState('sidebar')
            } catch (e) {
            }
        </script>

        <div class="sidebar-shortcuts" id="sidebar-shortcuts">
            <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
                <button class="btn btn-success">
                    <i class="ace-icon fa fa-signal"></i>
                </button>

                <button class="btn btn-info">
                    <i class="ace-icon fa fa-pencil"></i>
                </button>

                <button class="btn btn-warning">
                    <i class="ace-icon fa fa-users"></i>
                </button>

                <button class="btn btn-danger">
                    <i class="ace-icon fa fa-cogs"></i>
                </button>
            </div>

            <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
                <span class="btn btn-success"></span>

                <span class="btn btn-info"></span>

                <span class="btn btn-warning"></span>

                <span class="btn btn-danger"></span>
            </div>
        </div><!-- /.sidebar-shortcuts -->

        <ul class="nav nav-list">
            <%--<li class="">--%>
            <%--<a href="index.html">--%>
            <%--<i class="menu-icon fa fa-tachometer"></i>--%>
            <%--<span class="menu-text"> Dashboard </span>--%>
            <%--</a>--%>

            <%--<b class="arrow"></b>--%>
            <%--</li>--%>

            <li class="active open">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-user"></i>
                    <span class="menu-text">
								个人信息
							</span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                    <%--<li class="">--%>
                    <%--<a href="#" class="dropdown-toggle">--%>
                    <%--<i class="menu-icon fa fa-caret-right"></i>--%>

                    <%--Layouts--%>
                    <%--<b class="arrow fa fa-angle-down"></b>--%>
                    <%--</a>--%>

                    <%--<b class="arrow"></b>--%>

                    <%--<ul class="submenu">--%>
                    <%--<li class="">--%>
                    <%--<a href="top-menu.html">--%>
                    <%--<i class="menu-icon fa fa-caret-right"></i>--%>
                    <%--Top Menu--%>
                    <%--</a>--%>

                    <%--<b class="arrow"></b>--%>
                    <%--</li>--%>

                    <%--<li class="">--%>
                    <%--<a href="two-menu-1.html">--%>
                    <%--<i class="menu-icon fa fa-caret-right"></i>--%>
                    <%--Two Menus 1--%>
                    <%--</a>--%>

                    <%--<b class="arrow"></b>--%>
                    <%--</li>--%>

                    <%--<li class="">--%>
                    <%--<a href="two-menu-2.html">--%>
                    <%--<i class="menu-icon fa fa-caret-right"></i>--%>
                    <%--Two Menus 2--%>
                    <%--</a>--%>

                    <%--<b class="arrow"></b>--%>
                    <%--</li>--%>

                    <%--<li class="">--%>
                    <%--<a href="mobile-menu-1.html">--%>
                    <%--<i class="menu-icon fa fa-caret-right"></i>--%>
                    <%--Default Mobile Menu--%>
                    <%--</a>--%>

                    <%--<b class="arrow"></b>--%>
                    <%--</li>--%>

                    <%--<li class="">--%>
                    <%--<a href="mobile-menu-2.html">--%>
                    <%--<i class="menu-icon fa fa-caret-right"></i>--%>
                    <%--Mobile Menu 2--%>
                    <%--</a>--%>

                    <%--<b class="arrow"></b>--%>
                    <%--</li>--%>

                    <%--<li class="">--%>
                    <%--<a href="mobile-menu-3.html">--%>
                    <%--<i class="menu-icon fa fa-caret-right"></i>--%>
                    <%--Mobile Menu 3--%>
                    <%--</a>--%>

                    <%--<b class="arrow"></b>--%>
                    <%--</li>--%>
                    <%--</ul>--%>
                    <%--</li>--%>

                    <li class="active">
                        <a href="${pageContext.request.contextPath}/student/userInfo.html">
                            <i class="menu-icon fa fa-caret-right"></i>
                            个人详情
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a href="${pageContext.request.contextPath}/student/passwordChange.html">
                            <i class="menu-icon fa fa-caret-right"></i>
                            修改密码
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <%--<li class="">--%>
                    <%--<a href="buttons.html">--%>
                    <%--<i class="menu-icon fa fa-caret-right"></i>--%>
                    <%--Buttons &amp; Icons--%>
                    <%--</a>--%>

                    <%--<b class="arrow"></b>--%>
                    <%--</li>--%>

                    <%--<li class="">--%>
                    <%--<a href="content-slider.html">--%>
                    <%--<i class="menu-icon fa fa-caret-right"></i>--%>
                    <%--Content Sliders--%>
                    <%--</a>--%>

                    <%--<b class="arrow"></b>--%>
                    <%--</li>--%>

                    <%--<li class="">--%>
                    <%--<a href="treeview.html">--%>
                    <%--<i class="menu-icon fa fa-caret-right"></i>--%>
                    <%--Treeview--%>
                    <%--</a>--%>

                    <%--<b class="arrow"></b>--%>
                    <%--</li>--%>

                    <%--<li class="">--%>
                    <%--<a href="jquery-ui.html">--%>
                    <%--<i class="menu-icon fa fa-caret-right"></i>--%>
                    <%--jQuery UI--%>
                    <%--</a>--%>

                    <%--<b class="arrow"></b>--%>
                    <%--</li>--%>

                    <%--<li class="">--%>
                    <%--<a href="nestable-list.html">--%>
                    <%--<i class="menu-icon fa fa-caret-right"></i>--%>
                    <%--Nestable Lists--%>
                    <%--</a>--%>

                    <%--<b class="arrow"></b>--%>
                    <%--</li>--%>

                    <%--<li class="">--%>
                    <%--<a href="#" class="dropdown-toggle">--%>
                    <%--<i class="menu-icon fa fa-caret-right"></i>--%>

                    <%--Three Level Menu--%>
                    <%--<b class="arrow fa fa-angle-down"></b>--%>
                    <%--</a>--%>

                    <%--<b class="arrow"></b>--%>

                    <%--<ul class="submenu">--%>
                    <%--<li class="">--%>
                    <%--<a href="#">--%>
                    <%--<i class="menu-icon fa fa-leaf green"></i>--%>
                    <%--Item #1--%>
                    <%--</a>--%>

                    <%--<b class="arrow"></b>--%>
                    <%--</li>--%>

                    <%--<li class="">--%>
                    <%--<a href="#" class="dropdown-toggle">--%>
                    <%--<i class="menu-icon fa fa-pencil orange"></i>--%>

                    <%--4th level--%>
                    <%--<b class="arrow fa fa-angle-down"></b>--%>
                    <%--</a>--%>

                    <%--<b class="arrow"></b>--%>

                    <%--<ul class="submenu">--%>
                    <%--<li class="">--%>
                    <%--<a href="#">--%>
                    <%--<i class="menu-icon fa fa-plus purple"></i>--%>
                    <%--Add Product--%>
                    <%--</a>--%>

                    <%--<b class="arrow"></b>--%>
                    <%--</li>--%>

                    <%--<li class="">--%>
                    <%--<a href="#">--%>
                    <%--<i class="menu-icon fa fa-eye pink"></i>--%>
                    <%--View Products--%>
                    <%--</a>--%>

                    <%--<b class="arrow"></b>--%>
                    <%--</li>--%>
                    <%--</ul>--%>
                    <%--</li>--%>
                    <%--</ul>--%>
                    <%--</li>--%>
                </ul>
            </li>

            <li class="">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-list"></i>
                    <span class="menu-text"> 教室查询 </span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                    <li class="">
                        <a href="${pageContext.request.contextPath}/student/ClassroomInfo.html">
                            <i class="menu-icon fa fa-caret-right"></i>
                            教室使用情况
                        </a>

                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>

            <li class="">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-pencil-square-o"></i>
                    <span class="menu-text"> 教室预订 </span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                    <li class="">
                        <a href="${pageContext.request.contextPath}/student/application.html">
                            <i class="menu-icon fa fa-caret-right"></i>
                            教室申请
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a href="${pageContext.request.contextPath}/student/personalOrder.html?page=1">
                            <i class="menu-icon fa fa-caret-right"></i>
                            个人申请情况
                        </a>

                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>

        </ul><!-- /.nav-list -->

        <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
            <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state"
               data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
        </div>
    </div>

    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">首页</a>
                    </li>

                    <li>
                        <a href="#">个人信息</a>
                    </li>
                    <li class="active">个人详情</li>
                </ul><!-- /.breadcrumb -->

                <div class="nav-search" id="nav-search">
                    <form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input"
                                           id="nav-search-input" autocomplete="off"/>
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
                    </form>
                </div><!-- /.nav-search -->
            </div>

            <div class="page-content">

                <div class="page-header">
                    <h1>
                        个人详情
                    </h1>
                </div><!-- /.page-header -->

                <div class="row">
                    <div class="col-xs-12">

                        <div class="hr dotted"></div>

                        <div>
                            <div id="user-profile-1" class="user-profile row">
                                <div class="col-xs-12 col-sm-3 center">
                                    <div>
												<span class="profile-picture">
													<img id="avatar" class="editable img-responsive"
                                                         alt="${student.sname}的头像"
                                                         src="${pageContext.request.contextPath}/assets/images/avatars/avatar2.png"/>
												</span>

                                        <div class="space-4"></div>

                                        <div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
                                            <div class="inline position-relative">
                                                <a href="#" class="user-title-label dropdown-toggle"
                                                   data-toggle="dropdown">
                                                    <i class="ace-icon fa fa-circle light-green"></i>
                                                    &nbsp;
                                                    <span class="white">${student.sname}</span>
                                                </a>

                                                <ul class="align-left dropdown-menu dropdown-caret dropdown-lighter">
                                                    <li class="dropdown-header"> Change Status</li>

                                                    <li>
                                                        <a href="#">
                                                            <i class="ace-icon fa fa-circle green"></i>
                                                            &nbsp;
                                                            <span class="green">Available</span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#">
                                                            <i class="ace-icon fa fa-circle red"></i>
                                                            &nbsp;
                                                            <span class="red">Busy</span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#">
                                                            <i class="ace-icon fa fa-circle grey"></i>
                                                            &nbsp;
                                                            <span class="grey">Invisible</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="space-6"></div>


                                    <div class="hr hr12 dotted"></div>

                                    <div class="clearfix" style="width: 100%;">
                                        <div class="grid2">
                                            <span class="bigger-175 blue">${appCount}</span>

                                            <br/>
                                            申请次数
                                        </div>

                                    </div>

                                    <div class="hr hr16 dotted"></div>
                                </div>

                                <div class="col-xs-12 col-sm-9">
                                    <div class="center">
												<span class="btn btn-app btn-sm btn-light no-hover">
													<span class="line-height-1 bigger-170 blue"> 1,411 </span>

													<br/>
													<span class="line-height-1 smaller-90"> Views </span>
												</span>

                                        <span class="btn btn-app btn-sm btn-yellow no-hover">
													<span class="line-height-1 bigger-170"> 32 </span>

													<br/>
													<span class="line-height-1 smaller-90"> Followers </span>
												</span>

                                        <span class="btn btn-app btn-sm btn-pink no-hover">
													<span class="line-height-1 bigger-170"> 4 </span>

													<br/>
													<span class="line-height-1 smaller-90"> Projects </span>
												</span>

                                        <span class="btn btn-app btn-sm btn-grey no-hover">
													<span class="line-height-1 bigger-170"> 23 </span>

													<br/>
													<span class="line-height-1 smaller-90"> Reviews </span>
												</span>

                                        <span class="btn btn-app btn-sm btn-success no-hover">
													<span class="line-height-1 bigger-170"> 7 </span>

													<br/>
													<span class="line-height-1 smaller-90"> Albums </span>
												</span>

                                        <span class="btn btn-app btn-sm btn-primary no-hover">
													<span class="line-height-1 bigger-170"> 55 </span>

													<br/>
													<span class="line-height-1 smaller-90"> Contacts </span>
												</span>
                                    </div>

                                    <div class="space-12"></div>

                                    <div class="profile-user-info profile-user-info-striped">
                                        <div class="profile-info-row">
                                            <div class="profile-info-name"> Username</div>

                                            <div class="profile-info-value">
                                                <span class="editable" id="username">alexdoe</span>
                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name"> Location</div>

                                            <div class="profile-info-value">
                                                <i class="fa fa-map-marker light-orange bigger-110"></i>
                                                <span class="editable" id="country">Netherlands</span>
                                                <span class="editable" id="city">Amsterdam</span>
                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name"> Age</div>

                                            <div class="profile-info-value">
                                                <span class="editable" id="age">38</span>
                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name"> Joined</div>

                                            <div class="profile-info-value">
                                                <span class="editable" id="signup">2010/06/20</span>
                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name"> Last Online</div>

                                            <div class="profile-info-value">
                                                <span class="editable" id="login">3 hours ago</span>
                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name"> About Me</div>

                                            <div class="profile-info-value">
                                                <span class="editable" id="about">Editable as WYSIWYG</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="space-20"></div>

                                    <div class="widget-box transparent">
                                        <div class="widget-header widget-header-small">
                                            <h4 class="widget-title blue smaller">
                                                <i class="ace-icon fa fa-rss orange"></i>
                                                Recent Activities
                                            </h4>

                                            <div class="widget-toolbar action-buttons">
                                                <a href="#" data-action="reload">
                                                    <i class="ace-icon fa fa-refresh blue"></i>
                                                </a>
                                                &nbsp;
                                                <a href="#" class="pink">
                                                    <i class="ace-icon fa fa-trash-o"></i>
                                                </a>
                                            </div>
                                        </div>

                                        <div class="widget-body">
                                            <div class="widget-main padding-8">
                                                <div id="profile-feed-1" class="profile-feed">
                                                    <div class="profile-activity clearfix">
                                                        <div>
                                                            <img class="pull-left" alt="Alex Doe's avatar"
                                                                 src="assets/images/avatars/avatar5.png"/>
                                                            <a class="user" href="#"> Alex Doe </a>
                                                            changed his profile photo.
                                                            <a href="#">Take a look</a>

                                                            <div class="time">
                                                                <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                an hour ago
                                                            </div>
                                                        </div>

                                                        <div class="tools action-buttons">
                                                            <a href="#" class="blue">
                                                                <i class="ace-icon fa fa-pencil bigger-125"></i>
                                                            </a>

                                                            <a href="#" class="red">
                                                                <i class="ace-icon fa fa-times bigger-125"></i>
                                                            </a>
                                                        </div>
                                                    </div>

                                                    <div class="profile-activity clearfix">
                                                        <div>
                                                            <img class="pull-left" alt="Susan Smith's avatar"
                                                                 src="assets/images/avatars/avatar1.png"/>
                                                            <a class="user" href="#"> Susan Smith </a>

                                                            is now friends with Alex Doe.
                                                            <div class="time">
                                                                <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                2 hours ago
                                                            </div>
                                                        </div>

                                                        <div class="tools action-buttons">
                                                            <a href="#" class="blue">
                                                                <i class="ace-icon fa fa-pencil bigger-125"></i>
                                                            </a>

                                                            <a href="#" class="red">
                                                                <i class="ace-icon fa fa-times bigger-125"></i>
                                                            </a>
                                                        </div>
                                                    </div>

                                                    <div class="profile-activity clearfix">
                                                        <div>
                                                            <i class="pull-left thumbicon fa fa-check btn-success no-hover"></i>
                                                            <a class="user" href="#"> Alex Doe </a>
                                                            joined
                                                            <a href="#">Country Music</a>

                                                            group.
                                                            <div class="time">
                                                                <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                5 hours ago
                                                            </div>
                                                        </div>

                                                        <div class="tools action-buttons">
                                                            <a href="#" class="blue">
                                                                <i class="ace-icon fa fa-pencil bigger-125"></i>
                                                            </a>

                                                            <a href="#" class="red">
                                                                <i class="ace-icon fa fa-times bigger-125"></i>
                                                            </a>
                                                        </div>
                                                    </div>

                                                    <div class="profile-activity clearfix">
                                                        <div>
                                                            <i class="pull-left thumbicon fa fa-picture-o btn-info no-hover"></i>
                                                            <a class="user" href="#"> Alex Doe </a>
                                                            uploaded a new photo.
                                                            <a href="#">Take a look</a>

                                                            <div class="time">
                                                                <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                5 hours ago
                                                            </div>
                                                        </div>

                                                        <div class="tools action-buttons">
                                                            <a href="#" class="blue">
                                                                <i class="ace-icon fa fa-pencil bigger-125"></i>
                                                            </a>

                                                            <a href="#" class="red">
                                                                <i class="ace-icon fa fa-times bigger-125"></i>
                                                            </a>
                                                        </div>
                                                    </div>

                                                    <div class="profile-activity clearfix">
                                                        <div>
                                                            <img class="pull-left" alt="David Palms's avatar"
                                                                 src="assets/images/avatars/avatar4.png"/>
                                                            <a class="user" href="#"> David Palms </a>

                                                            left a comment on Alex's wall.
                                                            <div class="time">
                                                                <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                8 hours ago
                                                            </div>
                                                        </div>

                                                        <div class="tools action-buttons">
                                                            <a href="#" class="blue">
                                                                <i class="ace-icon fa fa-pencil bigger-125"></i>
                                                            </a>

                                                            <a href="#" class="red">
                                                                <i class="ace-icon fa fa-times bigger-125"></i>
                                                            </a>
                                                        </div>
                                                    </div>

                                                    <div class="profile-activity clearfix">
                                                        <div>
                                                            <i class="pull-left thumbicon fa fa-pencil-square-o btn-pink no-hover"></i>
                                                            <a class="user" href="#"> Alex Doe </a>
                                                            published a new blog post.
                                                            <a href="#">Read now</a>

                                                            <div class="time">
                                                                <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                11 hours ago
                                                            </div>
                                                        </div>

                                                        <div class="tools action-buttons">
                                                            <a href="#" class="blue">
                                                                <i class="ace-icon fa fa-pencil bigger-125"></i>
                                                            </a>

                                                            <a href="#" class="red">
                                                                <i class="ace-icon fa fa-times bigger-125"></i>
                                                            </a>
                                                        </div>
                                                    </div>

                                                    <div class="profile-activity clearfix">
                                                        <div>
                                                            <img class="pull-left" alt="Alex Doe's avatar"
                                                                 src="assets/images/avatars/avatar5.png"/>
                                                            <a class="user" href="#"> Alex Doe </a>

                                                            upgraded his skills.
                                                            <div class="time">
                                                                <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                12 hours ago
                                                            </div>
                                                        </div>

                                                        <div class="tools action-buttons">
                                                            <a href="#" class="blue">
                                                                <i class="ace-icon fa fa-pencil bigger-125"></i>
                                                            </a>

                                                            <a href="#" class="red">
                                                                <i class="ace-icon fa fa-times bigger-125"></i>
                                                            </a>
                                                        </div>
                                                    </div>

                                                    <div class="profile-activity clearfix">
                                                        <div>
                                                            <i class="pull-left thumbicon fa fa-key btn-info no-hover"></i>
                                                            <a class="user" href="#"> Alex Doe </a>

                                                            logged in.
                                                            <div class="time">
                                                                <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                12 hours ago
                                                            </div>
                                                        </div>

                                                        <div class="tools action-buttons">
                                                            <a href="#" class="blue">
                                                                <i class="ace-icon fa fa-pencil bigger-125"></i>
                                                            </a>

                                                            <a href="#" class="red">
                                                                <i class="ace-icon fa fa-times bigger-125"></i>
                                                            </a>
                                                        </div>
                                                    </div>

                                                    <div class="profile-activity clearfix">
                                                        <div>
                                                            <i class="pull-left thumbicon fa fa-power-off btn-inverse no-hover"></i>
                                                            <a class="user" href="#"> Alex Doe </a>

                                                            logged out.
                                                            <div class="time">
                                                                <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                16 hours ago
                                                            </div>
                                                        </div>

                                                        <div class="tools action-buttons">
                                                            <a href="#" class="blue">
                                                                <i class="ace-icon fa fa-pencil bigger-125"></i>
                                                            </a>

                                                            <a href="#" class="red">
                                                                <i class="ace-icon fa fa-times bigger-125"></i>
                                                            </a>
                                                        </div>
                                                    </div>

                                                    <div class="profile-activity clearfix">
                                                        <div>
                                                            <i class="pull-left thumbicon fa fa-key btn-info no-hover"></i>
                                                            <a class="user" href="#"> Alex Doe </a>

                                                            logged in.
                                                            <div class="time">
                                                                <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                16 hours ago
                                                            </div>
                                                        </div>

                                                        <div class="tools action-buttons">
                                                            <a href="#" class="blue">
                                                                <i class="ace-icon fa fa-pencil bigger-125"></i>
                                                            </a>

                                                            <a href="#" class="red">
                                                                <i class="ace-icon fa fa-times bigger-125"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="hr hr2 hr-double"></div>

                                    <div class="space-6"></div>

                                    <div class="center">
                                        <button type="button" class="btn btn-sm btn-primary btn-white btn-round">
                                            <i class="ace-icon fa fa-rss bigger-150 middle orange2"></i>
                                            <span class="bigger-110">View more activities</span>

                                            <i class="icon-on-right ace-icon fa fa-arrow-right"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="hide">
                            <div id="user-profile-2" class="user-profile">
                                <div class="tabbable">
                                    <ul class="nav nav-tabs padding-18">
                                        <li class="active">
                                            <a data-toggle="tab" href="#home">
                                                <i class="green ace-icon fa fa-user bigger-120"></i>
                                                Profile
                                            </a>
                                        </li>

                                        <li>
                                            <a data-toggle="tab" href="#feed">
                                                <i class="orange ace-icon fa fa-rss bigger-120"></i>
                                                Activity Feed
                                            </a>
                                        </li>

                                        <li>
                                            <a data-toggle="tab" href="#friends">
                                                <i class="blue ace-icon fa fa-users bigger-120"></i>
                                                Friends
                                            </a>
                                        </li>

                                        <li>
                                            <a data-toggle="tab" href="#pictures">
                                                <i class="pink ace-icon fa fa-picture-o bigger-120"></i>
                                                Pictures
                                            </a>
                                        </li>
                                    </ul>

                                    <div class="tab-content no-border padding-24">
                                        <div id="home" class="tab-pane in active">
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-3 center">
															<span class="profile-picture">
																<img class="editable img-responsive" alt="Alex's Avatar"
                                                                     id="avatar2"
                                                                     src="assets/images/avatars/profile-pic.jpg"/>
															</span>

                                                    <div class="space space-4"></div>

                                                    <a href="#" class="btn btn-sm btn-block btn-success">
                                                        <i class="ace-icon fa fa-plus-circle bigger-120"></i>
                                                        <span class="bigger-110">Add as a friend</span>
                                                    </a>

                                                    <a href="#" class="btn btn-sm btn-block btn-primary">
                                                        <i class="ace-icon fa fa-envelope-o bigger-110"></i>
                                                        <span class="bigger-110">Send a message</span>
                                                    </a>
                                                </div><!-- /.col -->

                                                <div class="col-xs-12 col-sm-9">
                                                    <h4 class="blue">
                                                        <span class="middle">Alex M. Doe</span>

                                                        <span class="label label-purple arrowed-in-right">
																	<i class="ace-icon fa fa-circle smaller-80 align-middle"></i>
																	online
																</span>
                                                    </h4>

                                                    <div class="profile-user-info">
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Username</div>

                                                            <div class="profile-info-value">
                                                                <span>alexdoe</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Location</div>

                                                            <div class="profile-info-value">
                                                                <i class="fa fa-map-marker light-orange bigger-110"></i>
                                                                <span>Netherlands</span>
                                                                <span>Amsterdam</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Age</div>

                                                            <div class="profile-info-value">
                                                                <span>38</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Joined</div>

                                                            <div class="profile-info-value">
                                                                <span>2010/06/20</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Last Online</div>

                                                            <div class="profile-info-value">
                                                                <span>3 hours ago</span>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="hr hr-8 dotted"></div>

                                                    <div class="profile-user-info">
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Website</div>

                                                            <div class="profile-info-value">
                                                                <a href="#" target="_blank">www.alexdoe.com</a>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name">
                                                                <i class="middle ace-icon fa fa-facebook-square bigger-150 blue"></i>
                                                            </div>

                                                            <div class="profile-info-value">
                                                                <a href="#">Find me on Facebook</a>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name">
                                                                <i class="middle ace-icon fa fa-twitter-square bigger-150 light-blue"></i>
                                                            </div>

                                                            <div class="profile-info-value">
                                                                <a href="#">Follow me on Twitter</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div><!-- /.col -->
                                            </div><!-- /.row -->

                                            <div class="space-20"></div>

                                            <div class="row">
                                                <div class="col-xs-12 col-sm-6">
                                                    <div class="widget-box transparent">
                                                        <div class="widget-header widget-header-small">
                                                            <h4 class="widget-title smaller">
                                                                <i class="ace-icon fa fa-check-square-o bigger-110"></i>
                                                                Little About Me
                                                            </h4>
                                                        </div>

                                                        <div class="widget-body">
                                                            <div class="widget-main">
                                                                <p>
                                                                    My job is mostly lorem ipsuming and dolor sit
                                                                    ameting as long as consectetur adipiscing elit.
                                                                </p>
                                                                <p>
                                                                    Sometimes quisque commodo massa gets in the way and
                                                                    sed ipsum porttitor facilisis.
                                                                </p>
                                                                <p>
                                                                    The best thing about my job is that vestibulum id
                                                                    ligula porta felis euismod and nullam quis risus
                                                                    eget urna mollis ornare.
                                                                </p>
                                                                <p>
                                                                    Thanks for visiting my profile.
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-6">
                                                    <div class="widget-box transparent">
                                                        <div class="widget-header widget-header-small header-color-blue2">
                                                            <h4 class="widget-title smaller">
                                                                <i class="ace-icon fa fa-lightbulb-o bigger-120"></i>
                                                                My Skills
                                                            </h4>
                                                        </div>

                                                        <div class="widget-body">
                                                            <div class="widget-main padding-16">
                                                                <div class="clearfix">
                                                                    <div class="grid3 center">
                                                                        <div class="easy-pie-chart percentage"
                                                                             data-percent="45" data-color="#CA5952">
                                                                            <span class="percent">45</span>%
                                                                        </div>

                                                                        <div class="space-2"></div>
                                                                        Graphic Design
                                                                    </div>

                                                                    <div class="grid3 center">
                                                                        <div class="center easy-pie-chart percentage"
                                                                             data-percent="90" data-color="#59A84B">
                                                                            <span class="percent">90</span>%
                                                                        </div>

                                                                        <div class="space-2"></div>
                                                                        HTML5 & CSS3
                                                                    </div>

                                                                    <div class="grid3 center">
                                                                        <div class="center easy-pie-chart percentage"
                                                                             data-percent="80" data-color="#9585BF">
                                                                            <span class="percent">80</span>%
                                                                        </div>

                                                                        <div class="space-2"></div>
                                                                        Javascript/jQuery
                                                                    </div>
                                                                </div>

                                                                <div class="hr hr-16"></div>

                                                                <div class="profile-skills">
                                                                    <div class="progress">
                                                                        <div class="progress-bar" style="width:80%">
                                                                            <span class="pull-left">HTML5 & CSS3</span>
                                                                            <span class="pull-right">80%</span>
                                                                        </div>
                                                                    </div>

                                                                    <div class="progress">
                                                                        <div class="progress-bar progress-bar-success"
                                                                             style="width:72%">
                                                                            <span class="pull-left">Javascript & jQuery</span>

                                                                            <span class="pull-right">72%</span>
                                                                        </div>
                                                                    </div>

                                                                    <div class="progress">
                                                                        <div class="progress-bar progress-bar-purple"
                                                                             style="width:70%">
                                                                            <span class="pull-left">PHP & MySQL</span>

                                                                            <span class="pull-right">70%</span>
                                                                        </div>
                                                                    </div>

                                                                    <div class="progress">
                                                                        <div class="progress-bar progress-bar-warning"
                                                                             style="width:50%">
                                                                            <span class="pull-left">Wordpress</span>

                                                                            <span class="pull-right">50%</span>
                                                                        </div>
                                                                    </div>

                                                                    <div class="progress">
                                                                        <div class="progress-bar progress-bar-danger"
                                                                             style="width:38%">
                                                                            <span class="pull-left">Photoshop</span>

                                                                            <span class="pull-right">38%</span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><!-- /#home -->

                                        <div id="feed" class="tab-pane">
                                            <div class="profile-feed row">
                                                <div class="col-sm-6">
                                                    <div class="profile-activity clearfix">
                                                        <div>
                                                            <img class="pull-left" alt="Alex Doe's avatar"
                                                                 src="assets/images/avatars/avatar5.png"/>
                                                            <a class="user" href="#"> Alex Doe </a>
                                                            changed his profile photo.
                                                            <a href="#">Take a look</a>

                                                            <div class="time">
                                                                <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                an hour ago
                                                            </div>
                                                        </div>

                                                        <div class="tools action-buttons">
                                                            <a href="#" class="blue">
                                                                <i class="ace-icon fa fa-pencil bigger-125"></i>
                                                            </a>

                                                            <a href="#" class="red">
                                                                <i class="ace-icon fa fa-times bigger-125"></i>
                                                            </a>
                                                        </div>
                                                    </div>

                                                    <div class="profile-activity clearfix">
                                                        <div>
                                                            <img class="pull-left" alt="Susan Smith's avatar"
                                                                 src="assets/images/avatars/avatar1.png"/>
                                                            <a class="user" href="#"> Susan Smith </a>

                                                            is now friends with Alex Doe.
                                                            <div class="time">
                                                                <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                2 hours ago
                                                            </div>
                                                        </div>

                                                        <div class="tools action-buttons">
                                                            <a href="#" class="blue">
                                                                <i class="ace-icon fa fa-pencil bigger-125"></i>
                                                            </a>

                                                            <a href="#" class="red">
                                                                <i class="ace-icon fa fa-times bigger-125"></i>
                                                            </a>
                                                        </div>
                                                    </div>

                                                    <div class="profile-activity clearfix">
                                                        <div>
                                                            <i class="pull-left thumbicon fa fa-check btn-success no-hover"></i>
                                                            <a class="user" href="#"> Alex Doe </a>
                                                            joined
                                                            <a href="#">Country Music</a>

                                                            group.
                                                            <div class="time">
                                                                <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                5 hours ago
                                                            </div>
                                                        </div>

                                                        <div class="tools action-buttons">
                                                            <a href="#" class="blue">
                                                                <i class="ace-icon fa fa-pencil bigger-125"></i>
                                                            </a>

                                                            <a href="#" class="red">
                                                                <i class="ace-icon fa fa-times bigger-125"></i>
                                                            </a>
                                                        </div>
                                                    </div>

                                                    <div class="profile-activity clearfix">
                                                        <div>
                                                            <i class="pull-left thumbicon fa fa-picture-o btn-info no-hover"></i>
                                                            <a class="user" href="#"> Alex Doe </a>
                                                            uploaded a new photo.
                                                            <a href="#">Take a look</a>

                                                            <div class="time">
                                                                <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                5 hours ago
                                                            </div>
                                                        </div>

                                                        <div class="tools action-buttons">
                                                            <a href="#" class="blue">
                                                                <i class="ace-icon fa fa-pencil bigger-125"></i>
                                                            </a>

                                                            <a href="#" class="red">
                                                                <i class="ace-icon fa fa-times bigger-125"></i>
                                                            </a>
                                                        </div>
                                                    </div>

                                                    <div class="profile-activity clearfix">
                                                        <div>
                                                            <img class="pull-left" alt="David Palms's avatar"
                                                                 src="assets/images/avatars/avatar4.png"/>
                                                            <a class="user" href="#"> David Palms </a>

                                                            left a comment on Alex's wall.
                                                            <div class="time">
                                                                <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                8 hours ago
                                                            </div>
                                                        </div>

                                                        <div class="tools action-buttons">
                                                            <a href="#" class="blue">
                                                                <i class="ace-icon fa fa-pencil bigger-125"></i>
                                                            </a>

                                                            <a href="#" class="red">
                                                                <i class="ace-icon fa fa-times bigger-125"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div><!-- /.col -->

                                                <div class="col-sm-6">
                                                    <div class="profile-activity clearfix">
                                                        <div>
                                                            <i class="pull-left thumbicon fa fa-pencil-square-o btn-pink no-hover"></i>
                                                            <a class="user" href="#"> Alex Doe </a>
                                                            published a new blog post.
                                                            <a href="#">Read now</a>

                                                            <div class="time">
                                                                <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                11 hours ago
                                                            </div>
                                                        </div>

                                                        <div class="tools action-buttons">
                                                            <a href="#" class="blue">
                                                                <i class="ace-icon fa fa-pencil bigger-125"></i>
                                                            </a>

                                                            <a href="#" class="red">
                                                                <i class="ace-icon fa fa-times bigger-125"></i>
                                                            </a>
                                                        </div>
                                                    </div>

                                                    <div class="profile-activity clearfix">
                                                        <div>
                                                            <img class="pull-left" alt="Alex Doe's avatar"
                                                                 src="assets/images/avatars/avatar5.png"/>
                                                            <a class="user" href="#"> Alex Doe </a>

                                                            upgraded his skills.
                                                            <div class="time">
                                                                <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                12 hours ago
                                                            </div>
                                                        </div>

                                                        <div class="tools action-buttons">
                                                            <a href="#" class="blue">
                                                                <i class="ace-icon fa fa-pencil bigger-125"></i>
                                                            </a>

                                                            <a href="#" class="red">
                                                                <i class="ace-icon fa fa-times bigger-125"></i>
                                                            </a>
                                                        </div>
                                                    </div>

                                                    <div class="profile-activity clearfix">
                                                        <div>
                                                            <i class="pull-left thumbicon fa fa-key btn-info no-hover"></i>
                                                            <a class="user" href="#"> Alex Doe </a>

                                                            logged in.
                                                            <div class="time">
                                                                <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                12 hours ago
                                                            </div>
                                                        </div>

                                                        <div class="tools action-buttons">
                                                            <a href="#" class="blue">
                                                                <i class="ace-icon fa fa-pencil bigger-125"></i>
                                                            </a>

                                                            <a href="#" class="red">
                                                                <i class="ace-icon fa fa-times bigger-125"></i>
                                                            </a>
                                                        </div>
                                                    </div>

                                                    <div class="profile-activity clearfix">
                                                        <div>
                                                            <i class="pull-left thumbicon fa fa-power-off btn-inverse no-hover"></i>
                                                            <a class="user" href="#"> Alex Doe </a>

                                                            logged out.
                                                            <div class="time">
                                                                <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                16 hours ago
                                                            </div>
                                                        </div>

                                                        <div class="tools action-buttons">
                                                            <a href="#" class="blue">
                                                                <i class="ace-icon fa fa-pencil bigger-125"></i>
                                                            </a>

                                                            <a href="#" class="red">
                                                                <i class="ace-icon fa fa-times bigger-125"></i>
                                                            </a>
                                                        </div>
                                                    </div>

                                                    <div class="profile-activity clearfix">
                                                        <div>
                                                            <i class="pull-left thumbicon fa fa-key btn-info no-hover"></i>
                                                            <a class="user" href="#"> Alex Doe </a>

                                                            logged in.
                                                            <div class="time">
                                                                <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                16 hours ago
                                                            </div>
                                                        </div>

                                                        <div class="tools action-buttons">
                                                            <a href="#" class="blue">
                                                                <i class="ace-icon fa fa-pencil bigger-125"></i>
                                                            </a>

                                                            <a href="#" class="red">
                                                                <i class="ace-icon fa fa-times bigger-125"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div><!-- /.col -->
                                            </div><!-- /.row -->

                                            <div class="space-12"></div>

                                            <div class="center">
                                                <button type="button"
                                                        class="btn btn-sm btn-primary btn-white btn-round">
                                                    <i class="ace-icon fa fa-rss bigger-150 middle orange2"></i>
                                                    <span class="bigger-110">View more activities</span>

                                                    <i class="icon-on-right ace-icon fa fa-arrow-right"></i>
                                                </button>
                                            </div>
                                        </div><!-- /#feed -->

                                        <div id="friends" class="tab-pane">
                                            <div class="profile-users clearfix">
                                                <div class="itemdiv memberdiv">
                                                    <div class="inline pos-rel">
                                                        <div class="user">
                                                            <a href="#">
                                                                <img src="assets/images/avatars/avatar4.png"
                                                                     alt="Bob Doe's avatar"/>
                                                            </a>
                                                        </div>

                                                        <div class="body">
                                                            <div class="name">
                                                                <a href="#">
                                                                    <span class="user-status status-online"></span>
                                                                    Bob Doe
                                                                </a>
                                                            </div>
                                                        </div>

                                                        <div class="popover">
                                                            <div class="arrow"></div>

                                                            <div class="popover-content">
                                                                <div class="bolder">Content Editor</div>

                                                                <div class="time">
                                                                    <i class="ace-icon fa fa-clock-o middle bigger-120 orange"></i>
                                                                    <span class="green"> 20 mins ago </span>
                                                                </div>

                                                                <div class="hr dotted hr-8"></div>

                                                                <div class="tools action-buttons">
                                                                    <a href="#">
                                                                        <i class="ace-icon fa fa-facebook-square blue bigger-150"></i>
                                                                    </a>

                                                                    <a href="#">
                                                                        <i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
                                                                    </a>

                                                                    <a href="#">
                                                                        <i class="ace-icon fa fa-google-plus-square red bigger-150"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="itemdiv memberdiv">
                                                    <div class="inline pos-rel">
                                                        <div class="user">
                                                            <a href="#">
                                                                <img src="assets/images/avatars/avatar1.png"
                                                                     alt="Rose Doe's avatar"/>
                                                            </a>
                                                        </div>

                                                        <div class="body">
                                                            <div class="name">
                                                                <a href="#">
                                                                    <span class="user-status status-offline"></span>
                                                                    Rose Doe
                                                                </a>
                                                            </div>
                                                        </div>

                                                        <div class="popover">
                                                            <div class="arrow"></div>

                                                            <div class="popover-content">
                                                                <div class="bolder">Graphic Designer</div>

                                                                <div class="time">
                                                                    <i class="ace-icon fa fa-clock-o middle bigger-120 grey"></i>
                                                                    <span class="grey"> 30 min ago </span>
                                                                </div>

                                                                <div class="hr dotted hr-8"></div>

                                                                <div class="tools action-buttons">
                                                                    <a href="#">
                                                                        <i class="ace-icon fa fa-facebook-square blue bigger-150"></i>
                                                                    </a>

                                                                    <a href="#">
                                                                        <i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
                                                                    </a>

                                                                    <a href="#">
                                                                        <i class="ace-icon fa fa-google-plus-square red bigger-150"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="itemdiv memberdiv">
                                                    <div class="inline pos-rel">
                                                        <div class="user">
                                                            <a href="#">
                                                                <img src="assets/images/avatars/avatar.png"
                                                                     alt="Jim Doe's avatar"/>
                                                            </a>
                                                        </div>

                                                        <div class="body">
                                                            <div class="name">
                                                                <a href="#">
                                                                    <span class="user-status status-busy"></span>
                                                                    Jim Doe
                                                                </a>
                                                            </div>
                                                        </div>

                                                        <div class="popover">
                                                            <div class="arrow"></div>

                                                            <div class="popover-content">
                                                                <div class="bolder">SEO &amp; Advertising</div>

                                                                <div class="time">
                                                                    <i class="ace-icon fa fa-clock-o middle bigger-120 red"></i>
                                                                    <span class="grey"> 1 hour ago </span>
                                                                </div>

                                                                <div class="hr dotted hr-8"></div>

                                                                <div class="tools action-buttons">
                                                                    <a href="#">
                                                                        <i class="ace-icon fa fa-facebook-square blue bigger-150"></i>
                                                                    </a>

                                                                    <a href="#">
                                                                        <i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
                                                                    </a>

                                                                    <a href="#">
                                                                        <i class="ace-icon fa fa-google-plus-square red bigger-150"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="itemdiv memberdiv">
                                                    <div class="inline pos-rel">
                                                        <div class="user">
                                                            <a href="#">
                                                                <img src="assets/images/avatars/avatar5.png"
                                                                     alt="Alex Doe's avatar"/>
                                                            </a>
                                                        </div>

                                                        <div class="body">
                                                            <div class="name">
                                                                <a href="#">
                                                                    <span class="user-status status-idle"></span>
                                                                    Alex Doe
                                                                </a>
                                                            </div>
                                                        </div>

                                                        <div class="popover">
                                                            <div class="arrow"></div>

                                                            <div class="popover-content">
                                                                <div class="bolder">Marketing</div>

                                                                <div class="time">
                                                                    <i class="ace-icon fa fa-clock-o middle bigger-120 orange"></i>
                                                                    <span class=""> 40 minutes idle </span>
                                                                </div>

                                                                <div class="hr dotted hr-8"></div>

                                                                <div class="tools action-buttons">
                                                                    <a href="#">
                                                                        <i class="ace-icon fa fa-facebook-square blue bigger-150"></i>
                                                                    </a>

                                                                    <a href="#">
                                                                        <i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
                                                                    </a>

                                                                    <a href="#">
                                                                        <i class="ace-icon fa fa-google-plus-square red bigger-150"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="itemdiv memberdiv">
                                                    <div class="inline pos-rel">
                                                        <div class="user">
                                                            <a href="#">
                                                                <img src="assets/images/avatars/avatar2.png"
                                                                     alt="Phil Doe's avatar"/>
                                                            </a>
                                                        </div>

                                                        <div class="body">
                                                            <div class="name">
                                                                <a href="#">
                                                                    <span class="user-status status-online"></span>
                                                                    Phil Doe
                                                                </a>
                                                            </div>
                                                        </div>

                                                        <div class="popover">
                                                            <div class="arrow"></div>

                                                            <div class="popover-content">
                                                                <div class="bolder">Public Relations</div>

                                                                <div class="time">
                                                                    <i class="ace-icon fa fa-clock-o middle bigger-120 orange"></i>
                                                                    <span class="green"> 2 hours ago </span>
                                                                </div>

                                                                <div class="hr dotted hr-8"></div>

                                                                <div class="tools action-buttons">
                                                                    <a href="#">
                                                                        <i class="ace-icon fa fa-facebook-square blue bigger-150"></i>
                                                                    </a>

                                                                    <a href="#">
                                                                        <i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
                                                                    </a>

                                                                    <a href="#">
                                                                        <i class="ace-icon fa fa-google-plus-square red bigger-150"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="itemdiv memberdiv">
                                                    <div class="inline pos-rel">
                                                        <div class="user">
                                                            <a href="#">
                                                                <img src="assets/images/avatars/avatar3.png"
                                                                     alt="Susan Doe's avatar"/>
                                                            </a>
                                                        </div>

                                                        <div class="body">
                                                            <div class="name">
                                                                <a href="#">
                                                                    <span class="user-status status-online"></span>
                                                                    Susan Doe
                                                                </a>
                                                            </div>
                                                        </div>

                                                        <div class="popover">
                                                            <div class="arrow"></div>

                                                            <div class="popover-content">
                                                                <div class="bolder">HR Management</div>

                                                                <div class="time">
                                                                    <i class="ace-icon fa fa-clock-o middle bigger-120 orange"></i>
                                                                    <span class="green"> 20 mins ago </span>
                                                                </div>

                                                                <div class="hr dotted hr-8"></div>

                                                                <div class="tools action-buttons">
                                                                    <a href="#">
                                                                        <i class="ace-icon fa fa-facebook-square blue bigger-150"></i>
                                                                    </a>

                                                                    <a href="#">
                                                                        <i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
                                                                    </a>

                                                                    <a href="#">
                                                                        <i class="ace-icon fa fa-google-plus-square red bigger-150"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="itemdiv memberdiv">
                                                    <div class="inline pos-rel">
                                                        <div class="user">
                                                            <a href="#">
                                                                <img src="assets/images/avatars/avatar1.png"
                                                                     alt="Jennifer Doe's avatar"/>
                                                            </a>
                                                        </div>

                                                        <div class="body">
                                                            <div class="name">
                                                                <a href="#">
                                                                    <span class="user-status status-offline"></span>
                                                                    Jennifer Doe
                                                                </a>
                                                            </div>
                                                        </div>

                                                        <div class="popover">
                                                            <div class="arrow"></div>

                                                            <div class="popover-content">
                                                                <div class="bolder">Graphic Designer</div>

                                                                <div class="time">
                                                                    <i class="ace-icon fa fa-clock-o middle bigger-120 grey"></i>
                                                                    <span class="grey"> 2 hours ago </span>
                                                                </div>

                                                                <div class="hr dotted hr-8"></div>

                                                                <div class="tools action-buttons">
                                                                    <a href="#">
                                                                        <i class="ace-icon fa fa-facebook-square blue bigger-150"></i>
                                                                    </a>

                                                                    <a href="#">
                                                                        <i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
                                                                    </a>

                                                                    <a href="#">
                                                                        <i class="ace-icon fa fa-google-plus-square red bigger-150"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="itemdiv memberdiv">
                                                    <div class="inline pos-rel">
                                                        <div class="user">
                                                            <a href="#">
                                                                <img src="assets/images/avatars/avatar3.png"
                                                                     alt="Alexa Doe's avatar"/>
                                                            </a>
                                                        </div>

                                                        <div class="body">
                                                            <div class="name">
                                                                <a href="#">
                                                                    <span class="user-status status-offline"></span>
                                                                    Alexa Doe
                                                                </a>
                                                            </div>
                                                        </div>

                                                        <div class="popover">
                                                            <div class="arrow"></div>

                                                            <div class="popover-content">
                                                                <div class="bolder">Accounting</div>

                                                                <div class="time">
                                                                    <i class="ace-icon fa fa-clock-o middle bigger-120 grey"></i>
                                                                    <span class="grey"> 4 hours ago </span>
                                                                </div>

                                                                <div class="hr dotted hr-8"></div>

                                                                <div class="tools action-buttons">
                                                                    <a href="#">
                                                                        <i class="ace-icon fa fa-facebook-square blue bigger-150"></i>
                                                                    </a>

                                                                    <a href="#">
                                                                        <i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
                                                                    </a>

                                                                    <a href="#">
                                                                        <i class="ace-icon fa fa-google-plus-square red bigger-150"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="hr hr10 hr-double"></div>

                                            <ul class="pager pull-right">
                                                <li class="previous disabled">
                                                    <a href="#">&larr; Prev</a>
                                                </li>

                                                <li class="next">
                                                    <a href="#">Next &rarr;</a>
                                                </li>
                                            </ul>
                                        </div><!-- /#friends -->

                                        <div id="pictures" class="tab-pane">
                                            <ul class="ace-thumbnails">
                                                <li>
                                                    <a href="#" data-rel="colorbox">
                                                        <img alt="150x150" src="assets/images/gallery/thumb-1.jpg"/>
                                                        <div class="text">
                                                            <div class="inner">Sample Caption on Hover</div>
                                                        </div>
                                                    </a>

                                                    <div class="tools tools-bottom">
                                                        <a href="#">
                                                            <i class="ace-icon fa fa-link"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-paperclip"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-pencil"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-times red"></i>
                                                        </a>
                                                    </div>
                                                </li>

                                                <li>
                                                    <a href="#" data-rel="colorbox">
                                                        <img alt="150x150" src="assets/images/gallery/thumb-2.jpg"/>
                                                        <div class="text">
                                                            <div class="inner">Sample Caption on Hover</div>
                                                        </div>
                                                    </a>

                                                    <div class="tools tools-bottom">
                                                        <a href="#">
                                                            <i class="ace-icon fa fa-link"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-paperclip"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-pencil"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-times red"></i>
                                                        </a>
                                                    </div>
                                                </li>

                                                <li>
                                                    <a href="#" data-rel="colorbox">
                                                        <img alt="150x150" src="assets/images/gallery/thumb-3.jpg"/>
                                                        <div class="text">
                                                            <div class="inner">Sample Caption on Hover</div>
                                                        </div>
                                                    </a>

                                                    <div class="tools tools-bottom">
                                                        <a href="#">
                                                            <i class="ace-icon fa fa-link"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-paperclip"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-pencil"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-times red"></i>
                                                        </a>
                                                    </div>
                                                </li>

                                                <li>
                                                    <a href="#" data-rel="colorbox">
                                                        <img alt="150x150" src="assets/images/gallery/thumb-4.jpg"/>
                                                        <div class="text">
                                                            <div class="inner">Sample Caption on Hover</div>
                                                        </div>
                                                    </a>

                                                    <div class="tools tools-bottom">
                                                        <a href="#">
                                                            <i class="ace-icon fa fa-link"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-paperclip"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-pencil"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-times red"></i>
                                                        </a>
                                                    </div>
                                                </li>

                                                <li>
                                                    <a href="#" data-rel="colorbox">
                                                        <img alt="150x150" src="assets/images/gallery/thumb-5.jpg"/>
                                                        <div class="text">
                                                            <div class="inner">Sample Caption on Hover</div>
                                                        </div>
                                                    </a>

                                                    <div class="tools tools-bottom">
                                                        <a href="#">
                                                            <i class="ace-icon fa fa-link"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-paperclip"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-pencil"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-times red"></i>
                                                        </a>
                                                    </div>
                                                </li>

                                                <li>
                                                    <a href="#" data-rel="colorbox">
                                                        <img alt="150x150" src="assets/images/gallery/thumb-6.jpg"/>
                                                        <div class="text">
                                                            <div class="inner">Sample Caption on Hover</div>
                                                        </div>
                                                    </a>

                                                    <div class="tools tools-bottom">
                                                        <a href="#">
                                                            <i class="ace-icon fa fa-link"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-paperclip"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-pencil"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-times red"></i>
                                                        </a>
                                                    </div>
                                                </li>

                                                <li>
                                                    <a href="#" data-rel="colorbox">
                                                        <img alt="150x150" src="assets/images/gallery/thumb-1.jpg"/>
                                                        <div class="text">
                                                            <div class="inner">Sample Caption on Hover</div>
                                                        </div>
                                                    </a>

                                                    <div class="tools tools-bottom">
                                                        <a href="#">
                                                            <i class="ace-icon fa fa-link"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-paperclip"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-pencil"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-times red"></i>
                                                        </a>
                                                    </div>
                                                </li>

                                                <li>
                                                    <a href="#" data-rel="colorbox">
                                                        <img alt="150x150" src="assets/images/gallery/thumb-2.jpg"/>
                                                        <div class="text">
                                                            <div class="inner">Sample Caption on Hover</div>
                                                        </div>
                                                    </a>

                                                    <div class="tools tools-bottom">
                                                        <a href="#">
                                                            <i class="ace-icon fa fa-link"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-paperclip"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-pencil"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-times red"></i>
                                                        </a>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div><!-- /#pictures -->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="hide">
                            <div id="user-profile-3" class="user-profile row">
                                <div class="col-sm-offset-1 col-sm-10">
                                    <div class="well well-sm">
                                        <!-- -
<button type="button" class="close" data-dismiss="alert">&times;</button>
&nbsp; -->
                                        <div class="inline middle blue bigger-110"> Your profile is 70% complete</div>

                                        &nbsp; &nbsp; &nbsp;
                                        <div style="width:200px;" data-percent="70%"
                                             class="inline middle no-margin progress progress-striped active pos-rel">
                                            <div class="progress-bar progress-bar-success" style="width:70%"></div>
                                        </div>
                                    </div><!-- /.well -->

                                    <div class="space"></div>

                                    <form class="form-horizontal">
                                        <div class="tabbable">
                                            <ul class="nav nav-tabs padding-16">
                                                <li class="active">
                                                    <a data-toggle="tab" href="#edit-basic">
                                                        <i class="green ace-icon fa fa-pencil-square-o bigger-125"></i>
                                                        Basic Info
                                                    </a>
                                                </li>

                                                <li>
                                                    <a data-toggle="tab" href="#edit-settings">
                                                        <i class="purple ace-icon fa fa-cog bigger-125"></i>
                                                        Settings
                                                    </a>
                                                </li>

                                                <li>
                                                    <a data-toggle="tab" href="#edit-password">
                                                        <i class="blue ace-icon fa fa-key bigger-125"></i>
                                                        Password
                                                    </a>
                                                </li>
                                            </ul>

                                            <div class="tab-content profile-edit-tab-content">
                                                <div id="edit-basic" class="tab-pane in active">
                                                    <h4 class="header blue bolder smaller">General</h4>

                                                    <div class="row">
                                                        <div class="col-xs-12 col-sm-4">
                                                            <input type="file"/>
                                                        </div>

                                                        <div class="vspace-12-sm"></div>

                                                        <div class="col-xs-12 col-sm-8">
                                                            <div class="form-group">
                                                                <label class="col-sm-4 control-label no-padding-right"
                                                                       for="form-field-username">Username</label>

                                                                <div class="col-sm-8">
                                                                    <input class="col-xs-12 col-sm-10" type="text"
                                                                           id="form-field-username"
                                                                           placeholder="Username" value="alexdoe"/>
                                                                </div>
                                                            </div>

                                                            <div class="space-4"></div>

                                                            <div class="form-group">
                                                                <label class="col-sm-4 control-label no-padding-right"
                                                                       for="form-field-first">Name</label>

                                                                <div class="col-sm-8">
                                                                    <input class="input-small" type="text"
                                                                           id="form-field-first"
                                                                           placeholder="First Name" value="Alex"/>
                                                                    <input class="input-small" type="text"
                                                                           id="form-field-last" placeholder="Last Name"
                                                                           value="Doe"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <hr/>
                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-date">Birth Date</label>

                                                        <div class="col-sm-9">
                                                            <div class="input-medium">
                                                                <div class="input-group">
                                                                    <input class="input-medium date-picker"
                                                                           id="form-field-date" type="text"
                                                                           data-date-format="dd-mm-yyyy"
                                                                           placeholder="dd-mm-yyyy"/>
                                                                    <span class="input-group-addon">
																				<i class="ace-icon fa fa-calendar"></i>
																			</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="space-4"></div>

                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right">Gender</label>

                                                        <div class="col-sm-9">
                                                            <label class="inline">
                                                                <input name="form-field-radio" type="radio"
                                                                       class="ace"/>
                                                                <span class="lbl middle"> Male</span>
                                                            </label>

                                                            &nbsp; &nbsp; &nbsp;
                                                            <label class="inline">
                                                                <input name="form-field-radio" type="radio"
                                                                       class="ace"/>
                                                                <span class="lbl middle"> Female</span>
                                                            </label>
                                                        </div>
                                                    </div>

                                                    <div class="space-4"></div>

                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-comment">Comment</label>

                                                        <div class="col-sm-9">
                                                            <textarea id="form-field-comment"></textarea>
                                                        </div>
                                                    </div>

                                                    <div class="space"></div>
                                                    <h4 class="header blue bolder smaller">Contact</h4>

                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-email">Email</label>

                                                        <div class="col-sm-9">
																	<span class="input-icon input-icon-right">
																		<input type="email" id="form-field-email"
                                                                               value="alexdoe@gmail.com"/>
																		<i class="ace-icon fa fa-envelope"></i>
																	</span>
                                                        </div>
                                                    </div>

                                                    <div class="space-4"></div>

                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-website">Website</label>

                                                        <div class="col-sm-9">
																	<span class="input-icon input-icon-right">
																		<input type="url" id="form-field-website"
                                                                               value="http://www.alexdoe.com/"/>
																		<i class="ace-icon fa fa-globe"></i>
																	</span>
                                                        </div>
                                                    </div>

                                                    <div class="space-4"></div>

                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-phone">Phone</label>

                                                        <div class="col-sm-9">
																	<span class="input-icon input-icon-right">
																		<input class="input-medium input-mask-phone"
                                                                               type="text" id="form-field-phone"/>
																		<i class="ace-icon fa fa-phone fa-flip-horizontal"></i>
																	</span>
                                                        </div>
                                                    </div>

                                                    <div class="space"></div>
                                                    <h4 class="header blue bolder smaller">Social</h4>

                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-facebook">Facebook</label>

                                                        <div class="col-sm-9">
																	<span class="input-icon">
																		<input type="text" value="facebook_alexdoe"
                                                                               id="form-field-facebook"/>
																		<i class="ace-icon fa fa-facebook blue"></i>
																	</span>
                                                        </div>
                                                    </div>

                                                    <div class="space-4"></div>

                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-twitter">Twitter</label>

                                                        <div class="col-sm-9">
																	<span class="input-icon">
																		<input type="text" value="twitter_alexdoe"
                                                                               id="form-field-twitter"/>
																		<i class="ace-icon fa fa-twitter light-blue"></i>
																	</span>
                                                        </div>
                                                    </div>

                                                    <div class="space-4"></div>

                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-gplus">Google+</label>

                                                        <div class="col-sm-9">
																	<span class="input-icon">
																		<input type="text" value="google_alexdoe"
                                                                               id="form-field-gplus"/>
																		<i class="ace-icon fa fa-google-plus red"></i>
																	</span>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div id="edit-settings" class="tab-pane">
                                                    <div class="space-10"></div>

                                                    <div>
                                                        <label class="inline">
                                                            <input type="checkbox" name="form-field-checkbox"
                                                                   class="ace"/>
                                                            <span class="lbl"> Make my profile public</span>
                                                        </label>
                                                    </div>

                                                    <div class="space-8"></div>

                                                    <div>
                                                        <label class="inline">
                                                            <input type="checkbox" name="form-field-checkbox"
                                                                   class="ace"/>
                                                            <span class="lbl"> Email me new updates</span>
                                                        </label>
                                                    </div>

                                                    <div class="space-8"></div>

                                                    <div>
                                                        <label>
                                                            <input type="checkbox" name="form-field-checkbox"
                                                                   class="ace"/>
                                                            <span class="lbl"> Keep a history of my conversations</span>
                                                        </label>

                                                        <label>
                                                            <span class="space-2 block"></span>

                                                            for
                                                            <input type="text" class="input-mini" maxlength="3"/>
                                                            days
                                                        </label>
                                                    </div>
                                                </div>

                                                <div id="edit-password" class="tab-pane">
                                                    <div class="space-10"></div>

                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-pass1">New Password</label>

                                                        <div class="col-sm-9">
                                                            <input type="password" id="form-field-pass1"/>
                                                        </div>
                                                    </div>

                                                    <div class="space-4"></div>

                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-pass2">Confirm Password</label>

                                                        <div class="col-sm-9">
                                                            <input type="password" id="form-field-pass2"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="clearfix form-actions">
                                            <div class="col-md-offset-3 col-md-9">
                                                <button class="btn btn-info" type="button">
                                                    <i class="ace-icon fa fa-check bigger-110"></i>
                                                    Save
                                                </button>

                                                &nbsp; &nbsp;
                                                <button class="btn" type="reset">
                                                    <i class="ace-icon fa fa-undo bigger-110"></i>
                                                    Reset
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div><!-- /.span -->
                            </div><!-- /.user-profile -->
                        </div>

                        <!-- PAGE CONTENT ENDS -->
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->


    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
</div><!-- /.main-container -->

<!-- basic scripts -->

<!--[if !IE]> -->
<script src="${pageContext.request.contextPath}/assets/js/jquery-2.1.4.min.js"></script>

<!-- <![endif]-->

<!--[if IE]>
<script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
<script type="text/javascript">
    if ('ontouchstart' in document.documentElement) document.write("<script src='${pageContext.request.contextPath}/assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

<!-- page specific plugin scripts -->

<!--[if lte IE 8]>
<script src="${pageContext.request.contextPath}/assets/js/excanvas.min.js"></script>
<![endif]-->
<script src="${pageContext.request.contextPath}/assets/js/jquery-ui.custom.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/bootbox.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.easypiechart.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.gritter.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/spin.js"></script>

<!-- ace scripts -->
<script src="${pageContext.request.contextPath}/assets/js/ace-elements.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->

<script type="text/javascript">
    jQuery(function ($) {
        /**
         $('#myTab a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
				  //console.log(e.target.getAttribute("href"));
				})

         $('#accordion').on('shown.bs.collapse', function (e) {
					//console.log($(e.target).is('#collapseTwo'))
				});
         */

        $('#myTab a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
            //if($(e.target).attr('href') == "#home") doSomethingNow();
        })


        /**
         //go to next tab, without user clicking
         $('#myTab > .active').next().find('> a').trigger('click');
         */


        $('#accordion-style').on('click', function (ev) {
            var target = $('input', ev.target);
            var which = parseInt(target.val());
            if (which == 2) $('#accordion').addClass('accordion-style2');
            else $('#accordion').removeClass('accordion-style2');
        });

        //$('[href="#collapseTwo"]').trigger('click');


        $('.easy-pie-chart.percentage').each(function () {
            $(this).easyPieChart({
                barColor: $(this).data('color'),
                trackColor: '#EEEEEE',
                scaleColor: false,
                lineCap: 'butt',
                lineWidth: 8,
                animate: ace.vars['old_ie'] ? false : 1000,
                size: 75
            }).css('color', $(this).data('color'));
        });

        $('[data-rel=tooltip]').tooltip();
        $('[data-rel=popover]').popover({html: true});


        $('#gritter-regular').on(ace.click_event, function () {
            $.gritter.add({
                title: 'This is a regular notice!',
                text: 'This will fade out after a certain amount of time. Vivamus eget tincidunt velit. Cum sociis natoque penatibus et <a href="#" class="blue">magnis dis parturient</a> montes, nascetur ridiculus mus.',
                image: '${pageContext.request.contextPath}/assets/images/avatars/avatar1.png', //in Ace demo ./dist will be replaced by correct assets path
                sticky: false,
                time: '',
                class_name: (!$('#gritter-light').get(0).checked ? 'gritter-light' : '')
            });

            return false;
        });

        $('#gritter-sticky').on(ace.click_event, function () {
            var unique_id = $.gritter.add({
                title: 'This is a sticky notice!',
                text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget tincidunt velit. Cum sociis natoque penatibus et <a href="#" class="red">magnis dis parturient</a> montes, nascetur ridiculus mus.',
                image: '${pageContext.request.contextPath}/assets/images/avatars/avatar.png',
                sticky: true,
                time: '',
                class_name: 'gritter-info' + (!$('#gritter-light').get(0).checked ? ' gritter-light' : '')
            });

            return false;
        });


        $('#gritter-without-image').on(ace.click_event, function () {
            $.gritter.add({
                // (string | mandatory) the heading of the notification
                title: 'This is a notice without an image!',
                // (string | mandatory) the text inside the notification
                text: 'This will fade out after a certain amount of time. Vivamus eget tincidunt velit. Cum sociis natoque penatibus et <a href="#" class="orange">magnis dis parturient</a> montes, nascetur ridiculus mus.',
                class_name: 'gritter-success' + (!$('#gritter-light').get(0).checked ? ' gritter-light' : '')
            });

            return false;
        });


        $('#gritter-max3').on(ace.click_event, function () {
            $.gritter.add({
                title: 'This is a notice with a max of 3 on screen at one time!',
                text: 'This will fade out after a certain amount of time. Vivamus eget tincidunt velit. Cum sociis natoque penatibus et <a href="#" class="green">magnis dis parturient</a> montes, nascetur ridiculus mus.',
                image: '${pageContext.request.contextPath}/assets/images/avatars/avatar3.png', //in Ace demo ./dist will be replaced by correct assets path
                sticky: false,
                before_open: function () {
                    if ($('.gritter-item-wrapper').length >= 3) {
                        return false;
                    }
                },
                class_name: 'gritter-warning' + (!$('#gritter-light').get(0).checked ? ' gritter-light' : '')
            });

            return false;
        });


        $('#gritter-center').on(ace.click_event, function () {
            $.gritter.add({
                title: 'This is a centered notification',
                text: 'Just add a "gritter-center" class_name to your $.gritter.add or globally to $.gritter.options.class_name',
                class_name: 'gritter-info gritter-center' + (!$('#gritter-light').get(0).checked ? ' gritter-light' : '')
            });

            return false;
        });

        $('#gritter-error').on(ace.click_event, function () {
            $.gritter.add({
                title: 'This is a warning notification',
                text: 'Just add a "gritter-light" class_name to your $.gritter.add or globally to $.gritter.options.class_name',
                class_name: 'gritter-error' + (!$('#gritter-light').get(0).checked ? ' gritter-light' : '')
            });

            return false;
        });


        $("#gritter-remove").on(ace.click_event, function () {
            $.gritter.removeAll();
            return false;
        });


        ///////


        $("#bootbox-regular").on(ace.click_event, function () {
            bootbox.prompt("What is your name?", function (result) {
                if (result === null) {

                } else {

                }
            });
        });

        $("#bootbox-confirm").on(ace.click_event, function () {
            bootbox.confirm("Are you sure?", function (result) {
                if (result) {
                    //
                }
            });
        });

        /**
         $("#bootbox-confirm").on(ace.click_event, function() {
					bootbox.confirm({
						message: "Are you sure?",
						buttons: {
						  confirm: {
							 label: "OK",
							 className: "btn-primary btn-sm",
						  },
						  cancel: {
							 label: "Cancel",
							 className: "btn-sm",
						  }
						},
						callback: function(result) {
							if(result) alert(1)
						}
					  }
					);
				});
         **/


        $("#bootbox-options").on(ace.click_event, function () {
            bootbox.dialog({
                message: "<span class='bigger-110'>I am a custom dialog with smaller buttons</span>",
                buttons:
                    {
                        "success":
                            {
                                "label": "<i class='ace-icon fa fa-check'></i> Success!",
                                "className": "btn-sm btn-success",
                                "callback": function () {
                                    //Example.show("great success");
                                }
                            },
                        "danger":
                            {
                                "label": "Danger!",
                                "className": "btn-sm btn-danger",
                                "callback": function () {
                                    //Example.show("uh oh, look out!");
                                }
                            },
                        "click":
                            {
                                "label": "Click ME!",
                                "className": "btn-sm btn-primary",
                                "callback": function () {
                                    //Example.show("Primary button");
                                }
                            },
                        "button":
                            {
                                "label": "Just a button...",
                                "className": "btn-sm"
                            }
                    }
            });
        });


        $('#spinner-opts small').css({display: 'inline-block', width: '60px'})

        var slide_styles = ['', 'green', 'red', 'purple', 'orange', 'dark'];
        var ii = 0;
        $("#spinner-opts input[type=text]").each(function () {
            var $this = $(this);
            $this.hide().after('<span />');
            $this.next().addClass('ui-slider-small').addClass("inline ui-slider-" + slide_styles[ii++ % slide_styles.length]).css('width', '125px').slider({
                value: parseInt($this.val()),
                range: "min",
                animate: true,
                min: parseInt($this.attr('data-min')),
                max: parseInt($this.attr('data-max')),
                step: parseFloat($this.attr('data-step')) || 1,
                slide: function (event, ui) {
                    $this.val(ui.value);
                    spinner_update();
                }
            });
        });


        //CSS3 spinner
        $.fn.spin = function (opts) {
            this.each(function () {
                var $this = $(this),
                    data = $this.data();

                if (data.spinner) {
                    data.spinner.stop();
                    delete data.spinner;
                }
                if (opts !== false) {
                    data.spinner = new Spinner($.extend({color: $this.css('color')}, opts)).spin(this);
                }
            });
            return this;
        };

        function spinner_update() {
            var opts = {};
            $('#spinner-opts input[type=text]').each(function () {
                opts[this.name] = parseFloat(this.value);
            });
            opts['left'] = 'auto';
            $('#spinner-preview').spin(opts);
        }


        $('#id-pills-stacked').removeAttr('checked').on('click', function () {
            $('.nav-pills').toggleClass('nav-stacked');
        });


        ///////////
        $(document).one('ajaxloadstart.page', function (e) {
            $.gritter.removeAll();
            $('.modal').modal('hide');
        });

    });
</script>
</body>
</html>
