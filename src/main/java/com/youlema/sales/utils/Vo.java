package com.youlema.sales.utils;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class Vo<T> {

    private Class<T> baseClass;

    private static final org.slf4j.Logger LOGGER = org.slf4j.LoggerFactory.getLogger(Vo.class);

    private Map<Method, String> writeMethodMap = new HashMap<Method, String>();

    public Vo(Class<T> baseClass) {
        this.baseClass = baseClass;
        Field[] fields = baseClass.getDeclaredFields();
        for (Field field : fields) {
            VoField voField = field.getAnnotation(VoField.class);
            if (voField != null) {
                String getMethodName = voField.value();
                String name = field.getName();
                String setterName = "set" + Character.toUpperCase(name.charAt(0)) + name.substring(1);
                try {
                    Method writeMethod = baseClass.getDeclaredMethod(setterName, field.getType());
                    writeMethodMap.put(writeMethod, getMethodName);
                } catch (Exception e) {
                    LOGGER.warn("field name = {}'s setter is not found,setter name is {}", new Object[] { name,
                            setterName }, e);
                }
            }
        }
    }

    public T inject(Object... objects) {
        try {
            T inst = baseClass.newInstance();

            Set<Entry<Method, String>> entrySet = writeMethodMap.entrySet();
            for (Entry<Method, String> entry : entrySet) {
                for (Object obj : objects) {
                    Method method;
                    try {
                        method = obj.getClass().getDeclaredMethod(entry.getValue());
                    } catch (NoSuchMethodException e) {
                        continue;
                    }
                    Method writeMethod = entry.getKey();
                    if (method != null && method.getReturnType().isAssignableFrom(writeMethod.getParameterTypes()[0])) {
                        Object result = method.invoke(obj);
                        writeMethod.invoke(inst, result);
                    }
                }
            }
            return inst;
        } catch (Exception e) {
            throw new RuntimeException("Inject data error ", e);
        }
    }

}
