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
submitを押して次の画面のResultにaという文字を出力してみてください。<br />
</p>

<html:errors/>
<s:form>
<html:text property="arg1"/><br />
<input type="submit" name="submit" value="サブミット"/><br />
Result:<br />
${f:br(f:nbsp(f:h(result)))}<br />
<br />
</s:form>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
<script type="text/javascript">
$(function(){
	$("form").validate({
		rules: {
			arg1 :{
				required: true,
				email: true
			}
		},
		messages: {
			arg1 :{
				required: "メールアドレスを入力してください",
				email: "正しいメールアドレスを入力してください"
			}
		}
	});
})
</script>
</body>
</html>