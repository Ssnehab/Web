package DAO;
import java.sql.*;
import java.io.*;
import Bean.questionbean;
public class questionDAO
{
public questionbean calldao()
{
String db_url="jdbc:mysql://localhost/gd";
String user="root";
String pass="ssn";

questionbean qbean=new questionbean();
try
{
Connection con=DriverManager.getConnection(db_url,user,pass);
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from qbank");
int i=0;
while(rs.next())
{
  qbean.setQ(i,rs.getString(1));
  qbean.setCh1(i,rs.getString(2));
  qbean.setCh2(i,rs.getString(3));
  qbean.setCh3(i,rs.getString(4));
  qbean.setCh4(i,rs.getString(5));
  i++;
}
return qbean;
}
catch(Exception e)
{
System.out.println("Exception"+e);
}
return qbean;
}
}
