/**
 * @Project:cws
 * @Title:VerifyAction.java
 * @Author:Riozenc
 * @Datetime:2017年3月29日 下午10:07:08
 * 
 */
package cws.webapp.vfy.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.riozenc.quicktool.common.util.json.JSONGrid;
import com.riozenc.quicktool.common.util.json.JSONUtil;

import cws.webapp.cmm.domain.CompanyDomain;
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
	public String insert(VerifyDomain verifyDomain) {
		int i = verifyService.insert(verifyDomain);
		if (i > 0) {
			return JSONUtil.writeSuccessMsg("成功");
		} else {
			return JSONUtil.writeErrorMsg("失败");
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=delete")
	public String delete(VerifyDomain verifyDomain) {
		int i = verifyService.delete(verifyDomain);
		if (i > 0) {
			return JSONUtil.writeSuccessMsg("成功");
		} else {
			return JSONUtil.writeErrorMsg("失败");
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=update")
	public String update(VerifyDomain verifyDomain) {
		int i = verifyService.update(verifyDomain);
		if (i > 0) {
			return JSONUtil.writeSuccessMsg("成功");
		} else {
			return JSONUtil.writeErrorMsg("失败");
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
		return JSONUtil.toJsonString(new JSONGrid(list));
	}

	@ResponseBody
	@RequestMapping(params = "type=getVerifyByCompany")
	public String getVerifyByCompany(CompanyDomain companyDomain) {
		List<VerifyDomain> list = verifyService.getVerifyByCompany(companyDomain);
		return JSONUtil.toJsonString(new JSONGrid(list));
	}

	@ResponseBody
	@RequestMapping(params = "type=getVerifyInfo")
	public String getVerifyInfo(VerifyDomain verifyDomain) {
		verifyDomain = verifyService.getVerifyInfo(verifyDomain);

		return JSONUtil.toJsonString(verifyDomain);
	}

}