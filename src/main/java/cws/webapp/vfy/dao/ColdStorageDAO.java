/**
 * @Project:cws
 * @Title:ColdStorageDAO.java
 * @Author:Riozenc
 * @Datetime:2017年4月2日 下午2:18:49
 * 
 */
package cws.webapp.vfy.dao;

import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.mybatis.dao.AbstractTransactionDAOSupport;
import com.riozenc.quicktool.mybatis.dao.BaseDAO;

import cws.webapp.vfy.domain.ColdStorageDomain;

@TransactionDAO
public class ColdStorageDAO extends AbstractTransactionDAOSupport implements BaseDAO<ColdStorageDomain> {

	@Override
	public int insert(ColdStorageDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().insert(getNamespace() + ".insert", t);
	}

	@Override
	public int delete(ColdStorageDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().delete(getNamespace() + ".delete", t);
	}

	@Override
	public int update(ColdStorageDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().update(getNamespace() + ".update", t);
	}

	@Override
	public ColdStorageDomain findByKey(ColdStorageDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().load(getNamespace() + ".findByKey", t);
	}

	@Override
	public List<ColdStorageDomain> findByWhere(ColdStorageDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().find(getNamespace() + ".findByWhere", t);
	}

}
