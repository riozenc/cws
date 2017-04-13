/**
 * @Project:cws
 * @Title:HostServiceImpl.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午9:46:57
 * 
 */
package cws.webapp.hst.service.impl;

import java.util.Date;
import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.annotation.TransactionService;

import cws.webapp.hst.dao.HostDAO;
import cws.webapp.hst.domain.CompanyHostDomain;
import cws.webapp.hst.domain.HostDomain;
import cws.webapp.hst.service.IHostService;

@TransactionService
public class HostServiceImpl implements IHostService {

	@TransactionDAO
	private HostDAO hostDAO;

	@Override
	public int insert(HostDomain t) {
		// TODO Auto-generated method stub

		// 添加主机与企业关系
		hostDAO.insert(t);
		CompanyHostDomain hostCompanyDomain = new CompanyHostDomain();
		hostCompanyDomain.setCompanyId(t.getCompanyId());
		hostCompanyDomain.setHostId(t.getId());
		hostCompanyDomain.setCreateDate(new Date());
		hostCompanyDomain.setStatus(1);
		return hostDAO.insertHostCompanyRel(hostCompanyDomain);
	}

	@Override
	public int delete(HostDomain t) {
		// TODO Auto-generated method stub
		CompanyHostDomain hostCompanyDomain = new CompanyHostDomain();
		hostCompanyDomain.setCompanyId(t.getCompanyId());
		hostCompanyDomain.setHostId(t.getId());
		hostDAO.deleteHostCompanyRel(hostCompanyDomain);
		return hostDAO.delete(t);
	}

	@Override
	public int update(HostDomain t) {
		// TODO Auto-generated method stub
		return hostDAO.update(t);
	}

	@Override
	public HostDomain findByKey(HostDomain t) {
		// TODO Auto-generated method stub
		return hostDAO.findByKey(t);
	}

	@Override
	public List<HostDomain> findByWhere(HostDomain t) {
		// TODO Auto-generated method stub
		return hostDAO.findByWhere(t);
	}

	@Override
	public List<HostDomain> findHostByCompany(HostDomain hostDomain) {
		// TODO Auto-generated method stub
		return hostDAO.findHostByCompany(hostDomain);
	}

}
