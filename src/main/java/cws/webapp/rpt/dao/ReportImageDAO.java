/**
 * @Project:cws
 * @Title:ReportImageDAO.java
 * @Author:Riozenc
 * @Datetime:2017年5月2日 下午9:06:56
 * 
 */
package cws.webapp.rpt.dao;

import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.mybatis.dao.AbstractTransactionDAOSupport;
import com.riozenc.quicktool.mybatis.dao.BaseDAO;

import cws.webapp.rpt.domain.ReportImageDomain;

@TransactionDAO
public class ReportImageDAO extends AbstractTransactionDAOSupport implements BaseDAO<ReportImageDomain> {

	@Override
	public int insert(ReportImageDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().insert(getNamespace() + ".insert", t);
	}

	@Override
	public int delete(ReportImageDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().delete(getNamespace() + ".delete", t);
	}

	@Override
	public int update(ReportImageDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().update(getNamespace() + ".update", t);
	}

	@Override
	public ReportImageDomain findByKey(ReportImageDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().load(getNamespace() + ".findByKey", t);
	}

	@Override
	public List<ReportImageDomain> findByWhere(ReportImageDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().find(getNamespace() + ".findByWhere", t);
	}

}
