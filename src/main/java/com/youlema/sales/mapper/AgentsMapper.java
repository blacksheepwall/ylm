package com.youlema.sales.mapper;

import com.youlema.sales.mapper.meta.Agents;
import com.youlema.sales.mapper.meta.AgentsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AgentsMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table AGENTS
     *
     * @mbggenerated Tue Aug 20 23:22:47 CST 2013
     */
    int countByExample(AgentsExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table AGENTS
     *
     * @mbggenerated Tue Aug 20 23:22:47 CST 2013
     */
    int deleteByExample(AgentsExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table AGENTS
     *
     * @mbggenerated Tue Aug 20 23:22:47 CST 2013
     */
    int deleteByPrimaryKey(Long agentsId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table AGENTS
     *
     * @mbggenerated Tue Aug 20 23:22:47 CST 2013
     */
    int insert(Agents record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table AGENTS
     *
     * @mbggenerated Tue Aug 20 23:22:47 CST 2013
     */
    int insertSelective(Agents record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table AGENTS
     *
     * @mbggenerated Tue Aug 20 23:22:47 CST 2013
     */
    List<Agents> selectByExample(AgentsExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table AGENTS
     *
     * @mbggenerated Tue Aug 20 23:22:47 CST 2013
     */
    Agents selectByPrimaryKey(Long agentsId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table AGENTS
     *
     * @mbggenerated Tue Aug 20 23:22:47 CST 2013
     */
    int updateByExampleSelective(@Param("record") Agents record, @Param("example") AgentsExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table AGENTS
     *
     * @mbggenerated Tue Aug 20 23:22:47 CST 2013
     */
    int updateByExample(@Param("record") Agents record, @Param("example") AgentsExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table AGENTS
     *
     * @mbggenerated Tue Aug 20 23:22:47 CST 2013
     */
    int updateByPrimaryKeySelective(Agents record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table AGENTS
     *
     * @mbggenerated Tue Aug 20 23:22:47 CST 2013
     */
    int updateByPrimaryKey(Agents record);
}