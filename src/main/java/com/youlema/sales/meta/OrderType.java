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
		int intValue() {
			return 1;
		}
	};

	abstract int intValue();

	public static OrderType fromIntValue(int intValue) {
		OrderType[] values = values();
		for (int i = 0; i < values.length; i++) {
			OrderType orderType = values[i];
			if (intValue == orderType.intValue()) {
				return orderType;
			}
		}
		return null;
	}
}
