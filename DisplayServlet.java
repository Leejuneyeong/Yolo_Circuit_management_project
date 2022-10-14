package img;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DisplayServlet
 */
@WebServlet("/DisplayServlet")
public class DisplayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		
		System.out.println("DisplayServlet.jsp에서 사진 전송");
		//String imageId = request.getParameter("imageId");
		
		//int id = Integer.parseInt(imageId);
		
		String FileName = request.getParameter("imgFileName");
		
		// **************************************** MySQL
		Connection con = null;
		//int imgId = 0;
		String imgFileName=null;
		
		/////////////////////////////////////////////////////////////
		String yolo_imgFileName = null;
		/////////////////////////////////////////////////////////////
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://project-db-stu.ddns.net:3307/hr?serverTimezone=UTC","hr","hr");
			Statement pst;
			/* String query="select * from image_test"; */
			String query="select * from image_test where imageFileName_test = '"+FileName+"'";
			pst = con.createStatement();
			ResultSet rs = pst.executeQuery(query);
			
			while(rs.next()) {
				imgFileName = rs.getString("imageFileName_test"); // 데이터베이스의 image_test 테이블의 imageFileName_test 필드값
				/*
				 * if(rs.getInt("imageId")==id) { imgId=rs.getInt("imageId"); // 데이터베이스의
				 * image_test 테이블의 imageId 필드값 imgFileName = rs.getString("imageFileName_test");
				 * // 데이터베이스의 image_test 테이블의 imageFileName_test 필드값
				 * 
				 * System.out.println("imgFileName : "+imgFileName); }
				 */
				System.out.println("imgFileName : "+imgFileName);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher rd;
		/*
		 * request.setAttribute("Circuit_id", String.valueOf(imgId)); //회로도의 아이디값
		 */		
		request.setAttribute("Circuit_img", imgFileName); 
			
		rd = request.getRequestDispatcher("DisplayImage.jsp");
		rd.forward(request, response);
	}

}
