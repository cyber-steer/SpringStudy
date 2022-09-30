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
		BoardDao dao = new BoardDao();
		String p = request.getParameter("page");
		
		int page = p == null ? 1: Integer.parseInt(p);
		int numOfRecords = 10;
		
		
		ArrayList<BoardDto> dtos = dao.list(page, numOfRecords);
		int count = dao.recodeCount();
		System.out.println("page : "+page);
		int startNum = page - (page-1) % numOfRecords;
		int lastNum = (int) Math.ceil((double)count/numOfRecords);
		
		request.setAttribute("dtos", dtos);
		request.setAttribute("startNum", startNum);
		request.setAttribute("lastNum", lastNum);
		request.setAttribute("numOfRecords", numOfRecords);
		request.setAttribute("page", page);
	}	
}
