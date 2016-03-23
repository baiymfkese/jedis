var MyTest={
		url:{
			myurl:MY_CONTEXT+"/test/getData.html",
			getPieUrl:MY_CONTEXT+"/test/getPieData.html"
		},
		greeting:function(){
			alert("good morning!!!!");
		},
		sendAjax:function(url,parameter,successCallback,errorCallback){
			$.ajax({
				url:url,
				data:parameter,
				async:false,
				dataType:"json",
				success:successCallback,
				error:errorCallback
			});
		},
		getData:function(){
			var obj=this;
			obj.sendAjax(obj.url,{},function(data){
				alert("msg="+data.msg+",result="+data.result);
			},function(){
				alert("error1....");
			});
		},
		getPieData:function(){
			
			var option=null;
			var obj=this;
			obj.sendAjax(obj.url.getPieUrl,{},function(datas){
				option=obj.getPieBasicInfo(datas.lengend,datas.data);
			},function(){
				alert("error1....");
			});
			return option;
		},
		getPieBasicInfo:function(legend,datas){
			
			var option = {
        		    title : {
        		        text: '某站点用户访问来源',
        		        subtext: '',
        		        x:'center'
        		    },
        		    tooltip : {
        		        trigger: 'item',
        		        formatter: "{a} <br/>{b} : {c} ({d}%)"
        		    },
        		    legend: {
        		        orient : 'vertical',
        		        x : 'left',
        		        data:legend
        		    },
        		    toolbox: {
        		        show : false,
        		        feature : {
        		            mark : {show: true},
        		            dataView : {show: true, readOnly: false},
        		            magicType : {
        		                show: true, 
        		                type: ['pie', 'funnel'],
        		                option: {
        		                    funnel: {
        		                        x: '25%',
        		                        width: '50%',
        		                        funnelAlign: 'left',
        		                        max: 1548
        		                    }
        		                }
        		            },
        		            restore : {show: true},
        		            saveAsImage : {show: true}
        		        }
        		    },
        		    calculable : true,
        		    series : [
        		        {
        		            name:'访问来源22',
        		            type:'pie',
        		            radius : '55%',
        		            center: ['50%', '60%'],
        		            data:datas
        		        }
        		    ]
        		};
			return option;
		},
		/**
		 * 得到难度系统最大的TOP 10
		 * @returns
		 */
        getMostDifficDegreeQuestionTop10:function(){
			
			var obj=this;
			var dataText=['中国中国中国中国中国中国中国123<br/>中国中中国中中国中中国中中国中中国中56789','美国美国美国美国美国美国美国ytytryt4444444444国美国','韩国韩国韩国韩国韩国韩国韩国韩国韩国韩国韩国','日本','朝鲜','俄罗斯','英国','法国 ','意大利','德国'];
			var data=[23,19, 16, 12, 10,9, 8, 5, 3,1];
			var title='测试TOP 10';
			return obj.getBarBasicInfo(title,dataText,data);
		},
		/**
		 * 处理过长的字符串，截取并添加省略号 
		 * 注：半角长度为1，全角长度为2 
		 *  
		 * pStr:字符串 
		 * pLen:截取长度 
		 *  
		 * return: 截取后的字符串 
		 */
		autoAddEllipsis:function(pStr, pLen){
			var obj=this;
			var _ret = obj.cutString(pStr, pLen);  
		    var _cutFlag = _ret.cutflag;  
		    var _cutStringn = _ret.cutstring;  
		  
		    if ("1" == _cutFlag) {  
		        return _cutStringn + "...";  
		    } else {  
		        return _cutStringn;  
		    }  
		},
		/**
		 * 取得指定长度的字符串 
		 * 注：半角长度为1，全角长度为2 
		 *  
		 * pStr:字符串 
		 * pLen:截取长度 
		 *  
		 * return: 截取后的字符串 
		 */
		cutString:function(pStr, pLen){
			
			var obj=this;
			 // 原字符串长度  
		    var _strLen = pStr.length;  
		  
		    var _tmpCode;  
		  
		    var _cutString;  
		  
		    // 默认情况下，返回的字符串是原字符串的一部分  
		    var _cutFlag = "1";  
		  
		    var _lenCount = 0;  
		  
		    var _ret = false;  
		  
		    if (_strLen <= pLen/2) {  
		        _cutString = pStr;  
		        _ret = true;  
		    }  
		  
		    if (!_ret) {  
		        for (var i = 0; i < _strLen ; i++ ) {  
		            if (obj.isFull(pStr.charAt(i))) {  
		                _lenCount += 2;  
		            } else {  
		                _lenCount += 1;  
		            }  
		  
		            if (_lenCount > pLen) {  
		                _cutString = pStr.substring(0, i);  
		                _ret = true;  
		                break;  
		            } else if (_lenCount == pLen) {  
		                _cutString = pStr.substring(0, i + 1);  
		                _ret = true;  
		                break;  
		            }  
		        }  
		    }  
		      
		    if (!_ret) {  
		        _cutString = pStr;  
		        _ret = true;  
		    }  
		  
		    if (_cutString.length == _strLen) {  
		        _cutFlag = "0";  
		    }  
		  
		    return {"cutstring":_cutString, "cutflag":_cutFlag};  
		},
		 /** 
		 * 判断是否为全角 
		 *  
		 * pChar:长度为1的字符串 
		 * return: true:全角 
		 *          false:半角 
		 */
		isFull:function(pChar){
			
			 for (var i = 0; i < pChar.strLen ; i++ ) {     
				    if ((pChar.charCodeAt(i) > 128)) {  
				        return true;  
				    } else {  
				        return false;  
				    } 
			 }
		},
		formatStr:function(str,len){// 格式化字符串
			
			var totalLeng=str.length;
			var count=parseFloat(totalLeng/len);
			var obj=this;
			var newStr="";
			if(totalLeng<=len){
				return str;
			}
			var substr="";
			for(var i=0;i<count;i++){
				substr=str.substr(len*i,len);
				if(substr.length==len){
					substr+='<br/>';
				}
				newStr+=substr;
			}
			return newStr;
		},
		/**
		 * 插入 
         *  参数说明：str表示原字符串变量，flg表示要插入的字符串，sn表示要插入的位置
		 */
		insert_flg:function(str,flg,sn){
		    var newstr="";
		    for(var i=0;i<str.length;i+=sn){
		        var tmp=str.substring(i, i+sn);
		        newstr+=tmp+flg;
		    }
		    return newstr;
		},
		/**
		 * 得到柱状图基本信息
		 */
		getBarBasicInfo:function(text,dataText,data){
			var obj=this;
			option = {
			        title:{
			            text:"相对负载Top10",
//			            subtext:"点击进入服务器监控面板",
			            textStyle: {       // 其余属性默认使用全局文本样式，详见TEXTSTYLE
			                fontWeight: 'normal',
			                fontSize: 18,
			                fontFamily : '微软雅黑',
			                color:'#666666'
//			                        fontStyle: 'italic'
			            }
			        },
			        grid:{
			            x:5,
			            y:30,
			            x2:0,
			            y2:0,
			            borderWidth:0
			        },
			        tooltip : {
			            trigger: 'axis',
			            axisPointer : {            // 坐标轴指示器，坐标轴触发有效
			                type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
			            },
			            formatter:function(a){
			            	//var name=a[0][1];
			            	var newStr=obj.formatStr(a[0][1],30);
			            	//var name='中科院物理研究所中科院物理研究所中科院物理研究<br/>所中科院物理研究所中科院物理研究所中科院物理研究所<br/>qw12345678aaaaaaaaaaaaayyyyyyyyyyyybaiymfkese'
			            	return a[0][2]+'(道)<br/>'+newStr;
			            }
			        },
			        legend: {
			            show:false,
			            data:['统计自2015年8月'],
			            y:'bottom',
			            x:'right'
			        },
			        toolbox: {
			            show : false
			        },
			        calculable : false,
			        xAxis : [
			            {
			                type : 'value',
			                axisTick : {show: false},
			                axisLine:{show:false},
			                axisLabel:{show:false} ,
			                splitLine:false
			            }
			        ],
			        yAxis : [
			            {
			                show:false,
			                type : 'category',
			                position:'insideLeft',
			                axisTick : {show: false},
			                axisLine:{show:false},
			                axisLabel:{show:true,interval:'0',rotate:45},
			                splitLine:true,
			                data : ['中科院物理研究所中科院物理研究所中科院物理研究所中科院物理研究所中科院物理研究所中科院物理研究所qw12345678aaaaaaaaaaaaayyyyyyyyyyyybaiymfkese','abcdefghijklmnopqrstuvwxyz1234567','南京大学','国家航空航天总局','中国信息部第九研究所','微软中国研究院','中国银联','北京市气象局','上海台风所','中科院物理研究所']
			            }
			        ],
			        series : [
			            {
			                name:'统计自2015年8月',
			                type:'bar',
			                stack: '总量',
			                barWidth : 33,
			                itemStyle : { 
			                	normal: {
			                		label : {
						                			show: true, 
						                			position: 'insideLeft',
								                    formatter: function(a){
								                    	var name=obj.autoAddEllipsis(a.name,35);
								                        return a.value+ "(道)   "+ name;
								                    },
								                    textStyle: {       // 其余属性默认使用全局文本样式，详见TEXTSTYLE
								                        fontStyle: 'italic',
								                        fontSize:14,
								                        color:"#666"
					
								                    }
			                                 }
			                      }
			                  },
			                data:[21, 32, 44, 45, 67, 68, 78, 92, 93,98]
			            }
			        ]
			    };
			return option;
		}
}
$(function(){
	
	
})

