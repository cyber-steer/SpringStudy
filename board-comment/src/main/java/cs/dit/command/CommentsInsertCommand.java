package cs.dit.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.board.CommentsDao;
import cs.dit.board.CommentsDto;

public class CommentsInsertCommand implements CommentsCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			CommentsDao dao = new CommentsDao();
			int bcode = Integer.parseInt(request.getParameter("bcode"));
			String comments = request.getParameter("comments");
			CommentsDto dto = new CommentsDto(0, 0, bcode, comments, null);
			dao.insertComments(dto);
			
	}

}
