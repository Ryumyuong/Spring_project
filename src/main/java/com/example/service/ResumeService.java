package com.example.service;

import java.util.List;

import com.example.domain.Criteria;
import com.example.domain.Resume;

public interface ResumeService {
	public void register(Resume resume);
	public Resume get(String r_id);
	public boolean modify(Resume resume);
	public boolean remove(String r_id);
	public List<Resume> getList();
//	public List<Resume> getList(Criteria cri);
//	public int getTotal(Criteria cri);
}
