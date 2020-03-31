<html><%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/test" user="root" password="ssn"/>
<sql:query dataSource="${snapshot}" var="result">
select * from student;
</sql:query>
<c:set var="flag" value="not found"/>
<c:set var="uname" value="${param.val}"/>
<c:forEach var="row" items="${result.rows}">
<c:if test="${fn:startsWith(row.name,uname)}">
<c:set var="flag" value="found"/></c:if>
</c:forEach>
<c:out value="${flag}"/>
</html>
