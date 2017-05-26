/**
 * @Project:cws
 * @Title:IPointService.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午9:46:15
 * 
 */
package cws.webapp.pnt.service;

import java.util.List;
import java.util.Map;

import com.riozenc.quicktool.springmvc.webapp.service.BaseService;

import cws.webapp.pnt.domain.PointDomain;
import cws.webapp.rpt.domain.ReportDomain;

public interface IPointService extends BaseService<PointDomain> {
	public List<PointDomain> findPointByCompany(PointDomain pointDomain);

	public List<PointDomain> findPointByVerify(PointDomain pointDomain);

	public List<PointDomain> findPointByCompanyToDrop(PointDomain pointDomain);

	public List<PointDomain> findPointByReport(ReportDomain reportDomain);

	public int getOverduePointCount(Map<String, String> map);
	
	public List<PointDomain> getOverduePoint(Map<String, String> map);
}
