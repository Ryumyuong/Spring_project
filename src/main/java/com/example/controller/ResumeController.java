package com.example.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.domain.Resume;
import com.example.service.ResumeService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/resume/*")
@Log4j
@AllArgsConstructor
public class ResumeController {
	private ResumeService service;
	
	
	
	@GetMapping("/register")
	public void register() {
		
	}
	
	@GetMapping("/list")
	public void list(Model model) {
		model.addAttribute("list", service.getList());
	}
	
	

	@PostMapping("/register")
	public String register(Resume resume, RedirectAttributes rttr) {
		log.info("register: " + resume);
		service.register(resume);
		log.info("register::" + resume.getR_id());
		rttr.addFlashAttribute("r_id", resume.getR_id());
		return "redirect:/resume/list";
	}
	
	@GetMapping({"/get", "/modify",})
	public void get(@RequestParam("r_id") String r_id, Model model) {
		log.info("/get: " + r_id);
		model.addAttribute("resume", service.get(r_id));
	}
	
	@PostMapping("/modify")
	public String modify(Resume resume, RedirectAttributes rttr) {
		log.info("modify: " + resume);
		
		if(service.modify(resume)) 
			rttr.addFlashAttribute("r_id", resume.getR_id());
		
		return "redirect:/resume/list";
	}
	
	
	@RequestMapping(value="/remove", method= {RequestMethod.GET, RequestMethod.POST})
	public String remove(@RequestParam("r_id") String r_id, RedirectAttributes rttr) {
		log.info("remove... " + r_id);
		
		if(service.remove(r_id)) 
			rttr.addFlashAttribute("result", "success");
		
		return "redirect:/resume/list";
	}

}