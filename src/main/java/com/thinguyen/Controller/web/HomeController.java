package com.thinguyen.Controller.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.thinguyen.model.NewsModel;
import com.thinguyen.service.impl.NewsService;
@WebServlet("/trang_chu")
public class HomeController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    private NewsService newsService;
    
    public void init() {
    	newsService = new NewsService();
    }
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<NewsModel> list  = newsService.getAllNews();
		req.setAttribute("list", list);
		RequestDispatcher dispatcher = req.getRequestDispatcher("views/web/home.jsp");
		dispatcher.forward(req, resp);
	}
		
		
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
	
	
}
