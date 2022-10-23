package cs.dit.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;

import cs.dit.board.CommentsDao;

public class CommentsListCommand implements CommentsCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bcode = Integer.parseInt(request.getParameter("bcode"));
		response.setContentType("application/x-json;charset=utf-8");
		
		CommentsDao dao = new CommentsDao();
		JSONArray list = new JSONArray();
		
		list = dao.listComments(bcode);
		response.getWriter().print(list);
		
	}
	
}
