/**
 * @Project:cws
 * @Title:IHostService.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午9:46:06
 * 
 */
package cws.webapp.hst.service;

import java.util.List;

import com.riozenc.quicktool.springmvc.webapp.service.BaseService;

import cws.webapp.hst.domain.HostDomain;

public interface IHostService extends BaseService<HostDomain>{

	public List<HostDomain> findHostByCompany(HostDomain hostDomain);
	
	public HostDomain findHostBySn(HostDomain hostDomain);
}
