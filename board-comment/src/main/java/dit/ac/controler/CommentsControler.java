package dit.ac.controler;

import java.io.Console;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.command.CommentsCommand;
import cs.dit.command.CommentsInsertCommand;
import cs.dit.command.CommentsListCommand;


@WebServlet("*.ct")
public class CommentsControler extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		CommentsCommand command;
		response.setContentType("text/html; charset=UTF-8");
		String uri = request.getRequestURI();
		String com = uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf(".ct"));
		
		System.out.println(com);
		
		
		switch (com.trim()) {
			case "cList":
				command = new CommentsListCommand();
				command.execute(request, response);
				break;
			case "cInsert":
				command = new CommentsInsertCommand();
				command.execute(request, response);
				break;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
