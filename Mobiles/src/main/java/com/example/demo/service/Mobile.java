package com.example.demo.service;

import java.util.List;

import com.example.demo.model.MobileData;

public interface Mobile {
	public List<MobileData> details();
	
	void save(MobileData mobile);
	
	void delete(int imei);
	
//	MobileData updatedata(MobileData mobile,int imei);
	
//	MobileData get(int imei);
}
