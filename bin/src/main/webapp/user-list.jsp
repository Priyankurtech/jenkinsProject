<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>User Management Application</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
    <style>
        /* Custom styles for colors and animation */
        body {
            background-color: #f0f0f0;
        }

        header {
            background-color: #3498db;
            padding: 10px 0;
        }

        header a.navbar-brand {
            color: #ecf0f1;
        }

        .btn-primary,
        .btn-info,
        .btn-danger {
            background-color: #3498db;
            border-color: #3498db;
        }

        .btn-primary:hover,
        .btn-info:hover,
        .btn-danger:hover {
            background-color: #2980b9;
            border-color: #2980b9;
        }

        table {
            background-color: #fff;
        }

        th,
        td {
            border-color: #ecf0f1;
        }

        .table-responsive {
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        .fadeIn {
            animation: fadeIn 1s;
        }
    </style>
</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #3498db;">
        <a class="navbar-brand" href="<%=request.getContextPath()%>/list">User Management</a>
    </nav>
</header>
<br>

<div class="container-fluid">
    <h3 class="text-center">List of Users</h3>
    <div class="text-right mb-3">
        <a href="<%=request.getContextPath()%>/new" class="btn btn-primary">Add New User</a>
    </div>
    <div class="table-responsive">
        <table class="table table-striped fadeIn">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Country</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="user" items="${listUser}">
                <tr>
                    <td><c:out value="${user.id}" /></td>
                    <td><c:out value="${user.name}" /></td>
                    <td><c:out value="${user.email}" /></td>
                    <td><c:out value="${user.country}" /></td>
                    <td>
                        <a href="edit?id=<c:out value='${user.id}' ?>" class="btn btn-info btn-sm">Edit</a>
                        <a href="delete?id=<c:out value='${user.id}' ?>" class="btn btn-danger btn-sm">Delete</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>

