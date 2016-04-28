package jp.co.bizreach.action.wrong;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.annotation.Resource;

import jp.co.bizreach.form.SqlInjectionForm;

import org.seasar.struts.annotation.ActionForm;
import org.seasar.struts.annotation.Execute;

public class SqlinjectionAction {

	public String sql;
	public String result;

	@ActionForm
	@Resource
	protected SqlInjectionForm sqlInjectionForm;

	@Execute(validator = false)
	public String index() {
	    return "index.jsp";
	}

	@Execute(input = "index.jsp")
	public String submit() {
		return dbaccess();
	}

	private String dbaccess() {
		Connection con = null;
		PreparedStatement prepareStatement = null;
		ResultSet rs = null;
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/example_security", "root", "");			
			sql = "SELECT * FROM member WHERE member_name = '" + sqlInjectionForm.arg + "'";
			prepareStatement = con.prepareStatement(sql);
			rs = prepareStatement.executeQuery();

			StringBuilder builder = new StringBuilder();
			while (rs.next()) {
				builder.append(rs.getString("MEMBER_NAME"));
				builder.append("\n");
			}
			result = builder.toString();
		} catch (SQLException e1) {
			System.out.println(
				"SQLException: " + e1.getMessage());
			System.out.println(
				"    SQLState: " + e1.getSQLState());
			System.out.println(
				" VendorError: " + e1.getErrorCode());
		} catch (Exception e2) {
			System.out.println(
				"Exception: " + e2.getMessage());
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// なにもしない
				}
			}
			if (prepareStatement != null) {
				try {
					prepareStatement.close();
				} catch (SQLException e) {
					// なにもしない
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					// なにもしない
				}
			}
		}

		return "index.jsp";
	}
}
