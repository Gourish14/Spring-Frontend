package com.cozentus.SpringFrontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.cozentus.SpringBackend.DAO.CategoryDAO;

@Controller
public class PageController {
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@RequestMapping(value= {"/","/index","home"})
	public ModelAndView indexPage() {
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title","Home Page");
		/*mv.addObject("cozentus", "Hello Gourish");*/
		mv.addObject("categories",categoryDAO.lists());
		mv.addObject("userClickHome",true);
		return mv;
	}
	
	@RequestMapping(value= {"/about"})
	public ModelAndView aboutPage() {
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title","About Page");
		/*mv.addObject("cozentus", "This is my About Page");*/
		mv.addObject("categories",categoryDAO.lists());
		mv.addObject("userClickAbout",true);
		return mv;
	}
	
	@RequestMapping(value= {"/service"})
	public ModelAndView servicePage() {
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title","Service Page");
		/*mv.addObject("cozentus", "This is my About Page");*/
		mv.addObject("categories",categoryDAO.lists());
		mv.addObject("userClickService",true);
		return mv;
	}
	
	@RequestMapping(value= {"/contact"})
	public ModelAndView contactPage() {
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title","Contact Page");
		/*mv.addObject("cozentus", "This is my About Page");*/
		mv.addObject("categories",categoryDAO.lists());
		mv.addObject("userClickContact",true);
		return mv;
	}
}
