package com.choongangtour.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.choongangtour.dto.TestDTO;

@Repository("testDAO")
public class testDAO extends AbstractDAO {
	public List<Map<String, Object>> selectList(TestDTO dto) {
		return (List<Map<String, Object>>) selectList("test.board", dto);
	}

	public int adminWrite(TestDTO dto) {
		return insert("test.adminWrite", dto);
	}

	public List<Map<String, Object>> selectList2(TestDTO dto) {
		return (List<Map<String, Object>>) selectList("test.board2", dto);
	}

	public void adminWriteWithoutFile(TestDTO dto) {
		insert("test.adminWriteWithoutFile", dto);
	}

	//////////////////////////아래로 쭉 샛별 userWrite 추가 1012
	public void userWrite(TestDTO testDTO) {
		insert("test.userWrite", testDTO);
	}

	public int totalCount(Map<String, Object> map) {
		return
			Integer.parseInt(
				String.valueOf(
					selectOne("test.totalCount", map).get("totalCount")
				)
			);
	}

	public List<Map<String, Object>> userBoard(Map<String, Object> map) {
		return (List<Map<String, Object>>) selectList("test.userBoard", map);
	}

	public Map<String, Object> ubDetail(Map<String, Object> map) {
		return selectOne("test.ubDetail", map);
	}

	public int ubLike(Map<String, Object> map) {
		return update("test.ubLike", map);
	}
}
