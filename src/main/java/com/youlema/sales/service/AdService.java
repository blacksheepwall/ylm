package com.youlema.sales.service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.youlema.sales.meta.ATag;
import com.youlema.sales.meta.LineVo;
import com.youlema.sales.meta.OrderVo;
@Service
public class AdService {
	/**
	 * ��ȡ��ҳҵ�񹫸�
	 * @return
	 */
	public List<ATag> readNote(){
		ArrayList<ATag> tagList = new ArrayList<ATag>();
		tagList.add(new ATag("6�¸۰�ɢƴ�ƻ�", "http://localhost:8080/main/news-detail.do?id="+1));
		tagList.add(new ATag("7�����Ӽƻ�", "http://localhost:8080/main/news-detail.do?id="+2));
		tagList.add(new ATag("6�¸۰�ɢƴ�ƻ�", "http://localhost:8080/main/news-detail.do?id="+3));
		tagList.add(new ATag("7�����Ӽƻ�", "http://localhost:8080/main/news-detail.do?id="+4));
		tagList.add(new ATag("6�¸۰�ɢƴ�ƻ�", "http://localhost:8080/main/news-detail.do?id="+5));
		tagList.add(new ATag("7�����Ӽƻ�", "http://localhost:8080/main/news-detail.do?id="+6));
		return tagList;
	}
	/**
	 * ��ȡ������Ʒ
	 */
	public List<ATag> readPromotion(){
		ArrayList<ATag> tagList = new ArrayList<ATag>();
		tagList.add(new ATag("ʯ��ׯ-����˫������", "http://localhost:8080/main/news-detail.do?id="+1));
		tagList.add(new ATag("ʯ��ׯ-����˫������", "http://localhost:8080/main/news-detail.do?id="+2));
		tagList.add(new ATag("ʯ��ׯ-����˫�ɰ���", "http://localhost:8080/main/news-detail.do?id="+3));
		tagList.add(new ATag("ʯ��ׯ-����˫�ɾ���", "http://localhost:8080/main/news-detail.do?id="+4));
		tagList.add(new ATag("ʯ��ׯ-����˫��ʰ��", "http://localhost:8080/main/news-detail.do?id="+5));
		return tagList;
	}
	/**
	 * ����ϼ���·
	 * @return
	 */
	public List<LineVo> readNewestLines(){
		ArrayList<LineVo> tagList = new ArrayList<LineVo>();
		for (int i = 0; i < 10; i++) {
			LineVo vo = new LineVo();
			vo.setId(i);
			vo.setName("�������Ρ�ë����˹8��5������԰֮��");
			vo.setPrice(new BigDecimal("4889.00"));
			vo.setSendDate("6-18��6-23��6-30 ");
			vo.setStartPlace("�Ϻ�");
			vo.setTraffic("�ɻ�/�ɻ� ");
			tagList.add(vo);
        }
		return tagList;
	}
	/**
	 * �������
	 * @return
	 */
	public List<OrderVo> readLastestOrders(){
		ArrayList<OrderVo> list = new ArrayList<OrderVo>();

		for (int i = 0; i < 5; i++) {
			OrderVo vo = new OrderVo();
			vo.setBeginDate("2013-05-07");
			vo.setContractStatus("�ͻ���ǩ�� ");
			vo.setOrderId(i);
			vo.setOrderNumber("YSL13042410560353");
			vo.setProductId(1000+i);
			vo.setProductName("��˫�Ǵ�ɫ��ʯ��ׯ-����˫��������");
			vo.setStatus("��ȷ��");
			vo.setTravellerCount("3��1С");
			list.add(vo);
		}
		return list;
	}
}
