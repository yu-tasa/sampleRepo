package servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;

@WebServlet("/NewUser")
public class NewUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String pass = request.getParameter("pass");
		String confirm = request.getParameter("confirm");

		if (!pass.equals(confirm)) {
			request.setAttribute("errorMsg", "パスワードが一致しません");
			request.getRequestDispatcher("forgotUser.jsp").forward(request, response);
			return;
		}
		User user = new User(name, pass);

		ServletContext context = getServletContext();
		Map<String, User> userData = (Map<String, User>) context.getAttribute("userData");
		if (userData == null) {
			userData = new HashMap<>();
			context.setAttribute("userData", userData);
		}
		userData.put(name, user);

		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().println("<html><body>");
		response.getWriter().println("<h2>登録が完了しました</h2>");
		response.getWriter().println("<p>ユーザー名: " + name + "</p>");
		response.getWriter().println("</body></html>");
	}

}
