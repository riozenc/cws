/**
 * @Project:cws
 * @Title:VerifyDAO.java
 * @Author:Riozenc
 * @Datetime:2017年3月29日 下午10:50:31
 * 
 */
package cws.webapp.vfy.dao;

import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.mybatis.dao.AbstractTransactionDAOSupport;
import com.riozenc.quicktool.mybatis.dao.BaseDAO;

import cws.webapp.cmm.domain.CompanyDomain;
import cws.webapp.vfy.domain.VerifyDomain;

@TransactionDAO
public class VerifyDAO extends AbstractTransactionDAOSupport implements BaseDAO<VerifyDomain> {

	@Override
	public int insert(VerifyDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().insert(getNamespace() + ".insert", t);
	}

	@Override
	public int delete(VerifyDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().delete(getNamespace() + ".delete", t);
	}

	@Override
	public int update(VerifyDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().update(getNamespace() + ".update", t);
	}

	@Override
	public VerifyDomain findByKey(VerifyDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().load(getNamespace() + ".findByKey", t);
	}

	@Override
	public List<VerifyDomain> findByWhere(VerifyDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().find(getNamespace() + ".findByWhere", t);
	}

	public List<VerifyDomain> getVerifyByCompany(CompanyDomain companyDomain) {
		return getPersistanceManager().find(getNamespace() + ".getVerifyByCompany", companyDomain);
	}
	
	public List<VerifyDomain> getVerifyByCompanyToDrop(CompanyDomain companyDomain) {
		return getPersistanceManager().find(getNamespace() + ".getVerifyByCompanyToDrop", companyDomain);
	}

}
