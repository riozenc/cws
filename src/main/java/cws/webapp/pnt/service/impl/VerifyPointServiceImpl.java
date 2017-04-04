/**
 * @Project:cws
 * @Title:VerifyPointServiceImpl.java
 * @Author:Riozenc
 * @Datetime:2017年4月4日 下午9:51:08
 * 
 */
package cws.webapp.pnt.service.impl;

import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.annotation.TransactionService;

import cws.webapp.pnt.dao.VerifyPointDAO;
import cws.webapp.pnt.domain.VerifyPointDomain;
import cws.webapp.pnt.service.IVerifyPointService;

@TransactionService
public class VerifyPointServiceImpl implements IVerifyPointService {

	@TransactionDAO
	private VerifyPointDAO verifyPointDAO;

	@Override
	public int insert(VerifyPointDomain t) {
		// TODO Auto-generated method stub
		return verifyPointDAO.insert(t);
	}

	@Override
	public int delete(VerifyPointDomain t) {
		// TODO Auto-generated method stub
		return verifyPointDAO.delete(t);
	}

	@Override
	public int update(VerifyPointDomain t) {
		// TODO Auto-generated method stub
		return verifyPointDAO.update(t);
	}

	@Override
	public VerifyPointDomain findByKey(VerifyPointDomain t) {
		// TODO Auto-generated method stub
		return verifyPointDAO.findByKey(t);
	}

	@Override
	public List<VerifyPointDomain> findByWhere(VerifyPointDomain t) {
		// TODO Auto-generated method stub
		return verifyPointDAO.findByWhere(t);
	}

}
