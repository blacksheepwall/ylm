package com.youlema.sales.service;

public enum DateCount {
    THREE {
        @Override
        public String getStringValue() {
            return "3天";
        }
    },
    FOUR {
        @Override
        public String getStringValue() {
            return "4天";
        }
    },
    FIVE {
        @Override
        public String getStringValue() {

            return "5天";
        }
    },
    FIVE_ABOVE {
        @Override
        public String getStringValue() {
            return "5天以上";
        }
    };

    public abstract String getStringValue();

}
