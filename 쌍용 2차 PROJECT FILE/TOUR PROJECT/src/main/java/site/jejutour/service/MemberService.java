package site.jejutour.service;

import java.util.Map;

import site.jejutour.vo.MemberVO;


public interface MemberService {
	void insertMember(MemberVO member);
	void selectMember(Map map);
	void select(Map map);
	void updateMember(MemberVO member);
	void deleteMember(int idx);
	void loginCheck(Map map);
}
