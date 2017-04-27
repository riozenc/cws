/**
 * @Project:cws
 * @Title:DeviceDomain.java
 * @Author:Riozenc
 * @Datetime:2017年4月27日 下午10:29:01
 * 
 */
package cws.webapp.rpt.domain;

import com.riozenc.quicktool.annotation.ReflectionIgnore;
import com.riozenc.quicktool.annotation.TablePrimaryKey;
import com.riozenc.quicktool.mybatis.MybatisEntity;

public class DeviceDomain implements MybatisEntity{
	@TablePrimaryKey
	private Integer id;// `ID` int(11) NOT NULL auto_increment,
	private String date;// `DATE` text,
	private String verifyReportId;// `VERTIFY_REPORT_ID` text,
	private Double temperature;// `TEMPERATURE` float default NULL,
	private Double humidity;// `HUMIDITY` float default NULL,
	private Integer style;// `STYLE` int(11) default NULL,
	private String deviceId;// `DEVICE_ID` text,

	@ReflectionIgnore
	private Integer pointId;//
	@ReflectionIgnore
	private Integer pointType;//

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getVerifyReportId() {
		return verifyReportId;
	}

	public void setVerifyReportId(String verifyReportId) {
		this.verifyReportId = verifyReportId;
	}

	public Double getTemperature() {
		return temperature;
	}

	public void setTemperature(Double temperature) {
		this.temperature = temperature;
	}

	public Double getHumidity() {
		return humidity;
	}

	public void setHumidity(Double humidity) {
		this.humidity = humidity;
	}

	public Integer getStyle() {
		return style;
	}

	public void setStyle(Integer style) {
		this.style = style;
	}

	public String getDeviceId() {
		return deviceId;
	}

	public void setDeviceId(String deviceId) {
		this.deviceId = deviceId;
	}

	public Integer getPointId() {
		return pointId;
	}

	public void setPointId(Integer pointId) {
		this.pointId = pointId;
	}

	public Integer getPointType() {
		return pointType;
	}

	public void setPointType(Integer pointType) {
		this.pointType = pointType;
	}

	
}
