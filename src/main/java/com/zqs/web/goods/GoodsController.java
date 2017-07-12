package com.zqs.web.goods;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value="goods")
public class GoodsController {
	
	@RequestMapping(value="/detail",method=RequestMethod.POST)
	public String detail(@RequestParam int id){
		
		return "goods/goodsDetail";
	}
}
