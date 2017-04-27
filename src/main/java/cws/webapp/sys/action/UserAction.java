/**
 * Title:UserAction.java
 * Author:riozenc
 * Datetime:2017年3月24日 下午1:19:49
**/
package cws.webapp.sys.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.riozenc.quicktool.common.util.json.JSONUtil;
import com.riozenc.quicktool.springmvc.webapp.action.BaseAction;

import cws.common.json.JsonGrid;
import cws.common.json.JsonResult;
import cws.webapp.sys.domain.UserDomain;
import cws.webapp.sys.service.IUserService;

@ControllerAdvice
@RequestMapping("user")
public class UserAction extends BaseAction {

	@Autowired
	@Qualifier("userServiceImpl")
	private IUserService userService;

	@ResponseBody
	@RequestMapping(params = "type=insert")
	public String insert(UserDomain userDomain) {
		int i = userService.insert(userDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=delete")
	public String delete(UserDomain userDomain) {
		int i = userService.delete(userDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=update")
	public String update(UserDomain userDomain) {
		int i = userService.update(userDomain);
		if (i > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=findByKey")
	public String findUserByKey(UserDomain userDomain) {
		userDomain = userService.findByKey(userDomain);
		return JSONUtil.toJsonString(userDomain);
	}

	@ResponseBody
	@RequestMapping(params = "type=findUserByWhere")
	public String findUserByWhere(UserDomain userDomain) {
		List<UserDomain> list = userService.findByWhere(userDomain);
		return JSONUtil.toJsonString(new JsonGrid(list));
	}
}
