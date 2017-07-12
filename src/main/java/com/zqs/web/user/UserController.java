package com.zqs.web.user;

import java.util.HashMap;
import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zqs.model.base.ReturnObject;
import com.zqs.model.base.e.ReturnCode;
import com.zqs.model.user.User;
import com.zqs.utils.api.WebClient;
import com.zqs.utils.json.JacksonUtils;

@Controller
public class UserController {
	
	/**
	 * 注册页面
	 * 
	 * @param 
	 * @return String
	 */
	@RequestMapping(value="register/",method=RequestMethod.GET)
	public String register(){
		return "login/register";
	}
	
	/**
	 * 注册发送短信验证码
	 * 
	 * @param 
	 * @return String
	 */
	@RequestMapping(value="register/sendMessage",method=RequestMethod.POST)
	@ResponseBody
	public String sendMessage(@RequestParam String mobile){
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("mobile", mobile);
		map.put("type", 1);
		ReturnObject returnObject = WebClient.callRest("other/sendPhoneMessage", map);
		return JacksonUtils.object2json(returnObject);
	}
	
	/**
	 * 注册处理
	 * 
	 * @param 
	 * @return String
	 */
	@RequestMapping(value="register/handle",method=RequestMethod.POST)
	@ResponseBody
	public String register(@RequestBody String params){
		User user = (User) JacksonUtils.json2object(params, User.class);
		
		return JacksonUtils.object2json(WebClient.callRest("user/register", user));
	}
	
	/**
	 * 登录页面
	 * 
	 * @param 
	 * @return String
	 */
	@RequestMapping(value="login/",method=RequestMethod.GET)
	public String login(){
		return "login/login";
	}
	
	/**
	 * 登录处理
	 * 
	 * @param 
	 * @return String
	 */
	@RequestMapping(value="login/handle",method=RequestMethod.POST)
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
