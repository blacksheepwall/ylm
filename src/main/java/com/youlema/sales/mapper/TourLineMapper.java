package com.youlema.sales.mapper;

import com.youlema.sales.mapper.meta.TourLine;
import com.youlema.sales.mapper.meta.TourLineExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TourLineMapper {

    /**
     * This method was generated by MyBatis Generator. This method corresponds to the database table Tour_Line
     * @mbggenerated  Wed Jun 19 20:58:41 CST 2013
     */
    int countByExample(TourLineExample example);

    /**
     * This method was generated by MyBatis Generator. This method corresponds to the database table Tour_Line
     * @mbggenerated  Wed Jun 19 20:58:41 CST 2013
     */
    int deleteByExample(TourLineExample example);

    /**
     * This method was generated by MyBatis Generator. This method corresponds to the database table Tour_Line
     * @mbggenerated  Wed Jun 19 20:58:41 CST 2013
     */
    int deleteByPrimaryKey(Long tourLineId);

    /**
     * This method was generated by MyBatis Generator. This method corresponds to the database table Tour_Line
     * @mbggenerated  Wed Jun 19 20:58:41 CST 2013
     */
    int insert(TourLine record);

    /**
     * This method was generated by MyBatis Generator. This method corresponds to the database table Tour_Line
     * @mbggenerated  Wed Jun 19 20:58:41 CST 2013
     */
    int insertSelective(TourLine record);

    /**
     * This method was generated by MyBatis Generator. This method corresponds to the database table Tour_Line
     * @mbggenerated  Wed Jun 19 20:58:41 CST 2013
     */
    List<TourLine> selectByExampleWithBLOBs(TourLineExample example);

    /**
     * This method was generated by MyBatis Generator. This method corresponds to the database table Tour_Line
     * @mbggenerated  Wed Jun 19 20:58:41 CST 2013
     */
    List<TourLine> selectByExample(TourLineExample example);

    /**
     * This method was generated by MyBatis Generator. This method corresponds to the database table Tour_Line
     * @mbggenerated  Wed Jun 19 20:58:41 CST 2013
     */
    TourLine selectByPrimaryKey(Long tourLineId);

    /**
     * This method was generated by MyBatis Generator. This method corresponds to the database table Tour_Line
     * @mbggenerated  Wed Jun 19 20:58:41 CST 2013
     */
    int updateByExampleSelective(@Param("record") TourLine record, @Param("example") TourLineExample example);

    /**
     * This method was generated by MyBatis Generator. This method corresponds to the database table Tour_Line
     * @mbggenerated  Wed Jun 19 20:58:41 CST 2013
     */
    int updateByExampleWithBLOBs(@Param("record") TourLine record, @Param("example") TourLineExample example);

    /**
     * This method was generated by MyBatis Generator. This method corresponds to the database table Tour_Line
     * @mbggenerated  Wed Jun 19 20:58:41 CST 2013
     */
    int updateByExample(@Param("record") TourLine record, @Param("example") TourLineExample example);

    /**
     * This method was generated by MyBatis Generator. This method corresponds to the database table Tour_Line
     * @mbggenerated  Wed Jun 19 20:58:41 CST 2013
     */
    int updateByPrimaryKeySelective(TourLine record);

    /**
     * This method was generated by MyBatis Generator. This method corresponds to the database table Tour_Line
     * @mbggenerated  Wed Jun 19 20:58:41 CST 2013
     */
    int updateByPrimaryKeyWithBLOBs(TourLine record);

    /**
     * This method was generated by MyBatis Generator. This method corresponds to the database table Tour_Line
     * @mbggenerated  Wed Jun 19 20:58:41 CST 2013
     */
    int updateByPrimaryKey(TourLine record);
}