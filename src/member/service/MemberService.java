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
		
		result=new MemberDao().insertMember(con,member);
		
		if(result>0)commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	public Member login(String email, String pwd, String radio)
	{
		Member member=null;
		
		Connection con=getConnection();
		
		member=new MemberDao().login(con,radio,email,pwd);
		
		close(con);
		
		return member;
	}

	public Member findMember(String email, String radio)
	{
		Member member=null;
		
		Connection con=getConnection();
		
		member=new MemberDao().findMember(con,email,radio);
		
		close(con);
		
		return member;
	}

	public int editMember(String email, String psw, String nick, String phone, char c) 
	{
		int result=0;

		Connection con=getConnection();
		
		result=new MemberDao().editMember(con,email,psw,nick,phone,c);
		System.out.println("result in service"+result);
		
		if(result>0) {commit(con);System.out.println("@!@@@");}		
		else rollback(con);
		
		close(con);
		
		return result;
	}

}
