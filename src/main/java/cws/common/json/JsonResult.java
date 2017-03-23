/**
 * Title:JsonResult.java
 * Author:riozenc
 * Datetime:2017年3月23日 下午2:12:07
**/
package cws.common.json;

public class JsonResult {
	public static final int SUCCESS = 200;
	public static final int ERROR = 300;

	private Integer statusCode;
	private Object message;

	public JsonResult(Integer statusCode, Object message) {
		this.statusCode = statusCode;
		this.message = message;
	}

	public Integer getStatusCode() {
		return statusCode;
	}

	public void setStatusCode(Integer statusCode) {
		this.statusCode = statusCode;
	}

	public Object getMessage() {
		return message;
	}

	public void setMessage(Object message) {
		this.message = message;
	}
}
