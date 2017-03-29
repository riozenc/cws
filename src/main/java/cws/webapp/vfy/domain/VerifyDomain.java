/**
 * @Project:cws
 * @Title:VerifyDomain.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午9:39:40
 * 
 */
package cws.webapp.vfy.domain;

import com.riozenc.quicktool.annotation.TablePrimaryKey;

/**
 * 验证对象(特殊对象)
 * 
 * @author rioze
 *
 */
public class VerifyDomain {

	@TablePrimaryKey
	private Integer id;//
	private String type;// 类型(不同的验证对象对应不同的表)
	private String verifyId;// 验证对象数据ID
	private String verifyName;// 验证对象名称

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getVerifyId() {
		return verifyId;
	}

	public void setVerifyId(String verifyId) {
		this.verifyId = verifyId;
	}

	public String getVerifyName() {
		return verifyName;
	}

	public void setVerifyName(String verifyName) {
		this.verifyName = verifyName;
	}

}
