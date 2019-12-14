<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="pac.Calculator" %>
<%
String strNum1 = request.getParameter("num1");
String strNum2 = request.getParameter("num2");
long answer = 0;
try{
    int num1 = Integer.parseInt(strNum1);
    int num2 = Integer.parseInt(strNum2);
    answer = Calculator.plus(num1, num2);
}catch(Exception e){}
%>
<html>
<body>
<h2>足し算</h2>
<form action="index.jsp">
<input type="text" name="num1" />+
<input type="text" name="num2" />
<input type="submit" name="calc" value="計算" ><br/>
答え：<span id="answer"><%=answer %></span>
</form>
</body>

