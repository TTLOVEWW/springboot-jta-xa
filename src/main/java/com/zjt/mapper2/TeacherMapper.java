package com.zjt.mapper2;

import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.mapping.StatementType;

import com.zjt.entity.Teacher;
import com.zjt.util.MyMapper;

public interface TeacherMapper extends MyMapper<Teacher> {

	@Select("call testPro(#{id},#{name})")
	@Options(statementType = StatementType.CALLABLE)//表示调用存储过程
	public void testPro(Teacher params);
}