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
import cws.webapp.vfy.dao.ChillCarDAO;
import cws.webapp.vfy.dao.ColdStorageDAO;
import cws.webapp.vfy.dao.VerifyDAO;
import cws.webapp.vfy.domain.ChillCarDomain;
import cws.webapp.vfy.domain.ColdStorageDomain;
import cws.webapp.vfy.domain.VerifyDomain;
import cws.webapp.vfy.service.IVerifyService;

@TransactionService
public class VerifyServiceImpl implements IVerifyService {

	@TransactionDAO
	private VerifyDAO verifyDAO;
	@TransactionDAO
	private ChillCarDAO chillCarDAO;
	@TransactionDAO
	private ColdStorageDAO coldStorageDAO;

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

	@Override
	public VerifyDomain getVerifyInfo(VerifyDomain verifyDomain) {
		// TODO Auto-generated method stub
		switch (verifyDomain.getVerifyType()) {
		case 1:// 冷库
			ColdStorageDomain coldStorageDomain = new ColdStorageDomain();
			coldStorageDomain.setId(verifyDomain.getVerifyId());
			verifyDomain = coldStorageDAO.findByKey(coldStorageDomain);
			break;
		case 2:// 冷藏车
			ChillCarDomain chillCarDomain = new ChillCarDomain();
			chillCarDomain.setId(verifyDomain.getVerifyId());
			verifyDomain = chillCarDAO.findByKey(chillCarDomain);
			break;
		case 3:// 保温箱
			break;
		}
		return verifyDomain;
	}

}
