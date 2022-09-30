package cs.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.MemberDao;
import cs.dit.MemberDto;

public class MemberListCommand implements MemberCommand{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDao dao = new MemberDao();
		String p = request.getParameter("page");
		
		int page = p == null ? 1: Integer.parseInt(p);
		int numOfRecords = 10;
		
		
		ArrayList<MemberDto> dtos = dao.list(page, numOfRecords);
		int count = dao.recodeCount();
		System.out.println("page : "+page);
		int startNum = page - (page-1) % numOfRecords;
		int lastNum = (int) Math.ceil((double)count/numOfRecords);
		System.out.println("lastNum : " + lastNum);
		request.setAttribute("dtos", dtos);
		request.setAttribute("startNum", startNum);
		request.setAttribute("lastNum", lastNum);
		request.setAttribute("numOfRecords", numOfRecords);
		request.setAttribute("page", page);
		
	}

}
