package com.project.gymcarry.mypage.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.gymcarry.carry.CarryMypageDto;
import com.project.gymcarry.member.SessionDto;
import com.project.gymcarry.mypage.service.MypageService;


@Controller
@RequestMapping
public class CarryCalendarController {

	@Autowired
	private MypageService mypService;
	
	
	
	@GetMapping
	public String fullcal(HttpSession session, CarryMypageDto crpagedto) {
		
		
	
		
		/*
		 * SessionDto sessiondto = (SessionDto)session.getAttribute("loginSession");
		 * 
		 * session.setAttribute("cridx", sessiondto.getCridx());
		 * System.out.println("받아온 cridx : " + sessiondto.getCridx());
		 * 
		 * List<Map<String, Object>> resultList = mypService.resultList(null, null,
		 * null, null, sessiondto.getCridx() );
		 * 
		 * //0번째 row에서 date컬럼 값을 String으로 가져옴 String event =
		 * resultList.get(0).get("event").toString(); System.out.println("event = " +
		 * event);
		 * 
		 * 
		 * //가져온 값 확인 System.out.println("jsondata :" + event);
		 * 
		 * System.out.println("cridx : " +sessiondto.getCridx());
		 * System.out.println("세션 -> " + sessiondto + "-> 세션이 오긴하나요...");
		 */
		
		
		return "/mypage/carrymypage";
		
	}
	

	@PostMapping("/mypage/carrymypage")
	public String addCrschedule(HttpSession session, @ModelAttribute("request") Map<String, String> resultList) {
		
		
		
		
		System.out.println("carrymp : "+ resultList);
		
		
		return "/mypage/carrymypage";
		
		
		
	}


}
