/**
 * Title:ValidationReportDomain.java
 * Author:riozenc
 * Datetime:2017年3月24日 下午1:36:37
**/
package cws.webapp.vfy.domain;

import java.util.Date;

import com.riozenc.quicktool.annotation.TablePrimaryKey;
import com.riozenc.quicktool.mybatis.MybatisEntity;

/**
 * 验证报告
 * 
 * @author riozenc
 *
 */
public class ValidationReportDomain implements MybatisEntity {
	@TablePrimaryKey
	private Integer id;// ID ID int TRUE FALSE TRUE
	private String name;// NAME NAME varchar(30) 30 FALSE FALSE FALSE
	private Integer companyId;// COMPANY_ID COMPANY_ID int FALSE FALSE FALSE
	private Integer verifyId;// VERIFY_ID VERIFY_ID int FALSE FALSE FALSE
	private Integer verifyType;// VERIFY_TYPE VERIFY_TYPE int FALSE FALSE FALSE
	private Date createDate;// CREATE_DATE CREATE_DATE datetime FALSE FALSE
							// FALSE
	private String remkar;// REMARK REMARK varchar(100) 100 FALSE FALSE FALSE
	private Integer status;// STATUS STATUS smallint FALSE FALSE FALSE

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

	public Integer getCompanyId() {
		return companyId;
	}

	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}

	public Integer getVerifyId() {
		return verifyId;
	}

	public void setVerifyId(Integer verifyId) {
		this.verifyId = verifyId;
	}

	public Integer getVerifyType() {
		return verifyType;
	}

	public void setVerifyType(Integer verifyType) {
		this.verifyType = verifyType;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getRemkar() {
		return remkar;
	}

	public void setRemkar(String remkar) {
		this.remkar = remkar;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}
