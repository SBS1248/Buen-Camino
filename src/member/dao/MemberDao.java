package member.dao;

import java.sql.*;

import member.vo.*;

import static common.JDBCTemplate.*;

public class MemberDao 
{
	public MemberDao(){}
	
	public int insertMember(Member member)
	{
		int result=-1;
		PreparedStatement pstmt=null;
		String query=null;

		Connection con=getConnection();

		try 
		{
			if(member instanceof Bloomer)
			{
				Bloomer b=(Bloomer)member;
				
				query="INSERT INTO BLOOMER VALUES(MemberCode('B'),?,?,?,?,NULL,SYSDATE,NULL,?,?,?)";

				pstmt=con.prepareStatement(query);		
				pstmt.setString(1, b.getEmail());
				pstmt.setString(2, b.getPwd());
				pstmt.setString(3, b.getNick());				
				pstmt.setString(4, b.getPhone());
				pstmt.setString(5, b.getCategory1());
				pstmt.setString(6, b.getCategory2());
				pstmt.setString(7, b.getCategory3());

				result=pstmt.executeUpdate();		
			}
			else
			{
				HoneyBee h=(HoneyBee)member;
				query="INSERT INTO HONEYBEE VALUES(MemberCode('H'),?,?,?,?,SYSDATE,NULL,?,?,?)";
				
				pstmt=con.prepareStatement(query);	
				pstmt.setString(1, h.getEmail());
				pstmt.setString(2, h.getPwd());
				pstmt.setString(3, h.getNick());
				pstmt.setString(4, h.getPhone());
				pstmt.setString(5, h.getCategory1());
				pstmt.setString(6, h.getCategory2());
				pstmt.setString(7, h.getCategory3());
				
				result=pstmt.executeUpdate();				
			}
		} 
		catch (Exception e)
		{//오류 나는 조건은 이메일 중복뿐
			//System.out.println(e.getMessage());
		}
		finally 
		{
			close(pstmt);
		}
		
		return result;
	}	

	public int updateMember(Member member)
	{
		int result=-1;
		PreparedStatement pstmt=null;
		String query=null;
		
		Connection con=getConnection();
		try 
		{
			if(member instanceof Bloomer)
			{
				query="UPDATE BLOOMER SET PWD=?,PHONE=? WHERE MBCODE=?";
				
				pstmt=con.prepareStatement(query);				
				pstmt.setString(1, member.getPwd());
				pstmt.setString(2, member.getPhone());
				pstmt.setString(3, member.getMbcode());
				
				result=pstmt.executeUpdate();				
			}
			else
			{
				query="UPDATE BLOOMER SET PWD=?,PHONE=? WHERE MBCODE=?";
				
				pstmt=con.prepareStatement(query);				
				pstmt.setString(1, member.getPwd());
				pstmt.setString(2, member.getPhone());
				pstmt.setString(3, member.getMbcode());
				
				result=pstmt.executeUpdate();				
			}
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return result;
	} 
	
	public int updateCateGory(Member member)
	{
		int result=-1;
		PreparedStatement pstmt=null;
		String query=null;
		
		Connection con=getConnection();
		try 
		{
			if(member instanceof Bloomer)
			{
				query="UPDATE BLOOMER SET CATEGORY1=?,CATEGOR2=?,CATEGORY3=? WHERE MBCODE=?";
				
				pstmt=con.prepareStatement(query);
				pstmt.setString(1, member.getCategory1());
				pstmt.setString(2, member.getCategory2());
				pstmt.setString(3, member.getCategory3());
				pstmt.setString(4, member.getMbcode());
				
				result=pstmt.executeUpdate();				
			}
			else
			{
				query="UPDATE BLOOMER SET CATEGORY1=?,CATEGOR2=?,CATEGORY3=? WHERE MBCODE=?";
				
				pstmt=con.prepareStatement(query);				
				pstmt.setString(1, member.getCategory1());
				pstmt.setString(2, member.getCategory2());
				pstmt.setString(3, member.getCategory3());
				pstmt.setString(4, member.getMbcode());
				
				result=pstmt.executeUpdate();				
			}
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int leaveMember(String mcode)
	{
		int result=-1;
		PreparedStatement pstmt=null;
		String query=null;
		
		Connection con=getConnection();
		try 
		{
			if(mcode.contains("B"))
			{
				query="UPDATE BLOOMER SET LEAVEDAY=SYSDATE WHERE MBCODE=?";
				
				pstmt=con.prepareStatement(query);				
				pstmt.setString(1, mcode);
				
				result=pstmt.executeUpdate();				
			}
			else
			{
				query="UPDATE BLOOMER SET LEAVEDAY=SYSDATE WHERE MHCODE=?";
				
				pstmt=con.prepareStatement(query);				
				pstmt.setString(1, mcode);
				
				result=pstmt.executeUpdate();				
			}
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int cancelLeaveMember(String mcode)
	{
		int result=-1;
		PreparedStatement pstmt=null;
		String query=null;
		
		Connection con=getConnection();
		try 
		{
			if(mcode.contains("B"))
			{
				query="UPDATE BLOOMER SET LEAVEDAY=NULL WHERE MBCODE=?";
				
				pstmt=con.prepareStatement(query);				
				pstmt.setString(1, mcode);
				
				result=pstmt.executeUpdate();				
			}
			else
			{
				query="UPDATE BLOOMER SET LEAVEDAY=NULL WHERE MHCODE=?";
				
				pstmt=con.prepareStatement(query);				
				pstmt.setString(1, mcode);
				
				result=pstmt.executeUpdate();				
			}
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int deleteMember()
	{
		int result=-1;
		int result1=-1;
		int result2=-1;
		
		PreparedStatement pstmt=null;
		String query=null;
		
		Connection con=getConnection();
		try 
		{
			query="INSERT INTO LEAVEMEMBER SELECT ID,MHCODE,NICK,ENROLLDAY,LEAVEDAY FROM HONEYBEE WHERE SYSDATE-LEAVEDAY>=3";
			
			pstmt=con.prepareStatement(query);
			
			result1=pstmt.executeUpdate();
			
			query="DELETE FROM HONEYBEE WHERE SYSDATE-LEAVEDAY>=3";
			
			pstmt=con.prepareStatement(query);
		    
			query="INSERT INTO LEAVEMEMBER SELECT ID,MHCODE,NICK,ENROLLDAY,LEAVEDAY FROM BLOOMER WHERE SYSDATE-LEAVEDAY>=3";
			
			pstmt=con.prepareStatement(query);
			
			result2=pstmt.executeUpdate();
			
			query="DELETE FROM BLOOMER WHERE SYSDATE-LEAVEDAY>=3";
			
			pstmt=con.prepareStatement(query);
			
			result=(result1<0?0:result1)+(result2<0?0:result2);
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return result;
	}

	
}
