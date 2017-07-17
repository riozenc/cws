/**
 * @Project:cws
 * @Title:PointDAO.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午9:56:56
 * 
 */
package cws.webapp.pnt.dao;

import java.util.List;
import java.util.Map;

import com.riozenc.quicktool.annotation.PaginationSupport;
import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.mybatis.dao.AbstractTransactionDAOSupport;
import com.riozenc.quicktool.mybatis.dao.BaseDAO;

import cws.webapp.pnt.domain.CompanyPointDomain;
import cws.webapp.pnt.domain.PointDomain;
import cws.webapp.rpt.domain.ReportDomain;

@TransactionDAO
public class PointDAO extends AbstractTransactionDAOSupport implements BaseDAO<PointDomain> {

	@Override
	public int insert(PointDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().insert(getNamespace() + ".insert", t);
	}

	@Override
	public int delete(PointDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().delete(getNamespace() + ".delete", t);
	}

	@Override
	public int update(PointDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().update(getNamespace() + ".update", t);
	}

	@Override
	public PointDomain findByKey(PointDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().load(getNamespace() + ".findByKey", t);
	}

	@Override
	public List<PointDomain> findByWhere(PointDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().find(getNamespace() + ".findByWhere", t);
	}

	public PointDomain findPointBySn(PointDomain t) {
		return getPersistanceManager().load(getNamespace() + ".findPointBySn", t);
	}

	// public int insertPointByVerify(PointDomain pointDomain) {
	// return getPersistanceManager().insert(getNamespace() +
	// ".insertPointByVerify", pointDomain);
	// }
	//
	// public int updatePointByVerify(PointDomain pointDomain) {
	// return getPersistanceManager().insert(getNamespace() +
	// ".updatePointByVerify", pointDomain);
	// }
	//
	// public int deletePointByVerify(PointDomain pointDomain) {
	// return getPersistanceManager().insert(getNamespace() +
	// ".deletePointByVerify", pointDomain);
	// }

	/**
	 * 等同findPointByCompany。区别在于不分页且判断status
	 * 
	 * @param pointDomain
	 * @return
	 */
	public List<PointDomain> findPointByCompanyToDrop(PointDomain pointDomain) {
		return getPersistanceManager().find(getNamespace() + ".findPointByCompanyToDrop", pointDomain);
	}

	@PaginationSupport
	public List<PointDomain> findPointByCompany(PointDomain pointDomain) {
		return getPersistanceManager().find(getNamespace() + ".findPointByCompany", pointDomain);
	}

	public int insertCompanyPointRel(CompanyPointDomain companyPointDomain) {
		return getPersistanceManager().insert(getNamespace() + ".insertCompanyPointRel", companyPointDomain);
	}

	public int deleteCompanyPointRel(CompanyPointDomain companyPointDomain) {
		return getPersistanceManager().delete(getNamespace() + ".deleteCompanyPointRel", companyPointDomain);
	}

	public int updateCompanyPointRel(CompanyPointDomain companyPointDomain) {
		return getPersistanceManager().delete(getNamespace() + ".updateCompanyPointRel", companyPointDomain);
	}

	public List<PointDomain> findPointByVerify(PointDomain pointDomain) {
		return getPersistanceManager().find(getNamespace() + ".findPointByVerify", pointDomain);
	}

	public int insertVerifyPointRel(PointDomain pointDomain) {
		return getPersistanceManager().insert(getNamespace() + ".insertVerifyPointRel", pointDomain);
	}

	public List<PointDomain> findPointByReport(ReportDomain reportDomain) {
		return getPersistanceManager().find(getNamespace() + ".findPointByReport", reportDomain);
	}

	public int getOverduePointCount(PointDomain pointDomain) {
		return getPersistanceManager().load(getNamespace() + ".getOverduePointCount", pointDomain);
	}
	@PaginationSupport
	public List<PointDomain> getOverduePoint(PointDomain pointDomain){
		return getPersistanceManager().find(getNamespace() + ".getOverduePoint", pointDomain);
	}
}
