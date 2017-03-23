/**
 * @Project:cws
 * @Title:CompanyAction.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午10:02:58
 * 
 */
package cws.webapp.bas.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.riozenc.quicktool.common.util.json.JSONUtil;
import com.riozenc.quicktool.springmvc.webapp.action.BaseAction;

import cws.webapp.bas.domain.CompanyDomain;
import cws.webapp.bas.service.ICompanyService;

@ControllerAdvice
@RequestMapping("company")
public class CompanyAction extends BaseAction {

	@Autowired
	@Qualifier("companyServiceImpl")
	private ICompanyService companyService;

	@ResponseBody
	@RequestMapping(params = "type=insert")
	public String insert(CompanyDomain companyDomain) {
		if (companyService.insert(companyDomain) > 0) {
			return JSONUtil.writeSuccessMsg("成功");
		} else {
			return JSONUtil.writeErrorMsg("失败");
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=delete")
	public String delete(CompanyDomain companyDomain) {
		int i = companyService.delete(companyDomain);
		if (i > 0) {
			return JSONUtil.writeSuccessMsg("成功");
		} else {
			return JSONUtil.writeErrorMsg("失败");
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=update")
	public String update(CompanyDomain companyDomain) {
		int i = companyService.update(companyDomain);
		if (i > 0) {
			return JSONUtil.writeSuccessMsg("成功");
		} else {
			return JSONUtil.writeErrorMsg("失败");
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=findCompanyByKey")
	public String findCompanyByKey(CompanyDomain companyDomain) {
		companyDomain = companyService.findByKey(companyDomain);
		return JSONUtil.toJsonString(companyDomain);
	}

	@ResponseBody
	@RequestMapping(params = "type=findCompanyByWhere")
	public String findCompanyByWhere(CompanyDomain companyDomain) {
		return null;
	}
}
