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

public class ReportImageDomain implements MybatisEntity {
	@TablePrimaryKey
	private String reportNo;//
	private String jyxDd;// 均匀性-断电
	private String jyxKm;// 均允性-开门
	private String jyxHj;// 均匀性-环境
	private String jyxAll;

	private String fjDd;// 风机-断电
	private String fjKm;// 风机-开门
	private String fjHj;// 风机-环境
	private String fjAll;//

	private String crkDd;// 出入口-断电
	private String crkKm;// 出入口-开门
	private String crkHj;// 出入口-环境
	private String crkAll;//

	private String sjDd;// 死角-断电
	private String sjKm;// 死角-开门
	private String sjHj;// 死角-环境
	private String sjAll;

	private String huojiaDd;// 货架-断电
	private String huojiaKm;// 货架-开门
	private String huojiaHj;// 货架-环境
	private String huojiaAll;

	private String wsdDd;// 温湿度-断电
	private String wsdKm;// 温湿度-开门
	private String wsdHj;// 温湿度-环境
	private String wsdAll;//

	private String huanjingDd;// 环境-断电
	private String huanjingKm;// 环境-开门
	private String huanjingHj;// 环境-环境
	private String huanjingAll;//

	private String dd;//
	private String km;//
	private String hj;//
	private String all;//

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

	public String getJyxAll() {
		return jyxAll;
	}

	public void setJyxAll(String jyxAll) {
		this.jyxAll = jyxAll;
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

	public String getFjAll() {
		return fjAll;
	}

	public void setFjAll(String fjAll) {
		this.fjAll = fjAll;
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

	public String getCrkAll() {
		return crkAll;
	}

	public void setCrkAll(String crkAll) {
		this.crkAll = crkAll;
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

	public String getSjAll() {
		return sjAll;
	}

	public void setSjAll(String sjAll) {
		this.sjAll = sjAll;
	}

	public String getHuojiaDd() {
		return huojiaDd;
	}

	public void setHuojiaDd(String huojiaDd) {
		this.huojiaDd = huojiaDd;
	}

	public String getHuojiaKm() {
		return huojiaKm;
	}

	public void setHuojiaKm(String huojiaKm) {
		this.huojiaKm = huojiaKm;
	}

	public String getHuojiaHj() {
		return huojiaHj;
	}

	public void setHuojiaHj(String huojiaHj) {
		this.huojiaHj = huojiaHj;
	}

	public String getHuojiaAll() {
		return huojiaAll;
	}

	public void setHuojiaAll(String huojiaAll) {
		this.huojiaAll = huojiaAll;
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

	public String getWsdAll() {
		return wsdAll;
	}

	public void setWsdAll(String wsdAll) {
		this.wsdAll = wsdAll;
	}

	public String getHuanjingDd() {
		return huanjingDd;
	}

	public void setHuanjingDd(String huanjingDd) {
		this.huanjingDd = huanjingDd;
	}

	public String getHuanjingKm() {
		return huanjingKm;
	}

	public void setHuanjingKm(String huanjingKm) {
		this.huanjingKm = huanjingKm;
	}

	public String getHuanjingHj() {
		return huanjingHj;
	}

	public void setHuanjingHj(String huanjingHj) {
		this.huanjingHj = huanjingHj;
	}

	public String getHuanjingAll() {
		return huanjingAll;
	}

	public void setHuanjingAll(String huanjingAll) {
		this.huanjingAll = huanjingAll;
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

	public String getAll() {
		return all;
	}

	public void setAll(String all) {
		this.all = all;
	}

}
