/**
 * @Project:cws
 * @Title:InsulationCanAction.java
 * @Author:Riozenc
 * @Datetime:2017年5月4日 下午11:40:26
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
import cws.webapp.vfy.domain.InsulationCanDomain;
import cws.webapp.vfy.service.IInsulationCanService;

/**
 * 保温箱
 * 
 * @author rioze
 *
 */
@ControllerAdvice
@RequestMapping("insulationCan")
public class InsulationCanAction {

	@Autowired
	@Qualifier("insulationCanServiceImpl")
	private IInsulationCanService insulationCanService;

	@ResponseBody
	@RequestMapping(params="type=update")
	public String update(InsulationCanDomain insulationCanDomain) {

		//{"type":["update"],"id":["1"],"name":["箱子"],"brand":["1"],"model":[""],"volume":["900"],"outsideSize":[""],"insideSize":[""],"weight":["12"],"wallThickness":[""],"outsideMaterial":[""],"insideMaterial":[""],"coldLogo":[""],"coldModel":[""],"coldQuantity":[""],"monitor":[""],"manufacturer":[""],"disMap":[""],"imgChanged":["0"],"productionDate":["2017-05-05"]})
		int i = insulationCanService.update(insulationCanDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}
}
