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

/**
 * 主机
 * 
 * @author rioze
 *
 */
public class HostDomain implements MybatisEntity{
	@TablePrimaryKey
	private Integer ID;// ID int TRUE FALSE TRUE
	private String name;// 名称 NAME varchar(30) 30 FALSE FALSE FALSE
	private String type;// 型号 TYPE varchar(30) 30 FALSE FALSE FALSE
	private String snNo;// SN号 SN_NO varchar(30) 30 FALSE FALSE FALSE
	private Date createDate;// 创建日期 CREATE_DATE datetime FALSE FALSE FALSE
	private String remark;// 备注 REMARK varchar(100) 100 FALSE FALSE FALSE
	private String status;// 状态 STATUS smallint FALSE FALSE FALSE

	public Integer getID() {
		return ID;
	}

	public void setID(Integer iD) {
		ID = iD;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
