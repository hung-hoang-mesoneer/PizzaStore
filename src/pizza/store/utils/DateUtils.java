package pizza.store.utils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtils {

	public static String convertDate(Date date) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd hh:mm");  
		return dateFormat.format(date);
	}
}
