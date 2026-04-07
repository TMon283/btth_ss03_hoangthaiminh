<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/7/2026
  Time: 7:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Employee List</title>
</head>
<body>

<h2>Danh sách nhân viên</h2>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Tên</th>
        <th>Phòng ban</th>
        <th>Lương</th>
        <th>Đánh giá</th>
    </tr>

    <c:forEach var="emp" items="${employees}">
        <tr>
            <td>${emp.id}</td>
            <td>${emp.fullName}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>

            <td>
                <c:choose>
                    <c:when test="${emp.salary >= 10000000}">
                        Mức lương cao
                    </c:when>
                    <c:otherwise>
                        Mức lương cơ bản
                    </c:otherwise>
                </c:choose>
            </td>

        </tr>
    </c:forEach>

</table>

</body>
</html>