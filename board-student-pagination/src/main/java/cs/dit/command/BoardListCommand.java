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
		int page = 0;
		int numberOfRecords = 10;
		int[] pageNumbers = new int[numberOfRecords];
		
		String pageNumber = request.getParameter("pageNumber");
		String recordsNumber = request.getParameter("recordsNumber");
		System.out.println(pageNumber);
		if(pageNumber == null) page = 1;
		else page = Integer.parseInt(pageNumber);
		System.out.println(pageNumber);
		if(recordsNumber == null) numberOfRecords = 10;
		else numberOfRecords = Integer.parseInt(recordsNumber);
		int start = (page-1)/numberOfRecords+1;
		for(int i = 0; i< 10 ;i++) {
			pageNumbers[i] = start++;
		}
		BoardDao dao = new BoardDao();
		ArrayList<BoardDto> dtos = dao.list(page,numberOfRecords);
		int count = dao.recodeCount();

		
		request.setAttribute("dtos", dtos);
		request.setAttribute("pageNumbers", pageNumbers);
		request.setAttribute("nowPage", page);
	}	
}
