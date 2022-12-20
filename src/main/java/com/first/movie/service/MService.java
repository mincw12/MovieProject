package com.first.movie.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.first.movie.dao.MDAO;
import com.first.movie.dto.MEMBER;
import com.first.movie.dto.PAGE;
import com.first.movie.dto.TIMEMOVIE;


@Service
public class MService {

		// ModelAndView 
		private ModelAndView mav = new ModelAndView();
		
		// DAO
		@Autowired
		private MDAO mdao;
		
		// session 
		@Autowired
		private HttpSession session;
		
		//
		@Autowired
		private HttpServletRequest request;
		
		@Autowired
		private BCryptPasswordEncoder pwEnc;
		
		@Autowired
		private JavaMailSender mailSender;

		public ModelAndView mCheckId(String memId) {
			
			String checkId  = mdao.mCheckId(memId);
			
			if(checkId == null) {
				//
				mav.setViewName("M_Join1");
				mav.addObject("checkId", memId);
			} else {
				// 
				mav.setViewName("M_Join2");
				mav.addObject("checkId", checkId);
			}
			
			return mav;
		}

		public ModelAndView mJoin(MEMBER member) throws IllegalStateException, IOException {
			
			System.out.println("member : " + member);
			
		
			
			MultipartFile memProfile = member.getMemProfile();
			
			UUID uuid = UUID.randomUUID();
			
			String profileName = uuid.toString().substring(0,8) + "_" + memProfile.getOriginalFilename();
			
//			String savePath = "C:\\Users\\user\\Documents\\workspace-sts-3.9.18.RELEASE\\MEMBOARD\\src\\main\\webapp\\resources\\profile\\";
			String savePath = request.getServletContext().getRealPath("/resources/profile/");
			
			
			if(!memProfile.isEmpty()) {
				memProfile.transferTo(new File(savePath + profileName));
				member.setMemProfileName(profileName);
			
			} else {
				member.setMemProfileName("사진없음");
			}			
			
			member.setMemPw(pwEnc.encode(member.getMemPw()));
			
			System.out.println("member : " + member);
		
			member.setMemCoupon("STD:0/PRM:0_VIP:0,");
			
			int result = mdao.mJoin(member);
			
			if(result > 0) {
				mav.setViewName("sign-in");
			} else {
				mav.setViewName("sign-up");
			}
			
			return mav;
		}


		public ModelAndView mLogin(MEMBER member) {

			String encPw = mdao.mLogin(member);
			
			if(pwEnc.matches(member.getMemPw(), encPw)) {
				session.setAttribute("loginId", member.getMemId());				
				String profile = mdao.Idimg(member.getMemId());
				session.setAttribute("Idimg", profile);
				
				System.out.println("\n[이거]"+profile);
				mav.setViewName("redirect:/index");
			} else {
				mav.setViewName("sign-in");
			}

			return mav;
		}


		public ModelAndView mList(int page, int limit) {
			System.out.println("[2] controller -> service \n page : " + page);

			int block = 5;


			int mCount = mdao.mCount();

			int startRow = (page - 1) * limit + 1;
			int endRow = page * limit;


			int maxPage = (int) (Math.ceil((double) mCount / limit));
			int startPage = (((int) (Math.ceil((double) page / block))) - 1) * block + 1;
			int endPage = startPage + block - 1;

			if (endPage > maxPage) {
				endPage = maxPage;
			}

			PAGE paging = new PAGE();

			paging.setPage(page);
			paging.setStartRow(startRow);
			paging.setEndRow(endRow);
			paging.setMaxpage(maxPage);
			paging.setStartpage(startPage);
			paging.setEndpage(endPage);
			paging.setLimit(limit);

			List<MEMBER> MemberList = mdao.mList(paging);

			// model
			mav.addObject("MemberList", MemberList);
			mav.addObject("paging", paging);
			// view
			mav.setViewName("M_List");

			return mav;
		}





		public ModelAndView mView(String memId) {
			
			MEMBER member = mdao.mView(memId);
			
			mav.addObject("member", member);
			mav.setViewName("MyPage");
			
			return mav;
		}


		public ModelAndView mModiForm(String memId) {
			MEMBER member = mdao.mView(memId);
			
			mav.addObject("member", member);
			mav.setViewName("Modify");
			
			return mav;
		}


		public ModelAndView mModify(MEMBER member) throws IllegalStateException, IOException {
			System.out.println("member : " + member);
			
			MultipartFile memProfile = member.getMemProfile();
			
			UUID uuid = UUID.randomUUID();
			
			String profileName = uuid.toString().substring(0,8) + "_" + memProfile.getOriginalFilename();
			
//			String savePath = "C:\\Users\\user\\Documents\\workspace-sts-3.9.18.RELEASE\\MEMBOARD\\src\\main\\webapp\\resources\\profile\\";
			String savePath = request.getServletContext().getRealPath("/resources/profile/");
			
			
			if(!memProfile.isEmpty()) {
				memProfile.transferTo(new File(savePath + profileName));
				member.setMemProfileName(profileName);
			
			} else {
				member.setMemProfileName("사진없음");
			}			
			
			member.setMemPw(pwEnc.encode(member.getMemPw()));
			
			System.out.println("member : " + member);
			
			int result = mdao.mModify(member);
			
			if(result > 0) {
				mav.setViewName("redirect:/mView?memId=" + member.getMemId());
			} else {
				mav.setViewName("Modify");
			}
			
			return mav;
		}


		public ModelAndView mDelete(String memId) {
			
			int result = mdao.mDelete(memId);
			
			if(result > 0) {
				mav.setViewName("sign-up");
			} else {
				mav.setViewName("index");
			}
			
			return mav;
		}


		public String idoverlap(String memId) {
			String checkId  = mdao.mCheckId(memId);
			String result;
			
			if(checkId == null) {
				result = "OK";
			} else {
				result = "NO";
			}
			
			return result;
		
		}

		// 한글 주석 처리 
		public String mCheckEmail(String memEmail) {
			System.out.println("이메일 주소 : " + memEmail);
			String uuid = UUID.randomUUID().toString().substring(0, 6);
			
			MimeMessage mail = mailSender.createMimeMessage();
			
			String mailContent = "<h2>안녕하세요. 인천일보 아카데미입니다.</h2><br/>"
					+ "<h3>인증번호는 " + uuid + " 입니다.</h3>";
			
			try {
				mail.setSubject("[이메일 인증] 인천일보 아카데미 이메일 인증", "UTF-8");
				mail.setText(mailContent, "UTF-8", "html");
				mail.addRecipient(RecipientType.TO, new InternetAddress(memEmail));
				
				mailSender.send(mail);
			} catch (MessagingException e) {
				e.printStackTrace();
			}
			
			return uuid;
		}


}
