package ideawap.content.controller;


import ideawap.content.get.GetContent;
import ideawap.content.searchTest.SearchEngine;
import ideawap.content.searchTest.ViewController;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ContentController {
	
	@RequestMapping("/index")
	public String process() {
		return "index";
	}
	
	@RequestMapping("/cat")
	public String cat() {
		
		return "cat";
	}
	@RequestMapping("/test")
	public String test() {
		
		return "index_test";
	}
	
	
	@RequestMapping("/Game")
	public ModelAndView game() {
		GetContent gc = new GetContent();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("contentDesc",gc.getRandContent("game"));
		modelAndView.addObject("contentCat",gc.getCatList("game"));
		modelAndView.addObject("content_type","Game");
		modelAndView.setViewName("content");
		return modelAndView;
	}
	@RequestMapping("/Wallpaper")
	public ModelAndView wallpaper() {
		GetContent gc = new GetContent();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("contentDesc",gc.getRandContent("wallpaper"));
		modelAndView.addObject("contentCat",gc.getCatList("wallpaper"));
		modelAndView.addObject("content_type","Wallpaper");
		modelAndView.setViewName("content");
		return modelAndView;
	}
	@RequestMapping("/Video")
	public ModelAndView video() {
		GetContent gc = new GetContent();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("contentDesc",gc.getRandContent("video"));
		modelAndView.addObject("contentCat",gc.getCatList("video"));
		modelAndView.addObject("content_type","Video");
		modelAndView.setViewName("content");
		return modelAndView;
	}
	@RequestMapping("/Animation")
	public ModelAndView animation() {
		GetContent gc = new GetContent();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("contentDesc",gc.getRandContent("animation"));
		modelAndView.addObject("contentCat",gc.getCatList("animation"));
		modelAndView.addObject("content_type","Animation");
		modelAndView.setViewName("content");
		return modelAndView;
	}
	
	@RequestMapping("/BuyOneGetOne")
	public ModelAndView BuyOneGetOne() {
		GetContent gc = new GetContent();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("contentDesc",gc.getRandContent("video"));
		modelAndView.addObject("content_type","Video");
		modelAndView.setViewName("pack");
		return modelAndView;
	}
	@RequestMapping("/FreeZone")
	public ModelAndView FreeZone() {
		GetContent gc = new GetContent();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("contentDesc",gc.getRandContent("wallpaper"));
		modelAndView.addObject("content_type","Wallpaper");
		modelAndView.setViewName("pack");
		return modelAndView;
	}
	
	
	
	@RequestMapping("/Search")
	public ModelAndView Search(@RequestParam ("users_keyword") String users_keyword) {
		
        
         List<ViewController> user_result_list = new ArrayList<ViewController>();
         SearchEngine se = new SearchEngine();
         se.settingKeyword(users_keyword);
         user_result_list = se.getSearchResult();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("user_result_list",user_result_list);
		modelAndView.setViewName("search");
		return modelAndView;
	}
	
	
	@RequestMapping("/allCatAjax")
	public ModelAndView allCatAjax(@RequestParam ("cat") String cat_name,@RequestParam ("content_type") String content_type) {
		GetContent gc = new GetContent();
		ModelAndView modelAndView = new ModelAndView();
		
		content_type = content_type.toLowerCase();
		
		modelAndView.addObject("contentDesc",gc.getContentCatWise(content_type,cat_name));
		modelAndView.setViewName("contentAjax");
		return modelAndView;
	}
	
	

	
	

}
