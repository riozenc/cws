/**
 * @Project:cws
 * @Title:ChillCarAction.java
 * @Author:Riozenc
 * @Datetime:2017年4月13日 下午10:16:45
 * 
 */
package cws.webapp.vfy.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.riozenc.quicktool.common.util.json.JSONUtil;
import com.riozenc.quicktool.springmvc.webapp.action.BaseAction;

import cws.common.json.JsonResult;
import cws.webapp.vfy.domain.ChillCarDomain;
import cws.webapp.vfy.service.IChillCarService;

@ControllerAdvice
@RequestMapping("chillCar")
public class ChillCarAction extends BaseAction{

	@Autowired
	@Qualifier("chillCarServiceImpl")
	private IChillCarService chillCarService;

	@ResponseBody
	@RequestMapping(params = "type=update")
	public String update(ChillCarDomain chillCarDomain) {
		int i = chillCarService.update(chillCarDomain);

		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}
}
