package jp.co.bizreach.action.wrong;

import org.seasar.struts.annotation.Execute;

public class XssAction
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
