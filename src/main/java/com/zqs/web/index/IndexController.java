package com.zqs.web.index;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zqs.model.base.ReturnObject;
import com.zqs.model.base.e.ReturnCode;
import com.zqs.model.goods.GoodsType;
import com.zqs.utils.api.APIConstants;
import com.zqs.utils.api.WebClient;
/**
 * 首页
 * 
 * @author qiushi.zhou  
 * @date 2017年3月3日 下午1:20:05
 */
@Controller
@RequestMapping(value="index")
public class IndexController {
	
	/**
	 * 首页
	 * 
	 * @param 
	 * @return String
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String index(Model model){
		//列表参数
		List<GoodsType> typeList = new ArrayList<GoodsType>();
		
		//获取首页列表
		ReturnObject typeResp = WebClient.callRest(APIConstants.SERVER_ADDR + "goods/menu", null);
		if(typeResp.getReturnCode().equals(ReturnCode.SUCCESS)){
			typeList = (List<GoodsType>) typeResp.getReturnData();
		}
		
		
		model.addAttribute("typeList", typeList);
		return "index";
	}
}
