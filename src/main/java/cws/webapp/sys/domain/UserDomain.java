/**
 * Title:UserDomain.java
 * Author:riozenc
 * Datetime:2017年3月24日 下午1:15:01
**/
package cws.webapp.sys.domain;

public class UserDomain {
	private Integer id;//
	private String account;
	private String password;
	private String name;//
	private String remark;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}
