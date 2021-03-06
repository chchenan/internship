package cn.internship.dao;

import java.util.List;

import cn.internship.entity.CaseLibrary;
import cn.internship.entity.Course;

/**
 * 案例库持久层接口
 * @author MengHan
 */
public interface CaseLibraryDao {

	public List<CaseLibrary> getAll();
	
	public CaseLibrary get(Integer id);
	
	public List<CaseLibrary> getByCId(Integer courseId);
	
	public void add(CaseLibrary caseLibrary);
	
	public void delete(Integer id);
	
}
