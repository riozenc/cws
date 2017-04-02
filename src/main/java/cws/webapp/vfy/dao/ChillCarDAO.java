/**
 * @Project:cws
 * @Title:ChillCarDAO.java
 * @Author:Riozenc
 * @Datetime:2017年4月2日 下午2:17:12
 * 
 */
package cws.webapp.vfy.dao;

import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.mybatis.dao.AbstractTransactionDAOSupport;
import com.riozenc.quicktool.mybatis.dao.BaseDAO;

import cws.webapp.vfy.domain.ChillCarDomain;

@TransactionDAO
public class ChillCarDAO extends AbstractTransactionDAOSupport implements BaseDAO<ChillCarDomain> {

	@Override
	public int insert(ChillCarDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().insert(getNamespace() + ".insert", t);
	}

	@Override
	public int delete(ChillCarDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().delete(getNamespace() + ".delete", t);
	}

	@Override
	public int update(ChillCarDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().update(getNamespace() + ".update", t);
	}

	@Override
	public ChillCarDomain findByKey(ChillCarDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().load(getNamespace() + ".findByKey", t);
	}

	@Override
	public List<ChillCarDomain> findByWhere(ChillCarDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().find(getNamespace() + ".findByWhere", t);
	}

}
