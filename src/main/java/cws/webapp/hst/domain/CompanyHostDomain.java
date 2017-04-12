/**
 * @Project:cws
 * @Title:HostCompanyDomain.java
 * @Author:Riozenc
 * @Datetime:2017年4月11日 下午10:25:16
 * 
 */
package cws.webapp.hst.domain;

import java.util.Date;

import com.riozenc.quicktool.mybatis.MybatisEntity;

public class CompanyHostDomain implements MybatisEntity{
	private Integer id;// `ID` int(11) NOT NULL auto_increment,
	private Integer companyId;// `COMPANY_ID` int(11) default NULL,
	private Integer hostId;// `HOST_ID` int(11) default NULL,
	private Date createDate;// `CREATE_DATE` datetime default NULL,
	private String remark;// `REMARK` varchar(100) default NULL,
	private Integer status;// `STAUTS` smallint(6) default NULL,

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

	public Integer getHostId() {
		return hostId;
	}

	public void setHostId(Integer hostId) {
		this.hostId = hostId;
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
