/**
 * @Project:cws
 * @Title:CommonParamAction.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午10:03:22
 * 
 */
package cws.webapp.sys.action;

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

import cws.webapp.sys.domain.CommonParamDomain;
import cws.webapp.sys.service.ICommonParamService;

@ControllerAdvice
@RequestMapping("commonParam")
public class CommonParamAction extends BaseAction {

	@Autowired
	@Qualifier("commonParamServiceImpl")
	private ICommonParamService commonParamService;

	@ResponseBody
	@RequestMapping(params = "type=insert")
	public String insert(CommonParamDomain commonParamDomain, @RequestParam(name = "paramType") String type) {
		commonParamDomain.setType(type);
		commonParamDomain.setCreateDate(new Date());
		commonParamDomain.setStatus(1);
		if (commonParamService.insert(commonParamDomain) > 0) {
			return JSONUtil.writeSuccessMsg("成功");
		} else {
			return JSONUtil.writeSuccessMsg("失败");
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=findCommonParamByType")
	public String findCommonParamByType(CommonParamDomain commonParamDomain,
			@RequestParam(name = "paramType") String type) {
		commonParamDomain.setType(type);
		List<CommonParamDomain> list = commonParamService.findByWhere(commonParamDomain);
		return JSONUtil.toJsonString(list);
	}

	@ResponseBody
	@RequestMapping(params = "type=delete")
	public String delete(CommonParamDomain commonParamDomain, @RequestParam(name = "paramType") String type) {
		commonParamDomain.setType(type);
		if (commonParamService.delete(commonParamDomain) > 0) {
			return JSONUtil.writeSuccessMsg("成功");
		} else {
			return JSONUtil.writeSuccessMsg("失败");
		}
	}
	
	@ResponseBody
	@RequestMapping(params = "type=update")
	public String update(CommonParamDomain commonParamDomain, @RequestParam(name = "paramType") String type) {
		commonParamDomain.setType(type);
		if (commonParamService.update(commonParamDomain) > 0) {
			return JSONUtil.writeSuccessMsg("成功");
		} else {
			return JSONUtil.writeSuccessMsg("失败");
		}
	}
}
