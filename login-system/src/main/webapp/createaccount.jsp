<%@ page language ="java" contentType="text/html; charSet=US-ASCII"
pageEncoding="US-ASCII"%>
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
        <form action="login" method="post">
            <div class="form-group">
                <label for="firstName">First Name</label>
                <input type="text" id="firstName" name="firstName" placeholder="Enter your first name" required>
            </div>

            <div class="form-group">
                <label for="lastName">Last Name</label>
                <input type="text" id="lastName" name="lastName" placeholder="Enter your last name" required>
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>
            </div>

            <div class="form-group">
                <label for="phone">Phone Number</label>
                <input type="tel" id="phone" name="phone" placeholder="Enter your phone number" required>
            </div>

            <div class="form-group">
                <label for="dob">Date of Birth</label>
                <input type="date" id="dob" name="dob" required>
            </div>

            <div class="form-group">
                <label for="age">Age</label>
                <input type="text" id="age" name="age" placeholder="Enter your age" required>
            </div>

            <div class="form-group">
                <label for="gender">Gender</label>

                <select id="gender" name="gender"  required>

                    <option value="male">Male</option>
                    <option value="female">Female</option>
                    <option value="other">Other</option>
                </select>
            </div>

            <div class="form-group">
                <label for="color">Color</label>

                <select id="color" name="color"  required>

                    <option value="brown">Brown</option>
                    <option value="black">Black</option>
                    <option value="white">White</option>
                    <option value="red">Red</option>
                </select>
            </div>

            <div class="form-group">
                <label for="height">Height</label>
                <input type="text" id="height" name="height" placeholder="Enter your height" required>

            </div>

            <div class="form-group">
                <label for="religion">Religion</label>

                <select id="religion" name="religion" required>

                    <option value="Hindu">Hindu</option>
                    <option value="Christian">Christian</option>
                    <option value="Muslim">Muslim</option>
                    <option value="Jain">Jain</option>
                    <option value="Sikh">Sikh</option>
                </select>
            </div>

            <div class="form-group">
                <label for="motherTongue">Mother Tongue</label>

                <select id="motherTongue" name="motherTongue"  required>

                    <option value="Kannada">Kannada</option>
                    <option value="English">English</option>
                    <option value="Hindi">Hindi</option>
                    <option value="Marathi">Marathi</option>
                    <option value="Marwari">Marwari</option>
                    <option value="Telugu">Telugu</option>
                    <option value="Tamil">Tamil</option>
                    <option value="Malayalam">Malayalam</option>
                    <option value="Gujarati">Gujarati</option>
                    <option value="Punjabi">Punjabi</option>
                </select>
            </div>

            <div class="form-group">
                <label for="state">State</label>

                <select id="state" name="state" required>

                    <option value="Karnataka">Karnataka</option>
                                                       <option value="Andhra Pradesh">Andhra Pradesh</option>
                                                       <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                                       <option value="Assam">Assam</option>
                                                       <option value="Bihar">Bihar</option>
                                                       <option value="Chhattisgarh">Chhattisgarh</option>
                                                       <option value="Goa">Goa</option>
                                                       <option value="Gujarat">Gujarat</option>
                                                       <option value="Haryana">Haryana</option>
                                                       <option value="Himachal Pradesh">Himachal Pradesh</option>
                                                       <option value="Jharkhand">Jharkhand</option>
                                                       <option value="Kerala">Kerala</option>
                                                       <option value="Madhya Pradesh">Madhya Pradesh</option>
                                                       <option value="Maharashtra">Maharashtra</option>
                                                       <option value="Manipur">Manipur</option>
                                                       <option value="Meghalaya">Meghalaya</option>
                                                       <option value="Mizoram">Mizoram</option>
                                                       <option value="Nagaland">Nagaland</option>
                                                       <option value="Odisha">Odisha</option>
                                                       <option value="Panjab">Panjab</option>
                                                       <option value="Rajasthan">Rajasthan</option>
                                                       <option value="Sikkim">Sikkim</option>
                                                       <option value="Tamil Nadu">Tamil Nadu</option>
                                                       <option value="Telangana">Telangana</option>
                                                       <option value="Tripura">Tripura</option>
                                                       <option value="Uttar Pradesh">Uttar Pradesh</option
                                                       <option value="Jammu & Kashmir">Jammu & Kashmir</option>
                                                       <option value="Ladakh">Ladakh</option>
                                                       <option value="Puducherry">Puducherry</option>
                                                       <option value="Chandigarh">Chandigarh</option>
                                                </select>
                                    </div>


            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>
            </div>

            <div class="form-group">
                <label for="confirmPassword">Confirm Password</label>
                <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm your password" required>
            </div>

            <button type="submit" class="submit-btn">Login</button>
        </form>
    </div>

</body>
</html>
