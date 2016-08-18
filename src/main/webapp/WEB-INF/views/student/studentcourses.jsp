<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE>
<html>
<jsp:include page="../header/header.jsp" />
<link href="styles/lib/font-awesome.css" rel="stylesheet" />
<link href="styles/lib/bootstrap-reset.css"  rel="stylesheet" />
<link href="styles/courses.css" rel="stylesheet" />

<body>
<jsp:include page="../nav/nav.jsp" />

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <jsp:include page="../sidebar/sidebar-student.jsp" />
        </div>
        <div class="col-md-10 col-md-offset-2 col-sm-9 col-sm-offset-3 main">
           <div class="row" style="padding:10px 50px 10px 10px;">
                <div class="col-md-12 col-sm-12">
            <div class="panel" style="padding:0px;">
                <div class="panel-heading"  style="background:#34495e !important; color:#ffffff; padding:10px 25px;">
                    <h6 style="width:auto;display: inline-block;font-weight: 400;letter-spacing: 0;"><span class="glyphicon glyphicon-th"></span> 实训信息internship</h6>
                </div>
                <div class="panel-body"  style="padding:15px;">
                   <div class="table-responsive" style="border:1px solid #ddd;">
                                    
                                        <table id="mytable" class="table table-bordered"  style="color:#777; font-size:13px">
                                <thead>
                                    <tr>
                                        <th>课程名称</th>
                                        <th>老师</th>
                                        <th>时间</th>
                                        <th>地点</th>
                                        <th>成绩</th>
                                        <th class="position">案例库下载</th>
                                        <th class="position">作业上传</th>
                                    </tr>
                                </thead>

                                <tbody>
                                   <s:iterator value="#request.comprehensiveCourseInfoList" var="info">
                                   <tr>
                                        <td><s:property value="#info.course.name"/></td>
                                        <td><s:property value="#info.teacherName"/></td>
                                        <td><s:property value="#info.course.courseDate"/></td>
                                        <td><s:property value="#info.course.coursePlace"/></td>
                                        <td><s:property value="#info.stuScore"/></td>
                                        <td><a href="scourseExample?courseId=<s:property value="#info.course.courseId" />"><span class="fa fa-folder-open do"></span></a></td>
                                        <td>
                                        <s:if test="#info.homework==null">
                                            <label class="glyphicon glyphicon-open up">
                                                <input type="file" name="uploadfile" class="uploadfile"/>
                                                <input type="hidden" name="courseId" value='<s:property value="#info.course.courseId" />' />
                                            </label>

                                        </s:if>
                                        <s:else>
                                            <%--<a href="#info.homework.title.path">--%>
                                                <s:property value="#info.homework.title" />
                                            <%--</a>--%>
                                        </s:else>
                                        </td>
                                   </tr>
                                   </s:iterator>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../footer/footer.jsp" />
 <script src="scripts/studentupload.js"></script>
</body>
</html>