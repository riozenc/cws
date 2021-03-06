/**
 * @Project:cws
 * @Title:PersonnelPostAction.java
 * @Author:Riozenc
 * @Datetime:2017年3月28日 下午11:31:38
 * 
 */
package cws.webapp.cmm.action;

import java.util.ArrayList;
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
import cws.webapp.cmm.domain.PersonnelPostDomain;
import cws.webapp.cmm.service.IPersonnelPostService;
import cws.webapp.sys.domain.CommonParamDomain;

@ControllerAdvice
@RequestMapping("personnelPost")
public class PersonnelPostAction extends BaseAction {

	@Autowired
	@Qualifier("personnelPostServiceImpl")
	private IPersonnelPostService personnelPostService;

	@ResponseBody
	@RequestMapping(params = "type=insert")
	public String insert(PersonnelPostDomain personnelPostDomain, @RequestParam(name = "enterpriseId") int companyId) {
		personnelPostDomain.setCompanyId(companyId);
//		personnelPostDomain.setPostId(Integer.parseInt(personnelPostDomain.getPostName()));
		personnelPostDomain.setStatus(1);
		if (personnelPostService.insert(personnelPostDomain) > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=delete")
	public String delete(PersonnelPostDomain personnelPostDomain) {
		int i = personnelPostService.delete(personnelPostDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=update")
	public String update(PersonnelPostDomain personnelPostDomain, String postName) {
//		personnelPostDomain.setPostId(Integer.parseInt(postName));
		int i = personnelPostService.update(personnelPostDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=findPersonnelPostByKey")
	public String findPersonnelPostByKey(PersonnelPostDomain personnelPostDomain) {
		personnelPostDomain = personnelPostService.findByKey(personnelPostDomain);
		return JSONUtil.toJsonString(personnelPostDomain);
	}

	@ResponseBody
	@RequestMapping(params = "type=findPersonnelPostByWhere")
	public String findPersonnelPostByWhere(PersonnelPostDomain personnelPostDomain) {
		List<PersonnelPostDomain> list = personnelPostService.findByWhere(personnelPostDomain);
		return JSONUtil.toJsonString(new JsonGrid(personnelPostDomain, list));
	}

	@ResponseBody
	@RequestMapping(params = "type=findPersonnelPostByCompany")
	public String findPersonnelPostByCompany(PersonnelPostDomain personnelPostDomain,
			@RequestParam(name = "enterpriseId") int companyId) {
		personnelPostDomain.setCompanyId(companyId);
		List<PersonnelPostDomain> list = personnelPostService.findByWhere(personnelPostDomain);
		return JSONUtil.toJsonString(new JsonGrid(personnelPostDomain, list));
	}

	@ResponseBody
	@RequestMapping(params = "type=findPersonnelPostByCompanyToDrop")
	public String findPersonnelPostByCompanyToDrop(PersonnelPostDomain personnelPostDomain,
			@RequestParam(name = "enterpriseId") int companyId) {
		personnelPostDomain.setCompanyId(companyId);
		List<PersonnelPostDomain> personnelPostDomains = personnelPostService
				.findPersonnelPostByCompanyToDrop(personnelPostDomain);
		List<CommonParamDomain> list = new ArrayList<CommonParamDomain>();
		for (PersonnelPostDomain domain : personnelPostDomains) {
			CommonParamDomain commonParamDomain = new CommonParamDomain();
			commonParamDomain.setName(domain.getName());
			commonParamDomain.setValue(domain.getName());
			list.add(commonParamDomain);
		}
		return JSONUtil.toJsonString(list);
	}

}
