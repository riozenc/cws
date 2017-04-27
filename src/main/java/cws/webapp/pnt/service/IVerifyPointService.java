/**
 * @Project:cws
 * @Title:VerifyPointService.java
 * @Author:Riozenc
 * @Datetime:2017年4月4日 下午9:50:43
 * 
 */
package cws.webapp.pnt.service;

import java.util.List;

import com.riozenc.quicktool.springmvc.webapp.service.BaseService;

import cws.webapp.pnt.domain.VerifyPointDomain;
import cws.webapp.rpt.domain.ReportDomain;

public interface IVerifyPointService extends BaseService<VerifyPointDomain>{

	public List<VerifyPointDomain> findVerifyPointByVerify(VerifyPointDomain verifyPointDomain);
	
	public List<VerifyPointDomain> getVerifyPointByReport(ReportDomain reportDomain);
}
