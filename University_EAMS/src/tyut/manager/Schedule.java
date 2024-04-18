package tyut.manager;

import tyut.baseClass.schedule_item;
import tyut.connect.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.*;

@WebServlet("/schedule")
public class Schedule extends HttpServlet{
	private static final long serialVersionUID = 1L;
	ConnectionPool pool = null;
	Connection connection = null;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/schedule_form.jsp";
		String type = request.getParameter("type");
		request.setAttribute("type", type);
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		pool = ConnectionPool.getInstance();
		connection = pool.getConnection();
		
		String url = "/schedule.jsp";
		String type = (String)request.getParameter("type");
		request.setAttribute("type", type);
		
		String semester = request.getParameter("semester");
		int year = Integer.parseInt(request.getParameter("year"));
		ArrayList<ArrayList<schedule_item>> schedule = null;
		request.setAttribute("semester", semester);
		request.setAttribute("year", year);
		
		if(type.compareTo("student")==0) {
			String stu_id = request.getParameter("stu_id");
			request.setAttribute("stu_id", stu_id);
			schedule = search_stu(stu_id,semester,year);
			try {
				PreparedStatement st = connection.prepareStatement("select * from student where ID=?");
				st.setString(1, stu_id);
				ResultSet rs0 = st.executeQuery();
				String name = null;
				if(rs0.next()) {
					name = rs0.getString("name");
				}
				request.setAttribute("name", name);
			}catch (SQLException e) {
	            e.printStackTrace();  
	        }
			
		}else if(type.compareTo("instructor")==0) {
			String ins_id = request.getParameter("ins_id");
			schedule = search_ins(ins_id,semester,year);
			request.setAttribute("ins_id", ins_id);
			try {
				PreparedStatement st = connection.prepareStatement("select * from instructor where ID=?");
				st.setString(1, ins_id);
				ResultSet rs0 = st.executeQuery();
				String name = null;
				if(rs0.next()) {
					name = rs0.getString("name");
				}
				request.setAttribute("name", name);
			}catch (SQLException e) {
	            e.printStackTrace();  
	        }
			
		}else if(type.compareTo("classroom")==0) {
			String building = request.getParameter("building");
			String room_number = request.getParameter("room_number");
			building = new String(building.getBytes("ISO8859-1"), "UTF-8");
			schedule = search_classroom(building,room_number,semester,year);
			request.setAttribute("building", building);
			request.setAttribute("room_number", room_number);
		}else{
			String major = request.getParameter("major");
			String class_id = request.getParameter("class_id");
			major = new String(major.getBytes("ISO8859-1"), "UTF-8");
			schedule = search_class(major,class_id,semester,year);
			request.setAttribute("major", major);
			request.setAttribute("class_id", class_id);
		}
		request.setAttribute("schedule", schedule);
		pool.freeConnection(connection);
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}
	
	private ArrayList<ArrayList<schedule_item>> search_stu(String stu_id, String semester, int year){
		ArrayList<ArrayList<schedule_item>> res= new ArrayList<ArrayList<schedule_item>>();
		for(int i=0;i<8;i++) {
			res.add(new ArrayList<schedule_item>());
			for(int j=0;j<7;j++) {
				res.get(i).add(new schedule_item());
			}
		}
		try {
			PreparedStatement pst = connection.prepareStatement("select * from student_Schedule(?,?,?)");
			pst.setString(1, stu_id);
			pst.setInt(2, year);
			pst.setString(3, semester);
			ResultSet rs = pst.executeQuery();
            while(rs.next()) {
            	int tims_slot_id = rs.getInt("time_slot_id")-1;
            	int day = rs.getInt("day")-1;
            	res.get(tims_slot_id).get(day).title = rs.getString("title");
            	res.get(tims_slot_id).get(day).building = rs.getString("building");
            	res.get(tims_slot_id).get(day).room_number = rs.getString("room_number");
            };
		}catch (SQLException e) {
            e.printStackTrace();  
        }
		return res;
	}
	
	private ArrayList<ArrayList<schedule_item>> search_ins(String ins_id, String semester, int year){
		ArrayList<ArrayList<schedule_item>> res= new ArrayList<ArrayList<schedule_item>>();
		for(int i=0;i<8;i++) {
			res.add(new ArrayList<schedule_item>());
			for(int j=0;j<7;j++) {
				res.get(i).add(new schedule_item());
			}
		}
		try {
			PreparedStatement pst = connection.prepareStatement("select * from instructor_Schedule(?,?,?)");
			pst.setString(1, ins_id);
			pst.setInt(2, year);
			pst.setString(3, semester);
			ResultSet rs = pst.executeQuery();
            while(rs.next()) {
            	int tims_slot_id = rs.getInt("time_slot_id")-1;
            	int day = rs.getInt("day")-1;
            	res.get(tims_slot_id).get(day).title = rs.getString("title");
            	res.get(tims_slot_id).get(day).building = rs.getString("building");
            	res.get(tims_slot_id).get(day).room_number = rs.getString("room_number");
            };
		}catch (SQLException e) {
            e.printStackTrace();  
        }
		return res;
	}
	
	private ArrayList<ArrayList<schedule_item>> search_class(String major, String class_id, String semester, int year){
		ArrayList<ArrayList<schedule_item>> res= new ArrayList<ArrayList<schedule_item>>();
		for(int i=0;i<8;i++) {
			res.add(new ArrayList<schedule_item>());
			for(int j=0;j<7;j++) {
				res.get(i).add(new schedule_item());
			}
		}
		try {
			PreparedStatement pst = connection.prepareStatement("select * from class_Schedule(?,?,?,?)");
			pst.setString(1, major);
			pst.setString(2, class_id);
			pst.setInt(3, year);
			pst.setString(4, semester);
			ResultSet rs = pst.executeQuery();
            while(rs.next()) {
            	int tims_slot_id = rs.getInt("time_slot_id")-1;
            	int day = rs.getInt("day")-1;
            	res.get(tims_slot_id).get(day).title = rs.getString("title");
            	res.get(tims_slot_id).get(day).building = rs.getString("building");
            	res.get(tims_slot_id).get(day).room_number = rs.getString("room_number");
            };
		}catch (SQLException e) {
            e.printStackTrace();  
        }
		return res;
	}
	
	private ArrayList<ArrayList<schedule_item>> search_classroom(String building, String room_number, String semester, int year){
		ArrayList<ArrayList<schedule_item>> res= new ArrayList<ArrayList<schedule_item>>();
		for(int i=0;i<8;i++) {
			res.add(new ArrayList<schedule_item>());
			for(int j=0;j<7;j++) {
				res.get(i).add(new schedule_item());
			}
		}
		try {
			PreparedStatement pst = connection.prepareStatement("select * from classroom_Schedule(?,?,?,?)");
			pst.setString(1, building);
			pst.setString(2, room_number);
			pst.setInt(3, year);
			pst.setString(4, semester);
			ResultSet rs = pst.executeQuery();
            while(rs.next()) {
            	int tims_slot_id = rs.getInt("time_slot_id")-1;
            	int day = rs.getInt("day")-1;
            	res.get(tims_slot_id).get(day).title = rs.getString("title");
            	res.get(tims_slot_id).get(day).building = rs.getString("building");
            	res.get(tims_slot_id).get(day).room_number = rs.getString("room_number");
            };
		}catch (SQLException e) {
            e.printStackTrace();  
        }
		return res;
	}
}