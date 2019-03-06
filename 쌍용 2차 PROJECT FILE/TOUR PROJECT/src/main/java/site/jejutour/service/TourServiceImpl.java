package site.jejutour.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.jejutour.dao.TourDao;
import site.jejutour.vo.TourVO;

@Service("tourService")
public class TourServiceImpl implements TourService {
	
	@Autowired
	TourDao tourDao;
	
	@Override
	public void insertTour(TourVO tour) {
		this.tourDao.create(tour);
		
	}

	@Override
	public void selectTour(Map map) {
		this.tourDao.read(map);
		
	}

	@Override
	public void readAllPlaces(Map map) {
		tourDao.readAllPlaces(map);
	}

	
}
