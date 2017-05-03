/**
 * @Project:cws
 * @Title:VerifyDomain.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午9:39:40
 * 
 */
package cws.webapp.vfy.domain;

import java.util.Date;

import com.riozenc.quicktool.annotation.ReflectionIgnore;
import com.riozenc.quicktool.annotation.TablePrimaryKey;
import com.riozenc.quicktool.mybatis.MybatisEntity;

/**
 * 验证对象(特殊对象)
 * 
 * @author rioze
 *
 */
public class VerifyDomain implements MybatisEntity {

	@TablePrimaryKey
	protected Integer id;// ID ID int TRUE FALSE TRUE

	@ReflectionIgnore
	private Integer verifyId;// 验证对象ID VERIFY_ID int FALSE FALSE FALSE
	@ReflectionIgnore
	private String verifyName;// 验证对象名字 VERIFY_NAME varchar(30) 30 FALSE FALSE
								// FALSE
	@ReflectionIgnore
	private Integer verifyType;// 验证对象类型 VERIFY_TYPE int FALSE FALSE FALSE
	@ReflectionIgnore
	protected Date createDate;// 创建时间 CREATE_DATE datetime FALSE FALSE FALSE
	protected String remark;// 备注 REMARK varchar(100) 100 FALSE FALSE FALSE
	protected Integer status;// 状态 STATUS smallint FALSE FALSE FALSE
	@ReflectionIgnore
	private Integer companyId;//

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getVerifyId() {
		return verifyId;
	}

	public void setVerifyId(Integer verifyId) {
		this.verifyId = verifyId;
	}

	public String getVerifyName() {
		return verifyName;
	}

	public void setVerifyName(String verifyName) {
		this.verifyName = verifyName;
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
