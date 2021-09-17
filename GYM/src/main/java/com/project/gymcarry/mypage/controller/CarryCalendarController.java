package com.project.gymcarry.mypage.controller;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.gymcarry.member.SessionDto;
import com.project.gymcarry.mypage.CarryMypageDto;
import com.project.gymcarry.mypage.service.MypageService;

@Controller
@RequestMapping("/mypage/carrycalendar")
public class CarryCalendarController {

	@Autowired
	private MypageService mypService;
	
	@GetMapping
	public String fullcal(HttpSession session, CarryMypageDto crpagedto) {
		SessionDto sessiondto  = (SessionDto)session.getAttribute("loginSession");

		session.setAttribute("cridx", sessiondto.getCridx());
		session.setAttribute("crname", sessiondto.getCrname());
		
		
		List<Map<String, Object>> resultList = mypService.resultList(null, null, null, null, sessiondto.getCridx() );

		//0번째 row에서 date컬럼 값을 String으로 가져옴
		String date = resultList.get(0).get("date").toString();

		//가져온 값 확인
		System.out.println("date ::" + date);
		
		System.out.println("cridx : " +sessiondto.getCridx());
		System.out.println("세션 -> " + sessiondto + "-> 마이페이지 진입");
		
		
		return "/mypage/carrycalendar";
		
	}
	


	public String addCrschedule(CarryMypageDto cmpdto, Model md) {
		SessionDto sessiondto  = (SessionDto)session.getAttribute("loginSession");
		
		
		String arg0 = cmpdto.getTitle();
		String arg1 = cmpdto.getAllday();
		Date arg2 = cmpdto.getStart();
		Date arg3 = cmpdto.getEnd();
		
		List<CarryMypageDto> carrymp = mypService.resultList(arg0,arg1,arg2,arg3, sessiondto.getCridx());
		
		return "/mypage/carrycalendar";
		
		
		
	}


}
