/**
 * @Project:cws
 * @Title:InsulationCanDAO.java
 * @Author:Riozenc
 * @Datetime:2017年5月3日 下午10:54:47
 * 
 */
package cws.webapp.vfy.dao;

import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.mybatis.dao.AbstractTransactionDAOSupport;
import com.riozenc.quicktool.mybatis.dao.BaseDAO;

import cws.webapp.rpt.domain.ReportDomain;
import cws.webapp.vfy.domain.InsulationCanDomain;

@TransactionDAO
public class InsulationCanDAO extends AbstractTransactionDAOSupport implements BaseDAO<InsulationCanDomain> {

	@Override
	public int insert(InsulationCanDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().insert(getNamespace() + ".insert", t);
	}

	@Override
	public int delete(InsulationCanDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().delete(getNamespace() + ".delete", t);
	}

	@Override
	public int update(InsulationCanDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().update(getNamespace() + ".update", t);
	}

	@Override
	public InsulationCanDomain findByKey(InsulationCanDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().load(getNamespace() + ".findByKey", t);
	}

	@Override
	public List<InsulationCanDomain> findByWhere(InsulationCanDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().find(getNamespace() + ".findByWhere", t);
	}

	public InsulationCanDomain findByReport(ReportDomain reportDomain) {
		// TODO Auto-generated method stub
		return getPersistanceManager().load(getNamespace() + ".findByReport", reportDomain);
	}
}
