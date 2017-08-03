package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import member.service.MemberService;
import member.vo.Bloomer;
import member.vo.Member;



/**
 * Servlet implementation class MemberLoginServlet
 */
@WebServlet("/mlogin")
public class MemberLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		request.setCharacterEncoding("utf-8");
		
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		
		Member member=new MemberService().login(email,pwd);		
		JSONObject json = new JSONObject();
		
		HttpSession session=request.getSession();
		System.out.println("이곳은"+session);
		if(member!=null) 
		{	
			session.setAttribute("email",member.getEmail());
			session.setAttribute("nick",member.getNick());
			json.put("member", member.getNick());
			
		}
		else 
		{
			json.put("member", null);
		}
		System.out.println(json);
		response.setContentType("application/json; charset=utf-8"); 
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
