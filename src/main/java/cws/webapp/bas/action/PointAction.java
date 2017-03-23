/**
 * @Project:cws
 * @Title:PointAction.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午10:03:13
 * 
 */
package cws.webapp.bas.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.riozenc.quicktool.common.util.json.JSONUtil;
import com.riozenc.quicktool.springmvc.webapp.action.BaseAction;

import cws.webapp.bas.domain.PointDomain;
import cws.webapp.bas.service.IPointService;

@ControllerAdvice
@RequestMapping("point")
public class PointAction extends BaseAction {

	@Autowired
	@Qualifier("pointServiceImpl")
	private IPointService pointService;

	@ResponseBody
	@RequestMapping(params = "type=insert")
	public String insert(PointDomain pointDomain) {
		int i = pointService.insert(pointDomain);
		if (i > 0) {
			return JSONUtil.writeSuccessMsg("成功");
		} else {
			return JSONUtil.writeErrorMsg("失败");
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=delete")
	public String delete(PointDomain pointDomain) {
		int i = pointService.delete(pointDomain);
		if (i > 0) {
			return JSONUtil.writeSuccessMsg("成功");
		} else {
			return JSONUtil.writeErrorMsg("失败");
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=update")
	public String update(PointDomain pointDomain) {
		int i = pointService.update(pointDomain);
		if (i > 0) {
			return JSONUtil.writeSuccessMsg("成功");
		} else {
			return JSONUtil.writeErrorMsg("失败");
		}
	}

	@ResponseBody
	@RequestMapping(params = "findPointByKey")
	public String findPointByKey(PointDomain pointDomain) {
		pointDomain = pointService.findByKey(pointDomain);
		return JSONUtil.toJsonString(pointDomain);
	}
	
	@ResponseBody
	@RequestMapping(params = "findPointByWhere")
	public String findPointByWhere(PointDomain pointDomain) {
		List<PointDomain> list = pointService.findByWhere(pointDomain);
		return null;
	}
}
