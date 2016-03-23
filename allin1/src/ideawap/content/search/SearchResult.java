/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ideawap.content.search;

import ideawap.content.dao.ContentDao;
import ideawap.content.dao.ContentDaoImp;
import ideawap.content.domain.ContentDes;

import java.util.ArrayList;
import java.util.List;

/*
 * @author Kunal
 */
public class SearchResult {

    UserKeyword uk = null;
    GetResultFromDb gd = new GetResultFromDb();

    public SearchResult(UserKeyword uk) {
        this.uk = uk;
    }

    public List<ContentDes> getResultByContentType(String tbl_name) {
        List<String> user_keyword_list = new ArrayList<String>();
        List<ContentDes> temp_result_list = new ArrayList<ContentDes>();
        List<ContentDes> user_result_list = new ArrayList<ContentDes>();
        
        

        
        
        
        user_keyword_list = uk.getUser_keyword_list();
        if (user_keyword_list.size() == 1) {
        	
        	ContentDao contentDao =  new ContentDaoImp(tbl_name);
        	
            temp_result_list = contentDao.getRandomContent(9);
            
            
            user_result_list.addAll(temp_result_list);
            
            return user_result_list;
        } else {
            //matching user keyword with cat
        	
          /*  for (int i = 0; i < user_keyword_list.size(); i++) {
            	ContentDao contentDao =  new ContentDaoImp(tbl_name);
               String all_sistinct_cat = gd.getDistinctCat();
            	
            	
                if (all_sistinct_cat.contains(user_keyword_list.get(i))) {
                    System.out.println(" " + all_sistinct_cat + " contains " + user_keyword_list.get(i));
                    temp_result_list = contentDao.getContentCatWise(tbl_name, user_keyword_list.get(i));
                    user_result_list.addAll(temp_result_list);

                    if (user_result_list.size() >= 18) {
                        return user_result_list;
                    }

                }

            }*/

            //matching user keyword with name
            for (int i = 0; i < user_keyword_list.size(); i++) {
                temp_result_list = gd.getResultAccordingToTableAndName(tbl_name, user_keyword_list.get(i));
                user_result_list.addAll(temp_result_list);

                if (user_result_list.size() >= 18) {
                    return user_result_list;
                }
            }

        }
        
       if (user_result_list.size() >= 18) {
          user_result_list = gd.getResultAccordingToTable(tbl_name);
                    return user_result_list;
                }

        return user_result_list;
    }

    
    public List<ContentDes> getResultByRandom() {
        String[] all_table = uk.getAll_table();
        List<String> user_keyword_list = new ArrayList<String>();
        List<ContentDes> user_result_list = new ArrayList<ContentDes>();
        List<ContentDes> temp_result_list = new ArrayList<ContentDes>();
        user_keyword_list = uk.getUser_keyword_list();
        //matching user keyword with cat
        for (int i = 0; i < all_table.length; i++) {
            System.out.println(" in first for rand ");
     
            for (int j = 0; j < user_keyword_list.size(); j++) {
                String all_sistinct_cat = gd.getDistinctCat(all_table[i]);
                System.out.println(" user_keyword_list.get(j)) "+user_keyword_list.get(j));
                System.out.println(all_sistinct_cat.contains(user_keyword_list.get(j)));
                if (all_sistinct_cat.contains(user_keyword_list.get(j))) {
                    System.out.println(" " + all_sistinct_cat + " contains " + user_keyword_list.get(j));
                    temp_result_list = gd.getResultAccordingToTableAndCat(all_table[i], user_keyword_list.get(j));
                    user_result_list.addAll(temp_result_list);

                    if (user_result_list.size() >= 18) {
                        return user_result_list;
                    }

                }

            }
               }
        
        
        for (int i = 0; i < all_table.length; i++) {
              System.out.println(" in second for rand ");
     
            for (int j = 0; j < user_keyword_list.size(); j++) {
                     temp_result_list = gd.getResultAccordingToTableAndName(all_table[i], user_keyword_list.get(j));
                    user_result_list.addAll(temp_result_list);

                    if (user_result_list.size() >= 18) {
                        return user_result_list;
                    }

                }

            
               }
        
          return user_result_list;
        
        
    }
    
}
