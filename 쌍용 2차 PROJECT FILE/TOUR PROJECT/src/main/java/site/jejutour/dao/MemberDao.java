package site.jejutour.dao;

import java.util.Map;

import site.jejutour.vo.MemberVO;


public interface MemberDao {
	void create(MemberVO member);
	void read(Map map);
	void readAll(Map map);
	void update(MemberVO member);
	void delete(int idx);
	void loginCheck(Map map);
}
