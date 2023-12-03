<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>User Management Application</title>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
    <style>
        body {
            background-color: #f0f0f0;
        }

        header {
            background-color: #e74c3c;
            padding: 10px 0;
        }

        .card {
            margin-top: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            background-color: #3498db;
            color: #fff;
            font-size: 1.5em;
        }

        .form-group {
            margin-bottom: 20px;
        }

        button {
            width: 100%;
        }
    </style>
</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #e74c3c;">
        <ul class="navbar-nav">
            <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Users</a></li>
        </ul>
    </nav>
</header>
<br>
<div class="container col-md-5">
    <div class="card">
        <div class="card-header">
            <c:choose>
                <c:when test="${user != null}">
                    Edit User
                </c:when>
                <c:otherwise>
                    Add New User
                </c:otherwise>
            </c:choose>
        </div>
        <div class="card-body">
            <form action="<c:choose><c:when test='${user != null}'>update</c:when><c:otherwise>insert</c:otherwise></c:choose>"
                  method="post">

                <c:if test="${user != null}">
                    <input type="hidden" name="id" value="<c:out value='${user.id}' />"/>
                </c:if>

                <div class="form-group">
                    <label>User Name</label>
                    <input type="text" value="<c:out value='${user.name}' />" class="form-control" name="name" required="required">
                </div>

                <div class="form-group">
                    <label>User Email</label>
                    <input type="text" value="<c:out value='${user.email}' />" class="form-control" name="email">
                </div>

                <div class="form-group">
                    <label>User Country</label>
                    <input type="text" value="<c:out value='${user.country}' />" class="form-control" name="country">
                </div>

                <button type="submit" class="btn btn-success">Save</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
