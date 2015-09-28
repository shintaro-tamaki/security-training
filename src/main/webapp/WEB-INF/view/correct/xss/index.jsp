<%@page pageEncoding="UTF-8"%>
<html>
<head>
<title>Tutorial: XSS</title>
<link rel="stylesheet" type="text/css" href="${f:url('/css/sa.css')}" />
</head>
<body>

<h1>Correct Tutorial: XSS （display）</h1>

<p>
<a href="${f:url('/')}">一覧に戻る</a>
</p>

<p>
入力する値を工夫して、scriptを動作させてください。<br />
</p>

<html:errors/>
<s:form>
<html:text property="arg1"/><br />
<input type="submit" name="submit" value="サブミット" /><br />
Result:<br />
${f:h(result)}
<br />
</s:form>
</body>
</html>