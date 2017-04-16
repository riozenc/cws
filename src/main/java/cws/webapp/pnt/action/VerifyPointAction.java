/**
 * @Project:cws
 * @Title:VerifyPointAction.java
 * @Author:Riozenc
 * @Datetime:2017年4月4日 下午10:00:35
 * 
 */
package cws.webapp.pnt.action;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.riozenc.quicktool.common.util.json.JSONUtil;

import cws.common.json.JsonGrid;
import cws.common.json.JsonResult;
import cws.webapp.pnt.domain.VerifyPointDomain;
import cws.webapp.pnt.service.IVerifyPointService;

@ControllerAdvice
@RequestMapping("verifyPoint")
public class VerifyPointAction {

	@Autowired
	@Qualifier("verifyPointServiceImpl")
	private IVerifyPointService verifyPointService;

	@ResponseBody
	@RequestMapping(params = "type=insert")
	public String insert(VerifyPointDomain verifyPointDomain) {

		// ({"type":["insert"],"id":[""],"verifyId":["1"],"enterpriseId":["1"],"verifyType":["1"],"no":["1"],"types":["2"],"snNo":["SN-01"],"remark":["风机01"]})

		verifyPointDomain.setCreateDate(new Date());
		verifyPointDomain.setStatus(1);

		int i = verifyPointService.insert(verifyPointDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=delete")
	public String delete(VerifyPointDomain verifyPointDomain) {
		int i = verifyPointService.delete(verifyPointDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=update")
	public String update(VerifyPointDomain verifyPointDomain, String snNo) {
		int i = verifyPointService.update(verifyPointDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=findPointByKey")
	public String findPointByKey(VerifyPointDomain verifyPointDomain) {
		verifyPointDomain = verifyPointService.findByKey(verifyPointDomain);
		return JSONUtil.toJsonString(verifyPointDomain);
	}

	@ResponseBody
	@RequestMapping(params = "type=findPointByWhere")
	public String findPointByWhere(VerifyPointDomain verifyPointDomain) {
		List<VerifyPointDomain> list = verifyPointService.findByWhere(verifyPointDomain);
		return JSONUtil.toJsonString(new JsonGrid(list));
	}

	@ResponseBody
	@RequestMapping(params = "type=findVerifyPointByVerify")
	public String findVerifyPointByVerify(VerifyPointDomain verifyPointDomain) {
		if ("0".equals(verifyPointDomain.getPointType()))
			verifyPointDomain.setPointType(null);
		List<VerifyPointDomain> list = verifyPointService.findVerifyPointByVerify(verifyPointDomain);

		// {"totalRow":null,"pageCurrent":null,"list":[{"id":1,"verifyId":1,"verifyType":1,"pointId":5,"pointSn":"SN-01","pointPosition":1,"pointType":"3","createDate":"2017-04-15
		// 21:38:35","remark":"阿苏德萨达到","status":1}]}

		return JSONUtil.toJsonString(new JsonGrid(verifyPointDomain, list));
	}

	@ResponseBody
	@RequestMapping(params = "type=findVerifyPointCountByWhere")
	public String findVerifyPointCountByWhere(VerifyPointDomain verifyPointDomain) {
		verifyPointDomain.setPageSize(999);
		verifyPointDomain.setPointType(null);
		List<VerifyPointDomain> list = verifyPointService.findVerifyPointByVerify(verifyPointDomain);
		Map<String, Integer> map = new HashMap<>();
		map.put("jyxPoint", 0);
		map.put("fjPoint", 0);
		map.put("crkPoint", 0);
		map.put("sjPoint", 0);
		map.put("hjPoint", 0);
		map.put("ttPoint", 0);
		map.put("huanjPoint", 0);
		/**
		 * "jyxPoint" : 1, "fjPoint" : 2, "crkPoint" : 1, "sjPoint" : 2,
		 * "hjPoint" : 2, "ttPoint" : 1, "huanjPoint" : 1
		 */
		for (VerifyPointDomain temp : list) {
			switch (temp.getPointType()) {
			case "1":
				map.put("jyxPoint", map.get("jyxPoint")+ 1);
				break;
			case "2":
				map.put("fjPoint", map.get("fjPoint") + 1);
				break;
			case "3":
				map.put("crkPoint", map.get("crkPoint") + 1);
				break;
			case "4":
				map.put("sjPoint", map.get("sjPoint") + 1);
				break;
			case "5":
				map.put("hjPoint", map.get("hjPoint") + 1);
				break;
			case "6":
				map.put("ttPoint", map.get("ttPoint") + 1);
				break;
			case "7":
				map.put("huanjPoint", map.get("huanjPoint") + 1);
				break;
			}
		}
		return JSONUtil.toJsonString(map);
	}

}
