package multi.pro01.userinfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDAO dao;
	
	@Override
	public int insert(UserVO user) {
		dao.insert(user);
		return 0;
	}

	@Override
	public boolean idCheck(String id) {
		return dao.idCheck(id);
	}

	@Override
	public UserVO login(UserVO loginUser) {
		return dao.login(loginUser);
	}

	@Override
	public List<UserVO> getMemberList() {
		return null;
	}

	@Override
	public int update_password(UserVO user) {
		return dao.update_password(user);
	}

	@Override
	public int update_email(UserVO user) {
		return dao.update_email(user);
	}

	@Override
	public int update_cellnum(UserVO user) {
		return dao.update_cellnum(user);
	}

	@Override
	public int delete(String userid) {
		return dao.delete(userid);
	}
	
	
	
}
