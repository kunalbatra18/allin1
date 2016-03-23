package ideawap.content.get;

import java.util.ArrayList;
import java.util.List;

import ideawap.content.dao.ContentDao;
import ideawap.content.dao.ContentDaoImp;
import ideawap.content.domain.ContentCatList;
import ideawap.content.domain.ContentDes;

public class GetContent {
	
	public List<ContentDes> getRandContent(String content_type){
		ContentDao contentDao =  new ContentDaoImp(content_type);
		List<ContentDes> contentDes_ls  = new ArrayList<ContentDes>();
		contentDes_ls = contentDao.getRandomContent(9);
		return contentDes_ls;
	}
	
	public List<ContentDes> getContentCatWise(String content_type,String cat){
		//contructor of ContentDaoImp will set the table name according to content_type
		ContentDao contentDao =  new ContentDaoImp(content_type);
		List<ContentDes> contentDes_ls  = new ArrayList<ContentDes>();
		contentDes_ls = contentDao.getContentCatWise(cat,9);
		return contentDes_ls;
	}
	
	
	
	public List<ContentCatList> getCatList(String content_type){
		ContentDao contentDao =  new ContentDaoImp(content_type);
		List<ContentCatList> ContentCatList_ls  = new ArrayList<ContentCatList>();
		ContentCatList_ls = contentDao.getDistinctCat();
		return ContentCatList_ls;
	}
	
	
	
	

}
