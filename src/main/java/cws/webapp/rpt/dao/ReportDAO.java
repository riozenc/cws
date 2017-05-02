/**
 * @Project:cws
 * @Title:ReportDAO.java
 * @Author:Riozenc
 * @Datetime:2017年4月23日 下午9:07:56
 * 
 */
package cws.webapp.rpt.dao;

import java.util.List;

import com.riozenc.quicktool.annotation.PaginationSupport;
import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.mybatis.dao.AbstractTransactionDAOSupport;
import com.riozenc.quicktool.mybatis.dao.BaseDAO;

import cws.webapp.rpt.domain.ReportDomain;

@TransactionDAO
public class ReportDAO extends AbstractTransactionDAOSupport implements BaseDAO<ReportDomain> {

	@Override
	public int insert(ReportDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().insert(getNamespace() + ".insert", t);
	}

	@Override
	public int delete(ReportDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().delete(getNamespace() + ".delete", t);
	}

	@Override
	public int update(ReportDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().update(getNamespace() + ".update", t);
	}

	@Override
	public ReportDomain findByKey(ReportDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().load(getNamespace() + ".findByKey", t);
	}

	@Override
	public List<ReportDomain> findByWhere(ReportDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().find(getNamespace() + ".findByWhere", t);
	}

	@PaginationSupport
	public List<ReportDomain> findReportByCompany(ReportDomain reportDomain) {
		return getPersistanceManager().find(getNamespace() + ".findReportByCompany", reportDomain);
	}
	
	public int insertCompanyReportRel(ReportDomain reportDomain){
		return getPersistanceManager().insert(getNamespace()+".insertCompanyReportRel", reportDomain);
	}
	
	public int deleteCompanyReportRel(ReportDomain reportDomain){
		return getPersistanceManager().insert(getNamespace()+".deleteCompanyReportRel", reportDomain);
	}

}
