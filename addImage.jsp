<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US" dir="ltr">
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

    <!-- ===============================================-->
    <!--    Document Title-->
    <!-- ===============================================-->
    <title>Circuit Circuit Team project</title>
    <!-- ===============================================-->
    <!-- 버튼로딩 -->
	 <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	 <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/js/bootstrap.min.js'></script><script  src="./script.js"></script>
	 <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
	 <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.1.0/css/font-awesome.min.css'>	
    <!-- ===============================================-->
	<style>
	* {margin: 0; padding: 0; box-sizing: border-box;}
	body {background: #f6f6f6 !important; color: #444; font-family: 'Roboto', sans-serif; font-size: 16px; line-height: 1;}
	.container {max-width: 1100px; padding: 0 20px; margin:0 auto;}
	.panel {margin: 100px auto 40px; max-width: 500px; text-align: center;}
	.button_outer {background: #83ccd3; border-radius:30px; text-align: center; height: 50px; width: 200px; display: inline-block; transition: .2s; position: relative; overflow: hidden;}
	.btn_upload {padding: 17px 30px 12px; color: #fff; text-align: center; position: relative; display: inline-block; overflow: hidden; z-index: 3; white-space: nowrap;}
	.btn_upload input {position: absolute; width: 100%; left: 0; top: 0; width: 100%; height: 105%; cursor: pointer; opacity: 0;}
	.file_uploading {width: 100%; height: 10px; margin-top: 20px; background: #ccc;}
	.file_uploading .btn_upload {display: none;}
	.processing_bar {position: absolute; left: 0; top: 0; width: 0; height: 100%; border-radius: 30px; background:#83ccd3; transition: 3s;}
	.file_uploading .processing_bar {width: 100%;}
	.success_box {display: none; width: 50px; height: 50px; position: relative;}
	.success_box:before {content: ''; display: block; width: 9px; height: 18px; border-bottom: 6px solid #fff; border-right: 6px solid #fff; -webkit-transform:rotate(45deg); -moz-transform:rotate(45deg); -ms-transform:rotate(45deg); transform:rotate(45deg); position: absolute; left: 17px; top: 10px;}
	.file_uploaded .success_box {display: inline-block;}
	.file_uploaded {margin-top: 0; width: 50px; background:#83ccd3; height: 50px;} 
	.uploaded_file_view {max-width: 500px; margin: 40px auto; text-align: center; position: relative; transition: .2s; opacity: 0; border: 2px solid #ddd; padding: 15px;}
	.file_remove{width: 30px; height: 30px; border-radius: 50%; display: block; position: absolute; background: #aaa; line-height: 30px; color: #fff; font-size: 12px; cursor: pointer; right: -15px; top: -15px;}
	.file_remove:hover {background: #222; transition: .2s;}
	.uploaded_file_view img {max-width: 100%;}
	.uploaded_file_view.show {opacity: 1;}
	.error_msg {text-align: center; color: #f00}
	
	
	#form_submit_form{
		display: inline-block;  border-radius: 4px;  background-color: #f4511e;  border: none;  color: #FFFFFF;  text-align: center;  font-size: 28px;  padding: 20px;  width: 200px;  transition: all 0.5s;  cursor: pointer;  margin: 5px;
	}
	
	#form_submit_form span {  
		cursor: pointer;  display: inline-block;  position: relative;  transition: 0.5s;
	}
	</style>
	<!-- ===============================================-->
    <!-- ===============================================-->
    <!--    Favicons-->
    <!-- ===============================================-->
    <link rel="apple-touch-icon" sizes="180x180" href="assets/img/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicons/favicon-16x16.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicons/favicon.ico">
    <link rel="manifest" href="assets/img/favicons/manifest.json">
    <meta name="msapplication-TileImage" content="assets/img/favicons/mstile-150x150.png">
    <meta name="theme-color" content="#ffffff">
    
    <!-- ===============================================-->
    <link href="assets/css/theme.css" rel="stylesheet" />

    <link href="vendors/swiper/swiper-bundle.min.css" rel="stylesheet">
    
  </head>

  <body data-bs-spy="scroll" data-bs-target="#navbar">
    <!-- ===============================================-->
    <!--    Main Content-->
    <!-- ===============================================-->
    <main class="main" id="top">
      <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3 d-block" data-navbar-on-scroll="data-navbar-on-scroll">
        <div class="container"><a class="navbar-brand d-inline-flex" href="index.html"><img class="card-img" src="assets/img/gallery/logo.png" alt="..." /><span class="fs-2 fw-bold text-primary ms-2">Circuit<span class="text-warning">Circuit</span></span></a>
          <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
          <div class="collapse navbar-collapse border-top border-lg-0 mt-4 mt-lg-0" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
              <li class="nav-item px-2"><a class="nav-link fw-bold"><%=session.getAttribute("name") %></a></li>
              <li class="nav-item px-2"><a class="nav-link fw-bold" aria-current="page" href="DisplayImage.jsp">Display</a></li>
              <li class="nav-item px-2"><a class="nav-link fw-bold" href="board_list.jsp">Board</a></li>           
              <li class="nav-item px-2"><a class="nav-link fw-bold" href="logout">Logout</a></li>
              
           
        <!--       <li class="nav-item px-2"><a class="nav-link fw-bold" href="#packages">Packages</a></li>
              <li class="nav-item px-2"><a class="nav-link fw-bold" href="#faqs">FAQs </a></li> -->
            </ul>
            <!-- <form class="ms-lg-5"><a class="btn btn-primary" href="#!">Get started</a></form> -->
          </div>
        </div>
      </nav>
      <section class="py-0" id="header">
        <div class="container">
          <div class="row align-items-center min-vh-75 min-vh-md-50">
            <div class="col-12 text-center py-8" style="display: flex; justify-content : center;" >
<!-- div class="signin-content" 현제  -->             
             
             <main class="main_full" style="background-color:white; height:800px; width:600px; box-shadow: 2px 2px 10px #d3d3d3; border-radius: 40px;">
		
			<div class="panel" style="margin-top: 150px; border-color:white">
				<div class="button_outer">
					<div class="btn_upload">
					
							<form action="http://127.0.0.1:5000" id="form2" method="post">
								<input type = "hidden" id="value_test" name="test" value = "">
								<input type ="hidden" id="member_name" name = "member_name" value=<%=session.getAttribute("name")%>> 
							</form>	
							
							<form action="AddImage" id="form1" method="post" enctype="multipart/form-data"> 
								<input type = "file" name="image" value="image" id="upload_file">
							</form>
							
						<!-- <input type="file" id="upload_file" name="image" value="image"> -->
						Upload Image
					</div>
					<div class="processing_bar"></div>
					<div class="success_box"></div>
				</div>
			</div>
			<div class="error_msg"></div>
			<div class="uploaded_file_view" id="uploaded_view" style="border-color:white">
				<span class="file_remove">X</span>
			</div>
		<!-- </div> -->
		<div align="center">
			<!-- <input type="button" value="Click Me!" id = "form_submit_form" onclick="submitForms()"/> -->
			<button value="Click Me!" id = "form_submit_form"  onclick="submitForms()" id="load2" data-loading-text="<i class='fa fa-spinner fa-spin '></i> Loading..." >Click Me!</button>
		<!--  -->
				<script type="text/javascript">
					$('#form_submit_form').on('click', function() {
					    var $this = $(this);
					 $this.button('loading');
					       setTimeout(function() {
					       	$this.button('reset');
					   }, 6000);
					});
				</script>
			</div>		
		</div>
	</div>
</main>

<script type="text/javascript">
var btnUpload = $("#upload_file"),
	btnOuter = $(".button_outer");
	btnUpload.on("change", function(e){
	var ext = btnUpload.val().split('.').pop().toLowerCase();
	if($.inArray(ext, ['gif','png','jpg','jpeg']) == -1) {
		$(".error_msg").text("사진을 올려주세요...");
	} else {
		$(".error_msg").text("");
		btnOuter.addClass("file_uploading");
		setTimeout(function(){
			btnOuter.addClass("file_uploaded");
		},3000);
		var uploadedFile = URL.createObjectURL(e.target.files[0]);
		setTimeout(function(){
			$("#uploaded_view").append('<img src="'+uploadedFile+'"/>').addClass("show");
		},3500);
	}
	});
	$(".file_remove").on("click", function(e){
	$("#uploaded_view").removeClass("show");
	$("#uploaded_view").find("img").remove();
	btnOuter.removeClass("file_uploading");
	btnOuter.removeClass("file_uploaded");
	});
	
	 $(document).ready(function(){
		   $('input[type="file"]').change(function(e){
		       var fileName = e.target.files[0].name;
		       document.getElementById("value_test").value= fileName;
		   });
		});	
		 
		submitForms = function(){
			document.getElementById("form1").submit();    
		}

	
	 $(function(){
      $('#form_submit_form').on("click",function () {
          var form2 = $("#form2").serialize(); // form안에 있는 모든 데이터를 한번에 보내줌 .serialize();
          
          $.ajax({
              type: "post",
              url: "http://127.0.0.1:5000",
              data: form2, 
              dataType: 'json',
              success: function (data) {
                  alert("success");
              },
              error: function (request, status, error) {
                  console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
              }
          });    
      });
  });
	 

</script>         
            <div>        		
            </div>                     
            </div>
          </div>
        </div>
      </section>
    </main>
    <script src="vendors/@popperjs/popper.min.js"></script>
    <script src="vendors/bootstrap/bootstrap.min.js"></script>
    <script src="vendors/is/is.min.js"></script>
    <script src="vendors/swiper/swiper-bundle.min.js"> </script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
    <script src="vendors/fontawesome/all.min.js"></script>
    <script src="assets/js/theme.js"></script>

    <link href="https://fonts.googleapis.com/css2?family=PT+Serif:wght@400;700&amp;display=swap" rel="stylesheet">
  </body>

</html>