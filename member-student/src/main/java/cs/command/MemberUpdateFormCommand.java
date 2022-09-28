package cs.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.MemberDao;
import cs.dit.MemberDto;

public class MemberUpdateFormCommand implements MemberCommand{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		System.out.println(id);

		
		//6. Dao의 selectOne 메소드를 사용하여 하나의 레코드만을 가져와 화면 출력
		MemberDto dto = new MemberDao().selectOne(id);
		
		
		
		//7. 해당 페이지 스코프에 "dto"라는 이름으로 검색한 레코드 한개를 저장
		request.setAttribute("dto", dto);
	}

}
