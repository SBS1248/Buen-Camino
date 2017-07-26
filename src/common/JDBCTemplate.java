package common;

import java.io.*;
import java.sql.*;
import java.util.*;

public class JDBCTemplate 
{
	public static Connection getConnection()
	{
		Connection con=null;
		Properties prop=new Properties();
		
		try 
		{
			String path=JDBCTemplate.class.getResource(".").getPath()+"driver.properties";
			prop.load(new FileReader(path));
			
			Class.forName(prop.getProperty("driver"));
			con=DriverManager.getConnection(prop.getProperty("url"),prop.getProperty("user"),prop.getProperty("password"));			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}		
		
		return con;
	}
}
