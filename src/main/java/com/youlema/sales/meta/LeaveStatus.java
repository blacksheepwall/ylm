package com.youlema.sales.meta;

public enum LeaveStatus {

    LEAVED {
        @Override
        public int intValue() {
            return 1;
        }

        @Override
        public String stringValue() {
            return "已出发";
        }
    },
    COMPLETE {
        @Override
        public int intValue() {
            return 2;
        }

        @Override
        public String stringValue() {
            return "已走完";
        }
    },
    IN_THERE_DAYS {
        @Override
        public int intValue() {
            return 3;
        }

        @Override
        public String stringValue() {
            return "三天内走完";
        }
    };

    public abstract int intValue();

    public abstract String stringValue();
    
    public static LeaveStatus fromIntValue(int intValue){
        LeaveStatus[] values = values();
        for (int i = 0; i < values.length; i++) {
            LeaveStatus status = values[i];
            if(status.intValue() == intValue){
                return status;
            }
        }
        return null;
    }

}
