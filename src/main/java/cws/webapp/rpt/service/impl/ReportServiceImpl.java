/**
 * @Project:cws
 * @Title:ReportServiceImpl.java
 * @Author:Riozenc
 * @Datetime:2017年4月23日 下午9:10:40
 * 
 */
package cws.webapp.rpt.service.impl;

import java.util.Date;
import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.annotation.TransactionService;

import cws.webapp.rpt.dao.ReportDAO;
import cws.webapp.rpt.domain.ReportDomain;
import cws.webapp.rpt.service.IReportService;

@TransactionService
public class ReportServiceImpl implements IReportService {

	@TransactionDAO
	private ReportDAO reportDAO;

	@Override
	public int insert(ReportDomain t) {
		// TODO Auto-generated method stub
		t.setCreateDate(new Date());
		reportDAO.insertCompanyReportRel(t);

		return reportDAO.insert(t);
	}

	@Override
	public int delete(ReportDomain t) {
		// TODO Auto-generated method stub
		reportDAO.deleteCompanyReportRel(t);
		return reportDAO.delete(t);
	}

	@Override
	public int update(ReportDomain t) {
		// TODO Auto-generated method stub
		return reportDAO.update(t);
	}

	@Override
	public ReportDomain findByKey(ReportDomain t) {
		// TODO Auto-generated method stub
		return reportDAO.findByKey(t);
	}

	@Override
	public List<ReportDomain> findByWhere(ReportDomain t) {
		// TODO Auto-generated method stub
		return reportDAO.findByWhere(t);
	}

	@Override
	public List<ReportDomain> findReportByCompany(ReportDomain reportDomain) {
		// TODO Auto-generated method stub
		return reportDAO.findReportByCompany(reportDomain);
	}

}
