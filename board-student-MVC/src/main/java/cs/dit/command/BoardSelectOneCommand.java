package cs.dit.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.board.BoardDao;
import cs.dit.board.BoardDto;

public class BoardSelectOneCommand implements BoardCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int bcode = Integer.parseInt(request.getParameter("bcode"));
		BoardDto dto = new BoardDao().selectOne(bcode);
		request.setAttribute("dto", dto);
	}
	
}
