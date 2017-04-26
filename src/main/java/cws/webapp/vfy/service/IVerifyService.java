/**
 * @Project:cws
 * @Title:IVerifyService.java
 * @Author:Riozenc
 * @Datetime:2017年3月29日 下午10:52:51
 * 
 */
package cws.webapp.vfy.service;

import java.util.List;

import com.riozenc.quicktool.springmvc.webapp.service.BaseService;

import cws.webapp.cmm.domain.CompanyDomain;
import cws.webapp.rpt.domain.ReportDomain;
import cws.webapp.vfy.domain.VerifyDomain;

public interface IVerifyService extends BaseService<VerifyDomain> {

	public List<VerifyDomain> getVerifyByCompany(CompanyDomain companyDomain);
	public List<VerifyDomain> getVerifyByCompanyToDrop(CompanyDomain companyDomain);
	public VerifyDomain getVerifyInfo(VerifyDomain verifyDomain);
	public VerifyDomain getVerifyInfoByReport(ReportDomain reportDomain);
}
