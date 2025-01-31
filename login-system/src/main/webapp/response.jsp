<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ page isELIgnored="false" %>

<html>
<head>
    <style>
        /* Center the content */
        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
            background-color: Pink;
        }
        .message {
            font-size: 24px;
            font-weight: bold;

        }
    </style>
    <script type="text/javascript">
        // Redirect to the index page after 5 seconds
        setTimeout(function() {
            window.location.href = "index.jsp";
        }, 5000);
    </script>
</head>
<body>
    <div class="message">
        Thank you ${key} for Registering
    </div>
</body>
</html>
