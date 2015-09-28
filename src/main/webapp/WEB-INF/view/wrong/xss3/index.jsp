<%@page pageEncoding="UTF-8"%>
<html>
<head>
<title>Tutorial: XSS</title>
<link rel="stylesheet" type="text/css" href="${f:url('/css/sa.css')}" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="${f:url('/js/wrong_xss3.js')}"></script>
</head>
<body>

<h1>Wrong Tutorial: XSS （Javascript）</h1>

<p>
<a href="${f:url('/')}">一覧に戻る</a>
</p>

<p>
入力する値を工夫して、scriptを動作させてください。<br />
</p>


<html:errors/>
<s:form>
<input id="arg1" type="text" name="arg1" value="${f:h(arg1)}"><br />
arg1:<br />
<div id="div">
</div>
<br />
</s:form>
</body>
</html>