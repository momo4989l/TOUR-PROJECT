package site.jejutour.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sun.istack.internal.logging.Logger;

import site.jejutour.service.MemberService;
import site.jejutour.service.TourService;
import site.jejutour.vo.MemberVO;
import site.jejutour.vo.TourVO;

@Controller
public class TourController {
	private static Logger logger = Logger.getLogger(TourController.class);
	@Autowired
	MemberService memberService;

	@Autowired
	TourService tourService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "index";
	}

	@RequestMapping(value = "/places", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView places(HttpSession session) {
		String id = (String) session.getAttribute("id");
		Map<String, Object> map = new HashMap<String, Object>();
		tourService.readAllPlaces(map);
		List<TourVO> list = (List<TourVO>) map.get("results");
		String totalList = "[";
		for (int i = 0; i < list.size(); i++) {
			TourVO tour = list.get(i);
			totalList += "{ idx: " + tour.getTour_idx() + ",";
			totalList += " address: '" + tour.getTour_address() + "',";
			totalList += " name: '" + tour.getTour_name() + "',";
			totalList += " div_name: '" + tour.getDiv_name() + "',";
			totalList += " price: " + tour.getPrice() + ",";
			if (i == list.size() - 1) {
				totalList += " phone: '" + tour.getTour_phone() + "'}";
			} else {
				totalList += " phone: '" + tour.getTour_phone() + "'},";
			}
		}
		totalList += "];";
		ModelAndView mav = new ModelAndView(); 
		mav.addObject("places", list);
		mav.addObject("list", totalList);
		mav.addObject("count", 0);
		mav.addObject("id",id);
		mav.setViewName("places");
		return mav;
	}
	
	@RequestMapping(value ="/login", method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login");
		return mav;
	}
	
	@RequestMapping(value ="/mypage", method = RequestMethod.GET)
	public ModelAndView mypage(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String id = (String) session.getAttribute("id");
		mav.addObject("id",id);
		mav.setViewName("scrape");
		return mav;
	}
	
	@RequestMapping(value ="/information", method = RequestMethod.GET)
	public ModelAndView information() {
		Map<String, Object> map = new HashMap<String, Object>();
		tourService.readAllPlaces(map);
		List<TourVO> list = (List<TourVO>) map.get("results");
		ModelAndView mav = new ModelAndView();
		mav.addObject("places", list);
		mav.setViewName("information");
		return mav;
	}
	
	@RequestMapping(value ="/tourinfo/{idx}", method = RequestMethod.GET)
	public ModelAndView tourInfo(@PathVariable int idx) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("tour_idx", idx);
		tourService.selectTour(map);
		List<TourVO> list = (List<TourVO>)map.get("result");
		TourVO tour = list.get(0);
		ModelAndView mav = new ModelAndView();
		mav.addObject("place", tour);
		mav.setViewName("information-detail");
		return mav;
	}
	
	@RequestMapping(value ="/login_check", method = RequestMethod.POST)
	public String loginCheck(@RequestParam("login_id") String id,
            @RequestParam("login_password") String password, HttpSession session) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("password", password);
		memberService.loginCheck(map);
		List<MemberVO> list = (List<MemberVO>) map.get("results");
		MemberVO member = list.get(0);
		if(!(member.getUserid().equals(id)) || !(member.getPassword().equals(password))) {
			return "redirect:/loginFail";
		} else {
			session.setAttribute("id", id);
			return "redirect:/";
		}
	}
	
	@RequestMapping(value="/register", method = RequestMethod.POST)
	@ResponseBody
	public Map register(@RequestBody MemberVO member) {
		Map<String, Object> map = new HashMap<String, Object>();
		memberService.insertMember(member);
		map.put("result", Boolean.TRUE);
		return map;
	}
	
	@RequestMapping(value="/confirm", method = RequestMethod.GET)
	public ModelAndView confirm() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("confirm");
		return mav;
	}
}
