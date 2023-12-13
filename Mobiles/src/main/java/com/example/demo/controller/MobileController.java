package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.MobileData;
import com.example.demo.service.Mobile;
import com.example.demo.service.MobileImpl;


@Controller
public class MobileController {
	
	@Autowired
	private Mobile m;
	
	@GetMapping("/mobile")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("mobile", m.details());
		System.out.println(m.details());
		return mv;
	}
	
	@GetMapping("/add")
	public ModelAndView addMobile() {
		ModelAndView mv = new ModelAndView("add");
		return mv;
	}
	
	@GetMapping("/delete")
	public ModelAndView delete(@RequestParam("imei") int imei) {
		System.out.println("Hello world");
		System.err.println("mobile method API Calling...");
		m.delete(imei);
		return new ModelAndView("redirect:/mobile");
	}
	
//	@GetMapping("/get")
//	public ResponseEntity<MobileData> get(@RequestParam("imei") int imei) {
//		System.err.println("emp method API Calling...");
//		return ResponseEntity.ok(m.get(imei));
//	}
//	@GetMapping("/edit")
//	public ModelAndView edit() {
//		ModelAndView mv = new ModelAndView("edit");
//		return mv;
//	}
	
//	@PutMapping("/edit/{imei}")
//    public MobileData updateMobile(@RequestBody MobileData mobile, @PathVariable("imei") int imei)
//    {
//        return m.updatedata(mobile, imei);
//    }
	
		
	@PostMapping("/addMobile")
	public ModelAndView addStudent(@ModelAttribute("mobile") MobileData mobile, BindingResult result) {
		if (result.hasErrors()) {
			return new ModelAndView("redirect:/mobile");
		}
		m.save(mobile);
		return new ModelAndView("redirect:/mobile");
	}
}
