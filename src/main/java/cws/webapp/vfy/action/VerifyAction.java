/**
 * @Project:cws
 * @Title:VerifyAction.java
 * @Author:Riozenc
 * @Datetime:2017年3月29日 下午10:07:08
 * 
 */
package cws.webapp.vfy.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.riozenc.quicktool.common.util.json.JSONUtil;

import cws.common.json.JsonGrid;
import cws.common.json.JsonResult;
import cws.webapp.cmm.domain.CompanyDomain;
import cws.webapp.rpt.domain.ReportDomain;
import cws.webapp.sys.domain.CommonParamDomain;
import cws.webapp.vfy.domain.VerifyDomain;
import cws.webapp.vfy.service.IVerifyService;

/**
 * 验证对象
 * 
 * @author rioze
 *
 */
@ControllerAdvice
@RequestMapping("verify")
public class VerifyAction {

	@Autowired
	@Qualifier("verifyServiceImpl")
	private IVerifyService verifyService;

	@ResponseBody
	@RequestMapping(params = "type=insert")
	public String insert(VerifyDomain verifyDomain,@RequestParam(name = "enterpriseId") int companyId) {
		verifyDomain.setCompanyId(companyId);
		verifyDomain.setCreateDate(new Date());
		verifyDomain.setStatus(1);
		int i = verifyService.insert(verifyDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=delete")
	public String delete(VerifyDomain verifyDomain, @RequestParam(name = "enterpriseId") int companyId) {
		verifyDomain.setCompanyId(companyId);
		int i = verifyService.delete(verifyDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=update")
	public String update(VerifyDomain verifyDomain) {
		int i = verifyService.update(verifyDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=findVerifyByKey")
	public String findVerifyByKey(VerifyDomain verifyDomain) {
		verifyDomain = verifyService.findByKey(verifyDomain);
		return JSONUtil.toJsonString(verifyDomain);
	}

	@ResponseBody
	@RequestMapping(params = "type=findVerifyByWhere")
	public String findVerifyByWhere(VerifyDomain verifyDomain) {
		List<VerifyDomain> list = verifyService.findByWhere(verifyDomain);
		return JSONUtil.toJsonString(new JsonGrid(list));
	}

	@ResponseBody
	@RequestMapping(params = "type=getVerifyByCompany")
	public String getVerifyByCompany(CompanyDomain companyDomain, @RequestParam(name = "enterpriseId") int companyId) {
		companyDomain.setId(companyId);
		List<VerifyDomain> list = verifyService.getVerifyByCompany(companyDomain);
		return JSONUtil.toJsonString(new JsonGrid(companyDomain, list));
	}

	@ResponseBody
	@RequestMapping(params = "type=getVerifyByCompanyToDrop")
	public String getVerifyByCompanyToDrop(CompanyDomain companyDomain,
			@RequestParam(name = "enterpriseId") int companyId) {
		companyDomain.setId(companyId);
		List<VerifyDomain> verifyDomains = verifyService.getVerifyByCompanyToDrop(companyDomain);
		List<CommonParamDomain> list = new ArrayList<CommonParamDomain>();
		for (VerifyDomain domain : verifyDomains) {
			CommonParamDomain commonParamDomain = new CommonParamDomain();
			commonParamDomain.setName(domain.getVerifyName());
			commonParamDomain.setValue(domain.getVerifyId() + "_" + domain.getVerifyType());
			list.add(commonParamDomain);
		}
		return JSONUtil.toJsonString(list);
	}

	@ResponseBody
	@RequestMapping(params = "type=getVerifyInfo")
	public String getVerifyInfo(VerifyDomain verifyDomain) {
		verifyDomain = verifyService.getVerifyInfo(verifyDomain);

		return JSONUtil.toJsonString(verifyDomain);
	}

	@ResponseBody
	@RequestMapping(params = "type=getVerifyInfoByReport")
	public String getVerifyInfoByReport(ReportDomain reportDomain) {
		VerifyDomain verifyDomain = verifyService.getVerifyInfoByReport(reportDomain);
		return JSONUtil.toJsonString(verifyDomain);
	}

}
