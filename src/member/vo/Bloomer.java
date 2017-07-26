package member.vo;

import java.sql.Date;

public class Bloomer
{
	private String mbcode;
	private String  id;
	private String  pwd;
	private String  nick;
	private String  email;
	private String  phone;
	private String  leader;
	private Date enrollDay;
	private Date leaveDay;
	
	public Bloomer(){}
	
	public Bloomer(String mbcode, String id, String pwd, String nick, String email, String phone, String leader,
			Date enrollDay)
	{
		super();
		this.mbcode = mbcode;
		this.id = id;
		this.pwd = pwd;
		this.nick = nick;
		this.email = email;
		this.phone = phone;
		this.leader = leader;
		this.enrollDay = enrollDay;
	}

	@Override
	public String toString()
	{
		return "Bloomer [mbcode=" + mbcode + ", id=" + id + ", pwd=" + pwd + ", nick=" + nick + ", email=" + email
				+ ", phone=" + phone + ", leader=" + leader + ", enrollDay=" + enrollDay + ", leaveDay=" + leaveDay
				+ "]";
	}

	public String getMbcode() 
	{
		return mbcode;
	}

	public void setMbcode(String mbcode) 
	{
		this.mbcode = mbcode;
	}

	public String getId() 
	{
		return id;
	}

	public void setId(String id) 
	{
		this.id = id;
	}

	public String getPwd() 
	{
		return pwd;
	}

	public void setPwd(String pwd) 
	{
		this.pwd = pwd;
	}

	public String getNick() 
	{
		return nick;
	}

	public void setNick(String nick) 
	{
		this.nick = nick;
	}

	public String getEmail() 
	{
		return email;
	}

	public void setEmail(String email) 
	{
		this.email = email;
	}

	public String getPhone() 
	{
		return phone;
	}

	public void setPhone(String phone) 
	{
		this.phone = phone;
	}

	public String getLeader() 
	{
		return leader;
	}

	public void setLeader(String leader) 
	{
		this.leader = leader;
	}

	public Date getEnrollDay() 
	{
		return enrollDay;
	}

	public void setEnrollDay(Date enrollDay) 
	{
		this.enrollDay = enrollDay;
	}

	public Date getLeaveDay() 
	{
		return leaveDay;
	}

	public void setLeaveDay(Date leaveDay)
	{
		this.leaveDay = leaveDay;
	}
}
