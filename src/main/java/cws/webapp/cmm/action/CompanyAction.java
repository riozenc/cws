/**
 * @Project:cws
 * @Title:CompanyAction.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午10:02:58
 * 
 */
package cws.webapp.cmm.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.riozenc.quicktool.common.util.json.JSONGrid;
import com.riozenc.quicktool.common.util.json.JSONUtil;
import com.riozenc.quicktool.springmvc.webapp.action.BaseAction;

import cws.webapp.cmm.domain.CompanyDomain;
import cws.webapp.cmm.service.ICompanyService;
import cws.webapp.pnt.domain.PointDomain;
import cws.webapp.vfy.domain.ValidationReportDomain;
import cws.webapp.vfy.domain.VerifyDomain;

@ControllerAdvice
@RequestMapping("company")
public class CompanyAction extends BaseAction {

	@Autowired
	@Qualifier("companyServiceImpl")
	private ICompanyService companyService;

	@ResponseBody
	@RequestMapping(params = "type=insert")
	public String insert(CompanyDomain companyDomain) {
		companyDomain.setCreateDate(new Date());
		companyDomain.setStatus(1);
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
		List<CompanyDomain> list = companyService.findByWhere(companyDomain);
		return JSONUtil.toJsonString(new JSONGrid(companyDomain, list));
	}

	@ResponseBody
	@RequestMapping(params = "type=getCompanyInfo")
	public String getCompanyInfo(CompanyDomain companyDomain) {
		companyDomain = companyService.findByKey(companyDomain);

		// 获取企业相关设备总数
		List<PointDomain> pointdomaians = companyService.getPointByCompany(companyDomain);

		// 获取企业相关验证对象
		List<VerifyDomain> verifyDomains = companyService.getVerifyByCompany(companyDomain);

		// 获取企业相关验证报告
		List<ValidationReportDomain> validationReportDomains = new ArrayList<ValidationReportDomain>();

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("company", companyDomain);
		map.put("pointCount", pointdomaians.size());
		map.put("verifyCount", verifyDomains.size());
		map.put("validationReporCount", validationReportDomains.size());

		return JSONUtil.toJsonString(map);
	}
}
