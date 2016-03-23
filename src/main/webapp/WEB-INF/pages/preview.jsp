<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>preview pdf</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css">
 <style type="text/css">
     .media{
          height:100%;
          overflow:auto;
     }
 </style>
</head>
<body>
<div class="container-fluid" >
	    <div class="row">
	       <div class="col-md-2" style="border:1px solid #ccc;">left1</div>
	       <div class="col-md-10"  style="border:1px solid #ccc;">
	                 <div id="media_list" style="width:100%;height:100%;">
	                        
	                 </div>
	       </div>
	    </div>
</div>
<script src="<%=request.getContextPath() %>/resources/js/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/jquery.media.js"></script>
<script type="text/javascript">
    $(function(){
    	
    	 $("#media_list").html($('<a class="media" href="/jedis/tmp/mybatis-3.1.1.pdf" />'));
    	 $('.media').media({width:"100%",height:"800px"});
    })
</script>
</body>
</html>