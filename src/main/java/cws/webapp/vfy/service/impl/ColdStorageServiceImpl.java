/**
 * @Project:cws
 * @Title:ColdStorageServiceImpl.java
 * @Author:Riozenc
 * @Datetime:2017年4月13日 下午10:20:22
 * 
 */
package cws.webapp.vfy.service.impl;

import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.annotation.TransactionService;

import cws.webapp.vfy.dao.ColdStorageDAO;
import cws.webapp.vfy.domain.ColdStorageDomain;
import cws.webapp.vfy.service.IColdStorageService;

@TransactionService
public class ColdStorageServiceImpl implements IColdStorageService {

	@TransactionDAO
	private ColdStorageDAO coldStorageDAO;

	@Override
	public int insert(ColdStorageDomain t) {
		// TODO Auto-generated method stub
		return coldStorageDAO.insert(t);
	}

	@Override
	public int delete(ColdStorageDomain t) {
		// TODO Auto-generated method stub
		return coldStorageDAO.delete(t);
	}

	@Override
	public int update(ColdStorageDomain t) {
		// TODO Auto-generated method stub
		return coldStorageDAO.update(t);
	}

	@Override
	public ColdStorageDomain findByKey(ColdStorageDomain t) {
		// TODO Auto-generated method stub
		return coldStorageDAO.findByKey(t);
	}

	@Override
	public List<ColdStorageDomain> findByWhere(ColdStorageDomain t) {
		// TODO Auto-generated method stub
		return coldStorageDAO.findByWhere(t);
	}

}
