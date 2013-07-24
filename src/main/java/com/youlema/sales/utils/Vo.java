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
                    Class<?> writeClass = writeMethod.getParameterTypes()[0];
                    Class<?> returnClass = method.getReturnType();
                    if (method != null) {
                        if (acceptWrite(writeClass, returnClass)) {
                            Object result = method.invoke(obj);
                            result = transformType(result, writeClass);
                            writeMethod.invoke(inst, result);
                            if (result != null) {
                                if (result instanceof Number) {
                                    if (((Number) result).intValue() == 0) {
                                        continue;
                                    }
                                }

                                break;
                            }
                        } else {
                            LOGGER.warn(
                                    "getter and setter's type is not match , getter={} , getter's type={},setter's type={}",
                                    new Object[] { entry.getValue(), returnClass, writeClass });
                        }
                    }
                }
            }
            return inst;
        } catch (Exception e) {
            throw new RuntimeException("Inject data error ", e);
        }
    }

    private static Object transformType(Object result, Class<?> writeClass) {
        if (writeClass == long.class) {
            if (result == null) {
                return 0L;
            }
            if (result.getClass().isAssignableFrom(Number.class)) {
                return ((Number) result).longValue();
            }
        }
        if (writeClass == int.class) {
            if (result == null) {
                return 0;
            }
            if (result.getClass().isAssignableFrom(Number.class)) {
                return ((Number) result).intValue();
            }
        }
        return result;
    }

    private static boolean acceptWrite(Class<?> writeClass, Class<?> returnClass) {
        if (writeClass == returnClass) {
            return true;
        }
        if (returnClass.isAssignableFrom(writeClass)) {
            return true;
        }
        if (writeClass == Long.class || writeClass == long.class) {
            return returnClass == Long.class || returnClass == long.class;
        }
        if (writeClass == Integer.class || writeClass == int.class) {
            return returnClass == int.class || returnClass == Integer.class;
        }
        return false;
    }

}
