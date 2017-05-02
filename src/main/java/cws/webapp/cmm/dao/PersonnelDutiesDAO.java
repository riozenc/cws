/**
 * @Project:cws
 * @Title:PersonnelDutiesDAO.java
 * @Author:Riozenc
 * @Datetime:2017年4月20日 下午10:28:25
 * 
 */
package cws.webapp.cmm.dao;

import java.util.List;

import com.riozenc.quicktool.annotation.PaginationSupport;
import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.mybatis.dao.AbstractTransactionDAOSupport;
import com.riozenc.quicktool.mybatis.dao.BaseDAO;

import cws.webapp.cmm.domain.PersonnelDutiesDomain;

@TransactionDAO
public class PersonnelDutiesDAO extends AbstractTransactionDAOSupport implements BaseDAO<PersonnelDutiesDomain> {

	@Override
	public int insert(PersonnelDutiesDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().insert(getNamespace() + ".insert", t);
	}

	@Override
	public int delete(PersonnelDutiesDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().delete(getNamespace() + ".delete", t);
	}

	@Override
	public int update(PersonnelDutiesDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().update(getNamespace() + ".update", t);
	}

	@Override
	public PersonnelDutiesDomain findByKey(PersonnelDutiesDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().load(getNamespace() + ".findByKey", t);
	}

	@Override
	public List<PersonnelDutiesDomain> findByWhere(PersonnelDutiesDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().find(getNamespace() + ".findByWhere", t);
	}

	@PaginationSupport
	public List<PersonnelDutiesDomain> findPersonnelDutiesByCompany(PersonnelDutiesDomain personnelDutiesDomain) {
		return getPersistanceManager().find(getNamespace() + ".findPersonnelDutiesByCompany", personnelDutiesDomain);
	}
}
