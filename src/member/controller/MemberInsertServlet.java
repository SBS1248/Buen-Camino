package member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.MemberService;
import member.vo.*;

/**
 * Servlet implementation class MemberInsertServlet
 */
@WebServlet("/minsert")
public class MemberInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		int result=0;
		Member member=null;
		
		String radio=request.getParameter("radio");
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd1");
		String nick=request.getParameter("nick");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");		
		
		if(radio.equals("B")) 
		{
			member=new Bloomer();
			member.setId(id);
			member.setPwd(pwd);
			member.setNick(nick);
			member.setEmail(email);
			member.setPhone(phone);
		}
		else
		{
			member=new HoneyBee();
			member.setId(id);
			member.setPwd(pwd);
			member.setNick(nick);
			member.setEmail(email);
			member.setPhone(phone);
		}
		
		result=new MemberService().insertMember(member);
		
		response.getWriter().append(String.valueOf(result));		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
