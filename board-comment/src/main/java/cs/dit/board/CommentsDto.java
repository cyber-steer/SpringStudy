package cs.dit.board;

import java.sql.Date;

public class CommentsDto {
	private int num;
	private int bcode;
	private int ccode;
	private String content;
	private Date regdate;
	
	public CommentsDto() {}
	public CommentsDto(int num, int bcode, int ccode, String content, Date regdate) {
		this.num = num;
		this.bcode = bcode;
		this.ccode = ccode;
		this.content = content;
		this.regdate = regdate;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getBcode() {
		return bcode;
	}
	public void setBcode(int bcode) {
		this.bcode = bcode;
	}
	public int getCcode() {
		return ccode;
	}
	public void setCcode(int ccode) {
		this.ccode = ccode;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getregdate() {
		return regdate;
	}
	public void setregdate(Date regdate) {
		this.regdate = regdate;
	}
	
	
	
}
