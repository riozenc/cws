/**
 * @Project:cws
 * @Title:PersonnelPostDAO.java
 * @Author:Riozenc
 * @Datetime:2017年3月28日 下午11:27:55
 * 
 */
package cws.webapp.cmm.dao;

import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.mybatis.dao.AbstractTransactionDAOSupport;
import com.riozenc.quicktool.mybatis.dao.BaseDAO;

import cws.webapp.cmm.domain.PersonnelPostDomain;

@TransactionDAO
public class PersonnelPostDAO extends AbstractTransactionDAOSupport implements BaseDAO<PersonnelPostDomain> {

	@Override
	public int insert(PersonnelPostDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().insert(getNamespace() + ".insert", t);
	}

	@Override
	public int delete(PersonnelPostDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().delete(getNamespace() + ".delete", t);
	}

	@Override
	public int update(PersonnelPostDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().update(getNamespace() + ".update", t);
	}

	@Override
	public PersonnelPostDomain findByKey(PersonnelPostDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().load(getNamespace() + ".findByKey", t);
	}

	@Override
	public List<PersonnelPostDomain> findByWhere(PersonnelPostDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().find(getNamespace() + ".findByWhere", t);
	}

}
