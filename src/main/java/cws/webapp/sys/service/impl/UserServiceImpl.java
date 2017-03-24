/**
 * Title:UserServiceImpl.java
 * Author:riozenc
 * Datetime:2017年3月24日 下午1:16:49
**/
package cws.webapp.sys.service.impl;

import java.util.List;

import com.riozenc.quicktool.annotation.TransactionDAO;
import com.riozenc.quicktool.annotation.TransactionService;

import cws.webapp.sys.dao.UserDAO;
import cws.webapp.sys.domain.UserDomain;
import cws.webapp.sys.service.IUserService;

@TransactionService
public class UserServiceImpl implements IUserService {

	@TransactionDAO
	private UserDAO userDAO;

	@Override
	public int insert(UserDomain t) {
		// TODO Auto-generated method stub
		return userDAO.insert(t);
	}

	@Override
	public int delete(UserDomain t) {
		// TODO Auto-generated method stub
		return userDAO.delete(t);
	}

	@Override
	public int update(UserDomain t) {
		// TODO Auto-generated method stub
		return userDAO.update(t);
	}

	@Override
	public UserDomain findByKey(UserDomain t) {
		// TODO Auto-generated method stub
		return userDAO.findByKey(t);
	}

	@Override
	public List<UserDomain> findByWhere(UserDomain t) {
		// TODO Auto-generated method stub
		return userDAO.findByWhere(t);
	}

}
