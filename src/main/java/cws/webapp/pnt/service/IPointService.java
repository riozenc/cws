/**
 * @Project:cws
 * @Title:IPointService.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午9:46:15
 * 
 */
package cws.webapp.pnt.service;

import java.util.List;

import com.riozenc.quicktool.springmvc.webapp.service.BaseService;

import cws.webapp.pnt.domain.PointDomain;

public interface IPointService extends BaseService<PointDomain> {
	public List<PointDomain> findPointByCompany(PointDomain pointDomain);

	public List<PointDomain> findPointByVerify(PointDomain pointDomain);

	public List<PointDomain> findPointByCompanyToDrop(PointDomain pointDomain);
}
