/**
 * @Project:cws
 * @Title:CommonParamDomain.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午9:20:49
 * 
 */
package cws.webapp.sys.domain;

import java.util.Date;

import com.riozenc.quicktool.annotation.TablePrimaryKey;

/**
 * 公共参数
 * 
 * @author rioze
 *
 */
public class CommonParamDomain {
	@TablePrimaryKey
	private Integer id;// ID ID bigint TRUE FALSE TRUE
	private String type;// 类型 TYPE varchar(20) 20 FALSE FALSE FALSE
	private String name;// 参数名 NAME varchar(20) 20 FALSE FALSE FALSE
	private String value;// 参数值 VALUE varchar(20) 20 FALSE FALSE FALSE
	private String remark;// 备注 REMARK varchar(100) 100 FALSE FALSE FALSE
	private Date createDate;// 创建日期 CREATE_DATE datetime FALSE FALSE FALSE
	private Date updateDate;// 更新日期 UPDATE_DATE datetime FALSE FALSE FALSE
	private Integer status;// 状态 STATUS smallint FALSE FALSE FALSE
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
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
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	

}
