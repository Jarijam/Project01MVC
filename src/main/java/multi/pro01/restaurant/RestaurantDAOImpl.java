package multi.pro01.restaurant;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RestaurantDAOImpl implements RestaurantDAO {
	@Autowired
	SqlSession sqlSession;

	@Override
	public int insert(RestaurantVO user) {
		System.out.println("restaurant테이블에 insert"+user);
		int result = sqlSession.insert("pro01.restaurant.insert", user);
		return result;
	}

	@Override
	public List<RestaurantVO> restaurantlist() {
		return sqlSession.selectList("pro01.restaurant.list");
	}

	@Override
	public List<RestaurantVO> categorySearch(String res_type) {
		return sqlSession.selectList("pro01.restaurant.categorySearch", res_type);
	}

	
	@Override
	public List<String> getCategory() {
		return sqlSession.selectList("pro01.restaurant.getCategory");
	}

	@Override
	public int update(RestaurantVO user) {
		return 0;
	}

	@Override
	public RestaurantVO read(String restaurant_read) {		
		System.out.println("서비스체크!!"+restaurant_read);
		return sqlSession.selectOne("pro01.restaurant.read", restaurant_read);
	}

	@Override
	public int delete(String res_name) {
		System.out.println("디에이오impl"+res_name);
		return sqlSession.delete("pro01.restaurant.delete", res_name);
	}

	
} 