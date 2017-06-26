package com.hanlin.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.hanlin.dao.UserDao;
import com.hanlin.domain.Pager;
import com.hanlin.domain.User;

@Repository
public class UserDao extends BaseDao<User> {
	public User getUserByAccount(String account) {
		String hqlString = "FROM User WHERE account=?";
		List<User> list = super.find(hqlString, new Object[] { account });
		if (list.size() != 0 && list != null) {
			return list.get(0);
		}
		return null;
	}
    public User getUserByUserId(int userId){
    	String hqlString="FROM User WHERE userId=?";
    	List<User> list=super.find(hqlString, new Object[]{userId});
    	if(list.size()!=0&&list!=null){
    		return list.get(0);
    	}
    	return null;
    }
	@SuppressWarnings("unchecked")
	public List<User> findAllUsers() {
		String hql = "FROM User";
		return super.find(hql);
	}
     
	// 超管管理所有用户
	@SuppressWarnings("unchecked")
	public List<User> findAllUsersWithSerach(String account, String nickname) {
		List<User> result = new ArrayList<User>();
		Object param[] = new Object[10];
		List<String> paramList = new ArrayList<String>();
		StringBuilder hql = new StringBuilder("FROM User WHERE 1=1");
		System.out.println("nickname:"+nickname);
		if (account != null && !"".equals(account)) {
			System.out.println("此时的account不为空");
			hql.append(" AND account like '%"+account+"%'");
			//paramList.add(account);
		}
		if (nickname != null && !nickname.equals("")) {
			System.out.println("此时的nickname不为空");
			hql.append(" AND nickname like '%"+nickname+"%'");
			//paramList.add(nickname);
		}
		/*for (int i = 0, len = paramList.size(); i < len; i++) {
			param[i] = paramList.get(i);
		}*/
		System.out.println("此时的hql语句是：" + hql);
		System.out.println(param.toString());
		result = super.find(hql.toString());
		return result;
	}

	public Pager<User> findUsersByPager(String account, String nickname,
			int pageNum, int pageSize) {
		List<User> allStudenList = findAllUsersWithSerach(account, nickname);
		Pager<User> pager = new Pager<User>(pageNum, pageSize, allStudenList);
		return pager;
	}
    public int countAll(){
		String hqlString="SELECT COUNT(*) FROM User";
		return Integer.parseInt(String.valueOf(super.count(hqlString)));
	}
    @SuppressWarnings("unchecked")
	public List<User> findAllTeachers(){
    	String hqlString="FROM User WHERE condi=1";
    	return super.find(hqlString);
    }
    public User getSuper(){
    	String hqlString="FROM User WHERE condi=2";
    	@SuppressWarnings("unchecked")
		List<User> list=super.find(hqlString);
    	if(list!=null&&list.size()!=0){
    		return list.get(0);
    	}
    	return null;
    }    
}
