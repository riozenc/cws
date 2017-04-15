/**
 * @Project:cws
 * @Title:ValidationReportDAO.java
 * @Author:Riozenc
 * @Datetime:2017年4月15日 下午12:41:11
 * 
 */
package cws.webapp.vfy.dao;

import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.mybatis.dao.AbstractTransactionDAOSupport;
import com.riozenc.quicktool.mybatis.dao.BaseDAO;

import cws.webapp.vfy.domain.ValidationReportDomain;

@TransactionDAO
public class ValidationReportDAO extends AbstractTransactionDAOSupport implements BaseDAO<ValidationReportDomain> {

	@Override
	public int insert(ValidationReportDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().insert(getNamespace() + ".insert", t);
	}

	@Override
	public int delete(ValidationReportDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().delete(getNamespace() + ".delete", t);
	}

	@Override
	public int update(ValidationReportDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().update(getNamespace() + ".update", t);
	}

	@Override
	public ValidationReportDomain findByKey(ValidationReportDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().load(getNamespace() + ".findByKey", t);
	}

	@Override
	public List<ValidationReportDomain> findByWhere(ValidationReportDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().find(getNamespace() + ".findByWhere", t);
	}

}
