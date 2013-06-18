package com.youlema.sales.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.youlema.sales.mapper.AgentsFavoritesMapper;
import com.youlema.sales.mapper.TourLineMapper;
import com.youlema.sales.mapper.meta.AgentsFavorites;
import com.youlema.sales.mapper.meta.TourLine;

/**
 * 收藏Service
 * 
 * @author user
 * 
 */
@Service
public class FavoriteService {
	@Resource
	private AgentsFavoritesMapper favoritesMapper;
	@Resource
	private TourLineMapper tourLineMapper;
	/**
	 * 获取收藏列表
	 * @param accountId
	 * @return
	 */
	public List<AgentsFavorites> getFavoriteList(long accountId) {
		List<AgentsFavorites> list = favoritesMapper.getFavoriteList(accountId);
		//TODO 查询代码需要调整，避免循环查询
		for (AgentsFavorites agentsFavorites : list) {
			Long businessId = agentsFavorites.getBusinessId();
			// TODO businessId和主键关系未定
			TourLine line = tourLineMapper.selectByPrimaryKey(businessId);
			agentsFavorites.setTourLine(line);
		}
		return list;
	}
	/**
	 * 取消收藏
	 * @param id
	 */
	public void removeFavorite(long id){
		favoritesMapper.deleteByPrimaryKey(id);
	}
	
	
}
