package com.youlema.sales.meta;
/**
 * 状态枚举
 * @author user
 *
 */
public enum StatusCode {
    /**
     * 订单状态
     */
    ORDER_STATUS("ORDER_STATUS");
    

    private final String strValue;

    private StatusCode(String str) {
        this.strValue = str;
    }
    
    @Override
    public String toString() {
        return strValue;
    }
    
}
