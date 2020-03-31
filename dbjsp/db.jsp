<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
<html>
<body>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/test" user="root" password="ssn"/>
<sql:query dataSource="${snapshot}" var="result">select * from student;</sql:query>
<c:forEach var="row" items="${result.rows}">
    <c:out value="${row.id}"/>
    <c:out value="${row.name}"/>
</c:forEach>
</body>
</html>
