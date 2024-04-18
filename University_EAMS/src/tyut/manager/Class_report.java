package tyut.manager;
import tyut.baseClass.class_report_item;
import tyut.baseClass.course_report_item;
import tyut.connect.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.*;

@WebServlet("/class_report")
public class Class_report extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private ConnectionPool pool = null;
	private Connection connection = null;
	
	public Class_report() {
		pool = ConnectionPool.getInstance();
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String course_id = request.getParameter("course_id");
		String url = "/query.jsp";
		if(course_id==null||course_id.compareTo("")==0) {
			request.setAttribute("type", "class");
		}else {
			request.setAttribute("course_id", course_id);
			url = "/course_report.jsp";
			try {
				connection = pool.getConnection();
				PreparedStatement st = connection.prepareStatement("select * from class_course_report(?,?,?)");
				st.setString(1, request.getParameter("major"));
				st.setString(2, request.getParameter("class_id"));
				st.setString(3, request.getParameter("course_id"));
				
	            ResultSet rs = st.executeQuery();
	            
	            ArrayList<course_report_item> course_report = new ArrayList<course_report_item>();
	            Double max = (double) 0;
	            Double mean = (double) 0;
	            int fail = 0;
	            
	            while(rs.next()) {
	            	course_report_item item = new course_report_item();
	            	item.name = rs.getString("stu_name");
	            	item.stu_id = rs.getString("stu_id");
	            	item.grade = String.valueOf(rs.getDouble("grade"));
	            	if(max<rs.getDouble("grade")) {
	            		max=rs.getDouble("grade");
	            	}
	            	if(rs.getDouble("grade")<60) {
	            		fail +=1;
	            	}
	            	mean += rs.getDouble("grade");
	            	course_report.add(item);
	            };
				request.setAttribute("report", course_report);
				request.setAttribute("max", max);
				request.setAttribute("fail", fail);
				request.setAttribute("mean", mean/course_report.size());
				
			}catch (SQLException e) {
	            e.printStackTrace();  
	        }
			pool.freeConnection(connection);

		}
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		connection = pool.getConnection();
		
		String url = "/class_report.jsp";
		String major = (String) request.getParameter("major");
		major = new String(major.getBytes("ISO8859-1"), "UTF-8");
		String class_id = (String) request.getParameter("class_id");
		try {
			PreparedStatement st = connection.prepareStatement("select * from class_report(?,?)");
			st.setString(1, major);
			st.setString(2, class_id);
            ResultSet rs = st.executeQuery();
            
            ArrayList<class_report_item> report = new ArrayList<class_report_item>();
            while(rs.next()) {
            	class_report_item item = new class_report_item();
            	item.title = rs.getString("title");
            	item.course_id = rs.getString("course_id");
            	item.max = rs.getDouble("max_score");
            	item.fail = rs.getInt("fail");
            	item.mean = rs.getDouble("mean");
            	report.add(item);
            };
            request.setAttribute("major", major);
            request.setAttribute("class_id", class_id);
			request.setAttribute("report", report);
		}catch (SQLException e) {
            e.printStackTrace();  
        }
		pool.freeConnection(connection);
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}
}
