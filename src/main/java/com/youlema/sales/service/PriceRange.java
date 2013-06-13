package com.youlema.sales.service;

public enum PriceRange {
    _800_1500 {
        @Override
        public String getStringValue() {
            return "800-1500";
        }
    },
    _1500_3000 {
        @Override
        public String getStringValue() {
            return "1500-3000";
        }
    },
    _3000_ABOVE {
        @Override
        public String getStringValue() {
            return "3000以上";
        }
    };

    public abstract String getStringValue();
}
