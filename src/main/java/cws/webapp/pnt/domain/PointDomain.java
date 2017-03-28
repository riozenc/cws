/**
 * @Project:cws
 * @Title:PointDomain.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午9:18:26
 * 
 */
package cws.webapp.pnt.domain;

import java.util.Date;

import com.riozenc.quicktool.annotation.TablePrimaryKey;

/**
 * 测点
 * 
 * @author rioze
 *
 */
public class PointDomain {

	@TablePrimaryKey
	private Integer id;// ID ID int TRUE FALSE TRUE
	private String no;// 编号 NO varchar(4) 4 FALSE FALSE FALSE
	private String snNo;// SN号 SN_NO varchar(30) 30 FALSE FALSE FALSE
	private String type;// 型号 TYPE varchar(30) 30 FALSE FALSE FALSE
	private String checkUnit;// 校验单位 CHECK_UNIT varchar(30) 30 FALSE FALSE FALSE
	private String certificateNo;// 证书编号 CERTIFICATE_NO varchar(30) 30 FALSE
									// FALSE FALSE
	private Date createDate;// 创建日期 CREATE_DATE datetime FALSE FALSE FALSE
	private Date validDate;// 有效期 VALID_DATE datetime FALSE FALSE FALSE
	private String remark;// 备注 REMARK varchar(100) 100 FALSE FALSE FALSE
	private Integer status;// 状态 STATUS smallint FALSE FALSE FALSE

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getSnNo() {
		return snNo;
	}

	public void setSnNo(String snNo) {
		this.snNo = snNo;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCheckUnit() {
		return checkUnit;
	}

	public void setCheckUnit(String checkUnit) {
		this.checkUnit = checkUnit;
	}

	public String getCertificateNo() {
		return certificateNo;
	}

	public void setCertificateNo(String certificateNo) {
		this.certificateNo = certificateNo;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getValidDate() {
		return validDate;
	}

	public void setValidDate(Date validDate) {
		this.validDate = validDate;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}
