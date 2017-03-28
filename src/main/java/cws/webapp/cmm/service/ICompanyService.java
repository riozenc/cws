/**
 * @Project:cws
 * @Title:ICompanyService.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午9:44:43
 * 
 */
package cws.webapp.cmm.service;

import java.util.List;

import com.riozenc.quicktool.springmvc.webapp.service.BaseService;

import cws.webapp.cmm.domain.CompanyDomain;
import cws.webapp.pnt.domain.PointDomain;
import cws.webapp.vfy.domain.VerifyDomain;

public interface ICompanyService extends BaseService<CompanyDomain> {

	public List<VerifyDomain> getVerifyByCompany(CompanyDomain companyDomain);

	public List<PointDomain> getPointByCompany(CompanyDomain companyDomain);
}
