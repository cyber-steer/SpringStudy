package cs.dit.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.board.BoardDao;
import cs.dit.board.BoardDto;

public class BoardListCommand implements BoardCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		ArrayList<BoardDto> dtos = new BoardDao().list();
		
		BoardDao dao = new BoardDao();
		ArrayList<BoardDto> dtos = dao.list();
		request.setAttribute("dtos", dtos);
	}	
}
