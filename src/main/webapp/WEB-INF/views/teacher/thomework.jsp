
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
        <div class="col-md-10 col-md-offset-2 col-sm-9 col-sm-offset-3 main">
              
                <div class="row" style="padding:10px 50px 10px 10px;">
                    <div class="col-md-12 col-sm-12">
                       <div class="panel" style="padding:0px;"> <!-- 表格panel不设内边距 -->
                        <div class="panel-heading" style="background:#34495e !important; color:#ffffff; padding:10px 25px;">
                        		<h6 style="width:auto;display: inline-block;font-weight: 400;letter-spacing: 0;"><span class="glyphicon glyphicon-file"></span> 作业 Homework</h6>
                        	</div>  
                        	                       
                            <div class="panel-body" style="padding:15px;">
                               <div class="table-responsive" style="border:1px solid #ddd;">
                                    
                                        <table id="mytable" class="table"  style="color:#777; font-size:13px">
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
<jsp:include page="../footer/footer.jsp" />
<script src="scripts/tscore.js"></script>
</body>
</html>