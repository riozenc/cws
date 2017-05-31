/**
 * @Project:cws
 * @Title:ReportDomain.java
 * @Author:Riozenc
 * @Datetime:2017年4月21日 下午11:03:34
 * 
 */
package cws.webapp.rpt.domain;

import java.util.Date;

import com.riozenc.quicktool.annotation.TablePrimaryKey;
import com.riozenc.quicktool.mybatis.MybatisEntity;
import cws.common.mybatis.plus.Page;

public class ReportDomain extends Page<ReportDomain> implements MybatisEntity {
	@TablePrimaryKey
	private String reportNo;// `REPORT_NO` varchar(64) NOT NULL default '',
	private String reportVersion;// `REPORT_VERSION` varchar(16) default NULL,
	private String reportTitle;// `REPORT_TITLE` varchar(64) character set ascii
								// default NULL,
	private String verifyPlace;// `VERIFY_PLACE` varchar(64) default NULL,
	private String verifyObject;// `VERIFY_OBJECT` varchar(64) default NULL,
	private String verifyTime;// `VERIFY_TIME` varchar(64) default NULL,
	private String verifyAttr;// `VERIFY_ATTR` varchar(32) default NULL,

	private String reportName;// `REPORT_NAME` varchar(64) default NULL,
	private String reportType;// `REPORT_TYPE` varchar(64) default NULL,
	private String verifyName;// 验证对象名字
	private String temperature;// `TEMPERATURE` varchar(64) default NULL,
	private String reportPath;//
	private Integer reportStatus;// `REPORT_STATUS` int(1) default NULL,
	private Integer isFull;

	private Integer companyId;//
	private Date createDate;
	private String remark;

	public String getReportNo() {
		return reportNo;
	}

	public void setReportNo(String reportNo) {
		this.reportNo = reportNo;
	}

	public String getReportVersion() {
		return reportVersion;
	}

	public void setReportVersion(String reportVersion) {
		this.reportVersion = reportVersion;
	}

	public String getReportTitle() {
		return reportTitle;
	}

	public void setReportTitle(String reportTitle) {
		this.reportTitle = reportTitle;
	}

	public String getVerifyPlace() {
		return verifyPlace;
	}

	public void setVerifyPlace(String verifyPlace) {
		this.verifyPlace = verifyPlace;
	}

	public String getVerifyObject() {
		return verifyObject;
	}

	public void setVerifyObject(String verifyObject) {
		this.verifyObject = verifyObject;
	}

	public String getVerifyTime() {
		return verifyTime;
	}

	public void setVerifyTime(String verifyTime) {
		this.verifyTime = verifyTime;
	}

	public String getVerifyAttr() {
		return verifyAttr;
	}

	public void setVerifyAttr(String verifyAttr) {
		this.verifyAttr = verifyAttr;
	}

	public String getReportName() {
		return reportName;
	}

	public void setReportName(String reportName) {
		this.reportName = reportName;
	}

	public String getReportType() {
		return reportType;
	}

	public void setReportType(String reportType) {
		this.reportType = reportType;
	}

	public String getTemperature() {
		return temperature;
	}

	public void setTemperature(String temperature) {
		this.temperature = temperature;
	}

	public Integer getReportStatus() {
		return reportStatus;
	}

	public void setReportStatus(Integer reportStatus) {
		this.reportStatus = reportStatus;
	}

	public Integer getCompanyId() {
		return companyId;
	}

	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getVerifyName() {
		return verifyName;
	}

	public void setVerifyName(String verifyName) {
		this.verifyName = verifyName;
	}

	public String getReportPath() {
		return reportPath;
	}

	public void setReportPath(String reportPath) {
		this.reportPath = reportPath;
	}

	public Integer getIsFull() {
		return isFull;
	}

	public void setIsFull(Integer isFull) {
		this.isFull = isFull;
	}

}
