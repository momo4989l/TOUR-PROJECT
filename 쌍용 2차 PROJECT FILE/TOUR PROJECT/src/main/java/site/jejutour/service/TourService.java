package site.jejutour.service;

import java.util.Map;

import site.jejutour.vo.TourVO;

public interface TourService {
	void insertTour(TourVO tour);
	void selectTour(Map map);
	void readAllPlaces(Map map);
}
