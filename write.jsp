<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WritePage</title>
</head>
<body>
<form action="http://localhost8080/TWR/WriteServlet">
<p>日付：<select>
	<% for(int i = 2010; i <= 2100 ; i++) {
		out.print("<option value=\"year" + (i-2009) + "\">" + i + "</option>");
		}
	%>
	</select>年
	<select>
	<% for(int i = 1; i <= 12 ; i++) {
		out.print("<option value=\"month" + i + "\">" + i + "</option>");
		}
	%>
	</select>月
	<select>
	<% for(int i = 1; i <= 31 ; i++) {
		out.print("<option value=\"day" + i + "\">" + i + "</option>");
		}
	%>
	</select>日
</p>
<p>チャンネル：
<input type="radio" name="channel" value="ch1">NHK
<input type="radio" name="channel" value="ch2">NHK教育
<input type="radio" name="channel" value="ch3">テレビ朝日
<input type="radio" name="channel" value="ch4">TBS<br>　　　　　　　
<input type="radio" name="channel" value="ch5">テレビ東京
<input type="radio" name="channel" value="ch6">フジテレビ
<input type="radio" name="channel" value="ch7">TOKYO MX
</p>
<p>
<input type="submit" value="送信">　
<input type="reset" value="クリア">
</p>
</form>

</body>
</html>