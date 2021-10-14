package com.choongangtour.service;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.choongangtour.dao.testDAO;
import com.choongangtour.dto.TestDTO;

@Service
public class TestServiceImplements implements TestService {
	Logger log = Logger.getLogger(this.getClass());
	@Autowired
	private testDAO dao;

	public List<Map<String, Object>> selectList(TestDTO dto) {
		return dao.selectList(dto);
	}

	public int adminWrite(TestDTO dto) {
		return dao.adminWrite(dto);
	}

	public List<Map<String, Object>> selectList2(TestDTO dto) {
		return dao.selectList2(dto);
	}

	public void adminWriteWithoutFile(TestDTO dto) {
		dao.adminWriteWithoutFile(dto);

	}

	//////////////////////////아래로 쭉 샛별 userWrite 추가 1012
	public void userWrite(TestDTO testDTO) {
		dao.userWrite(testDTO);
	}

	public int totalCount(Map<String, Object> map) {
		return dao.totalCount(map);
	}

	public List<Map<String, Object>> userBoard(Map<String, Object> map) {
		return dao.userBoard(map);
	}

	public Map<String, Object> ubDetail(Map<String, Object> map) {
		return dao.ubDetail(map);
	}

	public int ubLike(Map<String, Object> map) {
		return dao.ubLike(map);
	}

}
