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

import com.riozenc.quicktool.common.util.json.JSONGrid;
import com.riozenc.quicktool.common.util.json.JSONUtil;

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

		verifyPointDomain.setCreateDate(new Date());
		verifyPointDomain.setStatus(1);

		int i = verifyPointService.insert(verifyPointDomain);
		if (i > 0) {
			return JSONUtil.writeSuccessMsg("成功");
		} else {
			return JSONUtil.writeErrorMsg("失败");
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=delete")
	public String delete(VerifyPointDomain verifyPointDomain) {
		int i = verifyPointService.delete(verifyPointDomain);
		if (i > 0) {
			return JSONUtil.writeSuccessMsg("成功");
		} else {
			return JSONUtil.writeErrorMsg("失败");
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=update")
	public String update(VerifyPointDomain verifyPointDomain) {
		int i = verifyPointService.update(verifyPointDomain);
		if (i > 0) {
			return JSONUtil.writeSuccessMsg("成功");
		} else {
			return JSONUtil.writeErrorMsg("失败");
		}
	}

	@ResponseBody
	@RequestMapping(params = "findPointByKey")
	public String findPointByKey(VerifyPointDomain verifyPointDomain) {
		verifyPointDomain = verifyPointService.findByKey(verifyPointDomain);
		return JSONUtil.toJsonString(verifyPointDomain);
	}

	@ResponseBody
	@RequestMapping(params = "findPointByWhere")
	public String findPointByWhere(VerifyPointDomain verifyPointDomain) {
		List<VerifyPointDomain> list = verifyPointService.findByWhere(verifyPointDomain);
		return JSONUtil.toJsonString(new JSONGrid(list));
	}
}
