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
		int count = dao.recodeCount();
		
		int page = 0;
		int numberOfRecords = 10;
		
		String pageNumber = request.getParameter("pageNumber");
		String recordsNumber = request.getParameter("recordsNumber");
		String nowPage = request.getParameter("nowPage");
		String loc = request.getParameter("loc");
		System.out.println(nowPage);
		if(loc == null) {
			if(nowPage == null) {
				if(pageNumber == null) page = 1;
				else page = Integer.parseInt(pageNumber);				
			}
			else {
				if(pageNumber == null) page = 1;
				else page = Integer.parseInt(pageNumber);	
			}
		}
		else {
			int now = Integer.parseInt(nowPage);
			switch(loc) {
				case "prev":
					page = ((now-1)/10)*10-9;
					break;
				case "next":
					page = ((now-1)/10)*10+11;
					break;
			}
		}
		
		
		if(recordsNumber == null) numberOfRecords = 10;
		else numberOfRecords = Integer.parseInt(recordsNumber);
		int start = (page-1)/numberOfRecords*10+1;
		count = (int) Math.ceil((double)count/numberOfRecords);
		int step = count-start+1;
		step = step >= 10 ? 10 : step;
		int[] pageNumbers = new int[step];
		for(int i = 0; i< step ;i++) {
			pageNumbers[i] = start++;
		}
		
		ArrayList<BoardDto> dtos = dao.list(page,numberOfRecords);

		request.setAttribute("maxPage", count);
		request.setAttribute("dtos", dtos);
		request.setAttribute("pageNumbers", pageNumbers);
		request.setAttribute("nowPage", page);
	}	
}
