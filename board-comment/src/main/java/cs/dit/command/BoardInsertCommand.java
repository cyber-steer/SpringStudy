package cs.dit.command;

import java.io.File;
import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import cs.dit.board.BoardDao;
import cs.dit.board.BoardDto;

public class BoardInsertCommand implements BoardCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");
		String writer = request.getParameter("writer");
		String filename = null;
		String dir = null;
		
		String contentType = request.getContentType();
		
		if (contentType.startsWith("multipart/")) {
			dir = request.getServletContext().getRealPath("/uploadfiles");
		}
		// 업로드할 폴더가 존재하지 않으면 폴더를 생성
		File f = new File("/uploadfiles");
		if(!f.exists()) f.mkdir();
		
		Collection<Part> parts = request.getParts();
		
		for(Part p : parts) {
			if(p.getHeader("Content-Disposition").contains("filename=")) {
				if(p.getSize()>0) {
					filename = p.getSubmittedFileName();
					String filepath = dir + File.separator + filename;
					p.write(filepath); // 실제 경로에 파일 저장
					p.delete();
				}
			}
		}
		
		new BoardDao().insert(new BoardDto(0, subject, content, writer, null, filename));
	}

}
