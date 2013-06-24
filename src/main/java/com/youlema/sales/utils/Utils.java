package com.youlema.sales.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.lang3.StringUtils;

public class Utils {
	public static Date parseDate(String dateStr, String pattern) {
		if (StringUtils.isBlank(dateStr) || StringUtils.isBlank(pattern)) {
			return null;
		}
		SimpleDateFormat format = new SimpleDateFormat(pattern);
		try {
			return format.parse(dateStr);
		} catch (ParseException e) {
			return null;
		}
	}
}
