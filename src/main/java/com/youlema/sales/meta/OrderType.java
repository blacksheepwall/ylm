package com.youlema.sales.meta;

/**
 * 订单类型
 * 
 * @author user
 * 
 */
public enum OrderType {
	NONE {
		@Override
		public String stringValue() {
			return "1";
		}

        @Override
        public String showValue() {
            return "测试订单类型";
        }
	};

	public abstract String stringValue();
	
	public abstract String showValue();

	public static OrderType fromStringValue(String stringValue) {
		OrderType[] values = values();
		for (int i = 0; i < values.length; i++) {
			OrderType orderType = values[i];
			if (orderType.stringValue().equals(stringValue)) {
				return orderType;
			}
		}
		return null;
	}
}
