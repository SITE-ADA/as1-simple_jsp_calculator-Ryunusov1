<html>
<head>
    <title>Web And Mobile I</title>
</head>
<body>
<div style="width: 100%;display: flex;">
    <div style="width: max-content; background-color: aquamarine;list-style: none;">
        <ul style="width: 100%;">
            <li style="margin: 10px;"><a style="color: black; font-weight: bold; font-variant: small-caps;" href="calculate-number-servlet">Information about user</a></li>
            <li style="margin: 10px;"><a style="color: black; font-weight: bold; font-variant: small-caps;" href="index.jsp">Calculate</a></li>
            <li style="margin: 10px;"><a style="color: black; font-weight: bold; font-variant: small-caps;" href="#">
                Result:
                <%=(request.getAttribute("parseError")!=null) ? request.getAttribute("parseError") : ""%>
                <%=(request.getAttribute("notAllowed")!=null) ? request.getAttribute("notAllowed") : ""%>
                <%=(request.getAttribute("output")!=null) ? request.getAttribute("output") : ""%>
            </a>
            </li>
        </ul>
    </div>
    <p style="color: brown;font-weight: bold"><%=request.getAttribute("browserAndOS")%></p>
</div>
</body>
</html>