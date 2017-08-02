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
		
		return result;
	}

}
