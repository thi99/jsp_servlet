package com.thinguyen.service.impl;

import java.util.List;

import com.thinguyen.Dao.NewsDao;
import com.thinguyen.model.NewsModel;
import com.thinguyen.service.INewsService;

public class NewsService implements INewsService{

	private NewsDao dao ;
	
	public NewsService() {
		this.dao = new NewsDao();
	}
	
	@Override
	public List<NewsModel> getAllNews() {
		return dao.selectAllNews();
	}

}
