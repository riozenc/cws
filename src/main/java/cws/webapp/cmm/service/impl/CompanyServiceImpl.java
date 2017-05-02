/**
 * @Project:cws
 * @Title:CompanyServiceImpl.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午9:46:27
 * 
 */
package cws.webapp.cmm.service.impl;

import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.annotation.TransactionService;

import cws.webapp.cmm.dao.CompanyDAO;
import cws.webapp.cmm.domain.CompanyDomain;
import cws.webapp.cmm.service.ICompanyService;
import cws.webapp.hst.domain.HostDomain;
import cws.webapp.pnt.domain.PointDomain;
import cws.webapp.rpt.domain.ReportDomain;
import cws.webapp.vfy.domain.VerifyDomain;


@TransactionService
public class CompanyServiceImpl implements ICompanyService {

	@TransactionDAO
	private CompanyDAO companyDAO;

	@Override
	public int insert(CompanyDomain t) {
		// TODO Auto-generated method stub
		return companyDAO.insert(t);
	}

	@Override
	public int delete(CompanyDomain t) {
		// TODO Auto-generated method stub
		return companyDAO.delete(t);
	}

	@Override
	public int update(CompanyDomain t) {
		// TODO Auto-generated method stub
		return companyDAO.update(t);
	}

	@Override
	public CompanyDomain findByKey(CompanyDomain t) {
		// TODO Auto-generated method stub
		return companyDAO.findByKey(t);
	}

	@Override
	public List<CompanyDomain> findByWhere(CompanyDomain t) {
		// TODO Auto-generated method stub
		return companyDAO.findByWhere(t);
	}

	@Override
	public List<VerifyDomain> getVerifyByCompany(CompanyDomain companyDomain) {
		// TODO Auto-generated method stub
		return companyDAO.getVerifyByCompany(companyDomain);
	}

	@Override
	public List<PointDomain> getPointByCompany(CompanyDomain companyDomain) {
		// TODO Auto-generated method stub
		return companyDAO.getPointByCompany(companyDomain);
	}

	@Override
	public List<HostDomain> getHostByCompany(CompanyDomain companyDomain) {
		// TODO Auto-generated method stub
		return companyDAO.getHostByCompany(companyDomain);
	}

	@Override
	public List<ReportDomain> getReportByCompany(CompanyDomain companyDomain) {
		// TODO Auto-generated method stub
		return companyDAO.getReportByCompany(companyDomain);
	}

}
