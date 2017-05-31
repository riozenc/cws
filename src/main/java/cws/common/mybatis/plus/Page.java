/**
 * Title:Page.java
 * Author:riozenc
 * Datetime:2017年5月31日 下午4:23:48
**/
package cws.common.mybatis.plus;

public class Page<T> extends com.riozenc.quicktool.mybatis.persistence.Page<T> {

	@Override
	public int getPageCurrent() {
		// TODO Auto-generated method stub
		return super.getPageCurrent() + 1;
	}
}
