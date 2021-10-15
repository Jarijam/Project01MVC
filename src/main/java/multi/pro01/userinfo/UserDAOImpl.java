package multi.pro01.userinfo;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO {
	@Autowired
	SqlSession sqlSession;
	@Override
	public int insert(UserVO user) {
		sqlSession.insert("project.user.insert", user);
		return 0;
	}
	@Override
	public boolean idCheck(String id) {
		UserVO user = sqlSession.selectOne("project.user.idCheck", id);
		if(user != null) {
			return false;	// 아이디가 존재하면 false
		}else {
			return true;	// 아이디가 없으면 true
		}
	}
	
	
}