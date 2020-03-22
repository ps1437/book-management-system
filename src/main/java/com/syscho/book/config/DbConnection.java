package com.syscho.book.config;

import java.util.HashMap;
import java.util.Map;

import com.syscho.book.vo.UserVO;

public class DbConnection {

	public static Map<String, UserVO> userList = new HashMap<>();

	static {
		userList.put("admin@gmail.com", new UserVO("admin@gmail.com", "admin", "A"));
		userList.put("user@gmail.com", new UserVO("user@gmail.com", "user", "U"));
	}

	public static void addUser(UserVO userVo) {
		userList.put(userVo.getUserId(), userVo);
	}

	public static UserVO login(String userId, String pwd) {
		System.out.println(userId);
		System.out.println(pwd);

		if (userList.containsKey(userId)) {
			UserVO userVO = userList.get(userId.toLowerCase());
			System.out.println(userVO);
			if (userVO.getPassword().equalsIgnoreCase(pwd.toLowerCase())) {
				return userVO;
			}

		}
		return null;

	}

}
