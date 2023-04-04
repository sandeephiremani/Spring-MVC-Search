 package com.springmvc.search;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class SearchController {
	
	@RequestMapping("/user/{userId}/{userName}")
	public String user(@PathVariable("userId") int userId,@PathVariable("userName") String userName){
		System.out.println("User Running");
//		int i = Integer.parseInt(userName);
//		System.out.println(i);
		System.out.println(userName);
		System.out.println(userId);
		return "home";
	}

	@RequestMapping(path="/home" , method=RequestMethod.GET)
	public String home() {
		System.out.println("Home");
//		String str = null;
//		System.out.println(str.length());
		return"home";
	}
	
	@RequestMapping("/search")
	public RedirectView search(@RequestParam("querybox") String query ) {
		String url = "https://www.google.com/search?q="+query;
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(url);
		return  redirectView;
	}
	
		/* Exception Handling to Separate Controller */
	
/*	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(value=NullPointerException.class)
	public String exceptionHandler(Model m) {
		m.addAttribute("msg", "Null Pointer Exception");
		return "nullpage";
	}
	
	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(value=NumberFormatException.class)
	public String excceptionNumber(Model m) {
		m.addAttribute("msg", "Number Format Exception");
		return "nullpage";
	}
	
	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(value=Exception.class)
	public String exception(Model m) {
		m.addAttribute("msg", "Exception");
		return "nullpage";
	}
	*/
}
