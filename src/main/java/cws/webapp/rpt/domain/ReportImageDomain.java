/**
 * @Project:cws
 * @Title:ReportImageDomain.java
 * @Author:Riozenc
 * @Datetime:2017年5月2日 下午8:44:50
 * 
 */
package cws.webapp.rpt.domain;

import com.riozenc.quicktool.annotation.TablePrimaryKey;
import com.riozenc.quicktool.mybatis.MybatisEntity;

public class ReportImageDomain implements MybatisEntity{
	@TablePrimaryKey
	private String reportNo;//
	private String jyxDd;// 均匀性-断电
	private String jyxKm;// 均允性-开门
	private String jyxHj;// 均匀性-环境
	private String fjDd;// 风机-断电
	private String fjKm;// 风机-开门
	private String fjHj;// 风机-环境
	private String crkDd;// 出入口-断电
	private String crkKm;// 出入口-开门
	private String crkHj;// 出入口-环境
	private String sjDd;// 死角-断电
	private String sjKm;// 死角-开门
	private String sjHj;// 死角-环境
	private String hjDd;// 货架-断电
	private String hjKm;// 货架-开门
	private String hjHj;// 货架-环境
	private String wsdDd;// 温湿度-断电
	private String wsdKm;// 温湿度-开门
	private String wsdHj;// 温湿度-环境
	private String dd;// 环境-断电
	private String km;// 环境-开门
	private String hj;// 环境-环境

	public String getReportNo() {
		return reportNo;
	}

	public void setReportNo(String reportNo) {
		this.reportNo = reportNo;
	}

	public String getJyxDd() {
		return jyxDd;
	}

	public void setJyxDd(String jyxDd) {
		this.jyxDd = jyxDd;
	}

	public String getJyxKm() {
		return jyxKm;
	}

	public void setJyxKm(String jyxKm) {
		this.jyxKm = jyxKm;
	}

	public String getJyxHj() {
		return jyxHj;
	}

	public void setJyxHj(String jyxHj) {
		this.jyxHj = jyxHj;
	}

	public String getFjDd() {
		return fjDd;
	}

	public void setFjDd(String fjDd) {
		this.fjDd = fjDd;
	}

	public String getFjKm() {
		return fjKm;
	}

	public void setFjKm(String fjKm) {
		this.fjKm = fjKm;
	}

	public String getFjHj() {
		return fjHj;
	}

	public void setFjHj(String fjHj) {
		this.fjHj = fjHj;
	}

	public String getCrkDd() {
		return crkDd;
	}

	public void setCrkDd(String crkDd) {
		this.crkDd = crkDd;
	}

	public String getCrkKm() {
		return crkKm;
	}

	public void setCrkKm(String crkKm) {
		this.crkKm = crkKm;
	}

	public String getCrkHj() {
		return crkHj;
	}

	public void setCrkHj(String crkHj) {
		this.crkHj = crkHj;
	}

	public String getSjDd() {
		return sjDd;
	}

	public void setSjDd(String sjDd) {
		this.sjDd = sjDd;
	}

	public String getSjKm() {
		return sjKm;
	}

	public void setSjKm(String sjKm) {
		this.sjKm = sjKm;
	}

	public String getSjHj() {
		return sjHj;
	}

	public void setSjHj(String sjHj) {
		this.sjHj = sjHj;
	}

	public String getHjDd() {
		return hjDd;
	}

	public void setHjDd(String hjDd) {
		this.hjDd = hjDd;
	}

	public String getHjKm() {
		return hjKm;
	}

	public void setHjKm(String hjKm) {
		this.hjKm = hjKm;
	}

	public String getHjHj() {
		return hjHj;
	}

	public void setHjHj(String hjHj) {
		this.hjHj = hjHj;
	}

	public String getWsdDd() {
		return wsdDd;
	}

	public void setWsdDd(String wsdDd) {
		this.wsdDd = wsdDd;
	}

	public String getWsdKm() {
		return wsdKm;
	}

	public void setWsdKm(String wsdKm) {
		this.wsdKm = wsdKm;
	}

	public String getWsdHj() {
		return wsdHj;
	}

	public void setWsdHj(String wsdHj) {
		this.wsdHj = wsdHj;
	}

	public String getDd() {
		return dd;
	}

	public void setDd(String dd) {
		this.dd = dd;
	}

	public String getKm() {
		return km;
	}

	public void setKm(String km) {
		this.km = km;
	}

	public String getHj() {
		return hj;
	}

	public void setHj(String hj) {
		this.hj = hj;
	}

}
