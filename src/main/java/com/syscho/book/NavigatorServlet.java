package com.syscho.book;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NavigatorServlet
 */
public class NavigatorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NavigatorServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nav = request.getParameter("method");
		if (null == request.getSession(false)) {

			request.getRequestDispatcher("/index.jsp").forward(request, response);
			return;
		}

		if ("A".equalsIgnoreCase(nav)) {
			request.getRequestDispatcher("/admin.jsp").forward(request, response);
			return;

		} else if ("home".equalsIgnoreCase(nav)) {
			request.getRequestDispatcher("/home.jsp").forward(request, response);
			return;

		}

		else if ("cart".equalsIgnoreCase(nav)) {
			request.getRequestDispatcher("/cart.jsp").forward(request, response);
			return;
		}
		request.getRequestDispatcher("/home.jsp").forward(request, response);
		return;

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
