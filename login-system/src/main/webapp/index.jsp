<%@ page language ="java" contentType="text/html; charSet=US-ASCII"
pageEncoding="US-ASCII"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shaadi.com</title>
    <style>
        /* Style for the entire body */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc; /* Light gray background color */
            background-image: url('imagee.webp'); /* Optional background image URL */
            background-size: cover; /* Ensures the background image covers the entire page */
            background-position: center; /* Centers the background image */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full height of the viewport */
            margin: 0;
        }

        /* Container for the heading and link */
        .content {
            text-align: center;
            padding: 40px;
            border-radius: 8px;
        }

        /* Styling for Shaadi.com as a button */
        h4 {
            font-size: 36px;
            color: #ffffff; /* White color for text to stand out on the background */
            background-color:   Pink; /* Green background for the button */
            padding: 15px 30px;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
            display: inline-block; /* Makes it behave like a button */
            margin-bottom: 20px; /* Spacing between text and link */
        }

        h4:hover {
            background-color: Pink; /* Darker green on hover */
            color: #ffffff; /* Keep text white */
        }

        a {
            font-size: 18px;
            color: White;
            text-decoration: none;
            padding: 12px 25px;
            border: 2px solid  Pink;
            border-radius: 5px;
            background-color:  Pink;
            transition: all 0.3s ease;
        }

        a:hover {
            background-color: Red;
            color: Black;
        }
    </style>
</head>
<body>

    <div class="content">
        <!-- Shaadi.com button with hover effect -->
        <h4>Shaadi.com</h4></br>
        <a href="createaccount.jsp">Create Account</a>
        <a href="getfirstnamebyid.jsp">Get By Id</a>
        <a href="getshaadidtobyemail.jsp">Get By Email</a>
        <a href="getAllShaadiDto">Get All ShaadiDto</a>

    </div>

</body>
</html>
