package com.youlema.sales.service;

public enum TrafficType {

    CAR {
        @Override
        public String getStringValue() {
            return "汽车";
        }
    },
    TRAIN {
        @Override
        public String getStringValue() {
            return "火车";
        }
    },
    SHIP {
        @Override
        public String getStringValue() {
            return "轮船";
        }
    },
    PLANE {
        @Override
        public String getStringValue() {
            return "飞机";
        }
    };

    public abstract String getStringValue();

}
