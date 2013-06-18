package com.youlema.sales.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONObject;

public class JsonUtils {

    public static void writeToJson(Object object, HttpServletResponse response) throws IOException {
        response.setContentType("text/html; charset=utf-8");
        String jsonString = JSONObject.toJSONString(new OkResponse(object));
        PrintWriter writer = response.getWriter();
        try {
            writer.write(jsonString);
        } finally {
            writer.close();
        }
    }

    public static void writeToErrJson(Object object, String errMessage, HttpServletResponse response)
            throws IOException {
        response.setContentType("text/html; charset=utf-8");
        String jsonString = JSONObject.toJSONString(new ErrResponse(object, errMessage));
        PrintWriter writer = response.getWriter();
        try {
            writer.write(jsonString);
        } finally {
            writer.close();
        }
    }

    static class SimpleResponse {
        private Object data;

        private String desc;

        private int status;

        SimpleResponse(Object object) {
            this.data = object;
        }

        public Object getData() {
            return data;
        }

        void setData(Object data) {
            this.data = data;
        }

        public String getDesc() {
            return desc;
        }

        void setDesc(String desc) {
            this.desc = desc;
        }

        public int getStatus() {
            return status;
        }

        void setStatus(int status) {
            this.status = status;
        }
    }

    public static class ErrResponse extends SimpleResponse {
        ErrResponse(Object object, String errorMessage) {
            super(object);
            setDesc(errorMessage);
            setStatus(1);
        }
    }

    public static class OkResponse extends SimpleResponse {

        OkResponse(Object object) {
            super(object);
            setDesc("OK");
            setStatus(0);
        }

    }

}
