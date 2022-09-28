package cs.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.command.MemberCommand;
import cs.command.MemberDeleteCommand;
import cs.command.MemberInsertCommand;
import cs.command.MemberListCommand;
import cs.command.MemberUpdateCommand;
import cs.command.MemberUpdateFormCommand;


@WebServlet("*.do")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String viewPage = null;
		MemberCommand command;
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
			case "updateForm":
				command = new MemberUpdateFormCommand();
				command.execute(request, response);
				viewPage="/WEB-INF/view/updateForm.jsp";
				break;
			case "list":
				command = new MemberListCommand();
				command.execute(request, response);
				viewPage="/WEB-INF/view/list.jsp";
				break;
			case "insert":
				command = new MemberInsertCommand();
				command.execute(request, response);
				viewPage="/WEB-INF/view/list.do";
				break;
			case "delete":
				command = new MemberDeleteCommand();
				command.execute(request, response);
				viewPage="/WEB-INF/view/list.do";
				break;
			case "update":
				command = new MemberUpdateCommand();
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
