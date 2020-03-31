<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<body>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/test" user="root" password="ssn"/>
<sql:query dataSource="${snapshot}" var="result">select uname from login; </sql:query>

<c:set var="flag" value="notfound"/>
<c:forEach var="row" items="${result.rows}">
 <c:if test="${fn:startsWith(${row.uname},${param.val})}">
   <c:out value="found"/>
 </c:if>
</c:forEach>
<c:out value="${flag}"/>
</body>
</html>

