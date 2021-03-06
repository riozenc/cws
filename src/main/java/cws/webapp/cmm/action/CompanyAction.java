/**
 * @Project:cws
 * @Title:CompanyAction.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午10:02:58
 * 
 */
package cws.webapp.cmm.action;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import cws.webapp.cmm.domain.CompanyDomain;
import cws.webapp.cmm.service.ICompanyService;
import cws.webapp.hst.domain.HostDomain;
import cws.webapp.pnt.domain.PointDomain;
import cws.webapp.rpt.domain.ReportDomain;
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
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=delete")
	public String delete(CompanyDomain companyDomain) {

		companyDomain = companyService.findByKey(companyDomain);

		// 获取企业相关测点总数
		List<PointDomain> pointdomaians = companyService.getPointByCompany(companyDomain);

		if (pointdomaians.size() > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "该企业关联的测点未清理,无法删除!."));
		}

		// 获取企业相关主机总数
		List<HostDomain> hostDomains = companyService.getHostByCompany(companyDomain);

		if (hostDomains.size() > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "该企业关联的主机未清理,无法删除!."));
		}
		// 获取企业相关验证对象
		List<VerifyDomain> verifyDomains = companyService.getVerifyByCompany(companyDomain);
		if (verifyDomains.size() > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "该企业关联的验证对象未清理,无法删除!."));
		}
		// 获取企业相关验证报告
		List<ReportDomain> reportDomains = companyService.getReportByCompany(companyDomain);
		if (reportDomains.size() > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "该企业关联的验证报告未清理,无法删除!."));
		}
		int i = companyService.delete(companyDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=update")
	public String update(CompanyDomain companyDomain) {
		int i = companyService.update(companyDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
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
	public String findCompanyByWhere(CompanyDomain companyDomain, String companyName) {
		companyDomain.setName(companyName);
		companyDomain.setStatus(1);
		List<CompanyDomain> list = companyService.findByWhere(companyDomain);
		return JSONUtil.toJsonString(new JsonGrid(companyDomain, list));
	}

	@ResponseBody
	@RequestMapping(params = "type=getCompanyInfo")
	public String getCompanyInfo(CompanyDomain companyDomain) {

		companyDomain = companyService.findByKey(companyDomain);

		// 获取企业相关测点总数
		List<PointDomain> pointdomaians = companyService.getPointByCompany(companyDomain);

		// 获取企业相关主机总数
		List<HostDomain> hostDomains = companyService.getHostByCompany(companyDomain);

		// 获取企业相关验证对象
		List<VerifyDomain> verifyDomains = companyService.getVerifyByCompany(companyDomain);

		// 获取企业相关验证报告
		List<ReportDomain> reportDomains = companyService.getReportByCompany(companyDomain);

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("company", companyDomain);
		map.put("pointCount", pointdomaians.size() + hostDomains.size());
		map.put("verifyCount", verifyDomains.size());
		map.put("validationReporCount", reportDomains.size());

		return JSONUtil.toJsonString(map);
	}

	@ResponseBody
	@RequestMapping(params = "type=getCompanyName")
	public String getCompanyName(CompanyDomain companyDomain) {
		companyDomain = companyService.findByKey(companyDomain);
		Map<String, String> map = new HashMap<>();
		map.put("companyNameLeft", companyDomain.getName());
		map.put("companyNameRight", "山东贵德信息科技有限公司");
		return JSONUtil.toJsonString(map);
	}
}
