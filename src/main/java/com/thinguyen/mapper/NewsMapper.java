package com.thinguyen.mapper;

import java.sql.ResultSet;

import com.thinguyen.model.NewsModel;

public class NewsMapper implements RowMapper<NewsModel>{

	@Override
	public NewsModel mapRow(ResultSet resultSet) {
		try {
			NewsModel model = new NewsModel();
			model.setId(resultSet.getLong("ID"));
			if (resultSet.getTimestamp("createdate") != null) {
				model.setCreateDate(resultSet.getTimestamp("createdate"));
			}
			if (resultSet.getTimestamp("modifieddate") != null) {
				model.setModifiedDate(resultSet.getTimestamp("modifieddate"));
			}
			model.setCreateBy(resultSet.getLong("createdby"));
			model.setModifiedBy(resultSet.getLong("modifiedby"));
			model.setTitle(resultSet.getString("TITLE"));
			model.setThumbnail(resultSet.getString("THUMBNAIL"));
			model.setShortDescription(resultSet.getString("SHORTDESCRIPTION"));
			model.setContent(resultSet.getString("CONTENT"));
			model.setCategoryId(resultSet.getLong("CATEGORYID"));
			return model;
		} catch (Exception e) {
			return null;
		}
	}
}
