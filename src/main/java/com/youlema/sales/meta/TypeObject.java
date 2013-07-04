package com.youlema.sales.meta;

public class TypeObject<T> {
    private final TypeCode type;

    private final T key;

    private final String value;

    public TypeObject(TypeCode type, T key, String value) {
        this.type = type;
        this.key = key;
        this.value = value;
    }

    public TypeCode getCode() {
        return type;
    }

    public T getKey() {
        return key;
    }

    public String getValue() {
        return value;
    }
}
