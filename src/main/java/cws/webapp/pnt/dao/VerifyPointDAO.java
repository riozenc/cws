/**
 * @Project:cws
 * @Title:VerifyPointDAO.java
 * @Author:Riozenc
 * @Datetime:2017年4月4日 下午9:46:58
 * 
 */
package cws.webapp.pnt.dao;

import java.util.List;

import com.riozenc.quicktool.annotation.PaginationSupport;
import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.mybatis.dao.AbstractTransactionDAOSupport;
import com.riozenc.quicktool.mybatis.dao.BaseDAO;

import cws.webapp.pnt.domain.VerifyPointDomain;

@TransactionDAO
public class VerifyPointDAO extends AbstractTransactionDAOSupport implements BaseDAO<VerifyPointDomain> {

	@Override
	public int insert(VerifyPointDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().insert(getNamespace() + ".insert", t);
	}

	@Override
	public int delete(VerifyPointDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().delete(getNamespace() + ".delete", t);
	}

	@Override
	public int update(VerifyPointDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().update(getNamespace() + ".update", t);
	}

	@Override
	public VerifyPointDomain findByKey(VerifyPointDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().load(getNamespace() + ".findByKey", t);
	}

	@Override
	public List<VerifyPointDomain> findByWhere(VerifyPointDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().find(getNamespace() + ".findByWhere", t);
	}

	@PaginationSupport
	public List<VerifyPointDomain> findVerifyPointByVerify(VerifyPointDomain verifyPointDomain) {
		return getPersistanceManager().find(getNamespace() + ".findVerifyPointByVerify", verifyPointDomain);
	}

}
