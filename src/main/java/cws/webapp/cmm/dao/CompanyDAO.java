/**
 * @Project:cws
 * @Title:CompanyDAO.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午9:48:27
 * 
 */
package cws.webapp.cmm.dao;

import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.mybatis.dao.AbstractTransactionDAOSupport;
import com.riozenc.quicktool.mybatis.dao.BaseDAO;

import cws.webapp.cmm.domain.CompanyDomain;
import cws.webapp.pnt.domain.PointDomain;
import cws.webapp.vfy.domain.VerifyDomain;

@TransactionDAO
public class CompanyDAO extends AbstractTransactionDAOSupport implements BaseDAO<CompanyDomain> {

	@Override
	public int insert(CompanyDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().insert(getNamespace() + ".insert", t);
	}

	@Override
	public int delete(CompanyDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().delete(getNamespace() + ".delete", t);
	}

	@Override
	public int update(CompanyDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().update(getNamespace() + ".update", t);
	}

	@Override
	public CompanyDomain findByKey(CompanyDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().load(getNamespace() + ".findByKey", t);
	}

	@Override
	public List<CompanyDomain> findByWhere(CompanyDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().find(getNamespace() + ".findByWhere", t);
	}

	public List<PointDomain> getPointByCompany(CompanyDomain companyDomain) {
		return getPersistanceManager().find(getNamespace() + ".getPointByCompany", companyDomain);
	}

	public List<VerifyDomain> getVerifyByCompany(CompanyDomain companyDomain) {
		return getPersistanceManager().find(getNamespace() + ".getVerifyByCompany", companyDomain);
	}

}
