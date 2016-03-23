<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css">
</head>
<body>
	<div class="container-fluid" >
	    <div class="row">
	       <div class="col-lg-2" style="border:1px solid #ccc;">${hobby}----${user.name}</div>
	       <div class="col-lg-5" id="mainMap" style="height:500px;border:1px solid #ccc;padding:10px;"></div>
	       <div class="col-lg-5" id="main" style="height:500px;border:1px solid #ccc;padding:10px;"></div>
	    </div>
	</div>
    <!--Step:1 为ECharts准备一个具备大小（宽高）的Dom-->
    <!-- <div id="main" style="height:500px;border:1px solid #ccc;padding:10px;"></div>
    <div id="mainMap" style="height:500px;border:1px solid #ccc;padding:10px;"></div> -->
    <!--Step:2 引入echarts.js-->
    <script src="<%=request.getContextPath() %>/resources/js/echarts.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/jquery.min.js"></script>
    <script type="text/javascript">
           MY_CONTEXT='<%=request.getContextPath() %>';
    </script>
    <script src="<%=request.getContextPath() %>/resources/js/my.js"></script>
    
    <script type="text/javascript">
    // Step:3 为模块加载器配置echarts的路径，从当前页面链接到echarts.js，定义所需图表路径
       require.config({
	        paths: {
	            echarts: '<%=request.getContextPath() %>/resources/js'
	        }
       });
       // Step:4 动态加载echarts然后在回调函数中开始使用，注意保持按需加载结构定义图表路径
       require(
           [
               'echarts',
               'echarts/chart/pie',
               'echarts/chart/bar'
           ],
           function (ec) {
               //--- 折柱 ---
             /*   var myChart = ec.init(document.getElementById('main'));
               var option=MyTest.getPieData();
               myChart.setOption(option); */
               
               // --- 地图 ---
               var myChart2 = ec.init(document.getElementById('mainMap'));
               option=MyTest.getMostDifficDegreeQuestionTop10();
               myChart2.setOption(option);
           }
       );
    </script>

</body>
</html>