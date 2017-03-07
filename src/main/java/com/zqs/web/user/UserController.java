package com.zqs.web.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zqs.model.base.ReturnObject;
import com.zqs.model.base.e.ReturnCode;
import com.zqs.model.user.User;
import com.zqs.utils.json.JacksonUtils;
import com.zqs.utils.string.StringUtils;

@Controller
@RequestMapping(value="user")
public class UserController {
	
	/**
	 * 
	 * 
	 * @param 
	 * @return String
	 */
	@RequestMapping(value="/register",method=RequestMethod.POST)
	@ResponseBody
	public String register(@RequestBody String params){
		//返回参数
		ReturnObject returnObject = new ReturnObject();
		String returnCode = ReturnCode.SUCCESS_CODE;
		String returnMsg = ReturnCode.SUCCESS_MSG;
		
		User user = (User) JacksonUtils.json2object(params, User.class);
		//1、验证参数是否完整
		if(user !=null){
			//2、验证是否缺少参数
			if(!StringUtils.isEmpty(user.getUserName())
					&& !StringUtils.isEmpty(user.getMobile())
					&& !StringUtils.isEmpty(user.getPassword())
					&& !StringUtils.isEmpty(user.getPasswordAgain())
					&& !StringUtils.isEmpty(user.getMessageCode())
					&& !StringUtils.isEmpty(user.getImgCode())){
				//3、验证密码是否一致
				if(user.getPassword().equals(user.getPasswordAgain())){
					
				}else{
					
				}
			}else{
				returnCode = ReturnCode.PARAMS_NULL_CODE;
				returnCode = ReturnCode.PARAMS_NULL_MSG;
			}
		}else{
			returnCode = ReturnCode.PARAMS_MISS_CODE;
			returnCode = ReturnCode.PARAMS_MISS_MSG;
		}
		
		return null;
	}
}
