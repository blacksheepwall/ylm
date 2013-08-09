package com.youlema.sales.testws;

import java.util.List;

import javax.annotation.Resource;

import junit.framework.TestCase;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import com.youlema.sales.mapper.ProductTypeMapper;
import com.youlema.sales.mapper.meta.ProductType;
import com.youlema.sales.mapper.meta.ProductTypeExample;
import com.youlema.sales.mapper.meta.ProductTypeExample.Criteria;
@ContextConfiguration(locations="file:src/test/resources/applicationContext-db.xml")
@RunWith(SpringJUnit4ClassRunner.class)
@TransactionConfiguration(transactionManager = "txManager")  
@Transactional
public class UserMapperTest extends TestCase{
	@Resource
	ProductTypeMapper productTypeMapper;
	
	@Test
	public void test() {
		assertNotNull(productTypeMapper);
	}
	@Test
	public void testInsert() throws Exception {
	    ProductTypeExample example  = new ProductTypeExample();
	    Criteria criteria = example.createCriteria();
	    criteria.andParentIdIsNotNull();
	    List<ProductType> selectByExample = productTypeMapper.selectByExample(example);
	    System.out.println(selectByExample.size());
	    for (ProductType productType : selectByExample) {
            System.out.println(productType.getProductTypeName());
        }
	}

}
