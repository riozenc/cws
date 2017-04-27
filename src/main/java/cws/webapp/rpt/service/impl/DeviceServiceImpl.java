/**
 * @Project:cws
 * @Title:DeviceServiceImpl.java
 * @Author:Riozenc
 * @Datetime:2017年4月27日 下午10:54:21
 * 
 */
package cws.webapp.rpt.service.impl;

import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.annotation.TransactionService;

import cws.webapp.rpt.dao.DeviceDAO;
import cws.webapp.rpt.domain.DeviceDomain;
import cws.webapp.rpt.service.IDeviceService;

@TransactionService
public class DeviceServiceImpl implements IDeviceService {

	@TransactionDAO
	private DeviceDAO deviceDAO;

	@Override
	public int insert(DeviceDomain t) {
		// TODO Auto-generated method stub
		return deviceDAO.insert(t);
	}

	@Override
	public int delete(DeviceDomain t) {
		// TODO Auto-generated method stub
		return deviceDAO.delete(t);
	}

	@Override
	public int update(DeviceDomain t) {
		// TODO Auto-generated method stub
		return deviceDAO.update(t);
	}

	@Override
	public DeviceDomain findByKey(DeviceDomain t) {
		// TODO Auto-generated method stub
		return deviceDAO.findByKey(t);
	}

	@Override
	public List<DeviceDomain> findByWhere(DeviceDomain t) {
		// TODO Auto-generated method stub
		return deviceDAO.findByWhere(t);
	}

	@Override
	public List<DeviceDomain> getDeviceDate(DeviceDomain deviceDomain) {
		// TODO Auto-generated method stub
		return deviceDAO.getDeviceDate(deviceDomain);
	}

}
