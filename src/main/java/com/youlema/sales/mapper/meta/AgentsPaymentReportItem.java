package com.youlema.sales.mapper.meta;

import java.util.Date;

import org.apache.commons.lang.time.DateUtils;

public class AgentsPaymentReportItem extends AgentsPaymentFact {
    public int getPaymentDays() {
        Date deadline = getGmtDeadline();
        if (deadline == null) {
            return 0;
        }
        long time = deadline.getTime() - System.currentTimeMillis();
        if (time <= 0) {
            return 0;
        }
        return (int) (time / DateUtils.MILLIS_PER_DAY) + 1;
    }

    public void setPaymentDays() {

    }
}
