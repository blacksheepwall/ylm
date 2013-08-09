package com.youlema.sales.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.youlema.sales.mapper.ProductTypeMapper;
import com.youlema.sales.mapper.meta.ProductType;
import com.youlema.sales.mapper.meta.ProductTypeExample;
import com.youlema.sales.mapper.meta.ProductTypeExample.Criteria;
/**
 * @author user
 *
 */
@Service
public class ProductTypeService {
    @Resource
    private ProductTypeMapper productTypeMapper;
    /**
     * 获取类型列表
     * @return
     */
    public List<ProductType> listProductTypes(){
        ProductTypeExample example = new ProductTypeExample();
        Criteria criteria = example.createCriteria();
        criteria.andParentIdIsNotNull();
        List<ProductType> list = productTypeMapper.selectByExample(example);
        return list;
    }
    
}
