/**
 * @Project:cws
 * @Title:IPersonnelDutiesService.java
 * @Author:Riozenc
 * @Datetime:2017年4月20日 下午10:30:43
 * 
 */
package cws.webapp.cmm.service;

import java.util.List;

import com.riozenc.quicktool.springmvc.webapp.service.BaseService;

import cws.webapp.cmm.domain.PersonnelDutiesDomain;

public interface IPersonnelDutiesService extends BaseService<PersonnelDutiesDomain>{

	public List<PersonnelDutiesDomain> findPersonnelDutiesByCompany(PersonnelDutiesDomain personnelDutiesDomain);
}
