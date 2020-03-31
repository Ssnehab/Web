package DAO;
import Bean.ansbean;
import java.sql.*;
import java.io.*;
import Bean.questionbean;
public class ansDAO
{
public int calcScore(ansbean b)
{
String db_url="jdbc:mysql://localhost/gd";
String user="root";
String pass="ssn";
int score=0;
try
{
Connection con=DriverManager.getConnection(db_url,user,pass);
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select ans from qbank");
int i=0;
while(rs.next())
{
	if(b.getAns(i).equals(rs.getString(1))) {
		score += 20;
	} 
	i++;
}
return score;
}
catch(Exception e)
{
System.out.println("Exception"+e);
}
return score;
}
}
