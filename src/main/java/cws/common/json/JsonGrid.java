/**
 * Title:JsonGrid.java
 * Author:riozenc
 * Datetime:2017年4月13日 上午9:47:46
**/
package cws.common.json;

import com.riozenc.quicktool.mybatis.persistence.Page;

public class JsonGrid {
	private Integer total;
	private Integer pageCurrent;
	private Object data;

	public JsonGrid(Object list) {
		this.data = list;
	}

	public JsonGrid(Page<?> page, Object list) {
		this.total = page.getTotalRow();
		this.pageCurrent = page.getPageCurrent();
		this.data = list;
	}

	public JsonGrid(int totalRow, int pageCurrent, Object list) {
		this.total = totalRow;
		this.pageCurrent = pageCurrent;
		this.data = list;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Integer getPageCurrent() {
		return pageCurrent;
	}

	public void setPageCurrent(Integer pageCurrent) {
		this.pageCurrent = pageCurrent;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}

}
