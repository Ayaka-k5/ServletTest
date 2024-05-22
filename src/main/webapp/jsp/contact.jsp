<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>

<%
String user = request.getParameter("user");
String company = request.getParameter("company");
String address = request.getParameter("address");
String review = request.getParameter("review");
String[] mail = request.getParameterValues("mail");
String document = request.getParameter("document");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>お問い合わせ内容</title>
</head>
<body>
    <p>氏名: <%= user %></p>
    <p>会社: <%= company %></p>
    <p>メールアドレス: <%= address %></p>
    <p>お問い合わせ内容: <%= review %></p>

    <% if (mail != null) { %>
        <p>メルマガ種類:「<%= String.join("、", mail) %>」</p>
    <% } %>

    <p>資料請求希望: <%= document %></p>
    <% if ("Yes".equals(document)) { %>
        <p>この度は資料請求いただきありがとうございます。以下のリンクから資料ダウンロードが可能です。</p>
        <p><a href="https://example.com/download">資料ダウンロード</a></p>
    <% } %>
</body>
</html>