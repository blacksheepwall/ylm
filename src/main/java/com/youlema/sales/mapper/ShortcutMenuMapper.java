package com.youlema.sales.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.youlema.sales.mapper.meta.ShortcutMenu;
import com.youlema.sales.mapper.meta.ShortcutMenuExample;
/**
 * 快捷菜单Mapper
 * @author zhushijun
 *
 */
public interface ShortcutMenuMapper {

    /**
     * This method was generated by MyBatis Generator. This method corresponds to the database table Shortcut_Menu
     * @mbggenerated  Mon Jun 17 23:46:53 CST 2013
     */
    int countByExample(ShortcutMenuExample example);

    /**
     * This method was generated by MyBatis Generator. This method corresponds to the database table Shortcut_Menu
     * @mbggenerated  Mon Jun 17 23:46:53 CST 2013
     */
    int deleteByExample(ShortcutMenuExample example);

    /**
     * This method was generated by MyBatis Generator. This method corresponds to the database table Shortcut_Menu
     * @mbggenerated  Mon Jun 17 23:46:53 CST 2013
     */
    int deleteByPrimaryKey(Long shortcutMenuId);

    /**
     * This method was generated by MyBatis Generator. This method corresponds to the database table Shortcut_Menu
     * @mbggenerated  Mon Jun 17 23:46:53 CST 2013
     */
    int insert(ShortcutMenu record);

    /**
     * This method was generated by MyBatis Generator. This method corresponds to the database table Shortcut_Menu
     * @mbggenerated  Mon Jun 17 23:46:53 CST 2013
     */
    int insertSelective(ShortcutMenu record);

    /**
     * This method was generated by MyBatis Generator. This method corresponds to the database table Shortcut_Menu
     * @mbggenerated  Mon Jun 17 23:46:53 CST 2013
     */
    List<ShortcutMenu> selectByExample(ShortcutMenuExample example);

    /**
     * This method was generated by MyBatis Generator. This method corresponds to the database table Shortcut_Menu
     * @mbggenerated  Mon Jun 17 23:46:53 CST 2013
     */
    ShortcutMenu selectByPrimaryKey(Long shortcutMenuId);

    /**
     * This method was generated by MyBatis Generator. This method corresponds to the database table Shortcut_Menu
     * @mbggenerated  Mon Jun 17 23:46:53 CST 2013
     */
    int updateByExampleSelective(@Param("record") ShortcutMenu record, @Param("example") ShortcutMenuExample example);

    /**
     * This method was generated by MyBatis Generator. This method corresponds to the database table Shortcut_Menu
     * @mbggenerated  Mon Jun 17 23:46:53 CST 2013
     */
    int updateByExample(@Param("record") ShortcutMenu record, @Param("example") ShortcutMenuExample example);

    /**
     * This method was generated by MyBatis Generator. This method corresponds to the database table Shortcut_Menu
     * @mbggenerated  Mon Jun 17 23:46:53 CST 2013
     */
    int updateByPrimaryKeySelective(ShortcutMenu record);

    /**
     * This method was generated by MyBatis Generator. This method corresponds to the database table Shortcut_Menu
     * @mbggenerated  Mon Jun 17 23:46:53 CST 2013
     */
    int updateByPrimaryKey(ShortcutMenu record);

}
