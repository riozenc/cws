/**
 * @Project:cws
 * @Title:CommonParamDAO.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午9:59:24
 * 
 */
package cws.webapp.sys.dao;

import java.util.List;

import com.riozenc.quicktool.mybatis.dao.AbstractTransactionDAOSupport;
import com.riozenc.quicktool.mybatis.dao.BaseDAO;

import cws.webapp.sys.domain.CommonParamDomain;

public class CommonParamDAO extends AbstractTransactionDAOSupport implements BaseDAO<CommonParamDomain> {

	@Override
	public int insert(CommonParamDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().insert(getNamespace() + ".insert", t);
	}

	@Override
	public int delete(CommonParamDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().delete(getNamespace() + ".delete", t);
	}

	@Override
	public int update(CommonParamDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().update(getNamespace() + ".update", t);
	}

	@Override
	public CommonParamDomain findByKey(CommonParamDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().load(getNamespace() + ".findByKey", t);
	}

	@Override
	public List<CommonParamDomain> findByWhere(CommonParamDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().find(getNamespace() + ".findByWhere", t);
	}

}
