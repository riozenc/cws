/**
 * @Project:cws
 * @Title:HostDAO.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午9:55:11
 * 
 */
package cws.webapp.hst.dao;

import java.util.List;

import com.riozenc.quicktool.annotation.PaginationSupport;
import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.mybatis.dao.AbstractTransactionDAOSupport;
import com.riozenc.quicktool.mybatis.dao.BaseDAO;

import cws.webapp.hst.domain.CompanyHostDomain;
import cws.webapp.hst.domain.HostDomain;

@TransactionDAO
public class HostDAO extends AbstractTransactionDAOSupport implements BaseDAO<HostDomain> {

	@Override
	public int insert(HostDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().insert(getNamespace() + ".insert", t);
	}

	@Override
	public int delete(HostDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().delete(getNamespace() + ".delete", t);
	}

	@Override
	public int update(HostDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().update(getNamespace() + ".update", t);
	}

	@Override
	public HostDomain findByKey(HostDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().load(getNamespace() + ".findByKey", t);
	}

	@Override
	public List<HostDomain> findByWhere(HostDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().find(getNamespace() + ".findByWhere", t);
	}

	public int insertHostCompanyRel(CompanyHostDomain hostCompanyDomain) {
		return getPersistanceManager().insert(getNamespace() + ".insertHostCompanyRel", hostCompanyDomain);
	}
	
	public int deleteHostCompanyRel(CompanyHostDomain hostCompanyDomain){
		return getPersistanceManager().delete(getNamespace() + ".deleteHostCompanyRel", hostCompanyDomain);
	}

	@PaginationSupport
	public List<HostDomain> findHostByCompany(HostDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().find(getNamespace() + ".findHostByCompany", t);
	}

}
