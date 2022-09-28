package cs.command;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.MemberDao;
import cs.dit.MemberDto;

public class MemberUpdateCommand implements MemberCommand{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		
		//8. 위의 얻어온 데이터를 MemberDto의 dto를 만들다. joinDate에는 현재 날짜(new Date(System.currentTimeMillis())가 입력된다.
		
		MemberDto dto = new MemberDto(id, pwd, name, email,new Date(System.currentTimeMillis()));
		
		new MemberDao().update(dto);
		
	}

}
