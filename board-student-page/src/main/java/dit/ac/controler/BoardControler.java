package dit.ac.controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.command.BoardDeleteCommand;
import cs.dit.command.BoardInsertCommand;
import cs.dit.command.BoardListCommand;
import cs.dit.command.BoardSelectOneCommand;
import cs.dit.command.BoardUpdateCommand;
import cs.dit.command.BoardCommand;

@WebServlet("*.do")
public class BoardControler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
		String viewPage = null;
		BoardCommand command = null;
		response.setContentType("text/html; charset=UTF-8");
		String uri = request.getRequestURI();
		String com = uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf(".do"));
		
		
		switch (com.trim()) {
			case "index":
				viewPage="/WEB-INF/view/index.jsp";
				break;
			case "insertForm":
				viewPage="/WEB-INF/view/insertForm.jsp";
				break;
			case "list":
				command = new BoardListCommand();
				command.execute(request, response);
				viewPage="/WEB-INF/view/list.jsp";
				break;
			case "insert":
				command = new BoardInsertCommand();
				command.execute(request, response);
				viewPage="/WEB-INF/view/list.do";
				break;
			case "updateForm":
				command = new BoardSelectOneCommand();
				command.execute(request, response);
				viewPage="/WEB-INF/view/updateForm.jsp";
				break;
			case "update":
				command = new BoardUpdateCommand();
				command.execute(request, response);
				viewPage="/WEB-INF/view/list.do";
				break;
			case "delete":
				command = new BoardDeleteCommand();
				command.execute(request, response);
				viewPage="/WEB-INF/view/list.do";
				break;
		}
//
		RequestDispatcher rd = request.getRequestDispatcher(viewPage);
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
