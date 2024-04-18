package tyut.manager;
import javax.servlet.http.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import java.io.*;

@WebServlet("")
public class Index extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
	}
}
