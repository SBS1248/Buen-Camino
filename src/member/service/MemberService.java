package member.service;

import member.dao.MemberDao;
import member.vo.Member;
import static common.JDBCTemplate.*;

import java.sql.*;

public class MemberService 
{

	public int insertMember(Member member) 
	{
		int result=0;

		Connection con=getConnection();
		
		result=new MemberDao().insertMember(member);
				
		close(con);
		
		return result;
	}

	public Member login(String email, String pwd)
	{
		Member member=null;
		
		Connection con=getConnection();
		
		member=new MemberDao().login(con,email,pwd);
		
		close(con);
		
		return member;
	}

}
