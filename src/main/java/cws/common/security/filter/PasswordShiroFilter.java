/**
 * Title:PasswordShiroFilter.java
 * Author:riozenc
 * Datetime:2017年3月23日 下午5:06:37
**/
package cws.common.security.filter;

import javax.annotation.PostConstruct;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.stereotype.Service;

import com.riozenc.quicktool.common.util.http.HttpUtils;
import com.riozenc.quicktool.shiro.filter.AbstractPasswordShiroFilter;
import com.riozenc.quicktool.shiro.token.UsernamePasswordToken;

@Service
public class PasswordShiroFilter extends AbstractPasswordShiroFilter {

	private static final String DEFAULT_CAPTCHA_PARAM = "validateCode";
	public static final String DEFAULT_MOBILE_PARAM = "mobileLogin";
	public static final String DEFAULT_MESSAGE_PARAM = "message";

	@Override
	protected AuthenticationToken getToken(ServletRequest request, ServletResponse response) {
		// TODO Auto-generated method stub
		String username = getUsername(request);
		String password = getPassword(request);
		if (password == null) {
			password = "";
		}
		boolean rememberMe = isRememberMe(request);

		String host = HttpUtils.getRemoteAddr((HttpServletRequest) request);
		String captcha = WebUtils.getCleanParam(request, DEFAULT_CAPTCHA_PARAM);
		boolean mobile = WebUtils.isTrue(request, DEFAULT_MOBILE_PARAM);

		return new UsernamePasswordToken(username, password.toCharArray(), rememberMe, host, captcha, mobile);
	}

	@Override
	protected String getFailureMessage(AuthenticationException authenticationException) {
		// TODO Auto-generated method stub
		String className = authenticationException.getClass().getName(), message = "";
		if (IncorrectCredentialsException.class.getName().equals(className)
				|| UnknownAccountException.class.getName().equals(className)) {
			message = "用户或密码错误, 请重试.";
		} else if (authenticationException.getMessage() != null
				&& authenticationException.getMessage().startsWith("msg:")) {
			message = authenticationException.getMessage().replace("msg:", "");
		} else {
			message = "系统出现点问题，请稍后再试！";
			authenticationException.printStackTrace(); // 输出到控制台
		}
		return message;
	}

	@PostConstruct
	public void initPasswordShiroFilter() {
		setIsRedirectDirectly(true);
		setExceptionKey("errorMessage");
	}

}
