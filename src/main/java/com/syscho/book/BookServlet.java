package com.syscho.book;

import java.io.IOException;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.syscho.book.service.BookService;
import com.syscho.book.vo.Book;

/**
 * Servlet implementation class BookServlet
 */
public class BookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	BookService service = new BookService();

	private String ADD_TO_CART = "addToCart";

	private String REMOVE_FROM_CART = "removeCart";
	private String CATEGORY_SEARCH = "search";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BookServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method = request.getParameter("method");
		HttpSession session = request.getSession();
		if (ADD_TO_CART.equalsIgnoreCase(method)) {

			addToCart(request, session);

		} else if (REMOVE_FROM_CART.equalsIgnoreCase(method)) {

			removeFromCart(request, session);
			request.getRequestDispatcher("/cart.jsp").include(request, response);
			return;

		}
		if (CATEGORY_SEARCH.equalsIgnoreCase(method)) {
			categorySearch(request, session);
		}
		request.getRequestDispatcher("/home.jsp").include(request, response);
	}

	private void categorySearch(HttpServletRequest request, HttpSession session) {
		String search = request.getParameter("search");
		if ("All".equalsIgnoreCase(search)) {

			session.setAttribute("books", service.getBooks());

		} else {

			List<Book> collect = service.getBooks().stream()
					.filter(obj -> obj.getBookCategory().equalsIgnoreCase(search)).collect(Collectors.toList());
			session.setAttribute("books", collect);
		}
		session.setAttribute("category", search);
	}

	private void removeFromCart(HttpServletRequest request, HttpSession session) {
		String bookId = request.getParameter("bookId");
		List<Book> cartItems = service.getCartItems(session).stream()
				.filter(obj -> !(obj.getBookId().toString().equalsIgnoreCase(bookId.trim())))
				.collect(Collectors.toList());
		updateCart(session, cartItems);
	}

	private void addToCart(HttpServletRequest request, HttpSession session) {
		String bookId = request.getParameter("bookId");

		for (Book book : service.getBooks()) {
			if (book.getBookId().toString().equals(bookId.trim())) {
				service.addToCart(book, session);
				break;
			}

		}
		updateCart(session, service.getCartItems(session));
	}

	private void updateCart(HttpSession session, List<Book> cartItems) {
		session.setAttribute("cartItem", cartItems);
		double total = cartItems.stream().map(obj -> obj.getBookPrice()).mapToDouble(val -> val).sum();
		session.setAttribute("total", total);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String bookName = request.getParameter("bookName");
		String bookPrice = request.getParameter("bookPrice");
		String bookAuthor = request.getParameter("bookAuthor");
		String bookImgUrl = request.getParameter("bookUrl");
		String bookCategory = request.getParameter("bookCat");

		Book book = new Book(UUID.randomUUID(), bookName, bookCategory, Double.parseDouble(bookPrice), bookImgUrl,
				bookAuthor);

		boolean addBook = service.addBook(book);
		request.getSession().setAttribute("books", service.getBooks());
		request.getSession().setAttribute("category", "ALL");
		request.setAttribute("status", addBook ? "Book Added SuccessFully" : "Faild to Add Book");
		request.getRequestDispatcher("/home.jsp").forward(request, response);
		return;
	}

}
