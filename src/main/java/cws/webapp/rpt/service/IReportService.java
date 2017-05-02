/**
 * @Project:cws
 * @Title:IReportService.java
 * @Author:Riozenc
 * @Datetime:2017年4月23日 下午9:10:09
 * 
 */
package cws.webapp.rpt.service;

import java.util.List;

import com.riozenc.quicktool.springmvc.webapp.service.BaseService;

import cws.webapp.rpt.domain.ReportDomain;
import cws.webapp.rpt.domain.ReportImageDomain;

public interface IReportService extends BaseService<ReportDomain> {
	public List<ReportDomain> findReportByCompany(ReportDomain reportDomain);

	public int insertReportImage(ReportImageDomain reportImageDomain);
	
	public int updateReportImage(ReportImageDomain reportImageDomain);
}
