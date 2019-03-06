package site.jejutour.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.jejutour.vo.MemberVO;

@Repository("memberDao")
public class MemberDaoImpl implements MemberDao {
	@Autowired
	SqlSession sqlSession;
	
	
	@Override
	public void create(MemberVO member) {
		this.sqlSession.insert("Tour.insertMemberSP", member);
		
	}

	@Override
	public void read(Map map) {
		this.sqlSession.selectOne("Tour.selectOneMemberSP", map);
		
	}

	@Override
	public void readAll(Map map) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(MemberVO member) {
		
	}

	@Override
	public void delete(int idx) {
		
		
	}

	@Override
	public void loginCheck(Map map) {
		sqlSession.selectOne("Tour.loginCheck",map);
	}

}
