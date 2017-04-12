/**
 * @Project:cws
 * @Title:CompanyHostDomain.java
 * @Author:Riozenc
 * @Datetime:2017年4月11日 下午10:47:21
 * 
 */
package cws.webapp.pnt.domain;

import java.util.Date;

import com.riozenc.quicktool.mybatis.MybatisEntity;

public class CompanyPointDomain implements MybatisEntity{

	private Integer id;// ID ID int TRUE FALSE TRUE
	private Integer companyId;// COMPANY_ID COMPANY_ID int FALSE FALSE FALSE
	private Integer pointId;// POINT_ID POINT_ID int FALSE FALSE FALSE
	private Date createDate;// CREATE_DATE CREATE_DATE datetime FALSE FALSE
							// FALSE
	private String remark;// REMARK REMARK varchar(100) 100 FALSE FALSE FALSE
	private Integer status;// STATUS STATUS smallint FALSE FALSE FALSE

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getCompanyId() {
		return companyId;
	}

	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}

	public Integer getPointId() {
		return pointId;
	}

	public void setPointId(Integer pointId) {
		this.pointId = pointId;
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

}
