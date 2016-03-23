<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>preview pdf</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/jquery-ui.min.css">
<style type="text/css">
      .ui-progressbar {
    position: relative;
  }
  .progress-label {
    position: absolute;
    left: 50%;
    top: 4px;
    font-weight: bold;
    text-shadow: 1px 1px 0 #fff;
  }
</style>
</head>
<body>
<div class="container-fluid" >
	    <div class="row">
	       <div class="col-md-2" style="border:1px solid #ccc;">left1</div>
	       <div class="col-md-10"  style="border:1px solid #ccc;">
	                <div id="progressbar"><div class="progress-label">Loading...</div></div>
	       </div>
	    </div>
</div>
<script src="<%=request.getContextPath() %>/resources/js/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/jquery-ui.min.js"></script>
<script type="text/javascript">
    $(function(){
    	
    	 var progressbar = $( "#progressbar" ),
         progressLabel = $( ".progress-label" );
    
       progressbar.progressbar({
         value: false,
         change: function() {
           progressLabel.text( progressbar.progressbar( "value" ) + "%" );
         },
         complete: function() {
           progressLabel.text( "Complete!" );
         }
       });
    
       function progress() {
         var val = progressbar.progressbar( "value" ) || 0;
    
         progressbar.progressbar( "value", val + 2 );
    
         if ( val < 99 ) {
           setTimeout( progress, 80 );
         }
       }
    
       setTimeout( progress, 2000 );
    })
</script>
</body>
</html>