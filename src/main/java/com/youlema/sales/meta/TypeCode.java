package com.youlema.sales.meta;

/**
 * 类型枚举
 * 
 * @author user
 * 
 */
public enum TypeCode {
    /**
     * 订单类型
     */
    ORDER_TYPE("ORDER_TYPE");

    private final String strValue;

    private TypeCode(String str) {
        this.strValue = str;
    }
    
    @Override
    public String toString() {
        return strValue;
    }
}
