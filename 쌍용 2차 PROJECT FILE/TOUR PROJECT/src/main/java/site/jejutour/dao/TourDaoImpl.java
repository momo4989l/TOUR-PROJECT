package site.jejutour.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import site.jejutour.vo.MemberVO;
import site.jejutour.vo.TourVO;

@Repository("tourDao")
public class TourDaoImpl implements TourDao {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void create(TourVO tour) {
		this.sqlSession.insert("Tour.insertTourSP", tour);
		
	}
	@Override
	public void read(Map map) {
		this.sqlSession.selectOne("Tour.selectOneTourSP", map);
		
	}
	@Override
	public void readAllPlaces(Map map) {
		sqlSession.selectList("Tour.selectPlaces",map);
	}
}
