/**
 * @Project:cws
 * @Title:CompanyDomain.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午9:14:42
 * 
 */
package cws.webapp.bas.domain;

import java.util.Date;

import com.riozenc.quicktool.annotation.TablePrimaryKey;

/**
 * 企业
 * 
 * @author rioze
 *
 */
public class CompanyDomain {
	@TablePrimaryKey
	private Integer id;// ID ID int TRUE FALSE TRUE
	private String name;// 企业名 NAME varchar(50) 50 FALSE FALSE FALSE
	private String linkman;// 企业联系人 LINKNMAN varchar(20) 20 FALSE FALSE FALSE
	private String phone;// 企业电话 PHONE varchar(20) 20 FALSE FALSE FALSE
	private String address;// 企业地址 ADDRESS varchar(100) 100 FALSE FALSE FALSE
	private String remark;// 备注 REMARK varchar(100) 100 FALSE FALSE FALSE
	private Date createDate;// 创建时间 CREATE_DATE datetime FALSE FALSE FALSE
	private Integer status;// 状态 STATUS smallint FALSE FALSE FALSE

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLinkman() {
		return linkman;
	}

	public void setLinkman(String linkman) {
		this.linkman = linkman;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}
