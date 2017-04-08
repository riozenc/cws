/**
 * @Project:cws
 * @Title:CommonParamServiceImpl.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午10:01:40
 * 
 */
package cws.webapp.sys.service.impl;

import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.annotation.TransactionService;

import cws.webapp.sys.dao.CommonParamDAO;
import cws.webapp.sys.domain.CommonParamDomain;
import cws.webapp.sys.service.ICommonParamService;

@TransactionService
public class CommonParamServiceImpl implements ICommonParamService {

	@TransactionDAO
	private CommonParamDAO commonParamDAO;

	@Override
	public int insert(CommonParamDomain t) {
		// TODO Auto-generated method stub
		return commonParamDAO.insert(t);
	}

	@Override
	public int delete(CommonParamDomain t) {
		// TODO Auto-generated method stub
		return commonParamDAO.delete(t);
	}

	@Override
	public int update(CommonParamDomain t) {
		// TODO Auto-generated method stub
		return commonParamDAO.update(t);
	}

	@Override
	public CommonParamDomain findByKey(CommonParamDomain t) {
		// TODO Auto-generated method stub
		return commonParamDAO.findByKey(t);
	}

	@Override
	public List<CommonParamDomain> findByWhere(CommonParamDomain t) {
		// TODO Auto-generated method stub
		return commonParamDAO.findByWhere(t);
	}

}
