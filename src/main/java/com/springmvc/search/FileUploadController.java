package com.springmvc.search;

import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class FileUploadController {

	@RequestMapping("/fileup")
	public String show() {
		System.out.println("File Upload");
		
//		String s = null;
//		System.out.println(s.length());
		
		return "fileForm";
	}
	
	@RequestMapping(path="/uploadimage", method=RequestMethod.POST)
	public String upload(@RequestParam("profile") CommonsMultipartFile file,
			HttpSession s,Model m 
			) {
		
		System.out.println(file.getSize());
		System.out.println(file.getContentType());
		System.out.println(file.getName());
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getStorageDescription());
		
		byte[] data = file.getBytes();
		
		String  path = s.getServletContext().getRealPath("/")+file.getOriginalFilename();
		
		System.out.println(path);
		
		try {
			FileOutputStream fos = new FileOutputStream(path);
			fos.write(data);
			fos.close();
			System.out.println("File Uploaded");
			m.addAttribute("filename",file.getOriginalFilename());
			m.addAttribute("out","File Uploaded..");
			
			
		}catch(IOException e) {
			e.printStackTrace();
			System.out.println("Uploading Error");
			m.addAttribute("error", "Uploading Error..");
		}
		
		System.out.println("File Success");
		return "filesuccess";
	}
}
