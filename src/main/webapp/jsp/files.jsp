<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #F5B5E2;
            text-align: center;
        }

        h2 {
            color: #E2C0F1;
        }

        p {
            color: #E2C0F1; /* Pink color for paragraphs */
        }

        a {
            text-decoration: none;
            color: #F1C0F0; /* Pink color for links */
            border: 1px solid #F1C0F0; /* Pink color for border */
            padding: 5px 10px;
            border-radius: 5px;
            display: inline-block;
            margin-top: 10px;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #F7D3F7;
            color: #fff; /* Change text color on hover */
        }
    </style>
    <title>Files List</title>

</head>
<body>
<div>
    <h2>Files List</h2>
    <%-- Use JSTL to iterate through the list of files --%>
    <c:forEach var="file" items="${FilesForJsp}">
        <p>File Name: ${file.originalName}</p>
        <p>Content Type: ${file.contentType}</p>
        <p>Size: ${file.size}</p>

        <!-- Provide a link to download the file -->
        <a href="/files?fileName=${file.storageName}" target="_blank">Download</a>

        <hr/>
    </c:forEach>
</div>
</body>
</html>
