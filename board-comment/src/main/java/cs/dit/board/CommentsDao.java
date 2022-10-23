package cs.dit.board;

import java.security.interfaces.RSAKey;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class CommentsDao {

	private Connection getConnection() throws Exception{
		
		Context initCtx  = new InitialContext();//1. JNDI를 이용하기 위한 객체 생성
		
		Context envCtx = (Context) initCtx.lookup("java:comp/env");//2. 등록된 네이밍 서비스로부터 등록된 자원을 가져옴
		
		DataSource ds = (DataSource) envCtx.lookup("jdbc/spring");//3. 자원들 중 원하는 jdbc/jskim 자원을 찾아내어 데이터소스를 가져옴
		
		Connection con = ds.getConnection();//4. 커넥션 얻어옴
		
		return con;
	}
	public JSONArray listComments(int bcode) {
		String sql = "select ccode, content, regdate from comments where bcode=? order by ccode desc";
		JSONArray list = new JSONArray();
		try ( Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
		){
			pstmt.setInt(1, bcode);
			try (ResultSet rs = pstmt.executeQuery();){
				while(rs.next()) {
					JSONObject json = new JSONObject();
					json.put("bcode", rs.getInt("bcode"));
					json.put("content", rs.getString("content"));
					json.put("regdate", rs.getDate("regdate"));
//					json.put("ccode", rs.getInt("ccode"));
//					json.put("content", rs.getInt("content"));
//					String regdate = rs.getDate("regdate")+"";
//					json.put("regdate", regdate);
//					json.put("subject", rs.getInt("ccode"));
//					json.put("writer", rs.getInt("ccode"));
//					json.put("filename", rs.getInt("ccode"));
					list.add(json);
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public void insertComments(CommentsDto dto) {
		String sql = "{call proc_comments(?,?)}";
		
		try (
				Connection con = getConnection();
				CallableStatement cstmt = con.prepareCall(sql);
		){
			cstmt.setInt(1, dto.getBcode());
			cstmt.setString(2, dto.getContent());
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
