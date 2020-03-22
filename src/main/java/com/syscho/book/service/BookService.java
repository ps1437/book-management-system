package com.syscho.book.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.syscho.book.dao.BookDAO;
import com.syscho.book.vo.Book;

public class BookService {

	BookDAO dao = new BookDAO();

	public List<Book> getBooks() {

		return dao.getBooks();
	}

	public boolean addBook(Book book) {

		return dao.addBook(book);
	}

	public boolean addToCart(Book book, HttpSession session) {

		List<Book> cartList = null;
		Object object = session.getAttribute("cartItem");
		if (null != object) {
			cartList = (List<Book>) object;

		} else {
			cartList = new ArrayList<>();
		}
		cartList.add(book);
		session.setAttribute("cartItem", cartList);
		return true;
	}

	public List<Book> getCartItems(HttpSession session) {

		return (List<Book>) session.getAttribute("cartItem");
	}

}
