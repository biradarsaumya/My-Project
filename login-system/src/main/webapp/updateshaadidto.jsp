<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Matrimony Login</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-image: url('imagee.webp'); /* Set your background image */
            background-size: cover; /* Ensure the background image covers the entire screen */
            background-position: center; /* Center the image */
            background-attachment: fixed; /* Make background fixed while form scrolls */
            height: 100vh; /* Full viewport height */
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 400px;
            max-height: 80vh; /* Limit the height of the form */
            overflow-y: auto; /* Allow scrolling if the form exceeds the height */
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-size: 14px;
            color: #333;
            margin-bottom: 8px;
        }

        input, select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
            background-color: rgba(255, 255, 255, 0.7); /* Transparent background for inputs */
            color: #333; /* Text color */
        }

        button.submit-btn {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }

        button.submit-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Shaadi.com</h2>
        <form action="Update" method="post">
            <div class="form-group">
                <label for="id">Id</label>
                <input type="text" id="id" name="id" value="${ value.getId() }">
            </div>

            <div class="form-group">
                <label for="firstName">First Name</label>
                <input type="text" id="firstName" name="firstName" value="${ value.getFirstName() }">
            </div>

            <div class="form-group">
                <label for="lastName">Last Name</label>
                <input type="text" id="lastName" name="lastName" value="${ value.getLastName() }">
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" value="${ value.getEmail() }">
            </div>

            <div class="form-group">
                <label for="phone">Phone Number</label>
                 <input type="tel" id="phone" name="phone" value="${ value.getPhoneNumber() }">
            </div>

            <div class="form-group">
                <label for="dob">Date of Birth</label>
                <input type="date" id="dob" name="dob" value="${ value.getDob() }">
            </div>

            <div class="form-group">
                <label for="age">Age</label>
                <input type="text" id="age" name="age" value="${ value.getAge() }">
            </div>

            <div class="form-group">
                <label for="gender">Gender</label>
                <input type="text" id="gender" name="gender" value="${ value.getGender() }">
            </div>

            <div class="form-group">
                <label for="color">Color</label>
                <input type="text" id="color" name="color" value="${ value.getColor() }">
            </div>

            <div class="form-group">
                <label for="height">Height</label>
                <input type="text" id="height" name="height" value="${ value.getHeight() }">
            </div>

            <div class="form-group">
                <label for="religion">Religion</label>
                <input type="text" id="religion" name="religion" value="${ value.getReligion() }">
            </div>

            <div class="form-group">
                <label for="motherTongue">Mother Tongue</label>
                <input type="text" id="motherTongue" name="motherTongue" value="${ value.getMotherTongue() }">
            </div>

            <div class="form-group">
                <label for="state">State</label>
                <input type="text" id="state" name="state" value="${ value.getState() }">
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" value="${ value.getPassword() }">
            </div>

            <div class="form-group">
                <label for="confirmPassword">Confirm Password</label>
                <input type="password" id="confirmPassword" name="confirmPassword" value="${ value.getConfirmPassword() }">
            </div>

            <button type="submit" class="submit-btn">Update</button>
        </form>
    </div>

</body>
</html>
