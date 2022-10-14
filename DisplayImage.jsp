<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.sql.*" %>

<%! int AC_Source; %>
<%! int BJT; %>
<%! int Battery; %>
<%! int Capacitor; %>
<%! int Current_Source; %>
<%! int DC_Source; %>
<%! int Diode; %>
<%! int Ground; %>
<%! int Inductor; %>
<%! int MOSFET; %>
<%! int Resistors; %>
<%! int Voltage_Source; %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Circuit Circuit Team project</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css"
        integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I"
        crossorigin="anonymous">
<link rel="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css">
<link rel="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js">        
<link rel="stylesheet" href="C:/Users/user/Circuit_team_project/Circuit_team/src/main/webapp/bootstrap_table/style.css">

<!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  -->
<script src="vendors/@popperjs/popper.min.js"></script>
    <script src="vendors/bootstrap/bootstrap.min.js"></script>
    <script src="vendors/is/is.min.js"></script>
    <script src="vendors/swiper/swiper-bundle.min.js"> </script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
    <script src="vendors/fontawesome/all.min.js"></script>
    <script src="assets/js/theme.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=PT+Serif:wght@400;700&amp;display=swap" rel="stylesheet">
<!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  -->
	<script src="vendors/@popperjs/popper.min.js"></script>
    <script src="vendors/bootstrap/bootstrap.min.js"></script>
    <script src="vendors/is/is.min.js"></script>
    <script src="vendors/swiper/swiper-bundle.min.js"> </script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
    <script src="vendors/fontawesome/all.min.js"></script>
    <script src="assets/js/theme.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=PT+Serif:wght@400;700&amp;display=swap" rel="stylesheet">
 	<link href="assets/css/theme.css" rel="stylesheet" />
    <link href="vendors/swiper/swiper-bundle.min.css" rel="stylesheet">
<!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  -->
</head>
<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3 d-block" data-navbar-on-scroll="data-navbar-on-scroll" style="background-image: none; transition: none 0s ease 0s; padding:0;">
        <div class="container" style="padding:0;"><a class="navbar-brand d-inline-flex" href="index.html"><img class="card-img" src="assets/img/gallery/logo.png" alt="..."><span class="fs-2 fw-bold text-primary ms-2">Circuit<span class="text-warning">Circuit</span></span></a>
          <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
          <div class="collapse navbar-collapse border-top border-lg-0 mt-4 mt-lg-0" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
              <li class="nav-item px-2"><a class="nav-link fw-bold"><%=session.getAttribute("name")%></a></li>
              <li class="nav-item px-2"><a class="nav-link fw-bold" aria-current="page" href="addImage.jsp">Photo Input</a></li>
              <li class="nav-item px-2"><a class="nav-link fw-bold" href="board_list.jsp">Board</a></li>           
              <li class="nav-item px-2"><a class="nav-link fw-bold" href="logout">Logout</a></li>
            </ul>
          </div>
        </div>
      </nav>
<body style="margin-top: 100px">

<!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  -->
 
        
<!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  -->

	 <!-- <div align="right" >
		<form action="DisplayServlet" method="post">
			<p style="font-family: 'Jeju Gothic', sans-serif; font-size:20px; font-weight:500; margin-top:90px;">회로도 파일 이름 입력 : 
			<input type = "text" name ="imgFileName">
			<input type="number" name="imageId">
			<input type="hidden" value ="회로도 찾기" class="btn btn-warning" style="margin-top:6px">
			<input type="button" value ="내역 조회 " class="btn btn-warning" onclick="location.href='http://localhost:8090/Circuit_team/board_list.jsp'" style="margin-top:6px" id="goBoard">
			<input type="button" value ="회로도 입력" onclick="location.href='http://localhost:8090/Circuit_team/addImage.jsp'" class="btn btn-warning" style="margin-top:6px">
			</p>
		</form>
	</div>  -->

	<script> 
		const button_goto_board_list = document.getElementById("goBoard");
			button_goto_board_list.addEventListener('click',()=>{
				$(location).attr('href', 'http://localhost:8090/Circuit_team/board_list.jsp') 
			});
			
	</script>
		
	
	
	<%
		String board_imgname=request.getParameter("board_imgname");
		String imgFileName=null;
		
		if(board_imgname!=null){
			imgFileName = request.getParameter("board_imgname");
			System.out.print("보드");
		}else{
			imgFileName = (String)request.getAttribute("imgname");
			System.out.print("업로드");
		} 
		
		String imgId = (String)request.getAttribute("Circuit_id");
	%>
	
	
	<%
		// **************************************** MySQL
	
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://project-db-stu.ddns.net:3307/hr?serverTimezone=UTC","hr","hr");
			Statement pst = con.createStatement();
			//String query="select * from circuit_parts_list where circuit_img = '"+imgFileName+"'";
			String query="select * from circuit_parts_list_12num where circuit_img = '"+imgFileName+"'";

			ResultSet rs = pst.executeQuery(query);
			
			String CountRow_AC_Source="";
			String CountRow_BJT="";
			String CountRow_Battery="";
			String CountRow_Capacitor="";
			String CountRow_Current_Source="";
			String CountRow_DC_Source="";
			//String CountRow_Dep_Current_Source="";
			//String CountRow_Dep_DC_Source="";
			String CountRow_Diode="";
			String CountRow_Ground="";
			String CountRow_Inductor="";
			String CountRow_MOSFET="";
			//String CountRow_Node="";
			//String CountRow_Opamp="";
			String CountRow_Resistors="";
			//String CountRow_Resistor_Box="";
			String CountRow_Voltage_Source="";
			//String CountRow_Zener_Diode="";
			//String CountRow_object="";
			
			
			while(rs.next()) {
				CountRow_AC_Source = rs.getString(3);
				CountRow_BJT=rs.getString(4);
				CountRow_Battery=rs.getString(5);
				CountRow_Capacitor=rs.getString(6);
				CountRow_Current_Source=rs.getString(7);
				CountRow_DC_Source=rs.getString(8);
				CountRow_Diode=rs.getString(9);
				CountRow_Ground=rs.getString(10);
				CountRow_Inductor=rs.getString(11);
				CountRow_MOSFET=rs.getString(12);
				CountRow_Resistors=rs.getString(13);		
				CountRow_Voltage_Source=rs.getString(14);	
			}
			
			
			BJT = Integer.parseInt(CountRow_BJT);
			//out.println("BJT : "+BJT);
			
			Battery = Integer.parseInt(CountRow_Battery);
			//out.println("Battery : "+Battery);
			
			Capacitor = Integer.parseInt(CountRow_Capacitor);
			//out.println("Capacitor : "+Capacitor);
			
			Current_Source = Integer.parseInt(CountRow_Current_Source);
			//out.println("Current_Source : "+Current_Source);
			
			DC_Source = Integer.parseInt(CountRow_DC_Source);
			//out.println("DC_Source : "+DC_Source);
			
			//Dep_Current_Source = Integer.parseInt(CountRow_Dep_Current_Source);
			//out.println("Dep_Current_Source : "+Dep_Current_Source);
			
			//Dep_DC_Source = Integer.parseInt(CountRow_Dep_DC_Source);
			//out.println("Dep_DC_Source : "+Dep_DC_Source);
			
			Diode = Integer.parseInt(CountRow_Diode);
			//out.println("Diode : "+Diode);
			
			Ground = Integer.parseInt(CountRow_Ground);
			//out.println("Ground : "+Ground);
			
			Inductor = Integer.parseInt(CountRow_Inductor);
			//out.println("Inductor : "+Inductor);
			
			MOSFET = Integer.parseInt(CountRow_MOSFET);
			//out.println("MOSFET : "+MOSFET);
			
			//Node = Integer.parseInt(CountRow_Node);
			//out.println("Node : "+Node);
			
			//Opamp = Integer.parseInt(CountRow_Opamp);
			//out.println("Opamp : "+Opamp);
			
			Resistors = Integer.parseInt(CountRow_Resistors);
			//out.println("Resistors : "+Resistors);
			
			//Resistor_Box = Integer.parseInt(CountRow_Resistor_Box);
			//out.println("Resistor_Box : "+Resistor_Box);
			
			Voltage_Source = Integer.parseInt(CountRow_Voltage_Source);
			//out.println("Voltage_Source : "+Voltage_Source);
			
			//Zener_Diode = Integer.parseInt(CountRow_Zener_Diode);
			//out.println("Zener_Diode : "+Zener_Diode);
			
			//object = Integer.parseInt(CountRow_object);
			//out.println("object : "+object);
			
			AC_Source = Integer.parseInt(CountRow_AC_Source);
			/* out.println("AC_Source : "+AC_Source); */
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	%>
	
	<div class ="container" align="center">
		<div class="row" align="center">
			<%
			  if(imgFileName != "" && imgId!=""){					
			%>
			<div class="col" style="width:450px; table-layout:fixed; border-color:#dee2e6; box-shadow : 5px 5px 5px" border="1px" border-radius="30%">
				<div class="thumbnail">
					<div class="img-container">
						<img src="Circuit_images/<%=imgFileName %>" alt="" class="image">
						<div class="overlay">
							<p class="caption">원본 사진</p>
						</div>
					</div>
				</div>
			</div>	
			
		
			<div class="col" style="width:450px; table-layout:fixed; border-color:#dee2e6; box-shadow : 5px 5px 5px" border="1px">
				<div class="thumbnail">
					<div class="img-container">
						<img src="Yolo_Circuit_images/<%=imgFileName %>" alt="" class="image">
						<div class="overlay">
							<p class="caption">결과 사진</p>
						</div>
					</div>
				</div>
			</div>	
			<%
			 }
			%>
		</div>
		
	</div>
	
	<style>
	* {
	    margin: 0;
	    padding: 0;
	    box-sizing: border-box;
	}
	
	body{
	    font-family: 'Raleway', sans-serif;
	    background: #f6f6f6;
	}
	
	.container{
	    padding: 3rem;
	}
	
	h1 {
	    font: size 3rem;
	    padding : 2rem;
	    text-align: center;
	}
	
	.image{
	    display:block;
	    width:100%;
	}
	
	.overlay{
	    position: absolute;
	    top: 0;
	    bottom:0;
	    left :0;
	    right:0;
	    height:100%;
	    width:100%;
	    opacity:0;
	    transition: .5s ease;
	    background-color: rgba(255,255,255,0.9);
	}
	
	.caption{
	    font-size : 2rem;
	    position:absolute;
	    top:50%;
	    left:50%;
	    transform: translate(-50%,-50%);
	    text-align: center;
	}
	
	.thumbnail:hover{
	    transform: translateY(-4px);
	}
	
	.img-container:hover .overlay{
	    opacity:1;
	}
	</style>
	
<!--차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트차트  -->
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/variable-pie.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script> 
	<script src="https://code.highcharts.com/modules/export-data.js"></script>
	<script src="https://code.highcharts.com/modules/accessibility.js"></script>
	
	<div>
	
		<div align="center">
			<figure class="highcharts-figure">
			  <div id="container"></div>
			  <p class="highcharts-description">
			   
			  </p>
			</figure>
		</div>	
		<h3 align="center" style="font-family: 'Jeju Gothic', sans-serif; font-size:30px; font-weight:bold">회로도 부품 리스트</h3> 
		
 	<div align="center">
		<div align="center" class="container" style="display:inline-flex; justify-content:center;">
			<table class="table table-hover" style="width:450px; table-layout:fixed; border-color:#dee2e6; box-shadow : 5px 5px 5px;" border="1px" >
			  <thead>
			    <!-- <tr class="table-danger"> -->
			    <tr class="table-warning"><!--danger  -->
			      <th style="text-align:center; font-family: 'Jeju Gothic', sans-serif; font-size:26px; font-weight:500">부품 이름</th>
			      <th style="text-align:center; font-family: 'Jeju Gothic', sans-serif; font-size:26px; font-weight:500">부품 개수</th>
			      <!-- <th>Amount</th> -->
			    </tr>
			  </thead>
			  <tbody>
			    <!-- <tr class="table-primary"> -->
			    <tr class="table-info1" style="background-color:#e4e8ec;">
			      <th scope="row">교류 전압</th>
			      <td style="text-align:center"><%=AC_Source%></td>
			      <!-- <td>$15,000.00</td> -->
			    </tr>
			    <tr class="table-secondary1" style="background-color:#ffffff;">
			      <th scope="row">트랜지스터</th>
			      <td style="text-align:center"><%=BJT%></td>
			      <!-- <td>$12,000.00</td> -->
			    </tr>
			    <tr class="table-success1" style="background-color:#e4e8ec;">
			      <th scope="row">배터리</th>
			      <td style="text-align:center"><%=Battery%></td>
			      <!-- <td>$20,000.00</td> -->
			    </tr>
			    <tr class="table-warning1" style="background-color:#ffffff;">
			      <th scope="row">축전기</th>
			      <td style="text-align:center"><%=Capacitor%></td>
			      <!-- <td>$30,000.00</td> -->
			    </tr>
			    <tr class="table-info1" style="background-color:#e4e8ec;">
			      <th scope="row">전류</th>
			      <td style="text-align:center"><%=Current_Source%></td>
			      <!-- <td>$15,000.00</td> -->
			    </tr>
			    <tr class="table-light1" style="background-color:#ffffff;">
			      <th scope="row">직류 전압</th>
			      <td style="text-align:center"><%=DC_Source%></td>
			     <!--  <td>$22,000.00</td> -->
			    </tr>           
			  </tbody>
			</table>
			
			<table class="table table-hover" style="width:450px; table-layout:fixed; border-color:#dee2e6; box-shadow : 5px 5px 5px;" border="1px" >
			  <thead>
			    <!-- <tr class="table-danger"> -->
			    <tr class="table-warning">
			      <th style="text-align:center; font-family: 'Jeju Gothic', sans-serif; font-size:26px">부품 이름</th>
			      <th style="text-align:center; font-family: 'Jeju Gothic', sans-serif; font-size:26px">부품 개수</th>
			      <!-- <th>Amount</th> -->
			    </tr>
			  </thead>
			  <tbody>
			  	<tr class="table-info1" style="background-color:#e4e8ec;">
			      <th scope="row">다이오드</th>
			      <td style="text-align:center"><%=Diode %></td>
			      <!-- <td>$22,000.00</td> -->
			    </tr> 
			    <tr class="table-info1" style="background-color:#ffffff;">
			      <th scope="row">접지</th>
			      <td style="text-align:center; "><%=Ground %></td>
			      <!-- <td>$22,000.00</td> -->
			    </tr> 
			    <tr class="table-info1" style="background-color:#e4e8ec;">
			      <th scope="row">코일</th>
			      <td style="text-align:center"><%=Inductor %></td>
			      <!-- <td>$22,000.00</td> -->
			    </tr> 
			    <tr class="table-info1" style="background-color:#ffffff;">
			      <th scope="row" >모스펫</th>
			      <td style="text-align:center"><%=MOSFET %></td>
			      <!-- <td>$22,000.00</td> -->
			    </tr> 
		
			    <tr class="table-info1" style="background-color:#e4e8ec;">
			      <th scope="row">저항</th>
			      <td style="text-align:center"><%=Resistors %></td>
			      <!-- <td>$22,000.00</td> -->
			    </tr> 
			  
			    <tr class="table-info1" style="background-color:#ffffff;">
			      <th scope="row">전압</th>
			      <td style="text-align:center"><%=Voltage_Source %></td>
			      <!-- <td>$22,000.00</td> -->
			    </tr> 
			  </tbody>
			</table>	
		</div>
	</div >
	
	<style>
	
		@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');
		@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
	
		td,th{
			color: #000000;
			font-family: 'Jeju Gothic', sans-serif; font-size:20px;
			font-weight:500;
		}
			
		#container {
		  height: 500px;
		}
		
		.highcharts-figure,
		.highcharts-data-table table {
		  min-width: 320px;
		  max-width: 700px;
		  margin: 1em auto;
		}
		
		.highcharts-data-table table {
		  font-family: Verdana, sans-serif;
		 /*  border-collapse: collapse; */
		  border: 1px solid #ebebeb;
		  margin: 10px auto;
		  text-align: center;
		  width: 100%;
		  max-width: 500px;
		}
		
		.highcharts-data-table caption {
		  padding: 1em 0;
		  font-size: 1.2em;
		  color: #555;
		}
		
		.highcharts-data-table th {
		  font-weight: 600;
		  padding: 0.5em;
		}
		
		.highcharts-data-table td,
		.highcharts-data-table th,
		.highcharts-data-table caption {
		  padding: 0.5em;
		}
		
		.highcharts-data-table thead tr,
		.highcharts-data-table tr:nth-child(even) {
		  background: #f8f8f8;
		}
		
		.highcharts-data-table tr:hover {
		  background: #f1f7ff;
		}
		.highcharts-background {
			fill: #f6f6f6;
		}
	</style>
	
	<script type="text/javascript">
	
	
		Highcharts.chart('container', {
			  chart: {
			    type: 'variablepie'
			  },
			  title: {
			    text: '★그래프 저장 또는 확대는 오른쪽 메뉴 버튼을 눌러주세요★'
			  },
			  tooltip: {
			    headerFormat: '',
			    pointFormat: '<span style="color:{point.color}">\u25CF</span> <b> {point.name}</b><br/>' +
			      '개수: <b>{point.y}</b><br/>'/*  +
			      'Population density (people per square km): <b>{point.z}</b><br/>' */
			  },
			  series: [{
			    minPointSize: 10,
			    innerSize: '20%',
			    zMin: 0,
			    name: 'countries',
			    
			    data: [{
			      name: 'AC_Source 교류 전압',
			      y: <%=AC_Source%>,
			      z: <%=AC_Source%>			     
			    }, {
			      name: 'BJT 트랜스지터',
			      y: <%=BJT%>,
			      z: <%=BJT%>
			    }, {
			      name: 'Battery 배터리',
			      y: <%=Battery%>,
			      z: <%=Battery%>
			    }, {
			      name: 'Capacitor 축전기',
			      y: <%=Capacitor%>,
			      z: <%=Capacitor%>
			    }, {
			      name: 'Current_Source 전류',
			      y: <%=Current_Source%>,
			      z: <%=Current_Source%>
			    }, {
			      name: 'DC_Source 직류 전압',
			      y: <%=DC_Source%>,
			      z: <%=DC_Source%>
			    }, {
				  name: 'Diode 다이오드 ',
				  y: <%=Diode%>,
				  z: <%=Diode%>
				}, {
				  name: 'Ground 접지',
				  y: <%=Ground%>,
				  z: <%=Ground%>
				}, {
				  name: 'Inductor 코일',
				  y: <%=Inductor%>,
				  z: <%=Inductor%>
				}, {
				  name: 'MOSFET 전계효과 트랜지스터',
				  y: <%=MOSFET%>,
			      z: <%=MOSFET%>
				}, {
				  name: 'Resistors 저항',
				  y: <%=Resistors%>,
				  z: <%=Resistors%>
				},{
				  name: 'Voltage_Source 전압',
				  y: <%=Voltage_Source%>,
				  z: <%=Voltage_Source%>
				}]
			  }]
			});	
	</script>
</body>
</html>