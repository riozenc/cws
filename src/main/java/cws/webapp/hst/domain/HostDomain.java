/**
 * @Project:cws
 * @Title:HostDomain.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午9:16:44
 * 
 */
package cws.webapp.hst.domain;

import java.util.Date;

import com.riozenc.quicktool.annotation.TablePrimaryKey;
import com.riozenc.quicktool.mybatis.MybatisEntity;
import cws.common.mybatis.plus.Page;

/**
 * 主机
 * 
 * @author rioze
 *
 */
public class HostDomain extends Page<HostDomain> implements MybatisEntity {
	@TablePrimaryKey
	private Integer id;// ID int TRUE FALSE TRUE
	private String name;// 名称 NAME varchar(30) 30 FALSE FALSE FALSE
	private String types;// 型号 TYPE varchar(30) 30 FALSE FALSE FALSE
	private String snNo;// SN号 SN_NO varchar(30) 30 FALSE FALSE FALSE
	private Date createDate;// 创建日期 CREATE_DATE datetime FALSE FALSE FALSE
	private String remark;// 备注 REMARK varchar(100) 100 FALSE FALSE FALSE
	private Integer status;// 状态 STATUS smallint FALSE FALSE FALSE

	private Integer companyId;// 企业ID

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

	public String getTypes() {
		return types;
	}

	public void setTypes(String types) {
		this.types = types;
	}

	public String getSnNo() {
		return snNo;
	}

	public void setSnNo(String snNo) {
		this.snNo = snNo;
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

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getCompanyId() {
		return companyId;
	}

	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}

}
