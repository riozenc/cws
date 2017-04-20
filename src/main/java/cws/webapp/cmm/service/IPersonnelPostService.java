/**
 * @Project:cws
 * @Title:IPersonnelPostService.java
 * @Author:Riozenc
 * @Datetime:2017年3月28日 下午11:29:46
 * 
 */
package cws.webapp.cmm.service;

import java.util.List;

import com.riozenc.quicktool.springmvc.webapp.service.BaseService;

import cws.webapp.cmm.domain.PersonnelPostDomain;

public interface IPersonnelPostService extends BaseService<PersonnelPostDomain> {
	public List<PersonnelPostDomain> findPersonnelPostByCompanyToDrop(PersonnelPostDomain personnelPostDomain);
}
