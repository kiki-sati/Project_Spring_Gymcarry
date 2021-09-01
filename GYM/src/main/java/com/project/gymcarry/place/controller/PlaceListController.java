package com.project.gymcarry.place.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.gymcarry.dao.PlaceDao;
import com.project.gymcarry.place.PlaceDto;
import com.project.gymcarry.place.service.PlacePilatesListService;

@Controller
public class PlaceListController {
	@Autowired
	private PlacePilatesListService service;
	
	@GetMapping("place/list")
	public String matching() {
		return "place/placeList";
	}
	
	

	// 필라테스 업체 리스트
	@GetMapping("/place/pilates")
	public String pilatesList(
			PlaceDao placeDao,
			@RequestParam("placenum") int placenum,
			Model model) {

		List<PlaceDto> placePilatesList = service.getPilatesPlaceList(placenum);

		System.out.println(placePilatesList);

		model.addAttribute("placePilatesList", placePilatesList);

		return "place/placePilatesListNaver";
	}

	
}
