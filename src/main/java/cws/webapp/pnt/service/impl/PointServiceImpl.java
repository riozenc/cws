/**
 * @Project:cws
 * @Title:PointServiceImpl.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午9:47:11
 * 
 */
package cws.webapp.pnt.service.impl;

import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.annotation.TransactionService;

import cws.webapp.pnt.dao.PointDAO;
import cws.webapp.pnt.domain.PointDomain;
import cws.webapp.pnt.service.IPointService;

@TransactionService
public class PointServiceImpl implements IPointService {

	@TransactionDAO
	private PointDAO pointDAO;
	
	@Override
	public int insert(PointDomain t) {
		// TODO Auto-generated method stub
		return pointDAO.insert(t);
	}

	@Override
	public int delete(PointDomain t) {
		// TODO Auto-generated method stub
		return pointDAO.delete(t);
	}

	@Override
	public int update(PointDomain t) {
		// TODO Auto-generated method stub
		return pointDAO.update(t);
	}

	@Override
	public PointDomain findByKey(PointDomain t) {
		// TODO Auto-generated method stub
		return pointDAO.findByKey(t);
	}

	@Override
	public List<PointDomain> findByWhere(PointDomain t) {
		// TODO Auto-generated method stub
		return pointDAO.findByWhere(t);
	}

}
