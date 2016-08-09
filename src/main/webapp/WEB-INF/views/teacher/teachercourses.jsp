
//实训课程 Course. 第一个页面

<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE>
<html>
<jsp:include page="../header/header.jsp" />
<link href="styles/lib/font-awesome.css" rel="stylesheet" />
<link href="styles/lib/bootstrap-reset.css" rel="stylesheet" />
<link href="styles/courses.css" rel="stylesheet" />
<body>
<jsp:include page="../nav/nav.jsp" />

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <jsp:include page="../sidebar/sidebar-teacher.jsp" />
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        实训课程 Course
                    </h3>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-8 col-sm-8 col-xs-8">
                        
                        //按钮元素，颜色和排版没找着
                        <h6><i class="fa fa-table red"></i><span class="break"></span>Basic</h6>							
									<div class="panel-actions">								
										<a class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
									</div>
                        //在这之间，以上未完。。
                        
                            <table id="mytable" class="table table-striped table-bordered">
                                <thead>
                                <tr>
                                    <th>课程名称</th>
                                    <th>时间</th>
                                    <th>地点</th>
                                    <th class="position">案例库上传</th>
                                    <th class="position">作业下载</th>
                                </tr>
                                </thead>


                                <tbody>
                                <s:iterator value="#request.tchCourseList" var="tchList">
                                    <tr>
                                        <td><s:property value="#tchList.name"/></td>
                                        <td><s:property value="#tchList.courseDate"/></td>
                                        <td><s:property value="#tchList.coursePlace"/></td>
                                        <td><a href="tcourseExample?courseId=<s:property value="#tchList.courseId" />"><span class="glyphicon glyphicon-open tup"></span></a></td>
                                        <td>
                                            <a href="thomework?courseId=<s:property value="#tchList.courseId" />"><span class="glyphicon glyphicon-save tdo"></span></a>
                                        </td>
                                    </tr>
                                </s:iterator>
                                </tbody>
                            </table>

                        </div>
                        
                        <div class="col-md-4 col-sm-4 col-xs-4">
                        	<div class="well well-lg">
                        		<body>
                        		<strong>EXAMPLE:请注意案例库的上传时间</strong><br>
                        		<strong>作业的审核时间</strong><br>
                        		<strong>XXXXXXXXXXX</strong><br>
                        		</body>
                        
                        	</div>
                        </div>
                        
                        
                        
                        
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../footer/footer.jsp" />
<script src="scripts/lib/dropzone.js"></script>
</body>
</html>