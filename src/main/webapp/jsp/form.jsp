<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='UTF-8'>
    <title>Servlet/JSP Test</title>
</head>
<body>
    <form action='/servlet/contact' method='post'>
        <p>氏名（必須）</p>
        <input type='text' name='user' required>
        <p>会社</p>
        <input type='text' name='company'>
        <p>メールアドレス（必須）</p>
        <input type='email' name='address' required>
        <p>お問い合わせ内容（必須）</p>
        <textarea name='review' cols='30' rows='5' required></textarea>
        <p>メルマガ種類</p>
        <input type='checkbox' name='mail' value='総合案内'>総合案内
        <input type='checkbox' name='mail' value='セミナー案内'>セミナー案内
        <input type='checkbox' name='mail' value='求人採用情報'>求人採用情報
        <p>資料請求希望</p>
        <input type='radio' name='document' value='Yes' checked>Yes
        <input type='radio' name='document' value='No'>No
        <p>
            <input type='submit' value='確定'>
        </p>
    </form>
</body>
</html>