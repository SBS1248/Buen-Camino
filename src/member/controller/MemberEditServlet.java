package member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.service.MemberService;
import member.vo.Bloomer;
import member.vo.HoneyBee;
import member.vo.Member;

/**
 * Servlet implementation class MemberEditServlet
 */
@WebServlet("/medit")
public class MemberEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberEditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession();
		
		String radio=request.getParameter("radio");
		String email=request.getParameter("email");
		String psw=request.getParameter("psw");
		String nick=request.getParameter("nick");
		String phone=request.getParameter("phone");
		
		
		Member member=(Member)session.getAttribute("member");
		
		if(member==null) 
		{			
			member=new MemberService().findMember(email,radio);
		}
		
		if(member instanceof Bloomer) member=(Bloomer)member;
		else member=(HoneyBee)member;
				
		int index=member.getClass().getName().lastIndexOf('.')+1;
		
		int result=new MemberService().editMember(member.getEmail(),psw,nick,phone,member.getClass().getName().charAt(index));
		
		if(result>0) 
		{
			response.sendRedirect("/Floracion/logIn.jsp?email="+email);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
