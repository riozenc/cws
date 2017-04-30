/**
 * @Project:cws
 * @Title:DeviceDAO.java
 * @Author:Riozenc
 * @Datetime:2017年4月27日 下午10:49:32
 * 
 */
package cws.webapp.rpt.dao;

import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.mybatis.dao.AbstractTransactionDAOSupport;
import com.riozenc.quicktool.mybatis.dao.BaseDAO;

import cws.webapp.rpt.domain.DeviceDomain;

@TransactionDAO
public class DeviceDAO extends AbstractTransactionDAOSupport implements BaseDAO<DeviceDomain> {

	@Override
	public int insert(DeviceDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().insert(getNamespace() + ".insert", t);
	}

	@Override
	public int delete(DeviceDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().delete(getNamespace() + ".delete", t);
	}

	@Override
	public int update(DeviceDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().update(getNamespace() + ".update", t);
	}

	@Override
	public DeviceDomain findByKey(DeviceDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().load(getNamespace() + ".findByKey", t);
	}

	@Override
	public List<DeviceDomain> findByWhere(DeviceDomain t) {
		// TODO Auto-generated method stub
		return getPersistanceManager().load(getNamespace() + ".findByWhere", t);
	}
	
	public List<DeviceDomain> getDeviceDate(DeviceDomain deviceDomain){
		return getPersistanceManager().find(getNamespace() + ".getDeviceDate", deviceDomain);
	}

}
