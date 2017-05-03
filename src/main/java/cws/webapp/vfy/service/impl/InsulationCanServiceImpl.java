/**
 * @Project:cws
 * @Title:InsulationCanServiceImpl.java
 * @Author:Riozenc
 * @Datetime:2017年5月3日 下午10:54:23
 * 
 */
package cws.webapp.vfy.service.impl;

import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.annotation.TransactionService;

import cws.webapp.vfy.dao.InsulationCanDAO;
import cws.webapp.vfy.domain.InsulationCanDomain;
import cws.webapp.vfy.service.IInsulationCanService;

@TransactionService
public class InsulationCanServiceImpl implements IInsulationCanService {

	@TransactionDAO
	private InsulationCanDAO insulationCanDAO;

	@Override
	public int insert(InsulationCanDomain t) {
		// TODO Auto-generated method stub
		return insulationCanDAO.insert(t);
	}

	@Override
	public int delete(InsulationCanDomain t) {
		// TODO Auto-generated method stub
		return insulationCanDAO.delete(t);
	}

	@Override
	public int update(InsulationCanDomain t) {
		// TODO Auto-generated method stub
		return insulationCanDAO.update(t);
	}

	@Override
	public InsulationCanDomain findByKey(InsulationCanDomain t) {
		// TODO Auto-generated method stub
		return insulationCanDAO.findByKey(t);
	}

	@Override
	public List<InsulationCanDomain> findByWhere(InsulationCanDomain t) {
		// TODO Auto-generated method stub
		return insulationCanDAO.findByWhere(t);
	}

}
