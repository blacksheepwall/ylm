package com.youlema.sales.service;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.youlema.sales.mapper.AgentsFavoritesMapper;
import com.youlema.sales.mapper.TourLineMapper;
import com.youlema.sales.mapper.meta.AgentsFavorites;
import com.youlema.sales.mapper.meta.TourLine;
import com.youlema.sales.meta.BusinessType;

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

    private static final org.slf4j.Logger LOGGER = org.slf4j.LoggerFactory.getLogger(FavoriteService.class);

    /**
     * 获取收藏列表
     * 
     * @param accountId
     * @return
     */
    public List<AgentsFavorites> getFavoriteList(long accountId) {
        List<AgentsFavorites> list = favoritesMapper.getFavoriteList(accountId);
        for (Iterator<AgentsFavorites> iterator = list.iterator(); iterator.hasNext();) {
            AgentsFavorites agentsFavorites = iterator.next();
            Long businessId = agentsFavorites.getBusinessId();
            BusinessType businessType = agentsFavorites.getBusinessTypeObject();
            if (businessType == BusinessType.LINE) {
                TourLine line = tourLineMapper.selectByPrimaryKey(businessId);
                if (line == null) {
                    iterator.remove();
                } else {
                    agentsFavorites.setTourLine(line);
                }
            } else {
                // TODO 产品表暂时没有
            }
        }
        return list;
    }

    /**
     * 添加收藏
     * 
     * @param userId
     * @param type
     * @param id
     * @return
     */
    public boolean addFavorite(long userId, BusinessType type, long id) {
        if (type == BusinessType.LINE) {
            TourLine line = tourLineMapper.selectByPrimaryKey(id);
            if (line == null) {
                LOGGER.warn("addFavorite , 线路未找到 , ID={}", id);
                return false;
            }
            AgentsFavorites favorites = new AgentsFavorites();
            favorites.setBusinessType(type.name());
            favorites.setAgentsAccountId(userId);
            favorites.setBusinessId(line.getTourLineId());
            favorites.setGmtOfFavorites(new Date());
            return this.favoritesMapper.insert(favorites) > 0;
        }
        return false;
    }

    /**
     * 取消收藏
     * 
     * @param id
     */
    public void removeFavorite(long id) {
        favoritesMapper.deleteByPrimaryKey(id);
    }

}
