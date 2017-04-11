/**
 * @Project:cws
 * @Title:HostAction.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午10:03:07
 * 
 */
package cws.webapp.hst.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.riozenc.quicktool.common.util.json.JSONGrid;
import com.riozenc.quicktool.common.util.json.JSONUtil;
import com.riozenc.quicktool.springmvc.webapp.action.BaseAction;

import cws.webapp.hst.domain.HostDomain;
import cws.webapp.hst.service.IHostService;

@ControllerAdvice
@RequestMapping("host")
public class HostAction extends BaseAction {

	@Autowired
	@Qualifier("hostServiceImpl")
	private IHostService hostService;

	@ResponseBody
	@RequestMapping(params = "type=insert")
	public String insert(HostDomain hostDomain, @RequestParam(name = "enterpriseId") int companyId) {
		hostDomain.setCompanyId(companyId);
		int i = hostService.insert(hostDomain);
		if (i > 0) {
			return JSONUtil.writeSuccessMsg("成功");
		} else {
			return JSONUtil.writeErrorMsg("失败");
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=delete")
	public String delete(HostDomain hostDomain, @RequestParam(name = "enterpriseId") int companyId) {
		hostDomain.setCompanyId(companyId);
		int i = hostService.delete(hostDomain);
		if (i > 0) {
			return JSONUtil.writeSuccessMsg("成功");
		} else {
			return JSONUtil.writeErrorMsg("失败");
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=update")
	public String update(HostDomain hostDomain) {
		int i = hostService.update(hostDomain);
		if (i > 0) {
			return JSONUtil.writeSuccessMsg("成功");
		} else {
			return JSONUtil.writeErrorMsg("失败");
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=findHostByKey")
	public String findHostByKey(HostDomain hostDomain) {
		hostDomain = hostService.findByKey(hostDomain);
		return JSONUtil.toJsonString(hostDomain);
	}

	@ResponseBody
	@RequestMapping(params = "type=findHostByWhere")
	public String findHostByWhere(HostDomain hostDomain) {
		List<HostDomain> list = hostService.findByWhere(hostDomain);
		return JSONUtil.toJsonString(new JSONGrid(list));
	}

	@ResponseBody
	@RequestMapping(params = "type=findHostByCompany")
	public String findHostByCompany(HostDomain hostDomain, @RequestParam(name = "enterpriseId") int companyId) {
		hostDomain.setCompanyId(companyId);
		List<HostDomain> list = hostService.findHostByCompany(hostDomain);
		return JSONUtil.toJsonString(new JSONGrid(list));
	}

}
