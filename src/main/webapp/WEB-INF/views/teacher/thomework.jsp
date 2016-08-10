
 <!-- 作业 Homework. 点击 作业下载 -->

<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE>
<html>
<jsp:include page="../header/header.jsp" />
<link href="styles/lib/font-awesome.css" rel="stylesheet" />
<link href="styles/lib/bootstrap-reset.css"  rel="stylesheet" />
<link href="styles/courses.css" rel="stylesheet" />
<link href="styles/course.css" rel="stylesheet" />

<body>
<jsp:include page="../nav/nav.jsp" />

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <jsp:include page="../sidebar/sidebar-teacher.jsp" />
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
               <div class="wraper container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">   
                        <div class="panel-heading">
                        		<h3 class="panel-title">作业 Homework</h3>
                        	</div>                         
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <table id="mytable" class="table table-striped table-bordered">
                                            <thead>
                                                <tr>
                                                	<th style="display:none;">课程</th>
                                                    <th>学号</th>                                                   
                                                    <th>姓名</th>
                                                    <th>作业名称</th>
                                                    <th>上传日期</th>                                                   
                                                    <th class="position">下载</th>
                                                    <th class="position">打分</th>
                                                </tr>
                                            </thead>

                                     
                                            <tbody>
                                               <s:iterator value="#request.comprehensiveHomeworkInfos" var="hm">
                                               <tr>
                                               		<td class="cno" style="display:none;"><s:property value="#hm.homework.courseId"/></td>
                                               		<td class="sno"><s:property value="#hm.no"/></td>                                              	
                                               		<td><s:property value="#hm.name"/></td>
                                               		<td><s:property value="#hm.homework.title"/></td>
                                               		<td><s:date format="yyyy-MM-dd" name="#hm.homework.date"/></td>                                         
                                               		<td><a href="download?fileName=<s:property value="#hm.homework.title"/>&baseFloder=<s:property value="#hm.homework.path"/>"><span class="glyphicon glyphicon-save do"></span></a></td>
                                               		
	                                           		<td class="thin-width">
	                                           			<s:if test="#hm.score==-1">
	                                           				<input type="text" class="form-control input-block input-score"/>
	                                           			</s:if>
	                                           			<s:else>
	                                           				<input type="text" class="form-control input-block input-score" value="<s:property value="#hm.score"/>"/>
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
    </div>
</div>
<jsp:include page="../footer/footer.jsp" />
<script src="scripts/tscore.js"></script>
</body>
</html>