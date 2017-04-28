/**
 * @Project:cws
 * @Title:ReportAction.java
 * @Author:Riozenc
 * @Datetime:2017年4月23日 下午9:11:55
 * 
 */
package cws.webapp.rpt.action;

import java.util.ArrayList;
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

import cws.common.json.JsonGrid;
import cws.common.json.JsonResult;
import cws.webapp.pnt.domain.VerifyPointDomain;
import cws.webapp.pnt.service.IVerifyPointService;
import cws.webapp.rpt.domain.DeviceDomain;
import cws.webapp.rpt.domain.ReportDomain;
import cws.webapp.rpt.service.IDeviceService;
import cws.webapp.rpt.service.IReportService;

@ControllerAdvice
@RequestMapping("report")
public class ReportAction {

	@Autowired
	@Qualifier("reportServiceImpl")
	private IReportService reportService;
	@Autowired
	@Qualifier("deviceServiceImpl")
	private IDeviceService deviceService;
	@Autowired
	@Qualifier("verifyPointServiceImpl")
	private IVerifyPointService verifyPointService;

	@ResponseBody
	@RequestMapping(params = "type=insert")
	public String insert(ReportDomain reportDomain, @RequestParam(name = "enterpriseId") int companyId) {
		reportDomain.setCompanyId(companyId);
		reportDomain.setReportStatus(0);
		// 初始化
		reportDomain.setReportNo(reportDomain.getReportType() + "_" + System.currentTimeMillis());
		// reportDomain.setReportVersion("1.0");

		// ({"type":["insert"],"id":[""],"enterpriseId":["1"],"name":["123"],"object":["55"],"propertyType":["01"],"temperatureType":["01"],"remark":["000"]})

		int i = reportService.insert(reportDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=delete")
	public String delete(ReportDomain reportDomain, @RequestParam(name = "enterpriseId") int companyId) {
		reportDomain.setCompanyId(companyId);
		int i = reportService.delete(reportDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=update")
	public String update(ReportDomain reportDomain) {
		int i = reportService.update(reportDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
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

		for (ReportDomain domain : list) {
			domain.setVerifyObject(domain.getVerifyObject() + "_" + domain.getReportType());
		}

		return JSONUtil.toJsonString(new JsonGrid(list));
	}

	@ResponseBody
	@RequestMapping(params = "type=getDeviceDate")
	public String getDeviceDate(String enterpriseId, String reportNo, int pointType, int measureType) {
		List<DeviceDomain> deviceDomains = new ArrayList<>();

		List<String> x = new ArrayList<>();

		ReportDomain reportDomain = new ReportDomain();
		reportDomain.setReportNo(reportNo);
		List<VerifyPointDomain> verifyPointDomains = verifyPointService.getVerifyPointByReport(reportDomain);
		for (VerifyPointDomain domain : verifyPointDomains) {
			if (Integer.parseInt(domain.getPointType()) == pointType) {
				DeviceDomain deviceDomain = new DeviceDomain();
				deviceDomain.setDeviceId(domain.getPointId() + "");
				deviceDomain.setPointId(domain.getPointId());
				deviceDomain.setVerifyReportId(reportNo);
				deviceDomain.setStyle(measureType);
				deviceDomains.add(deviceDomain);
			}
		}

		Map<String, List<String>> map = new HashMap<>();
		for (DeviceDomain domain : deviceDomains) {
			List<String> y = new ArrayList<>();

			List<DeviceDomain> list = deviceService.getDeviceDate(domain);// 日期排序
			for (DeviceDomain temp : list) {
				if (x.size() == 0) {
					x.add(temp.getDate());
				}
				y.add(temp.getTemperature().toString());
			}
			map.put(domain.getDeviceId(), y);

			System.out.println(JSONUtil.toJsonString(list));
		}
		// "xAxis"
		// "yData"
		map.put("xAxis", x);

		return JSONUtil.toJsonString(map);
	}

	@ResponseBody
	@RequestMapping(params = "type=createReport")
	public String createReport() {

		int i = 1;
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "成功."));
		}
	}
}
