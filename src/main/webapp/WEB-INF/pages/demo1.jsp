<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/my.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/jquery.multifile.min.css">
</head>
<body>
	<div class="container" >
	    <div class="row">
	       <div class="col-md-2">
	           <ul class="nav nav-pills nav-stacked">
					  <li role="presentation" class="active"><a href="#" id="match_menu">数学</a></li>
					  <li role="presentation"><a href="#" id="chinese_menu">语文</a></li>
					  <li role="presentation"><a href="#" id="eng_menu">英语</a></li>
               </ul>
	       </div>
	       <div class="col-md-10">
	           <div id="math">
	           1111111111111111111111111111111111111111111111111111
	           <div class="row">
	                <div class="col-md-10" style="border:1px solid #ccc;">中左</div>
	                <div class="col-md-2" style="border:1px solid #ccc;">中右</div>
	           </div>
	           <div class="row">
	                <div class="col-md-4" style="border:1px solid #000;">左</div>
	                <div class="col-md-8" style="border:1px solid #ccc;">右</div>
	           </div>
	           <p class="lead">曾经的一切都会过去<del>曾经的一切都</del>会过去曾经的一切<mark>都</mark>会过去曾经的一切都会过去<s>曾经的一切</s>都会过去
	           新的<ins>内容要学</ins>习我是<u>下划线</u>哦</p>
	           <p class="text-left">左</p>
	           <p class="text-center">中</p>
	           <p class="text-right">右</p>
	           <p class="text-lowercase">this is Dog</p>
	           <p class="text-uppercase">this is Dog</p>
	           <p class="text-capitalize">this is Dog</p>
	           <div class="panel panel-default">
	              <div class="panel-heading">我的标题</div>
				  <div class="panel-body">
				    Basic panel example
				  </div>
			   </div>
			   <div class="panel panel-info">
	              <div class="panel-heading"><h3 class="panel-title">我的标题</h3></div>
				  <div class="panel-body">
				    Basic panel example
				  </div>
			   </div>
			   <ul class="list-group">
				  <li class="list-group-item"><span class="badge">14</span>列表组项</li>
				  <li class="list-group-item"><span class="badge">7</span>列表组项</li>
				  <li class="list-group-item"><span class="badge">9</span>列表组项</li>
				  <li class="list-group-item">列表组项</li>
				  <li class="list-group-item">列表组项</li>
				</ul>
				<div class="list-group">
					  <a href="#" class="list-group-item active">
					    Cras justo odio
					  </a>
					  <a href="#" class="list-group-item">Dapibus ac facilisis in</a>
					  <a href="#" class="list-group-item">Morbi leo risus</a>
					  <a href="#" class="list-group-item">Porta ac consectetur ac</a>
					  <a href="#" class="list-group-item">Vestibulum at eros</a>
				</div>
				<div class="list-group">
					  <button type="button" class="list-group-item">Cras justo odio</button>
					  <button type="button" class="list-group-item">Dapibus ac facilisis in</button>
					  <button type="button" class="list-group-item">Morbi leo risus</button>
					  <button type="button" class="list-group-item">Porta ac consectetur ac</button>
					  <button type="button" class="list-group-item">Vestibulum at eros</button>
				</div>
				<div class="list-group">
					  <a href="#" class="list-group-item disabled">
					    Cras justo odio
					  </a>
					  <a href="#" class="list-group-item">Dapibus ac facilisis in</a>
					  <a href="#" class="list-group-item">Morbi leo risus</a>
					  <a href="#" class="list-group-item">Porta ac consectetur ac</a>
					  <a href="#" class="list-group-item">Vestibulum at eros</a>
				</div>
				<ul class="list-group">
				  <li class="list-group-item list-group-item-success">Dapibus ac facilisis in</li>
				  <li class="list-group-item list-group-item-info">Cras sit amet nibh libero</li>
				  <li class="list-group-item list-group-item-warning">Porta ac consectetur ac</li>
				  <li class="list-group-item list-group-item-danger">Vestibulum at eros</li>
				</ul>
				<div class="list-group">
				  <a href="#" class="list-group-item list-group-item-success">Dapibus ac facilisis in</a>
				  <a href="#" class="list-group-item list-group-item-info">Cras sit amet nibh libero</a>
				  <a href="#" class="list-group-item list-group-item-warning">Porta ac consectetur ac</a>
				  <a href="#" class="list-group-item list-group-item-danger">Vestibulum at eros</a>
				</div>
				<div class="list-group">
					  <a href="#" class="list-group-item active">
					    <h4 class="list-group-item-heading">List group item heading</h4>
    					<p class="list-group-item-text">sdfsfsfsfss</p>
					  </a>
					  <a href="#" class="list-group-item">
					    <h4 class="list-group-item-heading">List group item heading</h4>
    					<p class="list-group-item-text">sdfsfsfsfss</p>
					  </a>
					  <a href="#" class="list-group-item"><h4 class="list-group-item-heading">List group item heading</h4>
    					<p class="list-group-item-text">sdfsfsfsfss</p></a>
					  <a href="#" class="list-group-item"><h4 class="list-group-item-heading">List group item heading</h4>
    					<p class="list-group-item-text">sdfsfsfsfss</p></a>
					  <a href="#" class="list-group-item"><h4 class="list-group-item-heading">List group item heading</h4>
    					<p class="list-group-item-text">sdfsfsfsfss</p></a>
				</div>
				</div>
				<div id="chinese" class="hide">
					<form class="form-inline">
						  <div class="form-group">
						    <label for="exampleInputName2">Name</label>
						    <input type="text" class="form-control" id="exampleInputName2" placeholder="Jane Doe">
						  </div>
						  <div class="form-group">
						    <label for="exampleInputEmail2">Email</label>
						    <input type="email" class="form-control" id="exampleInputEmail2" placeholder="jane.doe@example.com">
						  </div>
						  <button type="submit" class="btn btn-default">Send invitation</button>
					</form>
				    <div class="row">
				        <div class="col-md-10" style="border:1px solid #ccc;">
				               <div class="row">
				                   <div class="col-md-12">
				                       <form class="form-inline">
											  <div class="form-group">
											    <label class="sr-only" for="exampleInputEmail3">Email address</label>
											    <input type="email" class="form-control" id="exampleInputEmail3" placeholder="Email">
											  </div>
											  <div class="form-group">
											    <label class="sr-only" for="exampleInputPassword3">Password</label>
											    <input type="password" class="form-control" id="exampleInputPassword3" placeholder="Password">
											  </div>
											  <div class="checkbox">
											    <label>
											      <input type="checkbox"> Remember me
											    </label>
											  </div>
											  <button type="submit" class="btn btn-default">Sign in</button>
										</form>
				                   </div>
				                   <div class="row">
				                       <div class="col-md-12">
				                                <form class="form-inline">
													  <div class="form-group">
													    <label class="sr-only" for="exampleInputAmount">Amount (in dollars)</label>
													    <div class="input-group">
													      <div class="input-group-addon">$</div>
													      <input type="text" class="form-control" id="exampleInputAmount" placeholder="Amount">
													      <div class="input-group-addon">.00</div>
													    </div>
													  </div>
													  <button type="submit" class="btn btn-primary">Transfer cash</button>
												</form>
				                       </div>
				                   </div>
				                   <form class="form-horizontal">
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label>
          <input type="checkbox"> Remember me
        </label>
      </div>
    </div>
  </div>
  <div class="form-group">
       <textarea class="form-control" rows="3" placeholder="sdfdsf"></textarea>
  </div>
  <div class="checkbox">
  <label>
    <input type="checkbox" value="">
    Option one is this and that&mdash;be sure to include why it's great
  </label>
</div>
<div class="checkbox disabled">
  <label>
    <input type="checkbox" value="" disabled>
    Option two is disabled
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
    Option one is this and that&mdash;be sure to include why it's great
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
    Option two can be something else and selecting it will deselect option one
  </label>
</div>
<div class="radio disabled">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3" disabled>
    Option three is disabled
  </label>
</div>


<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1"> 1
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox2" value="option2"> 2
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox3" value="option3"> 3
</label>
<label class="radio-inline">
  <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> 1
</label>
<label class="radio-inline">
  <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> 2
</label>
<label class="radio-inline">
  <input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3"> 3
</label>
<select class="form-control" multiple>
  <option>1</option>
  <option>2</option>
  <option>3</option>
  <option>4</option>
  <option>5</option>
</select>

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Sign in</button>
    </div>
  </div>
</form>
<form class="form-horizontal">
  <div class="form-group">
    <label class="col-sm-2 control-label">Email</label>
    <div class="col-sm-10">
      <p class="form-control-static">email@example.com</p>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputPassword" placeholder="Password">
    </div>
  </div>
</form>
<form class="form-inline">
  <div class="form-group">
    <label class="sr-only">Email</label>
    <p class="form-control-static">email@example.com</p>
  </div>
  <div class="form-group">
    <label for="inputPassword2" class="sr-only">Password</label>
    <input type="password" class="form-control" id="inputPassword2" placeholder="Password">
  </div>
  <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input here..." disabled>
  <input class="form-control" type="text" placeholder="Readonly input here…" readonly>
  <button type="submit" class="btn btn-default">Confirm identity</button>
</form>
<form>
  <div class="form-group has-success has-feedback">
  <label class="control-label" for="inputSuccess1">Input with success</label>
  <input type="text" class="form-control" id="inputSuccess1" aria-describedby="inputSuccess2Status">
   <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
  <span id="inputSuccess2Status" class="sr-only">(success)</span>
</div>
<div class="form-group has-warning">
  <label class="control-label" for="inputWarning1">Input with warning</label>
  <input type="text" class="form-control" id="inputWarning1">
</div>
<div class="form-group has-error">
  <label class="control-label" for="inputError1">Input with error</label>
  <input type="text" class="form-control" id="inputError1">
</div>
<div class="has-success">
  <div class="checkbox">
    <label>
      <input type="checkbox" id="checkboxSuccess" value="option1">
      Checkbox with success
    </label>
  </div>
</div>
<div class="has-warning">
  <div class="checkbox">
    <label>
      <input type="checkbox" id="checkboxWarning" value="option1">
      Checkbox with warning
    </label>
  </div>
</div>
<div class="has-error">
  <div class="checkbox">
    <label>
      <input type="checkbox" id="checkboxError" value="option1">
      Checkbox with error
    </label>
  </div>
</div>
  <fieldset disabled>
    <div class="form-group">
      <label for="disabledTextInput">Disabled input</label>
      <input type="text" id="disabledTextInput" class="form-control" placeholder="Disabled input">
    </div>
    <div class="form-group">
      <label for="disabledSelect">Disabled select menu</label>
      <select id="disabledSelect" class="form-control">
        <option>Disabled select</option>
      </select>
    </div>
    <div class="checkbox">
      <label>
        <input type="checkbox"> Can't check this
      </label>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </fieldset>
</form>
				               </div>
				        </div>
				        <div class="col-md-2" style="border:1px solid #ccc;">
				            <form>
									  <div class="form-group">
									    <label for="exampleInputEmail1">Email address</label>
									    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
									  </div>
									  <div class="form-group">
									    <label for="exampleInputPassword1">Password</label>
									    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
									  </div>
									  <div class="form-group">
									    <label for="exampleInputFile">File input</label>
									    <input type="file" id="exampleInputFile">
									    <p class="help-block">Example block-level help text here.</p>
									  </div>
									  <div class="checkbox">
									    <label>
									      <input type="checkbox"> Check me out
									    </label>
									  </div>
									  <button type="submit" class="btn btn-default">Submit</button>
							</form>
				        </div>
				    </div>
				</div>
				<div id="eng" class="hide">
				           <div class="row">
				                <div class="col-md-10" style="border:1px solid #ccc;">
				                    <form id="soursewarefrom"  method="post" enctype="multipart/form-data">
				                            姓名：<input type="text" name="name"/><br/>
				             年龄：               <input type="text" name="age"/><br/>

				         爱好：<select name="hobby">
				           <option value="basketball">篮球</option> 
				           <option value="football">足球</option> 
				        </select><br/>
				        				         上传文件：                  <input type="file" name="uploadedFile" id="multifile"  maxLength="3" accept="png|txt" class="multi"/>
				        				         描述：<textarea rows="2" cols="4" name="desc" class="ckeditor"></textarea>
				        				         
				        				         <br/>
				                         验证码：<input type="text" name="kaptchaField" id="kaptchaImg"/>&nbsp;&nbsp;<img src="../Kaptcha.jpg" id="kaptchaImage" /><br/>
				                           <input type="submit" value="提交" id="submitBtn"/>
				                    </form>
				                </div>
				                <div class="col-md-2" style="border:1px solid #ccc;">中右</div>
	           				</div>
				</div>
	       </div>
	    </div>
	</div>
	<script src="<%=request.getContextPath() %>/resources/js/jquery.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/js/jquery.form.js"></script>
	<script src="<%=request.getContextPath() %>/resources/js/jquery.multifile.min.js"></script>
	<script src="<%=request.getContextPath() %>/ckeditor/ckeditor.js"></script>
	<script src="<%=request.getContextPath() %>/ckfinder_2_5_1/ckfinder.js"></script>
	<script src="<%=request.getContextPath() %>/resources/js/demo1.js"></script>
</body>
</html>