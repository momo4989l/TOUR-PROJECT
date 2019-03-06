package site.jejutour.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.jejutour.dao.MemberDao;
import site.jejutour.vo.MemberVO;
 
@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDao memberDao;
	
	
	@Override
	public void insertMember(MemberVO member) {
		this.memberDao.create(member);
		
	}

	@Override
	public void selectMember(Map map) {
		this.memberDao.read(map);
		
	}

	@Override
	public void select(Map map) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateMember(MemberVO member) {

	}

	@Override
	public void deleteMember(int idx) {
		// TODO Auto-generated method stub
	}
	public void loginCheck(Map map) {
		memberDao.loginCheck(map);
	}
	

}
