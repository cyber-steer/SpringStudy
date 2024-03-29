package cs.dit;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/hello")
public class controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String viewPage = null;
		response.setContentType("text/html; charset=UTF-8");
		String uri = request.getRequestURI();
		System.out.println("uri : "+uri);
		String com = uri.substring(uri.lastIndexOf("/")+1);
		
		
		switch (com.trim()) {
			case "hello":
				viewPage="view.jsp";
				break;
		}
//
		RequestDispatcher rd = request.getRequestDispatcher(viewPage);
//		rd.forward(request, response);
		response.sendRedirect(viewPage);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
