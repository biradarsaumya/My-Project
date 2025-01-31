<%@ page language ="java" contentType="text/html; charSet=US-ASCII"
pageEncoding="US-ASCII"%>
<%@ page isELIgnored="false" %>

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
    <!-- Search Bar -->
    <div id="searchBar">
        <form action="GetEmail" method="get">
            <input type="text" id="search" name="email" placeholder="Search by email" />
            <input type="submit" value="Search" />
        </form>
    </div>

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
            </tr>
        </thead>
        <tbody>
            <!-- Dynamically populate the table with data from ShaadiDto -->

                <tr>
                    <td>${ key.getId() }</td>
                    <td>${ key.getFirstName() }</td>
                    <td>${ key.getLastName() }</td>
                    <td>${ key.getEmail() }</td>
                    <td>${ key.getPhoneNumber() }</td>
                    <td>${ key.getDob() }</td>
                    <td>${ key.getAge() }</td>
                    <td>${ key.getGender() }</td>
                    <td>${ key.getColor() }</td>
                    <td>${ key.getHeight() }</td>
                    <td>${ key.getReligion() }</td>
                    <td>${ key.getMotherTongue() }</td>
                    <td>${ key.getState() }</td>
                </tr>

        </tbody>
    </table>
</body>
</html>
