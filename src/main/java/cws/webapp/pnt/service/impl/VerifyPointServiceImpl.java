/**
 * @Project:cws
 * @Title:VerifyPointServiceImpl.java
 * @Author:Riozenc
 * @Datetime:2017年4月4日 下午9:51:08
 * 
 */
package cws.webapp.pnt.service.impl;

import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.annotation.TransactionService;

import cws.webapp.pnt.dao.PointDAO;
import cws.webapp.pnt.dao.VerifyPointDAO;
import cws.webapp.pnt.domain.CompanyPointDomain;
import cws.webapp.pnt.domain.PointDomain;
import cws.webapp.pnt.domain.VerifyPointDomain;
import cws.webapp.pnt.service.IVerifyPointService;
import cws.webapp.rpt.domain.ReportDomain;

@TransactionService
public class VerifyPointServiceImpl implements IVerifyPointService {

	@TransactionDAO
	private VerifyPointDAO verifyPointDAO;
	@TransactionDAO
	private PointDAO pointDAO;

	@Override
	public int insert(VerifyPointDomain t) {
		// TODO Auto-generated method stub

		// 通过sn获取pointId
		PointDomain pointDomain = new PointDomain();
		pointDomain.setSnNo(t.getPointSn());
		pointDomain = pointDAO.findPointBySn(pointDomain);

		// 更新companyPoint的状态,标记为占用
		CompanyPointDomain companyPointDomain = new CompanyPointDomain();
		companyPointDomain.setPointId(pointDomain.getId());
		companyPointDomain.setStatus(2);// 2占用
		pointDAO.updateCompanyPointRel(companyPointDomain);

		t.setPointId(pointDomain.getId());
		return verifyPointDAO.insert(t);
	}

	@Override
	public int delete(VerifyPointDomain t) {
		// TODO Auto-generated method stub

		t = verifyPointDAO.findByKey(t);
		
		// 更新companyPoint的状态,标记为占用
		CompanyPointDomain companyPointDomain = new CompanyPointDomain();
		companyPointDomain.setPointId(t.getPointId());
		companyPointDomain.setStatus(1);// 1有效
		pointDAO.updateCompanyPointRel(companyPointDomain);

		return verifyPointDAO.delete(t);
	}

	@Override
	public int update(VerifyPointDomain t) {
		// TODO Auto-generated method stub
		return verifyPointDAO.update(t);
	}

	@Override
	public VerifyPointDomain findByKey(VerifyPointDomain t) {
		// TODO Auto-generated method stub
		return verifyPointDAO.findByKey(t);
	}

	@Override
	public List<VerifyPointDomain> findByWhere(VerifyPointDomain t) {
		// TODO Auto-generated method stub
		return verifyPointDAO.findByWhere(t);
	}

	@Override
	public List<VerifyPointDomain> findVerifyPointByVerify(VerifyPointDomain verifyPointDomain) {
		// TODO Auto-generated method stub
		return verifyPointDAO.findVerifyPointByVerify(verifyPointDomain);
	}

	@Override
	public List<VerifyPointDomain> getVerifyPointByReport(ReportDomain reportDomain) {
		// TODO Auto-generated method stub
		return verifyPointDAO.getVerifyPointByReport(reportDomain);
	}

}
