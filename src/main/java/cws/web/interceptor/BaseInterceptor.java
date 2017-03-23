/**
 * Title:BaseInterceptor.java
 * Author:riozenc
 * Datetime:2017年3月23日 下午2:10:41
**/
package cws.web.interceptor;

import java.lang.reflect.Method;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.riozenc.quicktool.common.util.date.DateUtil;
import com.riozenc.quicktool.common.util.json.JSONUtil;
import com.riozenc.quicktool.common.util.log.ExceptionLogUtil;
import com.riozenc.quicktool.common.util.log.LogUtil;
import com.riozenc.quicktool.common.util.log.LogUtil.LOG_TYPE;
import com.riozenc.quicktool.exception.LoginTimeOutException;

import cws.common.json.JsonResult;

public class BaseInterceptor extends HandlerInterceptorAdapter {

	@Override
	public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse,
			Object object, Exception exception) throws Exception {
		// TODO Auto-generated method stub

		if (null != exception) {
			// 设置头信息,字符集UTF-8
			httpServletResponse.setHeader("Content-type", "text/html;charset=UTF-8");
			// 登录超时异常
			if (exception instanceof LoginTimeOutException) {
				httpServletResponse.getWriter().println(JSONUtil.toJsonString(new JsonResult(202, "请重新登录...")));
			} else {
				httpServletResponse.getWriter().println(exception.getMessage());
			}
			httpServletResponse.getWriter().close();
			LogUtil.getLogger(LOG_TYPE.ERROR)
					.error("[" + DateUtil.formatDateTime(new Date()) + "]{" + httpServletRequest.getRemoteAddr()
							+ "} 执行" + getClassMethod(object) + "[" + httpServletRequest.getMethod() + "]:"
							+ ExceptionLogUtil.log(exception));
		}
	}

	@Override
	public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse,
			Object object, ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("postHandler");
	}

	@Override
	public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse,
			Object object) throws Exception {
		// TODO Auto-generated method stub

		LogUtil.getLogger(LOG_TYPE.OTHER)
				.info("[" + DateUtil.formatDateTime(new Date()) + "]{" + httpServletRequest.getRemoteAddr() + "} 执行"
						+ getClassMethod(object) + "[" + httpServletRequest.getMethod() + "]");

		return true;

	}

	private String getClassMethod(Object object) {
		if (object instanceof HandlerMethod) {
			HandlerMethod handlerMethod = (HandlerMethod) object;
			Class<?> clazz = handlerMethod.getBeanType();
			Method method = handlerMethod.getMethod();
			return clazz.getName() + "." + method.getName();
		} else {
			return "执行未知操作:" + object.getClass();
		}

	}

}
