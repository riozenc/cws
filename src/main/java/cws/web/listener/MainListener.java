/**
 * Title:MainListener.java
 * Author:riozenc
 * Datetime:2017年3月23日 下午2:13:33
**/
package cws.web.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.riozenc.quicktool.common.util.log.LogUtil;
import com.riozenc.quicktool.common.util.log.LogUtil.LOG_OUT_TYPE;
import com.riozenc.quicktool.mybatis.db.DbFactory;

public class MainListener implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {

		// 日志方式
		// LogUtil.setLogOutType(LOG_OUT_TYPE.FILE);// 全部日志根据文件配置输出
		LogUtil.setLogOutType(LOG_OUT_TYPE.SYSTEM);// 全部日志根据文件配置输出

		DbFactory.initByFactory();

		System.out.println("initialized");

	}

	/**
	 * 销毁
	 */
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("destory");
	}

}
