package com.zjt.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import com.zjt.entity.TClass;
import com.zjt.util.MyMapper;
public interface TClassMapper extends MyMapper<TClass> {
	@Select("select id,name from t_class where id=#{id}")
	public List<TClass> getInfo(String id);
	
}