package com.syscho.book.vo;

import java.io.Serializable;
import java.util.UUID;

public class Book implements Serializable  {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 5897050476593209395L;
	private UUID bookId;
	private String bookName;
	private String bookCategory;
	private double bookPrice;
	private String bookImgUrl;
	private String authorName;

	
	
	public Book(UUID bookId, String bookName, String bookCategory, double bookPrice, String bookImgUrl,
			String authorName) {
		super();
		this.bookId = bookId;
		this.bookName = bookName;
		this.bookCategory = bookCategory;
		this.bookPrice = bookPrice;
		this.bookImgUrl = bookImgUrl;
		this.authorName = authorName;
	}

	public UUID getBookId() {
		return bookId;
	}

	public void setBookId(UUID bookId) {
		this.bookId = bookId;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getBookCategory() {
		return bookCategory;
	}

	public void setBookCategory(String bookCategory) {
		this.bookCategory = bookCategory;
	}

	public double getBookPrice() {
		return bookPrice;
	}

	public void setBookPrice(double bookPrice) {
		this.bookPrice = bookPrice;
	}

	public String getBookImgUrl() {
		return bookImgUrl;
	}

	public void setBookImgUrl(String bookImgUrl) {
		this.bookImgUrl = bookImgUrl;
	}

	public String getAuthorName() {
		return authorName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}

}
