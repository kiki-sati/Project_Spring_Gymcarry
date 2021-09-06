package com.project.gymcarry.member.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.gymcarry.carry.CarryDto;
import com.project.gymcarry.dao.MemberDao;
import com.project.gymcarry.member.MemberDto;

@Service
public class JoinService {

	@Autowired
	private SqlSessionTemplate template;

	private MemberDao dao;

	public int memberJoin(MemberDto memberDto) {
		dao = template.getMapper(MemberDao.class);
		return dao.insertMember(memberDto);
	}

	public int carryJoin(CarryDto carryDto) {
		dao = template.getMapper(MemberDao.class);
		return dao.insertCarry(carryDto);
	}

	// 인증키 생성
	@Override
	public String create_joinkey() throws Exception {
		String key = "";
		Random rd = new Random();

		for (int i = 0; i < 8; i++) {
			key += rd.nextInt(10);
		}
		return key;
	}

	// 이메일발송
	@Override
	public void send_mail(MemberDto member) {

		// Mail Server 설정
		String charSet = "utf-8";
		String hostSMTP = "smtp.gmail.com";
		String hostSMTPmememail = "gymcarryemail@gmail.com";
		String hostSMTPmempw = "gymcarry1234";

		// 보내는 사람 Email, 제목, 내용
		String fromEmail = "gymcarryemail@gmail.com";
		String fromName = "GymCarry";
		String subject = "GymCarry 회원가입 인증 메일입니다.";
		String msg = "";
		
		// 회원가입 메일 내용
		subject = "GymCarry 회원가입 인증 메일입니다.";
		msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
		msg += "<h3 style='color: blue;'>";
		msg += member.getMememail() + " 회원님 짐캐리 회원가입을 환영합니다.</h3>";
		msg += "<div style='font-size: 130%'>";
		msg += "하단의 인증 버튼 클릭 시 정상적으로 회원가입이 완료됩니다.</div><br/>";
		msg += "<form method='post' action='http://localhost:8081/homepage/member/approval_member.do'>";
		msg += "<input type='hidden' name='email' value='" + member.getMememail() + "'>";
		msg += "<input type='hidden' name='approval_key' value='" + member.getJoinkey() + "'>";
		msg += "<input type='submit' value='인증'></form><br/></div>";

		// 받는 사람 E-Mail 주소
		String mail = member.getMememail();
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSL(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(); // SMTP 포트번호 입력

			email.setAuthentication(hostSMTPmememail, hostSMTPmempw);
			email.setTLS(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();
		} catch (Exception e) {
			System.out.println("메일발송 실패 : " + e);
		}

	}

}
