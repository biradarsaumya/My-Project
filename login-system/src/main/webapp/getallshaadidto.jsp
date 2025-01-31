<%@ page language ="java" contentType="text/html; charSet=US-ASCII"
pageEncoding="US-ASCII"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="ref" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shaadi Details</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        #searchBar {
            margin: 20px 0;
        }
    </style>
</head>
<body>

    <!-- Table to display Shaadi Details -->
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Date of Birth</th>
                <th>Age</th>
                <th>Gender</th>
                <th>Color</th>
                <th>Height</th>
                <th>Religion</th>
                <th>Mother Tongue</th>
                <th>State</th>
                <th>Password</th>
                <th>ConfirmPassword</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>

        <ref:forEach var="dto" items="${value}">
            <!-- Dynamically populate the table with data from ShaadiDto -->

                <tr>
                    <td>${ dto.getId() }</td>
                    <td>${ dto.getFirstName() }</td>
                    <td>${ dto.getLastName() }</td>
                    <td>${ dto.getEmail() }</td>
                    <td>${ dto.getPhoneNumber() }</td>
                    <td>${ dto.getDob() }</td>
                    <td>${ dto.getAge() }</td>
                    <td>${ dto.getGender() }</td>
                    <td>${ dto.getColor() }</td>
                    <td>${ dto.getHeight() }</td>
                    <td>${ dto.getReligion() }</td>
                    <td>${ dto.getMotherTongue() }</td>
                    <td>${ dto.getState() }</td>
                    <td>${ dto.getPassword() }</td>
                    <td>${ dto.getConfirmPassword() }</td>

                    <td><a href="Delete?id=${dto.getId()}">Delete</a>
                    <a href="Edit?id=${dto.getId()}">Update</a></td>
                </tr>
</ref:forEach>
        </tbody>
    </table>
</body>
</html>
