<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>Blank - Ace Admin</title>

    <meta name="description" content="Static &amp; Dynamic Tables" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap-datepicker3.min.css" />
    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/font-awesome/4.5.0/css/font-awesome.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />
    <!-- page specific plugin styles -->

    <!-- text fonts -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fonts.googleapis.com.css" />

    <!-- ace styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

    <!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-skins.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-rtl.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jquery-ui.custom.min.css" />

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
						    管理员姓名
						</small>
                </a>
            </div>

        <!-- /.navbar-container -->
    </div>
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
                            <a href="${pageContext.request.contextPath}/classroomInformation.html">
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
                            <a href="#">首页</a>
                        </li>

                        <li>
                            <a href="#">信息管理</a>
                        </li>
						<li class="active">教室信息管理</li>
                    </ul>
                    <!-- /.breadcrumb -->

                    <div class="nav-search" id="nav-search">
                        <form class="form-search">
                            <span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
                        </form>
                    </div>

                    <div class="hr hr-18 dotted hr-double"></div>

                    <h4 class="pink">
                        <i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer blue"></i>
                        <a href="#modal-table" role="button" class="green" data-toggle="modal"> 添加教室 </a>
                    </h4>

                    <div class="hr hr-18 dotted hr-double"></div>
                    <!-- /.nav-search -->
                </div>


<div class="page-content">
	
                    <div class="col-xs-12">
                        <div class="clearfix">
                            <div class="pull-right tableTools-container"></div>
                        </div>
                       <div class="page-header">
							<h1>
								教室信息表
							</h1>
						</div>
  
			
					</div>	

                   
                   	<div class="row">
                   		<div class="col-xs-12">
                   			<form class="form-horizontal" role="form">
                   				<div class="form-group">
										<label class="col-sm-5 control-label no-padding-right" > 教室 </label>
										<div class="col-sm-2">
										    <input type="text" name="cid" id="cid" placeholder="教室编号">
										</div>
										<button class="btn btn-sm btn-primary" href="${pageContext.request.contextPath}/classroomInformation.html">
											<span class="ace-icon fa fa-search icon-on-right bigger-110"></span>
										        	搜索
										</button>
								</div>
                   			</form>
                   		</div>
                   	</div>
                   
                        <div>
                            <table id="dynamic-table" class="table table-striped table-bordered table-hover" >
                                <thead>
                                    <tr>
                                        <th class="center">
                                            <label class="pos-rel">
															教室编号
															</label>
                                        </th>
                                        <th class="center">可容纳人数</th>
                              
                                        <th class="center">操作</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <C:forEach items="${pageBean.pageList}" var="item">
                                        <tr>
                                            <td class="center">
                                                <label class="pos-rel">
                                                    ${item.cid}
                                                </label>
                                            </td>

                                            <td class="center">
                                                <label class="pos-rel">
                                                    ${item.cnum }
                                                </label>
                                            </td>

                                            <td class="center">
                                              <%--  <a href="#"><span class="label label-sm label-warning">删除</span> </a>--%>
                                                <a href="${pageContext.request.contextPath}/deleteClassroom.html?cid=${item.cid}"> <span class="label label-xlg label-light arrowed-in-right">删除</span></a>
                                            </td>

                                        </tr>
                                    </C:forEach>


                                </tbody>
                            </table>
                            <div class="message-footer clearfix">


										<div class="pull-right">


													&nbsp; &nbsp;
													<ul class="pagination middle">
												<li>
														<a href="${pageContext.request.contextPath}/classroomInformation.html?currentPage=1"><i class="ace-icon fa fa-step-backward middle"></i></a>
												</li>

												<li >

														<a href="${pageContext.request.contextPath}/classroomInformation.html?currentPage=${pageBean.currentPage-1}"> <i class="ace-icon fa fa-caret-left bigger-140 middle"></i> </a>

												</li>

												<li>
													<span>
														<input value="${pageBean.currentPage}" maxlength="3" type="text" readonly="readonly" />
													</span>
												</li>

											<li>
												<a href="${pageContext.request.contextPath}/classroomInformation.html?currentPage=${pageBean.currentPage+1}">
													<i class="ace-icon fa fa-caret-right bigger-140 middle"></i>
												</a>
											</li>

											<li>
													<a href="${pageContext.request.contextPath}/classroomInformation.html?currentPage=${pageBean.totalPage}">
														<i class="ace-icon fa fa-step-forward middle"></i>
													</a>
											</li>
										</ul>
								</div>
							</div>
                        </div>
                    </div>
                </div>

            <div id="modal-table" class="modal fade" tabindex="-1">




                <div class="row">
                    <div class="col-sm-5"></div>
                    <div class="col-sm-2">
                        <div class="widget-box">
                            <div class="widget-header">
                                <h4 class="widget-title">添加教室信息</h4>
                            </div>

                            <div class="widget-body">
                                <div class="widget-main no-padding">
                                    <form>
                                        <!-- <legend>Form</legend> -->
                                        <fieldset>
                                            <label>教室编号</label>
                                            <input name="cid" id="model-cid" type="text" placeholder="教室编号&hellip;"/>
                                            <hr/>
                                            <label>容纳人数</label>
                                            <input  name="cnum" type="text" placeholder="可容纳人数&hellip;"/>
                                        </fieldset>

                                        <div class="form-actions center">
                                            <button type="submit" class="btn btn-sm btn-success" onclick="addClassroom();" >
                                                提交
                                                <i class="ace-icon fa  icon-on-right bigger-110"></i>
                                            </button>
                                        <%--    <button class="btn btn-sm btn-danger pull-right" data-dismiss="modal">
                                                <i class="ace-icon fa fa-times"></i>
                                                关闭
                                            </button--%>
                                            <button type="button" class="btn btn-sm btn-success" data-dismiss="modal">
                                                关闭
                                                <i class="ace-icon fa icon-on-right bigger-110"></i>
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- /.modal-dialog -->
            </div>

            <!-- /.modal-dialog -->
        </div>

        <!-- PAGE CONTENT ENDS -->
    </div>
            <!-- /.col -->

        <!-- /.row -->

    <!-- /.main-content -->

    <div class="footer">
        <div class="footer-inner">
            <div class="footer-content">


            </div>
        </div>
        
    </div>

    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
    </div>
    <!-- /.main-container -->

    <!-- basic scripts -->

    <!--[if !IE]> -->
    <script src="assets/js/jquery-2.1.4.min.js"></script>

    <!-- <![endif]-->

    <!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
    <script type="text/javascript">
        if ('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
    </script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap-tag.min.js"></script>
    <!-- page specific plugin scripts -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery-ui.custom.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.ui.touch-punch.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/dataTables.buttons.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/buttons.flash.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/buttons.html5.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/buttons.print.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/buttons.colVis.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/dataTables.select.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap-datepicker.min.js"></script>

    <!-- ace scripts -->
    <script src="${pageContext.request.contextPath}/assets/js/ace-elements.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/ace.min.js"></script>
    
    <!-- inline scripts related to this page -->
    <script type="text/javascript">
           function addClassroom() {
               var
               $.ajax(

               )
           }
    </script>
</body>

</html>