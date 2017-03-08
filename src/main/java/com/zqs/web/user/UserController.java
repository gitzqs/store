package com.zqs.web.user;

import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zqs.model.base.ReturnObject;
import com.zqs.model.base.e.ReturnCode;
import com.zqs.model.user.User;
import com.zqs.utils.api.WebClient;
import com.zqs.utils.json.JacksonUtils;

@Controller
@RequestMapping(value="user")
public class UserController {
	
	/**
	 * 注册
	 * 
	 * @param 
	 * @return String
	 */
	@RequestMapping(value="/register",method=RequestMethod.POST)
	@ResponseBody
	public String register(@RequestBody String params){
		User user = (User) JacksonUtils.json2object(params, User.class);
		
		return JacksonUtils.object2json(WebClient.callRest("user/register", user));
	}
	
	/**
	 * 登录处理
	 * 
	 * @param 
	 * @return String
	 */
	@RequestMapping(value="loginHandle",method=RequestMethod.POST)
	@ResponseBody
	public String loginHandle(@RequestBody String params){
		Subject subject = SecurityUtils.getSubject();
		@SuppressWarnings("unchecked")
		Map<String,Object> map = (Map<String,Object>) JacksonUtils.json2map(params);
		ReturnObject returnObject = WebClient.callRest("user/login", map);
		if(returnObject.getReturnCode().equals(ReturnCode.SUCCESS_CODE)){
			User user = (User) JacksonUtils.json2object(returnObject.getReturnObj(), User.class);
			UsernamePasswordToken token = new UsernamePasswordToken(user.getMobile(),user.getPassword(),true,null);
			subject.login(token);
			returnObject.setReturnObj(null);
		}
		
		return JacksonUtils.object2json(returnObject);
	}
}
