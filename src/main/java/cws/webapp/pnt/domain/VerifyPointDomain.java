/**
 * @Project:cws
 * @Title:VerifyPointDomain.java
 * @Author:Riozenc
 * @Datetime:2017年4月4日 下午9:41:17
 * 
 */
package cws.webapp.pnt.domain;

import java.util.Date;

import com.riozenc.quicktool.annotation.TablePrimaryKey;
import com.riozenc.quicktool.mybatis.MybatisEntity;

/**
 * 验证对象与测点关系表
 * 
 * @author rioze
 *
 */
public class VerifyPointDomain implements MybatisEntity {

	@TablePrimaryKey
	private Integer id;// ID ID int TRUE FALSE TRUE
	private Integer verifyId;// 验证对象ID VERIFY_ID int FALSE FALSE FALSE
	private Integer verifyType;// 验证对象类型 VERIFY_TYPE int FALSE FALSE FALSE
	private Integer pointId;// 测点ID POINT_ID int FALSE FALSE FALSE
	private String pointNo;// 测试编号 POINT_NO varchar(4) 4 FALSE FALSE FALSE
	private Integer pointPosition;// 位置 POINT_POSITION int FALSE FALSE FALSE
	private String pointType;// 测点布点类型 POINT_TYPE varchar(4) 4 FALSE FALSE FALSE
	private Date createDate;// 创建日期 CREATE_DATE datetime FALSE FALSE FALSE
	private String remark;// 备注 REMARK varchar(100) 100 FALSE FALSE FALSE
	private Integer status;// 状态 STATUS smallint FALSE FALSE FALSE

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

	public Integer getVerifyType() {
		return verifyType;
	}

	public void setVerifyType(Integer verifyType) {
		this.verifyType = verifyType;
	}

	public Integer getPointId() {
		return pointId;
	}

	public void setPointId(Integer pointId) {
		this.pointId = pointId;
	}

	public String getPointNo() {
		return pointNo;
	}

	public void setPointNo(String pointNo) {
		this.pointNo = pointNo;
	}

	public Integer getPointPosition() {
		return pointPosition;
	}

	public void setPointPosition(Integer pointPosition) {
		this.pointPosition = pointPosition;
	}

	public String getPointType() {
		return pointType;
	}

	public void setPointType(String pointType) {
		this.pointType = pointType;
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
