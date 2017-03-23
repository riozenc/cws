/**
 * @Project:cws
 * @Title:CompanyServiceImpl.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午9:46:27
 * 
 */
package cws.webapp.bas.service.impl;

import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.annotation.TransactionService;

import cws.webapp.bas.dao.CompanyDAO;
import cws.webapp.bas.domain.CompanyDomain;
import cws.webapp.bas.service.ICompanyService;

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

}
