/**
 * @Project:cws
 * @Title:PersonnelPostDomain.java
 * @Author:Riozenc
 * @Datetime:2017年3月28日 下午11:25:04
 * 
 */
package cws.webapp.cmm.domain;

import com.riozenc.quicktool.annotation.TablePrimaryKey;
import com.riozenc.quicktool.mybatis.MybatisEntity;
import cws.common.mybatis.plus.Page;

public class PersonnelPostDomain extends Page<PersonnelPostDomain> implements MybatisEntity {
	@TablePrimaryKey
	private Integer id;// ID ID int TRUE FALSE TRUE
	private String name;// 姓名 NAME varchar(30) 30 FALSE FALSE FALSE
	private Integer postId;// 职务 POST_ID int FALSE FALSE FALSE
	private Integer companyId;// 公司 COMPANY_ID int FALSE FALSE FALSE
	private String remark;// 备注 REMARK varchar(100) 100 FALSE FALSE FALSE
	private Integer status;// 状态 STATUS smallint FALSE FALSE FALSE

	private String companyName;// 企业名字
	private String postName;// 职务名称

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

	public Integer getPostId() {
		return postId;
	}

	public void setPostId(Integer postId) {
		this.postId = postId;
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

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getPostName() {
		return postName;
	}

	public void setPostName(String postName) {
		this.postName = postName;
	}

}
