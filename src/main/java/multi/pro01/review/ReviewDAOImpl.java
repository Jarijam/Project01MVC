package multi.pro01.review;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class ReviewDAOImpl implements ReviewDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int insert(ReviewVO review) {
		int result = sqlSession.insert("project.review.insert", review);
		return result;
	}

	@Override
	public List<ReviewVO> getReviewList() {
		return sqlSession.selectList("project.review.list");
	}
	
	@Override
	public List<ReviewFileVO> getFileList() {
		return sqlSession.selectList("project.review.filelist");
	}
	
	@Override
	public ReviewVO read(String review_no) {
		return sqlSession.selectOne("project.review.read", review_no);
	}
	
	
	@Override
	public ReviewFileVO readFile(String review_no) {
		return sqlSession.selectOne("project.review.read", review_no);
		
	}
	
	@Override
	public int ratingUpdate(String res_name) {
		int result = sqlSession.update("project.review.ratingUpdate", res_name);
		return result;
	}
	
	@Override
	public int fileInsert(ArrayList<String> filelist) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("filelist",filelist);
		System.out.println("mybatis:"+paramMap);
		int sub = 
			sqlSession.insert("project.review.fileinsert",paramMap);
		return sub;
	}
	
	
	
	//review_update
	@Override
	public int update(ReviewVO review_update) {
		return sqlSession.update("project.review.update_review", review_update);
	}

	@Override
	public ReviewFileVO getFile(String review_no) {
		return sqlSession.selectOne("project.review.filelist_read", review_no);
	}

	@Override
	public int delete(String delete) {
		System.out.println("delete-dao+++++++++++called"+delete);
		return sqlSession.delete("project.review.delete", delete);
	}

	

	
	
}
