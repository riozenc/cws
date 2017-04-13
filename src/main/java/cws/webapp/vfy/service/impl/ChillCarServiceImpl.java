/**
 * @Project:cws
 * @Title:ChillCarServiceImpl.java
 * @Author:Riozenc
 * @Datetime:2017年4月13日 下午10:18:40
 * 
 */
package cws.webapp.vfy.service.impl;

import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.annotation.TransactionService;

import cws.webapp.vfy.dao.ChillCarDAO;
import cws.webapp.vfy.domain.ChillCarDomain;
import cws.webapp.vfy.service.IChillCarService;

@TransactionService
public class ChillCarServiceImpl implements IChillCarService {

	@TransactionDAO
	private ChillCarDAO chillCarDAO;

	@Override
	public int insert(ChillCarDomain t) {
		// TODO Auto-generated method stub
		return chillCarDAO.insert(t);
	}

	@Override
	public int delete(ChillCarDomain t) {
		// TODO Auto-generated method stub
		return chillCarDAO.delete(t);
	}

	@Override
	public int update(ChillCarDomain t) {
		// TODO Auto-generated method stub
		return chillCarDAO.update(t);
	}

	@Override
	public ChillCarDomain findByKey(ChillCarDomain t) {
		// TODO Auto-generated method stub
		return chillCarDAO.findByKey(t);
	}

	@Override
	public List<ChillCarDomain> findByWhere(ChillCarDomain t) {
		// TODO Auto-generated method stub
		return chillCarDAO.findByWhere(t);
	}

}
