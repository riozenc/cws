/**
 * @Project:cws
 * @Title:PointDAO.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午9:56:56
 * 
 */
package cws.webapp.bas.dao;

import java.util.List;

import com.riozenc.quicktool.mybatis.dao.AbstractTransactionDAOSupport;
import com.riozenc.quicktool.mybatis.dao.BaseDAO;

import cws.webapp.bas.domain.PointDomain;

public class PointDAO extends AbstractTransactionDAOSupport implements BaseDAO<PointDomain> {

	@Override
	public int insert(PointDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().insert(getNamespace() + ".insert", t);
	}

	@Override
	public int delete(PointDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().delete(getNamespace() + ".delete", t);
	}

	@Override
	public int update(PointDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().update(getNamespace() + ".update", t);
	}

	@Override
	public PointDomain findByKey(PointDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().load(getNamespace() + ".findByKey", t);
	}

	@Override
	public List<PointDomain> findByWhere(PointDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().find(getNamespace() + ".findByWhere", t);
	}

}
