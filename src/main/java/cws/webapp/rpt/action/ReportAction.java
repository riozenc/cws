/**
 * @Project:cws
 * @Title:ReportAction.java
 * @Author:Riozenc
 * @Datetime:2017年4月23日 下午9:11:55
 * 
 */
package cws.webapp.rpt.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.riozenc.quicktool.common.util.StringUtils;
import com.riozenc.quicktool.common.util.json.JSONUtil;
import com.riozenc.quicktool.config.Global;

import cws.common.json.JsonGrid;
import cws.common.json.JsonResult;
import cws.webapp.pnt.domain.VerifyPointDomain;
import cws.webapp.pnt.service.IVerifyPointService;
import cws.webapp.rpt.domain.DeviceDomain;
import cws.webapp.rpt.domain.ReportDomain;
import cws.webapp.rpt.domain.ReportImageDomain;
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

		// verifyObject
		reportDomain.setVerifyObject(
				reportDomain.getVerifyObject().substring(0, reportDomain.getVerifyObject().indexOf("_")));
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
	public String delete(ReportDomain reportDomain) {
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
		reportDomain.setVerifyObject(reportDomain.getVerifyObject() + "_" + reportDomain.getReportType());
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
		if (reportDomain.getReportStatus() == 3)
			reportDomain.setReportStatus(null);
		reportDomain.setCompanyId(companyId);
		List<ReportDomain> list = reportService.findReportByCompany(reportDomain);

		for (ReportDomain domain : list) {
			domain.setVerifyObject(domain.getVerifyObject() + "_" + domain.getReportType());
		}

		return JSONUtil.toJsonString(new JsonGrid(reportDomain, list));
	}

	@ResponseBody
	@RequestMapping(params = "type=getDeviceDate")
	public String adads(String enterpriseId, String reportNo, int pointType, int measureType) {
		List<DeviceDomain> deviceDomains = new ArrayList<>();

		Set<String> x = new TreeSet<>();

		ReportDomain reportDomain = new ReportDomain();
		reportDomain.setReportNo(reportNo);
		List<VerifyPointDomain> verifyPointDomains = verifyPointService.getVerifyPointByReport(reportDomain);
		for (VerifyPointDomain domain : verifyPointDomains) {
			if (Integer.parseInt(domain.getPointType()) == pointType || pointType == 0) {
				DeviceDomain deviceDomain = new DeviceDomain();
				deviceDomain.setDeviceId(domain.getPointId() + "");
				deviceDomain.setPointId(domain.getPointId());
				deviceDomain.setVerifyReportId(reportNo);
				deviceDomain.setStyle(measureType == 0 ? null : measureType);
				deviceDomains.add(deviceDomain);
			}
		}

		int dataSize = deviceDomains.size();

		Map<String, Collection<String>> map = new HashMap<>();

		@SuppressWarnings("unchecked")
		Map<String, String>[] maps = new Map[dataSize];

		for (int i = 0; i < dataSize; i++) {
			maps[i] = new HashMap<String, String>();
			List<DeviceDomain> list = deviceService.getDeviceDate(deviceDomains.get(i));// 日期排序
			for (DeviceDomain temp : list) {
				x.add(temp.getDate());
				maps[i].put(temp.getDate(), temp.getTemperature().toString());
			}
		}

		// 组合

		for (int i = 0; i < dataSize; i++) {
			List<String> y = new ArrayList<>();
			for (String temp : x) {
				y.add(maps[i].get(temp) == null ? "0" : maps[i].get(temp));
				// y.add(maps[i].get(temp));
			}
			map.put(deviceDomains.get(i).getDeviceId(), y);
		}

		if (x.size() == 0) {
			x.add("-");
		}
		map.put("xAxis", x);
		System.out.println(JSONUtil.toJsonString(map));
		return JSONUtil.toJsonString(map);
	}

	public String getDeviceDate(String enterpriseId, String reportNo, int pointType, int measureType) {
		List<DeviceDomain> deviceDomains = new ArrayList<>();

		Set<String> x = new LinkedHashSet<>();

		ReportDomain reportDomain = new ReportDomain();
		reportDomain.setReportNo(reportNo);
		List<VerifyPointDomain> verifyPointDomains = verifyPointService.getVerifyPointByReport(reportDomain);
		for (VerifyPointDomain domain : verifyPointDomains) {
			if (Integer.parseInt(domain.getPointType()) == pointType || pointType == 0) {
				DeviceDomain deviceDomain = new DeviceDomain();
				deviceDomain.setDeviceId(domain.getPointId() + "");
				deviceDomain.setPointId(domain.getPointId());
				deviceDomain.setVerifyReportId(reportNo);
				deviceDomain.setStyle(measureType == 0 ? null : measureType);
				deviceDomains.add(deviceDomain);
			}
		}

		Map<String, Collection<String>> map = new HashMap<>();

		for (DeviceDomain domain : deviceDomains) {
			List<String> y = new ArrayList<>();

			// "xAxis" :
			// ["2011-01-01","2011-01-02","2011-01-03","2011-01-04","2011-01-05","2011-01-06","2011-01-07"],
			// "yData" : [-10, -12, -10, -8, -11, -10.5, -10.2]

			List<DeviceDomain> list = deviceService.getDeviceDate(domain);// 日期排序
			for (DeviceDomain temp : list) {

				x.add(temp.getDate());

				y.add(temp.getTemperature().toString());
			}
			map.put(domain.getDeviceId(), y);

			System.out.println(JSONUtil.toJsonString(list));
		}
		// "xAxis"
		// "yData"
		if (x.size() == 0) {
			x.add("-");
		}
		map.put("xAxis", x);
		System.out.println(JSONUtil.toJsonString(map));
		return JSONUtil.toJsonString(map);
	}

	@ResponseBody
	@RequestMapping(params = "type=createReport")
	public String createReport(ReportDomain reportDomain, HttpServletRequest request) {
		if (reportDomain.getVerifyObject().indexOf("_") < 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "验证对象参数错误."));
		}

		reportDomain.setVerifyObject(reportDomain.getVerifyObject().split("_")[0]);

		reportService.update(reportDomain);// 更新

		// 图片
		ReportImageDomain reportImageDomain = new ReportImageDomain();
		reportImageDomain.setReportNo(reportDomain.getReportNo());

		// 全部
		reportImageDomain.setAll(request.getParameter("imagePath_0_0"));
		reportImageDomain.setDd(request.getParameter("imagePath_0_1"));
		reportImageDomain.setKm(request.getParameter("imagePath_0_2"));
		reportImageDomain.setHj(request.getParameter("imagePath_0_3"));

		// 均允性
		reportImageDomain.setJyxAll(request.getParameter("imagePath_1_0"));
		reportImageDomain.setJyxDd(request.getParameter("imagePath_1_1"));
		reportImageDomain.setJyxKm(request.getParameter("imagePath_1_2"));
		reportImageDomain.setJyxHj(request.getParameter("imagePath_1_3"));
		// 风机
		reportImageDomain.setFjAll(request.getParameter("imagePath_2_0"));
		reportImageDomain.setFjDd(request.getParameter("imagePath_2_1"));
		reportImageDomain.setFjKm(request.getParameter("imagePath_2_2"));
		reportImageDomain.setFjHj(request.getParameter("imagePath_2_3"));
		// 出入口
		reportImageDomain.setCrkAll(request.getParameter("imagePath_3_0"));
		reportImageDomain.setCrkDd(request.getParameter("imagePath_3_1"));
		reportImageDomain.setCrkKm(request.getParameter("imagePath_3_2"));
		reportImageDomain.setCrkHj(request.getParameter("imagePath_3_3"));
		// 死角
		reportImageDomain.setSjAll(request.getParameter("imagePath_4_0"));
		reportImageDomain.setSjDd(request.getParameter("imagePath_4_1"));
		reportImageDomain.setSjKm(request.getParameter("imagePath_4_2"));
		reportImageDomain.setSjHj(request.getParameter("imagePath_4_3"));
		// 货架
		reportImageDomain.setHuojiaAll(request.getParameter("imagePath_5_0"));
		reportImageDomain.setHuojiaDd(request.getParameter("imagePath_5_1"));
		reportImageDomain.setHuojiaKm(request.getParameter("imagePath_5_2"));
		reportImageDomain.setHuojiaHj(request.getParameter("imagePath_5_3"));
		// 温湿度
		reportImageDomain.setWsdAll(request.getParameter("imagePath_6_0"));
		reportImageDomain.setWsdDd(request.getParameter("imagePath_6_1"));
		reportImageDomain.setWsdKm(request.getParameter("imagePath_6_2"));
		reportImageDomain.setWsdHj(request.getParameter("imagePath_6_3"));
		// 环境
		reportImageDomain.setHuanjingAll(request.getParameter("imagePath_7_0"));
		reportImageDomain.setHuanjingDd(request.getParameter("imagePath_7_1"));
		reportImageDomain.setHuanjingKm(request.getParameter("imagePath_7_2"));
		reportImageDomain.setHuanjingHj(request.getParameter("imagePath_7_3"));

		if (reportService.updateReportImage(reportImageDomain) == 0) {
			reportService.insertReportImage(reportImageDomain);// 插入一条数据
		}

		String exePath = Global.getConfig("exe.path");

		try {

			Process process = Runtime.getRuntime().exec(exePath + " /c %" + reportDomain.getReportNo() + "%"
					+ reportDomain.getReportNo() + ".doc%" + reportDomain.getVerifyObject());

			int i = process.waitFor();

			// process.destroy();

			String path = exePath.substring(exePath.lastIndexOf("/")) + reportDomain.getReportNo() + ".doc";
			System.out.println(path);
			reportDomain.setReportStatus(1);
			reportService.update(reportDomain);// 更新
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}

	}

	@ResponseBody
	@RequestMapping(params = "type=download")
	public void download(ReportDomain reportDomain, HttpServletResponse httpServletResponse) throws IOException {
		reportDomain = reportService.findByKey(reportDomain);

		if (reportDomain == null || StringUtils.isEmpty(reportDomain.getReportPath())) {
			httpServletResponse.getWriter().print("文件丢失..");
			httpServletResponse.getWriter().flush();
			httpServletResponse.getWriter().close();
		}

		File file = new File(reportDomain.getReportPath());

		httpServletResponse.setHeader("Content-Disposition",
				"attachment;filename=\"" + new String(file.getName().getBytes(), "ISO8859-1") + "\"");
		httpServletResponse.setContentLength((int) file.length());
		byte[] buffer = new byte[4096];// 缓冲区
		BufferedOutputStream output = null;
		BufferedInputStream input = null;
		try {
			output = new BufferedOutputStream(httpServletResponse.getOutputStream());
			input = new BufferedInputStream(new FileInputStream(file));
			int n = -1;
			// 遍历，开始下载
			while ((n = input.read(buffer, 0, 4096)) > -1) {
				output.write(buffer, 0, n);
			}
			output.flush(); // 不可少
			httpServletResponse.flushBuffer();// 不可少
		} catch (Exception e) {
			// 异常自己捕捉
			throw e;
		} finally {
			// 关闭流，不可少
			if (input != null)
				input.close();
			if (output != null)
				output.close();
		}

	}
}
