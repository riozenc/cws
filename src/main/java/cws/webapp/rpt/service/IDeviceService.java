/**
 * @Project:cws
 * @Title:IDeviceService.java
 * @Author:Riozenc
 * @Datetime:2017年4月27日 下午10:54:00
 * 
 */
package cws.webapp.rpt.service;

import java.util.List;

import com.riozenc.quicktool.springmvc.webapp.service.BaseService;

import cws.webapp.rpt.domain.DeviceDomain;

public interface IDeviceService extends BaseService<DeviceDomain> {

	public List<DeviceDomain> getDeviceDate(DeviceDomain deviceDomain);
}
