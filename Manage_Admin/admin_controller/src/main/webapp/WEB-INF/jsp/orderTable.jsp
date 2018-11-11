<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>Tables - Ace Admin</title>

    <meta name="description" content="Static &amp; Dynamic Tables" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/font-awesome/4.5.0/css/font-awesome.min.css" />

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

    <!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="${pageContext.request.contextPath}/assets/js/ace-extra.min.js"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
		<script src="${pageContext.request.contextPath}/assets/js/html5shiv.min.js"></script>
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
                            <a href="#">首页</a>
                        </li>
                        <li>
                            <a href="#">预约信息管理</a>
                        </li>
                        <li>
                            <a href="">学生预约信息管理</a>
                        <li>
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
                    <!-- /.nav-search -->
                </div>




                <div class="hr hr-18 dotted hr-double"></div>

                <h4 class="pink">
                    <i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer blue"></i>
                    <a href="#modal-table" role="button" class="green" data-toggle="modal"> 手机点击此处查看列表 </a>
                </h4>

                <div class="hr hr-18 dotted hr-double"></div>

                <div class="row">
                    <div class="col-xs-12">


                        <div class="clearfix">
                            <div class="pull-right tableTools-container"></div>
                        </div>
                        <div class="table-header">
                            学生预约列表
                        </div>

                        <!-- div.table-responsive -->

                        <!-- div.dataTables_borderWrap -->
                        <div>
                            <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th class="center">


                                                <label class="pos-rel">
															房间号
															</label>
                                        </th>
                                        <th>负责人</th>
                                        <th>学号</th>
                                        <th class="hidden-480">联系电话</th>

                                        <th>
                                            <i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i> 开始时间

                                        </th>
                                        <th class="hidden-480">结束时间</th>
                                        <th>活动团体</th>
                                        <th>活动主题</th>
                                        <th>状态</th>
                                        <th class="hidden-480">操作</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <C:forEach items="${orderList}" var="order">
                                        <tr>
                                            <td class="center">
                                                <label class="pos-rel">
                                                    ${order.cid}
                                                </label>
                                            </td>

                                            <td>
                                               ${order.sname}
                                            </td>
                                            <td>${order.snum}</td>
                                            <td class="hidden-480">${order.stelephone}</td>
                                            <td>${order.starttime}</td>
                                            <td>${order.endtime}</td>
                                            <td>${order.groupname}</td>
                                            <td>1</td>
                                            <td class="hidden-480">
                                                <C:if test="${order.orderstatus eq 0}">
                                                    <span class="label label-sm label-warning">申请中</span>
                                                </C:if>
                                                <C:if test="${order.orderstatus eq 1}">
                                                    <span class="label label-sm label-success">同意</span>
                                                </C:if>
                                                <C:if test="${order.orderstatus eq 2}">
                                                    <span class="label label-sm label-inverse arrowed-in">拒绝</span>
                                                </C:if>
                                                <C:if test="${order.orderstatus eq 3}">
                                                    <span class="label label-sm label-danger arrowed-in">撤销</span>
                                                </C:if>
                                                <C:if test="${order.orderstatus eq 4}">
                                                    <span class="label label-sm label-info">已使用</span>
                                                </C:if>
                                            </td>

                                            <td>
                                                <C:if test="${order.orderstatus==0}">
                                                    <div class="hidden-sm hidden-xs action-buttons">
                                                        <a class="blue" href="${pageContext.request.contextPath}/optionStatus.html?oid=${order.orderid}&option=1">
                                                            <span class="label label-sm label-success">同意</span>
                                                        </a>
                                                        <a class="blue" href="${pageContext.request.contextPath}/optionStatus.html?oid=${order.orderid}&option=2">
                                                            <span class="label label-sm label-inverse arrowed-in">拒绝</span>
                                                        </a>
                                                    </div>
                                                </C:if>
                                            </td>
                                        </tr>
                                    </C:forEach>


                                    <tr>
                                        <td class="center">
                                            <label class="pos-rel">
															2
															</label>
                                        </td>

                                        <td>
                                            <a href="#">base.com</a>
                                        </td>
                                        <td>$35</td>
                                        <td class="hidden-480">2,595</td>

                                        <td>Feb 16</td>
                                        <td>Feb 12</td>
                                        <td>Feb 12</td>
                                        <td>1</td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-success">同意</span>
                                        </td>

                                        <td>
                                            <div class="hidden-sm hidden-xs action-buttons">
                                                <a class="blue" href="#">
                                                    <span class="label label-sm label-success">同意</span>
                                                </a>
                                                <a class="blue" href="#">
                                                    <span class="label label-sm label-inverse arrowed-in">拒绝</span>
                                                </a>

                                            </div>
                                        </td>

                                    </tr>

                                    <tr>
                                        <td class="center">
                                            <label class="pos-rel">
																<input type="checkbox" class="ace" />
																<span class="lbl"></span>
															</label>
                                        </td>

                                        <td>
                                            100
                                        </td>
                                        <td>$75</td>
                                        <td class="hidden-480">6,500</td>

                                        <td>Feb 16</td>
                                        <td>Feb 12</td>
                                        <td>Feb 12</td>
                                        <td>1</td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-inverse arrowed-in">拒绝</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs action-buttons">
                                                <a class="blue" href="#">
                                                    <span class="label label-sm label-success">同意</span>
                                                </a>
                                                <a class="blue" href="#">
                                                    <span class="label label-sm label-inverse arrowed-in">拒绝</span>
                                                </a>

                                            </div>
                                        </td>


                                    </tr>



                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

   <%--             <div id="modal-table" class="modal fade" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header no-padding">
                                <div class="table-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
														<span class="white">&times;</span>
													</button> Results for "Latest Registered Domains
                                </div>
                            </div>

                            <div class="modal-body no-padding">
                                <table class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
                                    <thead>
                                        <tr>
                                            <th>Domain</th>
                                            <th>Price</th>
                                            <th>Clicks</th>

                                            <th>
                                                <i class="ace-icon fa fa-clock-o bigger-110"></i> Update
                                            </th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <tr>
                                            <td>
                                                <a href="#">ace.com</a>
                                            </td>
                                            <td>$45</td>
                                            <td>3,330</td>
                                            <td>Feb 12</td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <a href="#">base.com</a>
                                            </td>
                                            <td>$35</td>
                                            <td>2,595</td>
                                            <td>Feb 18</td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <a href="#">max.com</a>
                                            </td>
                                            <td>$60</td>
                                            <td>4,400</td>
                                            <td>Mar 11</td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <a href="#">best.com</a>
                                            </td>
                                            <td>$75</td>
                                            <td>6,500</td>
                                            <td>Apr 03</td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <a href="#">pro.com</a>
                                            </td>
                                            <td>$55</td>
                                            <td>4,250</td>
                                            <td>Jan 21</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="modal-footer no-margin-top">
                                <button class="btn btn-sm btn-danger pull-left" data-dismiss="modal">
													<i class="ace-icon fa fa-times"></i>
													Close
												</button>

                                <ul class="pagination pull-right no-margin">
                                    <li class="prev disabled">
                                        <a href="#">
                                            <i class="ace-icon fa fa-angle-double-left"></i>
                                        </a>
                                    </li>

                                    <li class="active">
                                        <a href="#">1</a>
                                    </li>

                                    <li>
                                        <a href="#">2</a>
                                    </li>

                                    <li>
                                        <a href="#">3</a>
                                    </li>

                                    <li class="next">
                                        <a href="#">
                                            <i class="ace-icon fa fa-angle-double-right"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>--%>

                <!-- PAGE CONTENT ENDS -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </div>

    <!-- /.main-content -->

    <div class="footer">
        <div class="footer-inner">
            <div class="footer-content">

                <span class="action-buttons">
							<a href="#">
								<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-rss-square orange bigger-150"></i>
							</a>
						</span>
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
    <script src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/dataTables.buttons.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/buttons.flash.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/buttons.html5.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/buttons.print.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/buttons.colVis.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/dataTables.select.min.js"></script>

    <!-- ace scripts -->
    <script src="${pageContext.request.contextPath}/assets/js/ace-elements.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/ace.min.js"></script>

    <!-- inline scripts related to this page -->
    <script type="text/javascript">
        /**页面加载完成访问 getStudentList得到学生列表
         * 
        */
        jQuery(function($) {
            //  initiate dataTables plugin
            var myTable =
                $('#dynamic-table')
                //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
                .DataTable({
                    bAutoWidth: false,
                    "aoColumns": [{
                            "bSortable": false
                        },
                        null, null, null, null, null, null, null, null, {
                            "bSortable": false
                        }
                    ],
                    "aaSorting": [],


                    //"bProcessing": true,
                    //"bServerSide": true,
                    //"sAjaxSource": "http://127.0.0.1/table.php"	,

                    //,
                    //"sScrollY": "200px",
                    //"bPaginate": false,

                    //"sScrollX": "100%",
                    //"sScrollXInner": "120%",
                    //"bScrollCollapse": true,
                    //Note: if you are applying horizontal scrolling (sScrollX) on a ".table-bordered"
                    //you may want to wrap the table inside a "div.dataTables_borderWrap" element

                    //"iDisplayLength": 50


                    // select: {
                    //     style: 'multi'
                    // }
                });



            $.fn.dataTable.Buttons.defaults.dom.container.className = 'dt-buttons btn-overlap btn-group btn-overlap';

            new $.fn.dataTable.Buttons(myTable, {
                buttons: [{
                    "extend": "copy",
                    "text": "<i class='fa fa-copy bigger-110 pink'></i> <span class='hidden'>复制</span>",
                    "className": "btn btn-white btn-primary btn-bold"
                }, {
                    "extend": "csv",
                    "text": "<i class='fa fa-database bigger-110 orange'></i> <span class='hidden'>导出excle</span>",
                    "className": "btn btn-white btn-primary btn-bold"
                }
                ]
            });
            myTable.buttons().container().appendTo($('.tableTools-container'));

            //style the message box
            var defaultCopyAction = myTable.button(1).action();
            myTable.button(1).action(function(e, dt, button, config) {
                defaultCopyAction(e, dt, button, config);
                $('.dt-button-info').addClass('gritter-item-wrapper gritter-info gritter-center white');
            });


            var defaultColvisAction = myTable.button(0).action();
            myTable.button(0).action(function(e, dt, button, config) {

                defaultColvisAction(e, dt, button, config);


                if ($('.dt-button-collection > .dropdown-menu').length == 0) {
                    $('.dt-button-collection')
                        .wrapInner('<ul class="dropdown-menu dropdown-light dropdown-caret dropdown-caret" />')
                        .find('a').attr('href', '#').wrap("<li />")
                }
                $('.dt-button-collection').appendTo('.tableTools-container .dt-buttons')
            });

            //

            setTimeout(function() {
                $($('.tableTools-container')).find('a.dt-button').each(function() {
                    var div = $(this).find(' > div').first();
                    if (div.length == 1) div.tooltip({
                        container: 'body',
                        title: div.parent().text()
                    });
                    else $(this).tooltip({
                        container: 'body',
                        title: $(this).text()
                    });
                });
            }, 500);





            // myTable.on('select', function(e, dt, type, index) {
            //     if (type === 'row') {
            //         $(myTable.row(index).node()).find('input:checkbox').prop('checked', true);
            //     }
            // });
            // myTable.on('deselect', function(e, dt, type, index) {
            //     if (type === 'row') {
            //         $(myTable.row(index).node()).find('input:checkbox').prop('checked', false);
            //     }
            // });




            /////////////////////////////////
            //table checkboxes
            // $('th input[type=checkbox], td input[type=checkbox]').prop('checked', false);

            // //select/deselect all rows according to table header checkbox
            // $('#dynamic-table > thead > tr > th input[type=checkbox], #dynamic-table_wrapper input[type=checkbox]').eq(0).on('click', function() {
            //     var th_checked = this.checked; //checkbox inside "TH" table header

            //     $('#dynamic-table').find('tbody > tr').each(function() {
            //         var row = this;
            //         if (th_checked) myTable.row(row).select();
            //         else myTable.row(row).deselect();
            //     });
            // });

            //select/deselect a row when the checkbox is checked/unchecked
            // $('#dynamic-table').on('click', 'td input[type=checkbox]', function() {
            //     var row = $(this).closest('tr').get(0);
            //     if (this.checked) myTable.row(row).deselect();
            //     else myTable.row(row).select();
            // });



            // $(document).on('click', '#dynamic-table .dropdown-toggle', function(e) {
            //     e.stopImmediatePropagation();
            //     e.stopPropagation();
            //     e.preventDefault();
            // });



            //And for the first simple table, which doesn't have TableTools or dataTables
            //select/deselect all rows according to table header checkbox
            // var active_class = 'active';
            // $('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function() {
            //     var th_checked = this.checked; //checkbox inside "TH" table header

            //     $(this).closest('table').find('tbody > tr').each(function() {
            //         var row = this;
            //         if (th_checked) $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
            //         else $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
            //     });
            // });

            //select/deselect a row when the checkbox is checked/unchecked
            // $('#simple-table').on('click', 'td input[type=checkbox]', function() {
            //     var $row = $(this).closest('tr');
            //     if ($row.is('.detail-row ')) return;
            //     if (this.checked) $row.addClass(active_class);
            //     else $row.removeClass(active_class);
            // });



            /********************************/
            //add tooltip for small view action buttons in dropdown menu
            $('[data-rel="tooltip"]').tooltip({
                placement: tooltip_placement
            });

            //tooltip placement on right or left
            function tooltip_placement(context, source) {
                var $source = $(source);
                var $parent = $source.closest('table')
                var off1 = $parent.offset();
                var w1 = $parent.width();

                var off2 = $source.offset();
                //var w2 = $source.width();

                if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2)) return 'right';
                return 'left';
            }




            /***************/
            $('.show-details-btn').on('click', function(e) {
                e.preventDefault();
                $(this).closest('tr').next().toggleClass('open');
                $(this).find(ace.vars['.icon']).toggleClass('fa-angle-double-down').toggleClass('fa-angle-double-up');
            });
            /***************/





            /**
            //add horizontal scrollbars to a simple table
            $('#simple-table').css({'width':'2000px', 'max-width': 'none'}).wrap('<div style="width: 1000px;" />').parent().ace_scroll(
              {
            	horizontal: true,
            	styleClass: 'scroll-top scroll-dark scroll-visible',//show the scrollbars on top(default is bottom)
            	size: 2000,
            	mouseWheelLock: true
              }
            ).css('padding-top', '12px');
            */


        })
    </script>
</body>

</html>