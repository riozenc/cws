/**
 * @Project:cws
 * @Title:ReportAction.java
 * @Author:Riozenc
 * @Datetime:2017年4月23日 下午9:11:55
 * 
 */
package cws.webapp.rpt.action;

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
import cws.webapp.rpt.domain.ReportDomain;
import cws.webapp.rpt.service.IReportService;

@ControllerAdvice
@RequestMapping("report")
public class ReportAction {

	@Autowired
	@Qualifier("reportServiceImpl")
	private IReportService reportService;

	@ResponseBody
	@RequestMapping(params = "type=insert")
	public String insert(ReportDomain reportDomain,@RequestParam(name = "enterpriseId") int companyId) {
		reportDomain.setCompanyId(companyId);
		
		//初始化
		reportDomain.setReportNo(System.currentTimeMillis()+"");
		reportDomain.setReportVersion("1.0");
		
		//({"type":["insert"],"id":[""],"enterpriseId":["1"],"name":["123"],"object":["55"],"propertyType":["01"],"temperatureType":["01"],"remark":["000"]})
		
		int i = reportService.insert(reportDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "成功."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=delete")
	public String delete(ReportDomain reportDomain,@RequestParam(name = "enterpriseId") int companyId) {
		reportDomain.setCompanyId(companyId);
		int i = reportService.delete(reportDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "成功."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=update")
	public String update(ReportDomain reportDomain) {
		int i = reportService.update(reportDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "成功."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=findReportByKey")
	public String findReportByKey(ReportDomain reportDomain) {
		reportDomain = reportService.findByKey(reportDomain);
		return JSONUtil.toJsonString(reportDomain);
	}

	@ResponseBody
	@RequestMapping(params = "type=findReportByWhere")
	public String findReportByWhere(ReportDomain reportDomain) {
		List<ReportDomain> list = reportService.findByWhere(reportDomain);
		return JSONUtil.toJsonString(new JsonGrid(list));
	}

	@ResponseBody
	@RequestMapping(params = "type=findReportByCompany")
	public String findReportByCompany(ReportDomain reportDomain, @RequestParam(name = "enterpriseId") int companyId) {
		if (reportDomain.getReportStatus() == 0)
			reportDomain.setReportStatus(null);
		reportDomain.setCompanyId(companyId);
		List<ReportDomain> list = reportService.findReportByCompany(reportDomain);
		return JSONUtil.toJsonString(new JsonGrid(list));
	}
}
