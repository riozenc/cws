/**
 * @Project:cws
 * @Title:VerifyServiceImpl.java
 * @Author:Riozenc
 * @Datetime:2017年3月29日 下午10:55:02
 * 
 */
package cws.webapp.vfy.service.impl;

import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.annotation.TransactionService;

import cws.webapp.cmm.domain.CompanyDomain;
import cws.webapp.vfy.dao.VerifyDAO;
import cws.webapp.vfy.domain.VerifyDomain;
import cws.webapp.vfy.service.IVerifyService;

@TransactionService
public class VerifyServiceImpl implements IVerifyService {

	@TransactionDAO
	private VerifyDAO verifyDAO;

	@Override
	public int insert(VerifyDomain t) {
		// TODO Auto-generated method stub
		return verifyDAO.insert(t);
	}

	@Override
	public int delete(VerifyDomain t) {
		// TODO Auto-generated method stub
		return verifyDAO.delete(t);
	}

	@Override
	public int update(VerifyDomain t) {
		// TODO Auto-generated method stub
		return verifyDAO.update(t);
	}

	@Override
	public VerifyDomain findByKey(VerifyDomain t) {
		// TODO Auto-generated method stub
		return verifyDAO.findByKey(t);
	}

	@Override
	public List<VerifyDomain> findByWhere(VerifyDomain t) {
		// TODO Auto-generated method stub
		return verifyDAO.findByWhere(t);
	}

	@Override
	public List<VerifyDomain> getVerifyByCompany(CompanyDomain companyDomain) {
		// TODO Auto-generated method stub
		return verifyDAO.getVerifyByCompany(companyDomain);
	}

}
