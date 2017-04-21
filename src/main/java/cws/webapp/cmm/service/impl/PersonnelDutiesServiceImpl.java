/**
 * @Project:cws
 * @Title:PersonnelDutiesServiceImpl.java
 * @Author:Riozenc
 * @Datetime:2017年4月20日 下午10:31:10
 * 
 */
package cws.webapp.cmm.service.impl;

import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.annotation.TransactionService;

import cws.webapp.cmm.dao.PersonnelDutiesDAO;
import cws.webapp.cmm.domain.PersonnelDutiesDomain;
import cws.webapp.cmm.service.IPersonnelDutiesService;

@TransactionService
public class PersonnelDutiesServiceImpl implements IPersonnelDutiesService {

	@TransactionDAO
	private PersonnelDutiesDAO personnelDutiesDAO;

	@Override
	public int insert(PersonnelDutiesDomain t) {
		// TODO Auto-generated method stub
		return personnelDutiesDAO.insert(t);
	}

	@Override
	public int delete(PersonnelDutiesDomain t) {
		// TODO Auto-generated method stub
		return personnelDutiesDAO.delete(t);
	}

	@Override
	public int update(PersonnelDutiesDomain t) {
		// TODO Auto-generated method stub
		return personnelDutiesDAO.update(t);
	}

	@Override
	public PersonnelDutiesDomain findByKey(PersonnelDutiesDomain t) {
		// TODO Auto-generated method stub
		return personnelDutiesDAO.findByKey(t);
	}

	@Override
	public List<PersonnelDutiesDomain> findByWhere(PersonnelDutiesDomain t) {
		// TODO Auto-generated method stub
		return personnelDutiesDAO.findByWhere(t);
	}

	public List<PersonnelDutiesDomain> findPersonnelDutiesByCompany(PersonnelDutiesDomain personnelDutiesDomain) {
		return personnelDutiesDAO.findPersonnelDutiesByCompany(personnelDutiesDomain);
	}

}
