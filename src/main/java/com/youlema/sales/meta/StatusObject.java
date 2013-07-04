package com.youlema.sales.meta;

public class StatusObject<T> {

    private final StatusCode code;

    private final T key;

    private final String value;

    public StatusObject(StatusCode code, T key, String value) {
        this.code = code;
        this.key = key;
        this.value = value;
    }

    public StatusCode getCode() {
        return code;
    }

    public T getKey() {
        return key;
    }

    public String getValue() {
        return value;
    }
    
}
