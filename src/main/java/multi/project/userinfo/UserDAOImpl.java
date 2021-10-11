package multi.project.userinfo;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO {
	@Autowired
	SqlSession sqlSession;
	@Override
	public int insert(UserVO user) {
		sqlSession.insert("project.userinfo.insert", user);
		return 0;
	}

	@Override
	public List<UserVO> getMemberList() {
		
		return null;
	}

}