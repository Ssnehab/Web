import Bean.userbean;
import Dao.userdao;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
public class logincontroller extends HttpServlet
{
public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
{
  res.setContentType("text/html");
  PrintWriter out=res.getWriter();
  String uname=req.getParameter("t1");
  String upass=req.getParameter("t2");
  userbean use=new userbean();
  use.setU(uname);
  use.setP(upass);
  userdao dao=new userdao();
  int r=dao.auth(use);
  if(r==1)
    req.getRequestDispatcher("success.jsp").forward(req,res);
  else
    req.getRequestDispatcher("error.jsp").forward(req,res);
}
}
