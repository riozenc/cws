/**
 * Title:PasswordShiroRealm.java
 * Author:riozenc
 * Datetime:2017年3月23日 下午6:12:17
**/
package cws.common.security.realm;

import com.riozenc.quicktool.shiro.Principal;
import com.riozenc.quicktool.shiro.realm.AbstractPasswordShiroRealm;

public class PasswordShiroRealm extends AbstractPasswordShiroRealm {

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected String getHashAlgorithmName() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getHashIterations() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Principal createPrincipal() {
		// TODO Auto-generated method stub
		return null;
	}

}
