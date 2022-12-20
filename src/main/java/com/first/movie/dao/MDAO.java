package com.first.movie.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.first.movie.dto.MEMBER;
import com.first.movie.dto.PAGE;
import com.first.movie.dto.TIMEMOVIE;

@Repository
public class MDAO {

	// sql(mapper)로 연결
	@Autowired
	private SqlSessionTemplate sql;

	public String mCheckId(String memId) {

		return sql.selectOne("Member.mCheckId", memId);
	}

	public int mJoin(MEMBER member) {

		return sql.insert("Member.mJoin", member);
	}

	public String mLogin(MEMBER member) {

		return sql.selectOne("Member.mLogin", member);
	}

	public int mCount() {

		return sql.selectOne("Member.mCount");
	}

	public List<MEMBER> mList(PAGE paging) {

		return sql.selectList("Member.mList", paging);
	}

	public MEMBER mView(String memId) {

		return sql.selectOne("Member.mView", memId);
	}

	public int mModify(MEMBER member) {

		return sql.update("Member.mModify", member);
	}

	public int mDelete(String memId) {

		return sql.delete("Member.mDelete", memId);
	}
	
	public String Idimg(String memId) {

		return sql.selectOne("Member.Idimg", memId);
	}

}
