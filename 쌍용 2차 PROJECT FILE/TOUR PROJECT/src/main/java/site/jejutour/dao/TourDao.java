package site.jejutour.dao;

import java.util.Map;

import site.jejutour.vo.TourVO;

public interface TourDao {
	void create(TourVO tour);
	void read(Map map);
	void readAllPlaces(Map map);
}
