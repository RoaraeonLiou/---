package tyut.connect;

import java.sql.Connection;
import java.sql.SQLException;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ConnectionPool {
	/* ���ݿ����ӳ� */
	private static ConnectionPool pool = null;
	private static DataSource dataSource = null;

	private ConnectionPool() {
		/* ���캯������ʼ��DataSource���� */
		try {
			InitialContext ic = new InitialContext();
			dataSource = (DataSource) ic.lookup("java:/comp/env/jdbc/usdbcp");
			/* ��������䣬 java:/comp/env/jdbc/???,???����content.xml�ļ��ж�������� */
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	public Connection getConnection() {
		/* ��ȡ���� */
		try {
			return dataSource.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public void freeConnection(Connection c) {
		/* �ͷ����� */
		try {
			c.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static synchronized ConnectionPool getInstance() {
		/* ��ȡ���ӳض��� */
		if (pool == null) {
			pool = new ConnectionPool();
		}
		return pool;
	}

}