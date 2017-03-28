/**
 * @Project:cws
 * @Title:PersonnelPostAction.java
 * @Author:Riozenc
 * @Datetime:2017年3月28日 下午11:31:38
 * 
 */
package cws.webapp.cmm.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.riozenc.quicktool.common.util.json.JSONGrid;
import com.riozenc.quicktool.common.util.json.JSONUtil;
import com.riozenc.quicktool.springmvc.webapp.action.BaseAction;

import cws.webapp.cmm.domain.PersonnelPostDomain;
import cws.webapp.cmm.service.IPersonnelPostService;

@ControllerAdvice
@RequestMapping("personnelPost")
public class PersonnelPostAction extends BaseAction {

	@Autowired
	@Qualifier("personnelPostServiceImpl")
	private IPersonnelPostService personnelPostService;

	@ResponseBody
	@RequestMapping(params = "type=insert")
	public String insert(PersonnelPostDomain personnelPostDomain) {
		if (personnelPostService.insert(personnelPostDomain) > 0) {
			return JSONUtil.writeSuccessMsg("成功");
		} else {
			return JSONUtil.writeErrorMsg("失败");
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=delete")
	public String delete(PersonnelPostDomain personnelPostDomain) {
		int i = personnelPostService.delete(personnelPostDomain);
		if (i > 0) {
			return JSONUtil.writeSuccessMsg("成功");
		} else {
			return JSONUtil.writeErrorMsg("失败");
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=update")
	public String update(PersonnelPostDomain personnelPostDomain) {
		int i = personnelPostService.update(personnelPostDomain);
		if (i > 0) {
			return JSONUtil.writeSuccessMsg("成功");
		} else {
			return JSONUtil.writeErrorMsg("失败");
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=findPersonnelPostByKey")
	public String findPersonnelPostByKey(PersonnelPostDomain personnelPostDomain) {
		personnelPostDomain = personnelPostService.findByKey(personnelPostDomain);
		return JSONUtil.toJsonString(personnelPostDomain);
	}

	@ResponseBody
	@RequestMapping(params = "type=findPersonnelPostByWhere")
	public String findPersonnelPostByWhere(PersonnelPostDomain personnelPostDomain) {
		List<PersonnelPostDomain> list = personnelPostService.findByWhere(personnelPostDomain);
		return JSONUtil.toJsonString(new JSONGrid(personnelPostDomain, list));
	}

}
