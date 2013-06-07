package com.youlema.sales.service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Service;

import com.youlema.sales.meta.ATag;
import com.youlema.sales.meta.LineVo;
import com.youlema.sales.meta.OrderVo;
@Service
public class AdService {
	/**
	 * 读取首页业务公告
	 * @return
	 */
	public List<ATag> readNote(){
		ArrayList<ATag> tagList = new ArrayList<ATag>();
		tagList.add(new ATag("6月港澳散拼计划", "http://localhost:8080/news/content/?id="+1));
		tagList.add(new ATag("7月美加计划", "http://localhost:8080/news/content/?id="+2));
		tagList.add(new ATag("6月港澳散拼计划", "http://localhost:8080/news/content/?id="+3));
		tagList.add(new ATag("7月美加计划", "http://localhost:8080/news/content/?id="+4));
		tagList.add(new ATag("6月港澳散拼计划", "http://localhost:8080/news/content/?id="+5));
		tagList.add(new ATag("7月美加计划", "http://localhost:8080/news/content/?id="+6));
		return tagList;
	}
	/**
	 * 读取促销产品
	 */
	public List<ATag> readPromotion(){
		ArrayList<ATag> tagList = new ArrayList<ATag>();
		tagList.add(new ATag("石家庄-北京双飞六日", "http://localhost:8080/product/detail/?id="+1));
		tagList.add(new ATag("石家庄-北京双飞七日", "http://localhost:8080/product/detail/?id="+2));
		tagList.add(new ATag("石家庄-北京双飞八日", "http://localhost:8080/product/detail/?id="+3));
		tagList.add(new ATag("石家庄-北京双飞九日", "http://localhost:8080/product/detail/?id="+4));
		tagList.add(new ATag("石家庄-北京双飞拾日", "http://localhost:8080/product/detail/?id="+5));
		return tagList;
	}
	/**
	 * 最近上架线路
	 * @return
	 */
	public List<LineVo> readNewestLines(){
		ArrayList<LineVo> tagList = new ArrayList<LineVo>();
		for (int i = 0; i < 10; i++) {
			LineVo vo = new LineVo();
			vo.setId(i);
			vo.setName("【蜜月游】毛里求斯8天5晚伊甸园之旅");
			vo.setPrice(new BigDecimal("4889.00"));
			vo.setSendDate("6-18、6-23、6-30 ");
			vo.setStartPlace("上海");
			vo.setTraffic("飞机/飞机 ");
			tagList.add(vo);
        }
		return tagList;
	}
	/**
	 * 最近订单
	 * @return
	 */
	public List<OrderVo> readLastestOrders(){
		ArrayList<OrderVo> list = new ArrayList<OrderVo>();

		for (int i = 0; i < 5; i++) {
			OrderVo vo = new OrderVo();
			vo.setBeginDate("2013-05-07");
			vo.setContractStatus("客户已签订 ");
			vo.setOrderId(i);
			vo.setOrderNumber("YSL13042410560353");
			vo.setProductId(1000+i);
			vo.setProductName("【双城春色】石家庄-北京双飞六日游");
			vo.setStatus("已确认");
			vo.setTravellerCount("3大1小");
			list.add(vo);
		}
		return list;
	}
	
	public List<ATag> getSystemNoteList(){
	    ATag a1 = new ATag("欧洲10日游-公告", "#");
        ATag a2 = new ATag("欧洲9日游-公告", "#");
        ATag a3 = new ATag("欧洲8日游-公告", "#");
        ATag a4 = new ATag("欧洲7日游-公告", "#");
        return Arrays.asList(a1,a2,a3,a4);
	}
	
}
