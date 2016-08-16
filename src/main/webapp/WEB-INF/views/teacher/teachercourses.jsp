
<!--实训课程 Course. 第一个页面-->

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
        
        <div class="col-md-10 col-md-offset-2 col-sm-9 col-sm-offset-3 main">
       
         <div class="row"  style="padding:10px;">
         <!-- 主面板row里嵌套两个class：一个表格panel，一个注释well。 8：4 -->
           <div class="col-md-8 col-sm-8">
           
               <div class="panel" style="padding:0px;"> <!-- 表格panel不设内边距 -->
					     <div class="panel-heading" style="background:#34495e !important; color:#ffffff; padding:10px 25px;">
							<!-- 模板的样式是通过引用修改后的bootstrap框架直接得到的（方便，但是不太好用在自己的东西上，改动很大），我这里只是用他框架的数值在代码中用style单个修改的（繁琐，不过都是每个页面都差不多） -->		
								<h6 style="width:auto;display: inline-block;font-weight: 400;letter-spacing: 0;"><span class="glyphicon glyphicon-th"></span> 实训课程 Course</h6>							
							<!-- 1.通过调数值使折叠按钮居中，感觉不太好。 2。刷新和删除按钮没必要。  3.折叠按钮没有动画-->
								<div class="panel-actions" style="display: inline-block; margin: 5px 0px; padding:0px; position: relative; text-align: center; float:right; ">		
									<a data-toggle="collapse" data-parent="#accordion"  href="#collapseOne" class="btn-minimize"><i class="fa fa-chevron-up" style="color:#ffffff;"></i></a>
						       <!-- <a href="#" class="btn-setting"><i class="fa fa-rotate-right" style="color:#ffffff; width:48;"></i></a>
									<a href="#" class="btn-close"><i class="fa fa-times" style="color:#ffffff;"></i></a> -->
								</div>
							
						 </div>
                        
                       <div id="collapseOne" class="collapse in">
                        <div class="panel-body" style="padding:15px;">
                          <div class="table-responsive" style="border:1px solid #ddd;">
                          <!-- 响应式表格，有外边框 -->
                            <table id="mytable" class="table " style="color:#777; font-size:13px">
                            <!-- 表格文字颜色和字号指定 -->
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
                                        <td><a href="tcourseExample?courseId=<s:property value="#tchList.courseId"/>" ><span class="glyphicon glyphicon-cloud-upload tup" style="float:left;"></span></a></td>
                                                <!-- 上传和下载放在了每一格的左边 -->
                                        <td>
                                            <a href="thomework?courseId=<s:property value="#tchList.courseId"/>" ><span class="	glyphicon glyphicon-cloud-download tdo" style="float:left;"></span></a>
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
                        
                        
                        
                        
                        <div class="col-md-4 col-sm-4">
               
                        	<div class="well">
                        		
                        		<strong>EXAMPLE:请注意案例库的上传时间</strong><br>
                        		<strong>作业的审核时间</strong><br>
                        		<strong>blablablabla</strong><br>
                        	    <strong>blabla</strong><br>
                        
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