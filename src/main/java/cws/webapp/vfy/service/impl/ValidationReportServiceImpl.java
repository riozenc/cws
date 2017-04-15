/**
 * @Project:cws
 * @Title:ValidationReportServiceImpl.java
 * @Author:Riozenc
 * @Datetime:2017年4月15日 下午12:40:40
 * 
 */
package cws.webapp.vfy.service.impl;

import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.annotation.TransactionService;

import cws.webapp.vfy.dao.ValidationReportDAO;
import cws.webapp.vfy.domain.ValidationReportDomain;
import cws.webapp.vfy.service.IValidationReportService;

@TransactionService
public class ValidationReportServiceImpl implements IValidationReportService {

	@TransactionDAO
	private ValidationReportDAO validationReportDAO;

	@Override
	public int insert(ValidationReportDomain t) {
		// TODO Auto-generated method stub
		return validationReportDAO.insert(t);
	}

	@Override
	public int delete(ValidationReportDomain t) {
		// TODO Auto-generated method stub
		return validationReportDAO.delete(t);
	}

	@Override
	public int update(ValidationReportDomain t) {
		// TODO Auto-generated method stub
		return validationReportDAO.update(t);
	}

	@Override
	public ValidationReportDomain findByKey(ValidationReportDomain t) {
		// TODO Auto-generated method stub
		return validationReportDAO.findByKey(t);
	}

	@Override
	public List<ValidationReportDomain> findByWhere(ValidationReportDomain t) {
		// TODO Auto-generated method stub
		return validationReportDAO.findByWhere(t);
	}

}
