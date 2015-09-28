<%@page pageEncoding="UTF-8"%>
<html>
<head>
<title>Tutorial: SQL Injection</title>
<link rel="stylesheet" type="text/css" href="${f:url('/css/sa.css')}" />
</head>
<body>

<h1>Tutorial: SQL Injection</h1>

<p>
<a href="${f:url('/')}">一覧に戻る</a>
</p>

<p>
入力する値を工夫して、複数件のResultを出してみてください。<br />
</p>

<html:errors/>
<s:form>
<html:text property="arg"/>
<input type="submit" name="submit" value="サブミット"/>
<br />
SQL:<br />
${f:br(f:nbsp(f:h(sql)))}<br />
<br />
Result:<br />
${f:br(f:nbsp(f:h(result)))}<br />
</s:form>
</body>
</html>