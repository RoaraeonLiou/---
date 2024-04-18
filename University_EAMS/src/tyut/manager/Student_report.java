package tyut.manager;
import tyut.baseClass.report_item;
import tyut.baseClass.student;
import tyut.connect.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.*;

@WebServlet("/stu_report")
public class Student_report extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private ConnectionPool pool = null;
	private Connection connection = null;
	
	public Student_report() {
		super();
		pool = ConnectionPool.getInstance();
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("type", "student");
		String url = "/query.jsp";
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		connection = pool.getConnection();
		
		String url = "/stu_report.jsp";
		String stu_id = (String) request.getParameter("stu_id");
		
		if(stu_id==""||stu_id==null) {
			;
		}else {
			try {
				PreparedStatement st0 = connection.prepareStatement("select * from student where ID=?");
				st0.setString(1, stu_id);
				ResultSet rs0 = st0.executeQuery();
				student stu = new student();
				
				while(rs0.next()) {
					if(rs0.findColumn("id")>0)
						stu.stu_id = rs0.getString("id");
					if(rs0.findColumn("name")>0)
						stu.name = rs0.getString("name");
					if(rs0.findColumn("tot_cred")>0)
						stu.tot_cred = rs0.getString("tot_cred");
					/*
					stu.dept_name = rs0.getString("dept_name");
					stu.major_name = rs0.getString("major_name");
					stu.class_id = rs0.getString("class_id");
					stu.graduated = rs0.getInt("graduated");
					*/
	            };
				
				PreparedStatement st = connection.prepareStatement("select * from student_report(?)");
				st.setString(1, stu_id);
	            ResultSet rs = st.executeQuery();
	            
	            ArrayList<report_item> report = new ArrayList<report_item>();
	            
	            while(rs.next()) {
	            	report_item item = new report_item();
	            	item.course_id = rs.getString("course_id");
	            	item.title = rs.getString("title");
	            	item.semester = rs.getString("semester");
	            	item.year = rs.getString("year");
	            	item.credits = rs.getString("credits");
	            	item.grade = rs.getString("grade");
	            	report.add(item);
	            };
	            
	            request.setAttribute("stu", stu);
				request.setAttribute("report", report);
			}catch (SQLException e) {
	            e.printStackTrace();  
	        }
		}
		pool.freeConnection(connection);
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}
}
