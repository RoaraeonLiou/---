package tyut.manager;

import tyut.connect.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.*;

@WebServlet("/base_data")
public class Base_menu extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ConnectionPool pool = null;
	private Connection connection = null;

	public Base_menu() {
		super();
		pool = ConnectionPool.getInstance();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		connection = pool.getConnection(); // 获取链接

		String url = "/base_menu.jsp";
		String table = (String) request.getParameter("table");

		if (table == "" || table == null) {
			// 如果当前table参数为空，则转到表菜单
			try {
				// 获取数据库元数据，从中提取所有表名，并传送到页面
				ArrayList<String> tables = new ArrayList<String>();
				DatabaseMetaData mdata = connection.getMetaData();
				String catalog = connection.getCatalog();
				ResultSet tablesResultSet = mdata.getTables(catalog, null, null, new String[] { "TABLE" });
				while (tablesResultSet.next()) {
					String tableName = tablesResultSet.getString("TABLE_NAME");
					tables.add(tableName);
				}
				request.setAttribute("tables", tables);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else {
			// table非空，显示用户所选表的信息
			try {
				url = "/table_display.jsp";
				String Query = "select * from " + table;
				Statement st = connection.createStatement();
				ResultSet rs = st.executeQuery(Query);
				ResultSetMetaData mrs = rs.getMetaData();
				// 获取表的元数据，传送到页面
				List<String> metadata = new ArrayList<String>();
				for (int i = 1; i <= mrs.getColumnCount(); i++) {
					metadata.add(mrs.getColumnName(i));
				}
				// 获取表中元组，传送到页面
				ArrayList<ArrayList<String>> data = new ArrayList<ArrayList<String>>();
				for (int i = 0; rs.next(); i++) {
					data.add(new ArrayList<String>());
					for (int index = 1; index <= mrs.getColumnCount(); index++) {
						data.get(i).add(rs.getString(index));
					}
				}
				request.setAttribute("table", table);
				request.setAttribute("metadata", metadata);
				request.setAttribute("data", data);

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		pool.freeConnection(connection); // 释放连接
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
