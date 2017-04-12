/**
 * @Project:cws
 * @Title:ColdStorageDomain.java
 * @Author:Riozenc
 * @Datetime:2017年4月2日 下午12:56:23
 * 
 */
package cws.webapp.vfy.domain;

import com.riozenc.quicktool.mybatis.MybatisEntity;

//COLD_STORAGE_INFO 冷库
public class ColdStorageDomain extends VerifyDomain implements MybatisEntity {

	private String name;// NAME varchar(30),
	private String types;// TYPE varchar(30),
	private String volume;// VOLUME varchar(30),
	private String area;// AREA varchar(30),
	private Integer fanNum;// FAN_NUM int,
	private Integer fanMainNum;// FAN_MAIN_NUM int,
	private Integer fanSpareNum;// FAN_SPARE_NUM int,
	private Integer entranceNum;// ENTRANCE_NUM int,
	private Integer goodsShelves;// GOODS_SHELVES int,
	private Integer probeNum;// PROBE_NUM int,
	private String manufactor;// MANUFACTOR varchar(30),
	private String disMap;// DIS_MAP varchar(100),

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public Integer getFanNum() {
		return fanNum;
	}

	public void setFanNum(Integer fanNum) {
		this.fanNum = fanNum;
	}

	public Integer getFanMainNum() {
		return fanMainNum;
	}

	public void setFanMainNum(Integer fanMainNum) {
		this.fanMainNum = fanMainNum;
	}

	public Integer getFanSpareNum() {
		return fanSpareNum;
	}

	public void setFanSpareNum(Integer fanSpareNum) {
		this.fanSpareNum = fanSpareNum;
	}

	public Integer getEntranceNum() {
		return entranceNum;
	}

	public void setEntranceNum(Integer entranceNum) {
		this.entranceNum = entranceNum;
	}

	public Integer getGoodsShelves() {
		return goodsShelves;
	}

	public void setGoodsShelves(Integer goodsShelves) {
		this.goodsShelves = goodsShelves;
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
