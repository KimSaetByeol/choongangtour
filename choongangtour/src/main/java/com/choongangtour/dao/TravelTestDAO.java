package com.choongangtour.dao;

import java.util.Map;

public class TravelTestDAO extends AbstractDAO{
	
	public void typeSave(Map<String, Object> map) {
		update("login.typeSave", map);
	}
}
