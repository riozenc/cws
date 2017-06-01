/**
 * Title:DefaultAction.java
 * Author:riozenc
 * Datetime:2017年5月31日 下午3:49:01
**/
package cws.web.action;

import java.beans.PropertyEditorSupport;
import java.util.Date;

import org.apache.commons.lang3.StringEscapeUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import com.riozenc.quicktool.common.util.date.DateUtil;
import com.riozenc.quicktool.springmvc.webapp.action.BaseAction;

public class DefaultAction extends BaseAction {

	/**
	 * 初始化数据绑定 1. 将所有传递进来的String进行HTML编码，防止XSS攻击 2. 将字段中Date类型转换为String类型
	 */
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		System.out.println("============应用到所有@RequestMapping注解方法，在其执行之前初始化数据绑定器");
		
		
		
		binder.registerCustomEditor(int.class, new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) {
				setValue((text == null || "".equals(text.trim())) ? null : StringEscapeUtils.escapeHtml4(text.trim()));
			}

			@Override
			public String getAsText() {
				Object value = getValue();
				return value != null ? value.toString() : "";
			}
		});

		// String类型转换，将所有传递进来的String进行HTML编码，防止XSS攻击
		binder.registerCustomEditor(String.class, new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) {
				setValue((text == null || "".equals(text.trim())) ? null : StringEscapeUtils.escapeHtml4(text.trim()));
			}

			@Override
			public String getAsText() {
				Object value = getValue();
				return value != null ? value.toString() : "";
			}
		});
		// Date 类型转换
		binder.registerCustomEditor(Date.class, new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) {
				if (text.length() == 10) {
					setValue(DateUtil.parseDate(text));
				} else {
					setValue(DateUtil.parseDateTime(text));
				}
			}

		});
	}
}
