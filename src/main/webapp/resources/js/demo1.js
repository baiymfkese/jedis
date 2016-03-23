var MyTest={
		
		url:{
			myurl:"/jedis/test/test22.do"
		},
		bindEvent:function(){
			
			var obj=this;
			$("#match_menu").bind("click",function(){
				
				obj.showAndHideEle("match_menu",["chinese_menu","eng_menu"],"math",["chinese","eng"]);
			});
			$("#chinese_menu").bind("click",function(){
				
				obj.showAndHideEle("chinese_menu",["match_menu","eng_menu"],"chinese",["math","eng"]);
			});
			$("#eng_menu").bind("click",function(){
				
				obj.showAndHideEle("eng_menu",["match_menu","chinese_menu"],"eng",["math","chinese"]);
			});
			$("#kaptchaImage").bind('click',function(){
				 $(this).hide().attr('src','../Kaptcha.jpg?'+Math.floor(Math.random()*100)).fadeIn();
			});
			$("#submitBtn").bind('click',function(){
				  
				  obj.save();
			});
		},
		showAndHideEle:function(showMenuItem,hideMenuItems,showContentItem,hideContentItems){
			
			$("#"+showMenuItem).parent().addClass("active");
			$("#"+showContentItem).addClass("show");
			for(var i=0;i<hideMenuItems.length;i++){
				
				$("#"+hideMenuItems[i]).parent().removeClass("active");
			}
			for(var i=0;i<hideContentItems.length;i++){
				
				$("#"+hideContentItems[i]).addClass("hide");
				$("#"+hideContentItems[i]).removeClass("show");
				
			}
		},
		formValidate:function(){
			
			var obj=this;
			console.log($('#file1'));
			var file1=$('#file1').val();
			obj.validateUploadFile(file1);
			return false;
		},
		sendAjax:function(url,parameter,successCallback,errorCallback){
			$.ajax({
				url:url,
				data:parameter,
				async:false,
				dataType:"json",
				type:'post',
				success:successCallback,
				error:errorCallback
			});
		},
		validateUploadFile:function(filePath){
			alert(filePath);
			var obj=this;
			obj.sendAjax(obj.url.myurl,{filePath:filePath}, function(data){
				
				alert(data.success+"-----"+data.msg);
			},function(){})
		},
		save:function(){
			
			var val=CKEDITOR.instances.desc.getData();//获取文本域的值
			var option={
					url:'/jedis/test/test21.do',
					type:'POST',
					data:{descContent:val},
					beforeSubmit:function(){
						//window.parent.CKEDITOR.tools.callFunction(1,'D:\workspace_karaf\jedis\src\main\webapp\upload\xzd1.png','上付成功');
						return true;
					},
					success:function(responseText){
						var json=$.parseJSON(responseText);
						CKEDITOR.instances.desc.setData("测试");
					},
					resetForm:true
			};
			$("#soursewarefrom").ajaxForm(option);
			$("#soursewarefrom").ajaxSubmit();
			/* $('#soursewarefrom').form('submit',{
				    url:'/jedis/test/test21.do',
				    onSubmit: function(param){
				    	return true;
				    },
				    success:function(data){
				    	alert(data);
				    },
				    error:function(r){
				    	
				    }
			   })*/
		}
}
$(function(){
	var editor=CKEDITOR.replace("desc");
	CKFinder.setupCKEditor(editor, '/jedis/ckfinder_2_5_1/');
	MyTest.bindEvent();
	//$("#multifile").multifile({});
	/*$("#multifile").multifile({
		
		  accept:'pdf',
		  max:3,
		  STRING:{
			  remove:'移除',
			  selected:'已经选择了:$file',
			  denied:'不能选择:$ext!',
			  duplicate:'文件重复:\n$file!'
		  },
		  afterFileSelect:function(element,value,master_element){
			  element.name=value;
		  }
	});*/
})

