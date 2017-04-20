/**
 * @Project:cws
 * @Title:PersonnelDutiesAction.java
 * @Author:Riozenc
 * @Datetime:2017年4月20日 下午10:34:35
 * 
 */
package cws.webapp.cmm.action;

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
import cws.webapp.cmm.domain.PersonnelDutiesDomain;
import cws.webapp.cmm.service.IPersonnelDutiesService;

@ControllerAdvice
@RequestMapping("personnelDuties")
public class PersonnelDutiesAction extends BaseAction {

	@Autowired
	@Qualifier("personnelDutiesServiceImpl")
	private IPersonnelDutiesService personnelDutiesService;

	@ResponseBody
	@RequestMapping(params = "type=insert")
	public String insert(PersonnelDutiesDomain personnelDutiesDomain,
			@RequestParam(name = "enterpriseId") int companyId) {
		personnelDutiesDomain.setCompanyId(companyId);

		personnelDutiesDomain.setStatus(1);

		if (personnelDutiesService.insert(personnelDutiesDomain) > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=delete")
	public String delete(PersonnelDutiesDomain personnelDutiesDomain) {
		int i = personnelDutiesService.delete(personnelDutiesDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=update")
	public String update(PersonnelDutiesDomain personnelDutiesDomain) {
		int i = personnelDutiesService.update(personnelDutiesDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=findPersonnelDutiesByKey")
	public String findPersonnelDutiesByKey(PersonnelDutiesDomain personnelDutiesDomain) {
		personnelDutiesDomain = personnelDutiesService.findByKey(personnelDutiesDomain);
		return JSONUtil.toJsonString(personnelDutiesDomain);
	}

	@ResponseBody
	@RequestMapping(params = "type=findPersonnelDutiesByWhere")
	public String findPersonnelDutiesByWhere(PersonnelDutiesDomain personnelDutiesDomain) {
		List<PersonnelDutiesDomain> list = personnelDutiesService.findByWhere(personnelDutiesDomain);
		return JSONUtil.toJsonString(new JsonGrid(personnelDutiesDomain, list));
	}

	@ResponseBody
	@RequestMapping(params = "type=findPersonnelDutiesByCompany")
	public String findPersonnelDutiesByCompany(PersonnelDutiesDomain personnelDutiesDomain,
			@RequestParam(name = "enterpriseId") int companyId) {
		personnelDutiesDomain.setCompanyId(companyId);
		List<PersonnelDutiesDomain> list = personnelDutiesService.findPersonnelDutiesByCompany(personnelDutiesDomain);
		return JSONUtil.toJsonString(new JsonGrid(personnelDutiesDomain, list));
	}
}
