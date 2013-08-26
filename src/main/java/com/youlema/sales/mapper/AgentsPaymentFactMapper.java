package com.youlema.sales.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.youlema.sales.mapper.meta.AgentsPaymentFact;
import com.youlema.sales.mapper.meta.AgentsPaymentFactExample;
import com.youlema.sales.mapper.meta.AgentsPaymentReportMeta;

public interface AgentsPaymentFactMapper {

    /**
     * This method was generated by MyBatis Generator. This method corresponds
     * to the database table AGENTS_PAYMENT_FACT
     * 
     * @mbggenerated Sun Aug 25 22:40:06 CST 2013
     */
    int countByExample(AgentsPaymentFactExample example);

    /**
     * This method was generated by MyBatis Generator. This method corresponds
     * to the database table AGENTS_PAYMENT_FACT
     * 
     * @mbggenerated Sun Aug 25 22:40:06 CST 2013
     */
    int deleteByExample(AgentsPaymentFactExample example);

    /**
     * This method was generated by MyBatis Generator. This method corresponds
     * to the database table AGENTS_PAYMENT_FACT
     * 
     * @mbggenerated Sun Aug 25 22:40:06 CST 2013
     */
    int deleteByPrimaryKey(Long agentsPaymentFactId);

    /**
     * This method was generated by MyBatis Generator. This method corresponds
     * to the database table AGENTS_PAYMENT_FACT
     * 
     * @mbggenerated Sun Aug 25 22:40:06 CST 2013
     */
    int insert(AgentsPaymentFact record);

    /**
     * This method was generated by MyBatis Generator. This method corresponds
     * to the database table AGENTS_PAYMENT_FACT
     * 
     * @mbggenerated Sun Aug 25 22:40:06 CST 2013
     */
    int insertSelective(AgentsPaymentFact record);

    /**
     * This method was generated by MyBatis Generator. This method corresponds
     * to the database table AGENTS_PAYMENT_FACT
     * 
     * @mbggenerated Sun Aug 25 22:40:06 CST 2013
     */
    List<AgentsPaymentFact> selectByExample(AgentsPaymentFactExample example);

    /**
     * This method was generated by MyBatis Generator. This method corresponds
     * to the database table AGENTS_PAYMENT_FACT
     * 
     * @mbggenerated Sun Aug 25 22:40:06 CST 2013
     */
    AgentsPaymentFact selectByPrimaryKey(Long agentsPaymentFactId);

    /**
     * This method was generated by MyBatis Generator. This method corresponds
     * to the database table AGENTS_PAYMENT_FACT
     * 
     * @mbggenerated Sun Aug 25 22:40:06 CST 2013
     */
    int updateByExampleSelective(@Param("record") AgentsPaymentFact record,
            @Param("example") AgentsPaymentFactExample example);

    /**
     * This method was generated by MyBatis Generator. This method corresponds
     * to the database table AGENTS_PAYMENT_FACT
     * 
     * @mbggenerated Sun Aug 25 22:40:06 CST 2013
     */
    int updateByExample(@Param("record") AgentsPaymentFact record, @Param("example") AgentsPaymentFactExample example);

    /**
     * This method was generated by MyBatis Generator. This method corresponds
     * to the database table AGENTS_PAYMENT_FACT
     * 
     * @mbggenerated Sun Aug 25 22:40:06 CST 2013
     */
    int updateByPrimaryKeySelective(AgentsPaymentFact record);

    /**
     * This method was generated by MyBatis Generator. This method corresponds
     * to the database table AGENTS_PAYMENT_FACT
     * 
     * @mbggenerated Sun Aug 25 22:40:06 CST 2013
     */
    int updateByPrimaryKey(AgentsPaymentFact record);

    List<AgentsPaymentReportMeta> queryMonthReport(@Param("agentsId") long agentsId, @Param("year") int year,
            @Param("month") int month);

    List<AgentsPaymentReportMeta> queryYearReport(@Param("agentsId") long agentsId, @Param("year") int year);
}