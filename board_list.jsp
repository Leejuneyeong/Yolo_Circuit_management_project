<%@page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Circuit Circuit Team project</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css">
    
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
	<!-- Font Awesome icons (free version)-->
	<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
	<!-- Simple line icons-->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.min.css" rel="stylesheet" />
	<!-- Google fonts-->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="startbootstrap-stylish-portfolio-gh-pages/css/styles.css" rel="stylesheet" />

	<!-- Favicon-->
	<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
	<!-- Font Awesome icons (free version)-->
	
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	
	<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
		crossorigin="anonymous"></script>
		
	<!-- Google fonts-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
		rel="stylesheet" type="text/css" />
	<link
		href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
		rel="stylesheet" type="text/css" />
	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="css/index-styles.css" rel="stylesheet" />
	
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

    <!-- ===============================================-->
    <!--    Document Title-->
    <!-- ===============================================-->
    <title>Circuit Circuit Team project</title>
    
    <!-- ===============================================-->
	<style>
	* {margin: 0; padding: 0; box-sizing: border-box;}
	body {background: #f6f6f6; color: #444; font-family: 'Roboto', sans-serif; font-size: 16px; line-height: 1;}
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
    <!--    Stylesheets-->
    <!-- ===============================================-->
    <link href="assets/css/theme.css" rel="stylesheet" />

    <link href="vendors/swiper/swiper-bundle.min.css" rel="stylesheet">
    
</head>

<style>
body{
	 background: #f6f6f6;
	 margin-top : 70px;
	 padding-top:70px;
	}
	td,th{
			color: black;
		  }
</style>
<!-- Navigation-->

<!--  --><!--  --><!--  --><!--  --><!--  --><!--  -->

  <body data-bs-spy="scroll" data-bs-target="#navbar" style="margin-top: 0px;">

    <!-- ===============================================-->
    <!--    Main Content-->
    <!-- ===============================================-->
    <main class="main" id="top">
      <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3 d-block" data-navbar-on-scroll="data-navbar-on-scroll">
        <div class="container"><a class="navbar-brand d-inline-flex" href="index.html"><img class="card-img" src="assets/img/gallery/logo.png" alt="..." /><span class="fs-2 fw-bold text-primary ms-2">Circuit<span class="text-warning">Circuit</span></span></a>
          <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
          <div class="collapse navbar-collapse border-top border-lg-0 mt-4 mt-lg-0" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
              <li class="nav-item px-2"><a class="nav-link fw-bold" href="logout"><%=session.getAttribute("name") %></a></li>
              <li class="nav-item px-2"><a class="nav-link fw-bold" aria-current="page" href="addImage.jsp">Photo Input</a></li>
              <li class="nav-item px-2"><a class="nav-link fw-bold" href="DisplayImage.jsp">Display</a></li>           
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
<%String board_imgname=""; %>
<!-- <!--  --><!-- <!--  --><!--  --><!--  -->
<body style="margin-top: 100px;">
    <div class="container py-5">
        <div class="row" >
            <table id="example" class="table table-striped" style="width:100%" >
            <thead>
            <tr>
                <th>Name</th>
                <th>File Name</th>
                <th>Date</th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <tr>
            <%
				Connection con = null;
				Statement pst;
				String query = null;
				ResultSet rs = null;
				try {
					Class.forName("com.mysql.cj.jdbc.Driver");
					con = DriverManager.getConnection("jdbc:mysql://project-db-stu.ddns.net:3307/hr?serverTimezone=UTC","hr","hr");
					pst = con.createStatement();
					query= "select * from board_list";
					rs = pst.executeQuery(query);
					while(rs.next()) {
			%>
                <td style="color: black;"><%=rs.getString(1) %></td>
                <% board_imgname = rs.getString(2); %>
                <% System.out.println("내가 입력한 행의 값 : "+board_imgname); %>
                
                <!-- 게시판 내역 클릭시 search()함수 실행 {Displayimg.jsp 에서 회로도 출력}  -->
                <td  style="cursor:pointer;color: black;" onClick="search()"><%=board_imgname %></td> 
                
                <!-- location.href="/경로?보낼변수명=" + 값; -->
                <% 
                //session.setAttribute("board_imgname",board_imgname);
                %>
                
                
                <td style="color: black;"><%=rs.getString(3) %></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <% 
			}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			%>
        </tbody>
    </table>
   </div>
</div>
    <!-- <script src="./js/app.js"></script> -->
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>
    
    <script>
		function search(){
		$("#example").on("click","tr",function(){  
			var board=($(this).find("td:eq(1)").text());  /*jQuery를 사용해서 example 테이블(게시판board_list)클릭한 부분의 값을 board에 담아  */
			/* var board=($(this).find("td:eq(1)").text()); */
			location.href="DisplayImage.jsp?board_imgname="+board;  /*DisplayImage.jsp로 board에 담은 값을 전달  */
		});
	   }
	</script>
    
    <script>
    $(document).ready(function () {
        $('#example').DataTable();
    });
    </script>
    
    <script>
    function change() {

    	request.setAttribute("board_imgname",rs.getString(2));
		RequestDispatcher rd; 
		rd = request.getRequestDispatcher("DisplayImage.jsp");
		rd.forward(request, response);

    }
    </script>
    
</body>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</html>