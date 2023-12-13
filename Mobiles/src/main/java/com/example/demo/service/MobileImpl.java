package com.example.demo.service;

import java.util.List;
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.MobileData;
import com.example.demo.repository.MobileRepository;

@Service
public class MobileImpl implements Mobile {

	@Autowired
	private MobileRepository mr;

	@Override
	public List<MobileData> details() {
		// TODO Auto-generated method stub
		return mr.findAll();
	}

	@Override
	public void save(MobileData mobile) {
		// TODO Auto-generated method stub
		mr.save(mobile);
	}

	@Override
	public void delete(int imei) {
		// TODO Auto-generated method stub
		mr.deleteById(imei);
	}
//
//	@Override
//	public MobileData get(int imei) {
//		// TODO Auto-generated method stub
//		return mr.findById(imei).get();
//	}

	/*
	@Override
	public MobileData updatedata(MobileData mobile, int imei) {
		// TODO Auto-generated method stub
		MobileData md = mr.findById(imei).get();

		if (Objects.nonNull(mobile.getName()) && !"".equalsIgnoreCase(mobile.getName())) {
			md.setName(mobile.getName());
		}

		if (Objects.nonNull(mobile.getCompany()) && !"".equalsIgnoreCase(mobile.getCompany())) {
			md.setCompany(mobile.getCompany());
		}

		if (Objects.nonNull(mobile.getCampix())) {
			md.setCampix(mobile.getCampix());
		}
		
		if (Objects.nonNull(mobile.getRam())) {
			md.setRam(mobile.getRam());
		}
		
		if (Objects.nonNull(mobile.getRom())) {
			md.setRom(mobile.getRom());
		}
		
		if (Objects.nonNull(mobile.getProcessor())) {
			md.setProcessor(mobile.getProcessor());
		}

		if (Objects.nonNull(mobile.getDisplay())) {
			md.setDisplay(mobile.getDisplay());
		}
		
		return mr.save(md);
	}
	*/

}
