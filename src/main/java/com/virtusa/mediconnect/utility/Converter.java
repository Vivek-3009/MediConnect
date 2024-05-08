package com.virtusa.mediconnect.utility;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Converter {

	public static Date convertStringToDate(String dateString, String dateFormat) throws ParseException {
		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat(dateFormat);
		try {
			date = formatter.parse(dateString);
		} catch (ParseException e) {
			throw e;
		}
		return date;
	}
	public static java.sql.Timestamp convertUtilDateToSqlTimestamp(java.util.Date utilDate){
		java.sql.Timestamp sqlDate = new java.sql.Timestamp(utilDate.getTime());
		return sqlDate;
	}
	
//	public static java.util.Date convertSqlTimeStampToUtilDate(java.sql.Date sqlDate){
//		java.util.Date utilDate = new java.sql.TimeStamp(sqlDate.getTime());
//		return utilDate;
//	}
	
	
}
