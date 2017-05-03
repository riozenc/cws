/**
 * @Project:cws
 * @Title:InsulationCanDomain.java
 * @Author:Riozenc
 * @Datetime:2017年5月3日 下午10:46:32
 * 
 */
package cws.webapp.vfy.domain;

import com.riozenc.quicktool.mybatis.MybatisEntity;

/**
 * 保温箱
 * 
 * @author rioze
 *
 */
public class InsulationCanDomain extends VerifyDomain implements MybatisEntity {

	private String name;// `NAME` varchar(30) default NULL,
	private String brand;// `BRAND` varchar(30) default NULL,
	private String types;// `TYPES` varchar(30) default NULL,
	private String volume;// `VOLUME` varchar(30) default NULL,
	private String date;// `DATE` varchar(30) default NULL,
	private String outSize;// `OUT_SIZE` varchar(30) default NULL,
	private String inSize;// `IN_SIZE` varchar(30) default NULL,
	private String weight;// `WEIGHT` varchar(30) default NULL,
	private String thickness;// `THICKNESS` varchar(30) default NULL,
	private String outMaterial;// `OUT_MATERIAL` varchar(30) default NULL,
	private String inMaterial;// `IN_MATERIAL` varchar(30) default NULL,
	private String cryogenBrand;// `CRYOGEN_BRAND` varchar(30) default NULL,
	private String cryogenTypes;// `CRYOGEN_TYPES` varchar(30) default NULL,
	private Integer cryogenCount;// `CRYOGEN_COUNT` int(11) default NULL,
	private Integer probeNum;// `PROBE_NUM` varchar(30) default NULL,
	private String manufactor;// `MANUFACTOR` varchar(30) default NULL,
	private String disMap;// DIS_MAP varchar(100),

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

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getTypes() {
		return types;
	}

	public void setTypes(String types) {
		this.types = types;
	}

	public String getVolume() {
		return volume;
	}

	public void setVolume(String volume) {
		this.volume = volume;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getOutSize() {
		return outSize;
	}

	public void setOutSize(String outSize) {
		this.outSize = outSize;
	}

	public String getInSize() {
		return inSize;
	}

	public void setInSize(String inSize) {
		this.inSize = inSize;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getThickness() {
		return thickness;
	}

	public void setThickness(String thickness) {
		this.thickness = thickness;
	}

	public String getOutMaterial() {
		return outMaterial;
	}

	public void setOutMaterial(String outMaterial) {
		this.outMaterial = outMaterial;
	}

	public String getInMaterial() {
		return inMaterial;
	}

	public void setInMaterial(String inMaterial) {
		this.inMaterial = inMaterial;
	}

	public String getCryogenBrand() {
		return cryogenBrand;
	}

	public void setCryogenBrand(String cryogenBrand) {
		this.cryogenBrand = cryogenBrand;
	}

	public String getCryogenTypes() {
		return cryogenTypes;
	}

	public void setCryogenTypes(String cryogenTypes) {
		this.cryogenTypes = cryogenTypes;
	}

	public Integer getCryogenCount() {
		return cryogenCount;
	}

	public void setCryogenCount(Integer cryogenCount) {
		this.cryogenCount = cryogenCount;
	}

	public Integer getProbeNum() {
		return probeNum;
	}

	public void setProbeNum(Integer probeNum) {
		this.probeNum = probeNum;
	}

	public String getManufactor() {
		return manufactor;
	}

	public void setManufactor(String manufactor) {
		this.manufactor = manufactor;
	}

	public String getDisMap() {
		return disMap;
	}

	public void setDisMap(String disMap) {
		this.disMap = disMap;
	}

}
