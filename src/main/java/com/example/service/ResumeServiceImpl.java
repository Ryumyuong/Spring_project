package com.example.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.domain.Resume;
import com.example.mapper.ResumeMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ResumeServiceImpl implements ResumeService{
private ResumeMapper mapper;

@Override
public void register(Resume resume) {
	mapper.insert(resume);
	
}

@Override
public Resume get(String r_id) {
	log.info("get......" + r_id);
	return mapper.read(r_id);
}

@Override
public boolean modify(Resume resume) {
	// TODO Auto-generated method stub
	return mapper.update(resume) == 1;
}

@Override
public boolean remove(String r_id) {
	// TODO Auto-generated method stub
	return mapper.delete(r_id) == 1;
}

@Override
public List<Resume> getList() {
	return mapper.getList();
	// TODO Auto-generated method stub
}

}
