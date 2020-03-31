package Dao;
import java.sql.*;
import java.io.*;
import Bean.userbean;
public class userdao
{
public int auth(userbean l)
{
String db_url="jdbc:mysql://localhost/test";
String user="root";
String pass="ssn";
try
{
Connection con=DriverManager.getConnection(db_url,user,pass);
Statement stmt=con.createStatement();
user=l.getU();
pass=l.getP();
ResultSet rs=stmt.executeQuery("select * from user");
while(rs.next())
if(user.equals(rs.getString(1))&&pass.equals(rs.getString(2)))
 return 1;
}
catch(Exception e)
{
System.out.println("Exception"+e);
}

return 0;
}
}
