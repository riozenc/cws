/**
 * @Project:cws
 * @Title:PersonnelPostServiceImpl.java
 * @Author:Riozenc
 * @Datetime:2017年3月28日 下午11:30:13
 * 
 */
package cws.webapp.cmm.service.impl;

import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.annotation.TransactionService;

import cws.webapp.cmm.dao.PersonnelPostDAO;
import cws.webapp.cmm.domain.PersonnelPostDomain;
import cws.webapp.cmm.service.IPersonnelPostService;

@TransactionService
public class PersonnelPostServiceImpl implements IPersonnelPostService {

	@TransactionDAO
	private PersonnelPostDAO personnelPostDAO;

	@Override
	public int insert(PersonnelPostDomain t) {
		// TODO Auto-generated method stub
		return personnelPostDAO.insert(t);
	}

	@Override
	public int delete(PersonnelPostDomain t) {
		// TODO Auto-generated method stub
		return personnelPostDAO.delete(t);
	}

	@Override
	public int update(PersonnelPostDomain t) {
		// TODO Auto-generated method stub
		return personnelPostDAO.update(t);
	}

	@Override
	public PersonnelPostDomain findByKey(PersonnelPostDomain t) {
		// TODO Auto-generated method stub
		return personnelPostDAO.findByKey(t);
	}

	@Override
	public List<PersonnelPostDomain> findByWhere(PersonnelPostDomain t) {
		// TODO Auto-generated method stub
		return personnelPostDAO.findByWhere(t);
	}

	@Override
	public List<PersonnelPostDomain> findPersonnelPostByCompanyToDrop(PersonnelPostDomain personnelPostDomain) {
		// TODO Auto-generated method stub
		return personnelPostDAO.findPersonnelPostByCompanyToDrop(personnelPostDomain);
	}

}
