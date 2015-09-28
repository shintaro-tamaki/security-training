package jp.co.bizreach.action.correct;

import org.seasar.struts.annotation.Execute;

public class Xss3Action
{
	public String arg1;
	public String result;

    @Execute(validator = false)
    public String index()
    {
        return "index.jsp";
    }

	@Execute(input = "index.jsp")
	public String submit() {
		result = arg1;
		return "index.jsp";
	}

}
