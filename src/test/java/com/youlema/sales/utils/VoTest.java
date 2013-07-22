package com.youlema.sales.utils;

import static org.junit.Assert.*;

import java.math.BigDecimal;
import java.util.Date;

import org.junit.Test;

public class VoTest {

    @Test
    public void test() {
        
        TestBean1 bean1 = new TestBean1();
        bean1.setDate(new Date());
        bean1.setDecimal(BigDecimal.TEN);
        bean1.setInt1(101);
        bean1.setInt2(Integer.valueOf(102));
        bean1.setLong1(103L);
        bean1.setLong2(Long.valueOf(104));
        
        Vo<TestBean2> vo = new Vo<VoTest.TestBean2>(TestBean2.class);
        TestBean2 bean2 = vo.inject(bean1);
        assertEquals(bean1.date, bean2.date);
        assertEquals(bean1.decimal, bean2.decimal);
        assertEquals(bean1.int1, bean2.int2.intValue());
        assertEquals(bean1.int2.intValue(), bean2.int1);
        assertEquals(bean1.long1, bean2.long2.longValue());
        assertEquals(bean1.long2.longValue(), bean2.long1);
        
        
    }

    public static class TestBean2 {
        @VoField("getDate")
        private Date date;
        @VoField("getInt2")
        private int int1;
        @VoField("getLong2")
        private long long1;
        @VoField("getLong1")
        private Long long2;
        @VoField("getInt1")
        private Integer int2;
        @VoField("getDecimal")
        private BigDecimal decimal;

        public Date getDate() {
            return date;
        }

        public void setDate(Date date) {
            this.date = date;
        }

        public int getInt1() {
            return int1;
        }

        public void setInt1(int int1) {
            this.int1 = int1;
        }

        public long getLong1() {
            return long1;
        }

        public void setLong1(long long1) {
            this.long1 = long1;
        }

        public Long getLong2() {
            return long2;
        }

        public void setLong2(Long long2) {
            this.long2 = long2;
        }

        public Integer getInt2() {
            return int2;
        }

        public void setInt2(Integer int2) {
            this.int2 = int2;
        }

        public BigDecimal getDecimal() {
            return decimal;
        }

        public void setDecimal(BigDecimal decimal) {
            this.decimal = decimal;
        }
    }

    public static class TestBean1 {
        private Date date;
        private int int1;
        private long long1;
        private Long long2;
        private Integer int2;
        private BigDecimal decimal;

        public Date getDate() {
            return date;
        }

        public void setDate(Date date) {
            this.date = date;
        }

        public int getInt1() {
            return int1;
        }

        public void setInt1(int int1) {
            this.int1 = int1;
        }

        public long getLong1() {
            return long1;
        }

        public void setLong1(long long1) {
            this.long1 = long1;
        }

        public Long getLong2() {
            return long2;
        }

        public void setLong2(Long long2) {
            this.long2 = long2;
        }

        public Integer getInt2() {
            return int2;
        }

        public void setInt2(Integer int2) {
            this.int2 = int2;
        }

        public BigDecimal getDecimal() {
            return decimal;
        }

        public void setDecimal(BigDecimal decimal) {
            this.decimal = decimal;
        }
    }

}
