/**
 * @Project:cws
 * @Title:ChillCarDomain.java
 * @Author:Riozenc
 * @Datetime:2017年4月2日 下午12:59:51
 * 
 */
package cws.webapp.vfy.domain;

import com.riozenc.quicktool.mybatis.MybatisEntity;

//chill car冷藏车
public class ChillCarDomain extends VerifyDomain implements MybatisEntity {
	private String name;// NAME varchar(30),
	private String types;// TYPE varchar(30),
	private String volume;// VOLUME varchar(30),
	private Integer fanNum;// FAN_NUM int,
	private Integer entranceNum;// ENTRANCE_NUM int,
	private Integer curtain;// GOODS_SHELVES int,
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

	public Integer getFanNum() {
		return fanNum;
	}

	public void setFanNum(Integer fanNum) {
		this.fanNum = fanNum;
	}

	public Integer getEntranceNum() {
		return entranceNum;
	}

	public void setEntranceNum(Integer entranceNum) {
		this.entranceNum = entranceNum;
	}

	public Integer getCurtain() {
		return curtain;
	}

	public void setCurtain(Integer curtain) {
		this.curtain = curtain;
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
