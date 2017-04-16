/**
 * @Project:cws
 * @Title:ValidationReportAction.java
 * @Author:Riozenc
 * @Datetime:2017年4月15日 下午1:31:20
 * 
 */
package cws.webapp.vfy.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.riozenc.quicktool.common.util.json.JSONUtil;

import cws.common.json.JsonGrid;
import cws.common.json.JsonResult;
import cws.webapp.vfy.domain.ValidationReportDomain;
import cws.webapp.vfy.service.IValidationReportService;

@ControllerAdvice
@RequestMapping("validationReport")
public class ValidationReportAction {

	@Autowired
	@Qualifier("validationReportServiceImpl")
	private IValidationReportService validationReportService;

	@ResponseBody
	@RequestMapping(params = "type=insert")
	public String insert(ValidationReportDomain validationReportDomain) {
		int i = validationReportService.insert(validationReportDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=delete")
	public String delete(ValidationReportDomain validationReportDomain) {
		int i = validationReportService.insert(validationReportDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=update")
	public String update(ValidationReportDomain validationReportDomain) {
		int i = validationReportService.update(validationReportDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=findValidationReportByKey")
	public String findValidationReportByKey(ValidationReportDomain validationReportDomain) {
		validationReportDomain = validationReportService.findByKey(validationReportDomain);
		return JSONUtil.toJsonString(validationReportDomain);
	}

	@ResponseBody
	@RequestMapping(params = "type=findValidationReportByWhere")
	public String findValidationReportByWhere(ValidationReportDomain validationReportDomain) {
		List<ValidationReportDomain> list = validationReportService.findByWhere(validationReportDomain);
		return JSONUtil.toJsonString(new JsonGrid(list));
	}

}
