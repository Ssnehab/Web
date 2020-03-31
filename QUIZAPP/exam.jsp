<%@ page import="Bean.questionbean" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>
<body>
<%
int i,j;
String q[]=new String[5];
String ch1[]=new String[5];
String ch2[]=new String[5];
String ch3[]=new String[5];
String ch4[]=new String[5];
questionbean qbean=(questionbean)session.getAttribute("qbean");
for(i=0;i<=4;i++)
{
q[i]=qbean.getQ(i);
ch1[i]=qbean.getCh1(i);
ch2[i]=qbean.getCh2(i);
ch3[i]=qbean.getCh3(i);
ch4[i]=qbean.getCh4(i);
}
pageContext.setAttribute("q",q);
pageContext.setAttribute("ch1",ch1);
pageContext.setAttribute("ch2",ch2);
pageContext.setAttribute("ch3",ch3);
pageContext.setAttribute("ch4",ch4);
%>
<form method="post" action="anscontrol">
<c:forEach var="i" begin="0" end="4">
   <c:out value="${q[i]}"/><br>
   <input type="radio" name="${i}" value="a">
   <c:out value="${ch1[i]}"/>
   <input type="radio" name="${i}" value="b">
   <c:out value="${ch2[i]}"/>
   <input type="radio" name="${i}" value="c">
   <c:out value="${ch3[i]}"/>
   <input type="radio" name="${i}" value="d">
   <c:out value="${ch4[i]}"/><br><br>
</c:forEach>
<input type="submit" value="show score">
</form>

</body>
</html>
