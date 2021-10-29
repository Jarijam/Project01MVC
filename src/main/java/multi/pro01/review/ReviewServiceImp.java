package multi.pro01.review;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class ReviewServiceImp implements ReviewService {

	@Autowired
	ReviewDAO dao;

	@Override
	public int insert(ReviewVO review, ArrayList<String> filelist) {
		System.out.println("review서비스단 insert =>" + review);
		int result = dao.insert(review);
		dao.fileInsert(filelist);
		return result;
	}

	@Override
	public List<ReviewVO> getReviewList() {
		return dao.getReviewList();
	}

	@Override
	public ReviewVO read(String review_no) {
		return dao.read(review_no);
	}

	@Override
	public int ratingUpdate(String res_name) {
		return dao.ratingUpdate(res_name);
	}

	@Override
	public int fileinsert(ReviewVO data, ArrayList<String> filelist) {
		return dao.fileInsert(filelist);
	}


	FileOutputStream fos;
	@Override
	public void upload(MultipartFile file, String path, String fileName) {

		try {
			byte[] data = file.getBytes();
			fos = new FileOutputStream(path + File.separator + fileName);
			fos.write(data);
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (fos != null)
					fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
