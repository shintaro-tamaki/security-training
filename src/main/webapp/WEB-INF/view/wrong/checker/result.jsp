<%@page pageEncoding="UTF-8"%>
<html>
<head>
<title>Tutorial: XSS</title>
<link rel="stylesheet" type="text/css" href="${f:url('/css/sa.css')}" />
</head>
<body>

<h1>Wrong Tutorial: Javascriptチェック</h1>

<p>
<a href="${f:url('/')}">一覧に戻る</a>
</p>

<p>
Resultにaという文字を出力してみてください。<br />
</p>

<html:errors/>
Result:<br />
${f:br(f:nbsp(f:h(result)))}<br />
<br />
</body>
</html>