package tyut.connect;

import java.sql.Connection;
import java.sql.SQLException;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ConnectionPool {
	/* 数据库连接池 */
	private static ConnectionPool pool = null;
	private static DataSource dataSource = null;

	private ConnectionPool() {
		/* 构造函数，初始化DataSource对象 */
		try {
			InitialContext ic = new InitialContext();
			dataSource = (DataSource) ic.lookup("java:/comp/env/jdbc/usdbcp");
			/* 改上面这句， java:/comp/env/jdbc/???,???是在content.xml文件中定义的名字 */
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	public Connection getConnection() {
		/* 获取链接 */
		try {
			return dataSource.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public void freeConnection(Connection c) {
		/* 释放连接 */
		try {
			c.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static synchronized ConnectionPool getInstance() {
		/* 获取连接池对象 */
		if (pool == null) {
			pool = new ConnectionPool();
		}
		return pool;
	}

}