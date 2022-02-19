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
    <form action="calculate-number-servlet" method="post" style="border:1px;border-style: dashed; border-color: red;padding: 20px;">
        <input style="width: 200px;height: 27px;margin-bottom: 20px;" placeholder="Enter first number" type="text" name="first-number">
        <br>
        <input type="radio" name="op_code" value="add">add <br>
        <input type="radio" name="op_code" value="sub">sub <br>
        <input type="radio" name="op_code" value="mul">mul <br>
        <input type="radio" checked name="op_code" value="div">div <br>
        <br>
        <input style="width: 200px;height: 27px;margin-bottom: 20px;" placeholder="Enter second number" type="text" name="second-number">
        <br>
        <button style="height: 40px;width: 100%;background-color: aquamarine;border-radius: 50px;" type="submit">Show Result</button>
    </form>
</div>
</body>
</html>