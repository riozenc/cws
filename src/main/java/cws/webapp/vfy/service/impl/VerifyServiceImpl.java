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
import cws.webapp.rpt.domain.ReportDomain;
import cws.webapp.vfy.dao.ChillCarDAO;
import cws.webapp.vfy.dao.ColdStorageDAO;
import cws.webapp.vfy.dao.InsulationCanDAO;
import cws.webapp.vfy.dao.VerifyDAO;
import cws.webapp.vfy.domain.ChillCarDomain;
import cws.webapp.vfy.domain.ColdStorageDomain;
import cws.webapp.vfy.domain.InsulationCanDomain;
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
	@TransactionDAO
	private InsulationCanDAO insulationCanDAO;

	@Override
	public int insert(VerifyDomain verifyDomain) {
		// TODO Auto-generated method stub
		switch (verifyDomain.getVerifyType()) {
		case 1:// 冷库
			ColdStorageDomain coldStorageDomain = new ColdStorageDomain();
			coldStorageDomain.setName(verifyDomain.getVerifyName());
			coldStorageDomain.setStatus(1);
			coldStorageDAO.insert(coldStorageDomain);
			verifyDomain.setVerifyId(coldStorageDomain.getId());
			break;
		case 2:// 冷藏车
			ChillCarDomain chillCarDomain = new ChillCarDomain();
			chillCarDomain.setName(verifyDomain.getVerifyName());
			chillCarDomain.setStatus(1);
			chillCarDAO.insert(chillCarDomain);
			verifyDomain.setVerifyId(chillCarDomain.getId());
			break;
		case 3:// 保温箱
			InsulationCanDomain insulationCanDomain = new InsulationCanDomain();
			insulationCanDomain.setName(verifyDomain.getVerifyName());
			insulationCanDomain.setStatus(1);
			insulationCanDAO.insert(insulationCanDomain);
			verifyDomain.setVerifyId(insulationCanDomain.getId());
			break;
		}

		verifyDAO.insert(verifyDomain);
		return verifyDAO.insertVerifyCompanyRel(verifyDomain);
	}

	@Override
	public int delete(VerifyDomain verifyDomain) {
		// TODO Auto-generated method stub
		switch (verifyDomain.getVerifyType()) {
		case 1:// 冷库
			ColdStorageDomain coldStorageDomain = new ColdStorageDomain();
			coldStorageDomain.setId(verifyDomain.getVerifyId());
			coldStorageDAO.delete(coldStorageDomain);
			break;
		case 2:// 冷藏车
			ChillCarDomain chillCarDomain = new ChillCarDomain();
			chillCarDomain.setId(verifyDomain.getVerifyId());
			chillCarDAO.delete(chillCarDomain);
			break;
		case 3:// 保温箱
			InsulationCanDomain insulationCanDomain = new InsulationCanDomain();
			insulationCanDomain.setId(verifyDomain.getVerifyId());
			insulationCanDAO.delete(insulationCanDomain);
			break;
		}
		verifyDAO.deleteVerifyCompanyRel(verifyDomain);
		return verifyDAO.delete(verifyDomain);
	}

	@Override
	public int update(VerifyDomain verifyDomain) {
		// TODO Auto-generated method stub
		switch (verifyDomain.getVerifyType()) {
		case 1:// 冷库
			ColdStorageDomain coldStorageDomain = new ColdStorageDomain();
			coldStorageDomain.setId(verifyDomain.getVerifyId());
			coldStorageDomain.setName(verifyDomain.getVerifyName());
			coldStorageDAO.update(coldStorageDomain);
			break;
		case 2:// 冷藏车
			ChillCarDomain chillCarDomain = new ChillCarDomain();
			chillCarDomain.setId(verifyDomain.getVerifyId());
			chillCarDomain.setName(verifyDomain.getVerifyName());
			chillCarDAO.update(chillCarDomain);
			break;
		case 3:// 保温箱
			InsulationCanDomain insulationCanDomain = new InsulationCanDomain();
			insulationCanDomain.setId(verifyDomain.getVerifyId());
			insulationCanDomain.setName(verifyDomain.getVerifyName());
			insulationCanDAO.update(insulationCanDomain);
			break;
		}
		return verifyDAO.update(verifyDomain);
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
			InsulationCanDomain insulationCanDomain = new InsulationCanDomain();
			insulationCanDomain.setId(verifyDomain.getVerifyId());
			verifyDomain = insulationCanDAO.findByKey(insulationCanDomain);
			break;
		}
		return verifyDomain;
	}

	@Override
	public List<VerifyDomain> getVerifyByCompanyToDrop(CompanyDomain companyDomain) {
		// TODO Auto-generated method stub
		return verifyDAO.getVerifyByCompanyToDrop(companyDomain);
	}

	@Override
	public VerifyDomain getVerifyInfoByReport(ReportDomain reportDomain) {
		// TODO Auto-generated method stub
		VerifyDomain verifyDomain = null;
		switch (Integer.parseInt(reportDomain.getReportType())) {
		case 1:// 冷库
			verifyDomain = coldStorageDAO.findByReport(reportDomain);
			break;
		case 2:// 冷藏车
			verifyDomain = chillCarDAO.findByReport(reportDomain);
			break;
		case 3:// 保温箱
			verifyDomain = insulationCanDAO.findByReport(reportDomain);
			break;
		}
		return verifyDomain;
	}
}
