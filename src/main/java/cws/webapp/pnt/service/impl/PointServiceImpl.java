/**
 * @Project:cws
 * @Title:PointServiceImpl.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午9:47:11
 * 
 */
package cws.webapp.pnt.service.impl;

import java.util.Date;
import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.annotation.TransactionService;

import cws.webapp.pnt.dao.PointDAO;
import cws.webapp.pnt.domain.CompanyPointDomain;
import cws.webapp.pnt.domain.PointDomain;
import cws.webapp.pnt.service.IPointService;
import cws.webapp.rpt.domain.ReportDomain;

@TransactionService
public class PointServiceImpl implements IPointService {

	@TransactionDAO
	private PointDAO pointDAO;

	@Override
	public int insert(PointDomain t) {
		// TODO Auto-generated method stub
		pointDAO.insert(t);
		CompanyPointDomain companyPointDomain = new CompanyPointDomain();
		companyPointDomain.setCompanyId(t.getCompanyId());
		companyPointDomain.setPointId(t.getId());
		companyPointDomain.setCreateDate(new Date());
		companyPointDomain.setStatus(1);

		return pointDAO.insertCompanyPointRel(companyPointDomain);
	}

	@Override
	public int delete(PointDomain t) {
		// TODO Auto-generated method stub
		CompanyPointDomain companyPointDomain = new CompanyPointDomain();
		companyPointDomain.setCompanyId(t.getCompanyId());
		companyPointDomain.setPointId(t.getId());
		pointDAO.deleteCompanyPointRel(companyPointDomain);
		return pointDAO.delete(t);
	}

	@Override
	public int update(PointDomain t) {
		// TODO Auto-generated method stub
		return pointDAO.update(t);
	}

	@Override
	public PointDomain findByKey(PointDomain t) {
		// TODO Auto-generated method stub
		return pointDAO.findByKey(t);
	}

	@Override
	public List<PointDomain> findByWhere(PointDomain t) {
		// TODO Auto-generated method stub
		return pointDAO.findByWhere(t);
	}

	@Override
	public List<PointDomain> findPointByCompany(PointDomain pointDomain) {
		// TODO Auto-generated method stub
		return pointDAO.findPointByCompany(pointDomain);
	}

	@Override
	public List<PointDomain> findPointByVerify(PointDomain pointDomain) {
		// TODO Auto-generated method stub
		return pointDAO.findPointByVerify(pointDomain);
	}

	@Override
	public List<PointDomain> findPointByCompanyToDrop(PointDomain pointDomain) {
		// TODO Auto-generated method stub
		return pointDAO.findPointByCompanyToDrop(pointDomain);
	}

	@Override
	public List<PointDomain> findPointByReport(ReportDomain reportDomain) {
		// TODO Auto-generated method stub
		return pointDAO.findPointByReport(reportDomain);
	}

}
