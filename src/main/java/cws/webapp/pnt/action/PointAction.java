/**
 * @Project:cws
 * @Title:PointAction.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午10:03:13
 * 
 */
package cws.webapp.pnt.action;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import com.riozenc.quicktool.common.util.json.JSONUtil;
import com.riozenc.quicktool.springmvc.webapp.action.BaseAction;

import cws.common.json.JsonGrid;
import cws.common.json.JsonResult;
import cws.webapp.pnt.domain.PointDomain;
import cws.webapp.pnt.service.IPointService;

@ControllerAdvice
@RequestMapping("point")
public class PointAction extends BaseAction {

	@Autowired
	@Qualifier("pointServiceImpl")
	private IPointService pointService;

	@ResponseBody
	@RequestMapping(params = "type=insert")
	public String insert(PointDomain pointDomain,@RequestParam(name = "enterpriseId") int companyId) {
		pointDomain.setCompanyId(companyId);
		pointDomain.setCreateDate(new Date());
		pointDomain.setStatus(1);
		int i = pointService.insert(pointDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=delete")
	public String delete(PointDomain pointDomain,@RequestParam(name = "enterpriseId") int companyId) {
		pointDomain.setCompanyId(companyId);
		int i = pointService.delete(pointDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=update")
	public String update(PointDomain pointDomain) {
		int i = pointService.update(pointDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=findPointByKey")
	public String findPointByKey(PointDomain pointDomain) {
		pointDomain = pointService.findByKey(pointDomain);
		return JSONUtil.toJsonString(pointDomain);
	}

	@ResponseBody
	@RequestMapping(params = "type=findPointByWhere")
	public String findPointByWhere(PointDomain pointDomain) {
		List<PointDomain> list = pointService.findByWhere(pointDomain);
		return JSONUtil.toJsonString(new JsonGrid(list));
	}

	@ResponseBody
	@RequestMapping(params = "type=findPointByCompany")
	public String findPointByCompany(PointDomain pointDomain, @RequestParam(name = "enterpriseId") int companyId) {
		pointDomain.setCompanyId(companyId);
		List<PointDomain> list = pointService.findPointByCompany(pointDomain);
		return JSONUtil.toJsonString(new JsonGrid(list));
	}
}
