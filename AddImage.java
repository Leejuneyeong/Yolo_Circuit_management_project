package img;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 * Servlet implementation class AddImage
 */
@MultipartConfig
@WebServlet("/AddImage")
public class AddImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddImage() {
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
		//doGet(request, response);
		Part file = request.getPart("image"); 
		
		HttpSession session = request.getSession();
		
		String imageFileName=file.getSubmittedFileName();
		String mem_id = (String) session.getAttribute("name");
	
		System.out.println("회원 아이디 : "+mem_id);
		// 이미지 파일의 이름을 세션으로 저장
//		HttpSession session = request.getSession();
//		session.setAttribute("file_name", imageFileName);
		
		System.out.println("저장된 이미지 파일 이름 : "+imageFileName);
		
		String uploadPath ="C:/Users/user/Circuit_team_project/Circuit_team/src/main/webapp/Circuit_images/"+imageFileName; 
		System.out.println("이미지 파일 폴더 경로 :"+uploadPath);
		
		try {
		
		FileOutputStream fos = new FileOutputStream(uploadPath);
		InputStream is = file.getInputStream();
		
		byte[] data = new byte[is.available()]; 
		is.read(data);
		fos.write(data);
		fos.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://project-db-stu.ddns.net:3307/hr?serverTimezone=UTC","hr","hr");
			PreparedStatement pst;
			//pst = con.prepareStatement("insert into image_test(imageFileName_test) values(?)");
			pst = con.prepareStatement("insert into image_test(imageFileName_test, mem_id) values(?,?)");
			//pst.setString(1,imageFileName);
			pst.setString(1,imageFileName);
			pst.setString(2,mem_id);
			int row = pst.executeUpdate();
			
			if(row>0) {
				System.out.println("데이터베이스 저장 성공 Success");
			}
			else {
				System.out.println("데이터베이스 저장 실패 fail");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			Thread.sleep(6000); // 처음 5초
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("imgname", imageFileName);
		System.out.print(imageFileName+"이미지!!!");
		
		
		 RequestDispatcher rd; 
		 rd = request.getRequestDispatcher("DisplayImage.jsp");  /* addImage.jsp -> AddImage.java -> DisplayServlet.java 경로이동 */
		 rd.forward(request, response);
		 
	}

}
