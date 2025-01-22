package com.kmh.dogcat;

import java.util.Iterator;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kmh.dogcat.controller.CommonController;
import com.kmh.dogcat.service.CommonService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	CommonController commonController;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		model.addAttribute("menuList", commonController.getMenu() );
		
		logger.info(commonController.getMenu().size() + "");
		
		for(String key : commonController.getMenu().get(0).keySet()) {
			logger.info(key);
		}
		
		return "index";
	}
	
}
