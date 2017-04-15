/**
 * @Project:cws
 * @Title:VerifyPointAction.java
 * @Author:Riozenc
 * @Datetime:2017年4月4日 下午10:00:35
 * 
 */
package cws.webapp.pnt.action;

import java.util.Date;
import java.util.List;

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
		if("0".equals(verifyPointDomain.getPointType()))verifyPointDomain.setPointType(null);
		List<VerifyPointDomain> list = verifyPointService.findVerifyPointByVerify(verifyPointDomain);
		
		//{"totalRow":null,"pageCurrent":null,"list":[{"id":1,"verifyId":1,"verifyType":1,"pointId":5,"pointSn":"SN-01","pointPosition":1,"pointType":"3","createDate":"2017-04-15 21:38:35","remark":"阿苏德萨达到","status":1}]}
		
		return JSONUtil.toJsonString(new JsonGrid(verifyPointDomain,list));
	}
}
