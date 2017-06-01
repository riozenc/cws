/**
 * @Project:cws
 * @Title:PersonnelDutiesDomain.java
 * @Author:Riozenc
 * @Datetime:2017年4月20日 下午10:24:02
 * 
 */
package cws.webapp.cmm.domain;

import com.riozenc.quicktool.annotation.TablePrimaryKey;
import com.riozenc.quicktool.mybatis.MybatisEntity;
import cws.common.mybatis.plus.Page;

/**
 * PERSONNEL_DUTIES_INFO
 * 
 * @author rioze
 *
 */
public class PersonnelDutiesDomain extends Page<PersonnelDutiesDomain> implements MybatisEntity {
	@TablePrimaryKey
	private Integer id;// ID ID int TRUE FALSE TRUE
	private String name;// 姓名 NAME varchar(30) 30 FALSE FALSE FALSE
	private Integer dutiesId;// 职责 DUTIES_ID int FALSE FALSE FALSE
	private Integer companyId;// 公司 COMPANY_ID int FALSE FALSE FALSE
	private String remark;// 备注 REMARK varchar(100) 100 FALSE FALSE FALSE
	private Integer status;// 状态 STATUS smallint FALSE FALSE FALSE

	private String dutiesName;//

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

	public Integer getDutiesId() {
		return dutiesId;
	}

	public void setDutiesId(Integer dutiesId) {
		this.dutiesId = dutiesId;
	}

	public Integer getCompanyId() {
		return companyId;
	}

	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
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

	public String getDutiesName() {
		return dutiesName;
	}

	public void setDutiesName(String dutiesName) {
		this.dutiesName = dutiesName;
	}

}
