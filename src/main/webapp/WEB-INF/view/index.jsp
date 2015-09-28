<%@page pageEncoding="UTF-8"%>
<html>
<head>
<title>Tutorial: menu</title>
<link rel="stylesheet" type="text/css" href="${f:url('/css/sa.css')}" />
</head>
<body>

<h1>Tutorial: menu</h1>

<p>
Webセキュリティ研修用、サンプルプログラム<br />
</p>

<ul>
<li><a href="https://www.ipa.go.jp/security/vuln/websecurity.html">参考資料：安全なウェブサイトの作り方</a></li>
</ul>

<ul>
<li>Wrong Tutorial</li>
<li><a href="${f:url('/wrong/checker/')}">Javascriptのみのチェック</a></li>
<li><a href="${f:url('/wrong/sqlinjection/')}">SQLインジェクション</a></li>
<li><a href="${f:url('/wrong/xss/')}">XSS（display）</a></li>
<li><a href="${f:url('/wrong/xss2/')}">XSS（input）</a></li>
<li><a href="${f:url('/wrong/xss3/')}">XSS（Javascript）</a></li>
</ul>

<ul>
<li>Correct Tutorial</li>
<li><a href="${f:url('/correct/checker/')}">Javascriptのみのチェック</a></li>
<li><a href="${f:url('/correct/sqlinjection/')}">SQLインジェクション</a></li>
<li><a href="${f:url('/correct/xss/')}">XSS（display）</a></li>
<li><a href="${f:url('/correct/xss2/')}">XSS（input）</a></li>
<li><a href="${f:url('/correct/xss3/')}">XSS（Javascript）</a></li>
</ul>

</body>
</html>