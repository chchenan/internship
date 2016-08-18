<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE>
<html>
<jsp:include page="../header/header.jsp" />
<link href="styles/lib/font-awesome.css" rel="stylesheet" />
<link href="styles/lib/bootstrap-reset.css"  rel="stylesheet" />
<link href="styles/course.css" rel="stylesheet" />
<body>
<jsp:include page="../nav/nav.jsp" />
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <jsp:include page="../sidebar/sidebar-student.jsp" />
        </div>
        <div class="col-md-10 col-md-offset-2 col-sm-9 col-sm-offset-3 main">
          <!--  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">   -->
              
                <div class="row"  style="padding:10px;">
              <div class="col-md-8 col-sm-8">
                 <div class="panel" style="padding:0px;"> 
                 
                    <div class="panel-heading"  style="background:#34495e !important; color:#ffffff; padding:10px 25px;">
                        <h6 style="width:auto;display: inline-block;font-weight: 400;letter-spacing: 0;"><span class="glyphicon glyphicon-book"></span> 案例库 Case Base</h6>
                       
                       <div class="panel-actions" style="display: inline-block; margin: 5px 0px; padding:0px; position: relative; text-align: center; float:right; ">		
									<a data-toggle="collapse" data-parent="#accordion"  href="#collapseOne" class="btn-minimize"><i class="fa fa-chevron-up" style="color:#ffffff;"></i></a>
						       <!-- <a href="#" class="btn-setting"><i class="fa fa-rotate-right" style="color:#ffffff; width:48;"></i></a>
									<a href="#" class="btn-close"><i class="fa fa-times" style="color:#ffffff;"></i></a> -->
					   </div>
                    </div>
                    
                    <div id="collapseOne" class="collapse in">
                    <div class="panel-body"  style="padding:15px;">
                        <div class="table-responsive" style="border:1px solid #ddd;">
                          <!-- 响应式表格，有外边框 -->
                            <table class="table" style="color:#777; font-size:13px">
                                    <thead>
                                        <tr>
                                            <th class="rborder">案 例 名 称</th>
                                            <th class="rborder">日 期</th>
                                            <th>下 载</th>
                                        </tr>
                                    </thead>


                                    <tbody>
                                        <s:iterator value="#request.caseLibraries" var="cl">
                                        <tr>
                                            <td class="rborder"><s:property value="#cl.name" /></td>
                                            <td class="rborder"><s:date format="yyyy-MM-dd" name="#cl.date" /></td>
                                            <td><a href="download?fileName=<s:property value="#cl.name"/>&baseFloder=<s:property value="#cl.filePath"/>"><span class="glyphicon glyphicon-save do"></span></a></td>
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
                        		
                        		<strong>EXAMPLE:请注意及时查看并下载实验文件</strong><br>
                        		<strong>***</strong><br>
                        		<strong>blablablabla</strong><br>
                        	    <strong>blabla</strong><br>
                        
                        	</div>
                    
                        </div>
        
        </div>
        </div>
        
    </div>
</div>
<jsp:include page="../footer/footer.jsp" />
</body>
</html>