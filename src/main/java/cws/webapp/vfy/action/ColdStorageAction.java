/**
 * @Project:cws
 * @Title:ColdStorageAction.java
 * @Author:Riozenc
 * @Datetime:2017年4月13日 下午10:21:42
 * 
 */
package cws.webapp.vfy.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.riozenc.quicktool.common.util.json.JSONUtil;

import cws.common.json.JsonResult;
import cws.webapp.vfy.domain.ColdStorageDomain;
import cws.webapp.vfy.service.IColdStorageService;

/**
 * 冷库
 * @author rioze
 *
 */
@ControllerAdvice
@RequestMapping("coldStorage")
public class ColdStorageAction {
	@Autowired
	@Qualifier("coldStorageServiceImpl")
	private IColdStorageService coldStorageService;

	@ResponseBody
	@RequestMapping(params = "type=update")
	public String update(ColdStorageDomain coldStorageDomain) {
		int i = coldStorageService.update(coldStorageDomain);

		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}
}
