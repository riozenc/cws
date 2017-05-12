/**
 * @Project:cws
 * @Title:CommonParamAction.java
 * @Author:Riozenc
 * @Datetime:2017年3月22日 下午10:03:22
 * 
 */
package cws.webapp.sys.action;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.riozenc.quicktool.common.util.file.FileUtil;
import com.riozenc.quicktool.common.util.json.JSONUtil;
import com.riozenc.quicktool.config.Global;
import com.riozenc.quicktool.springmvc.webapp.action.BaseAction;

import cws.common.json.JsonResult;
import cws.webapp.sys.domain.CommonParamDomain;
import cws.webapp.sys.service.ICommonParamService;

@ControllerAdvice
@RequestMapping("commonParam")
public class CommonParamAction extends BaseAction {

	private static final Map<String, Map<String, CommonParamDomain>> MAP = new ConcurrentHashMap<String, Map<String, CommonParamDomain>>();
	private static boolean FLAG = false;

	@Autowired
	@Qualifier("commonParamServiceImpl")
	private ICommonParamService commonParamService;

	@ResponseBody
	@RequestMapping(params = "getConfig")
	public static Map<String, CommonParamDomain> getConfig(String type) throws Exception {
		long time = System.currentTimeMillis();

		while (!FLAG) {
			if ((System.currentTimeMillis() - time) > 10 * 1000) {
				// 等待10秒
				throw new Exception("获取参数超时(" + type + ").");
			}
		}
		return MAP.get(type);
	}

	@PostConstruct
	public void init() {
		List<CommonParamDomain> list = commonParamService.findByWhere(new CommonParamDomain());
		for (CommonParamDomain temp : list) {
			Map<String, CommonParamDomain> map = MAP.get(temp.getType());
			if (map == null) {
				map = new HashMap<String, CommonParamDomain>();
				MAP.put(temp.getType(), map);
			}
			map.put(temp.getName(), temp);
		}

		// 特殊处理
		String rootPath = getClass().getResource("/").getFile().toString();
		String[] ss = rootPath.split("/");
		StringBuffer sb = new StringBuffer();

		for (int i = 1; i < ss.length - 2; i++) {
			sb.append(ss[i]).append("/");
		}

		sb.deleteCharAt(sb.length() - 1);
		MAP.get("PATH_TYPE").get("TOMCAT_PATH").setValue(sb.toString());

		// 取得根目录路径

		FLAG = true;
	}

	@ResponseBody
	@RequestMapping(params = "type=insert")
	public String insert(CommonParamDomain commonParamDomain, @RequestParam(name = "paramType") String type) {
		commonParamDomain.setType(type);
		commonParamDomain.setCreateDate(new Date());
		commonParamDomain.setStatus(1);
		if (commonParamService.findByKey(commonParamDomain) != null) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "编号重复."));
		}
		if (commonParamService.insert(commonParamDomain) > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=findCommonParamByType")
	public String findCommonParamByType(CommonParamDomain commonParamDomain,
			@RequestParam(name = "paramType") String type) {
		commonParamDomain.setType(type);
		List<CommonParamDomain> list = commonParamService.findByWhere(commonParamDomain);
		return JSONUtil.toJsonString(list);
	}

	@ResponseBody
	@RequestMapping(params = "type=delete")
	public String delete(CommonParamDomain commonParamDomain, @RequestParam(name = "paramType") String type) {
		commonParamDomain.setType(type);
		if (commonParamService.delete(commonParamDomain) > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=update")
	public String update(CommonParamDomain commonParamDomain, @RequestParam(name = "paramType") String type) {
		commonParamDomain.setType(type);
		commonParamDomain.setUpdateDate(new Date());
		if (commonParamService.update(commonParamDomain) > 0) {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS, "成功."));
		} else {
			return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "失败."));
		}
	}

	@ResponseBody
	@RequestMapping(params = "type=uploadFile")
	public String uploadFile(@RequestParam("img") CommonsMultipartFile file, HttpServletRequest httpServletRequest) {
		// 项目部署的路径
		// String path =
		// httpServletRequest.getSession().getServletContext().getRealPath("/");
		String path = MAP.get("PATH_TYPE").get("TOMCAT_PATH").getValue();

		File dic = new File(path + Global.getConfig("file.doc.path"));
		if (!dic.exists()) {
			dic.mkdirs();
		}

		File dest = new File(path + Global.getConfig("file.doc.path") + File.separator + file.getOriginalFilename());

		try {
			if (!dest.exists()) {
				dest.createNewFile();
			}

			file.transferTo(dest);

			return JSONUtil.toJsonString(new JsonResult(JsonResult.SUCCESS,
					Global.getConfig("file.doc.path") + "/" + file.getOriginalFilename()));
		} catch (

		IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// return JSONUtil.toJsonString(map);
		return JSONUtil.toJsonString(new JsonResult(JsonResult.ERROR, "文件上传失败."));
	}

	@ResponseBody
	@RequestMapping(params = "type=uploadBase64")
	public String uploadBase64(String base64data, String measureType, String pointType, String reportNo,
			HttpServletRequest httpServletRequest) {

		// 项目部署的路径
		// String path =
		// httpServletRequest.getSession().getServletContext().getRealPath("/");
		String path = MAP.get("PATH_TYPE").get("TOMCAT_PATH").getValue();

		try {
			File file = FileUtil.uploadPictureByBase64(base64data, path + Global.getConfig("file.doc.path"),
					reportNo + "_" + pointType + "_" + measureType);

			return JSONUtil.toJsonString(
					new JsonResult(JsonResult.SUCCESS, Global.getConfig("file.doc.path") + "/" + file.getName()));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
