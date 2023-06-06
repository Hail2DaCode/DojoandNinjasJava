package com.brian.dojos;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.brian.dojos.models.Dojo;
import com.brian.dojos.models.Ninja;
import com.brian.dojos.services.DojoService;
import com.brian.dojos.services.NinjaService;

import jakarta.validation.Valid;



@Controller
public class MainController {
	@Autowired
	DojoService dojoService;
	@Autowired
	NinjaService ninjaService;
	@GetMapping("/dojos/new")
	public String getDojo(@ModelAttribute("dojo")Dojo dojo) {
		return "createDojo.jsp";
	}
	@PostMapping("/new/Dojo")
	public String createDojo(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result) {
		if(result.hasErrors()) {
			return "createDojo.jsp";
		}
		else {
			dojoService.createDojo(dojo);
			return "redirect:/dojos/new";
		}
	}
	@GetMapping("/ninjas/new")
	public String getNinja(@ModelAttribute("ninja") Ninja ninja, BindingResult result, Model model) {
		List<Dojo> dojos = dojoService.allDojos();
		model.addAttribute("dojos", dojos);
		return "createNinja.jsp";
	}
	@PostMapping("/new/Ninja")
	public String createNinja(@ModelAttribute("ninja") Ninja ninja, BindingResult result) {
		if(result.hasErrors()) {
			return "createDojo.jsp";
		}
		else {
			ninjaService.createNinja(ninja);
			return "redirect:/dojos/" + ninja.getDojo().getId();
		}
	}
	@GetMapping("/dojos/{id}")
	public String ninjasForEachDojo(@PathVariable("id") Long id, Model model) {
		Dojo dojo = dojoService.findDojo(id);
		model.addAttribute(dojo);
		return "ninjasInDojo.jsp";
	}
	
}
