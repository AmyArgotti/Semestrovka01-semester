<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>File Upload</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color:#C0EEF1;
        }

        .container {
            max-width: 600px;
            margin: 20px auto;
            text-align: center;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color:#F5B5E2;
        }

        label {
            display: block;
            margin: 10px 0;
        }

        input[type="file"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            padding: 10px 20px;
            background-color: #F5B5E2;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        a {
            display: block;
            margin-top: 10px;
            text-decoration: none;
            color: #F5B5E2;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>File Upload</h2>
    <form action="/insert" method="post" enctype="multipart/form-data">
        <label for="file">Select File:</label>
        <input type="file" id="file" name="file" required>
        <br>
        <button type="submit">Upload</button>
    </form>

    <a href="/">Home</a>
</div>
</body>
</html>