package cs.command;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.MemberDao;
import cs.dit.MemberDto;

public class MemberInsertCommand implements MemberCommand{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		//3. id, name, pwd, email 을 폼으로부터 가져오기

		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		
		MemberDto dto = new MemberDto(id, pwd, name, email, new Date(System.currentTimeMillis())); 
		MemberDao dao = new MemberDao();
		
		//4. dto를 MemberDao에 적당한 메소드를 호출하여 데이터베이스에 입력
		 dao.insert(dto);
		
	}

}
