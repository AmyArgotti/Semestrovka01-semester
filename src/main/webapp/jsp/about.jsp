<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"> <!-- Include Font Awesome for icons -->
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #F5B5E2;
            color: #fff;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            text-align: center;
        }

        .project-info {
            margin-bottom: 20px;
        }

        .contact-icons {
            margin-top: 20px;
        }

        .contact-icon {
            font-size: 30px;
            margin-right: 10px;
            color: #C0EEF1;
            text-decoration: none;
        }

        .contact-icon:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="project-info">
        <h1>VSCO Project About</h1>
        <p>This is based on the original VSCO app where we can scroll down on some cool pics.</p>
    </div>

    <!-- Contact Icons -->
    <div class="contact-icons">
        <a href="mailto:amy@gmail.com" class="contact-icon"><i class="far fa-envelope"></i></a>
        <a href="https://www.facebook.com/amy.argotti.1?mibextid=LQQJ4d" class="contact-icon" target="_blank"><i class="fab fa-facebook"></i></a>
        <a href="https://instagram.com/amyargotti?igshid=NGVhN2U2NjQ0Yg%3D%3D&utm_source=qr" class="contact-icon" target="_blank"><i class="fab fa-instagram"></i></a>
    </div>

    <!-- Form (if needed) -->
    <!-- Your form fields go here (if applicable) -->
    <!-- Example: <input type="text" name="fieldName" placeholder="Field Name"> -->
    <a href="/"> <button type="submit">Home</button>
    </a>
</div>
</body>
</html>
