package com.syscho.book;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.syscho.book.config.DbConnection;
import com.syscho.book.service.BookService;
import com.syscho.book.vo.UserVO;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	BookService service = new BookService();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.encodeURL("/index.jsp");
		request.getRequestDispatcher("/index.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userId = request.getParameter("userid");
		String pwd = request.getParameter("password");
		request.getSession().invalidate();

		UserVO login = DbConnection.login(userId, pwd);

		if (null != login) {
			request.getSession().setAttribute("login", "Y");
			String userType = login.getUserType();
			if (userType.equalsIgnoreCase("A")) {
				request.getSession().setAttribute("isAdmin", userType);
			}
			request.getSession().setAttribute("total", 100);

			userId = userId.substring(0, userId.indexOf('@'));
			request.getSession().setAttribute("books", service.getBooks());
			request.getSession().setAttribute("category", "ALL");
			request.getSession().setAttribute("username", userId);

			request.getRequestDispatcher("/home.jsp").forward(request, response);

		} else {
			request.setAttribute("status", "Invalid Credentials !!");
			request.getRequestDispatcher("/index.jsp?Invalid Credentials").forward(request, response);
		}
	}

}
