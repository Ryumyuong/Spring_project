package com.example.mapper;

import java.util.List;

import com.example.domain.Criteria;
import com.example.domain.Resume;

public interface ResumeMapper {
	public void insert(Resume resume);
	public Resume read(String r_id);
	public int delete(String r_id);
	public int update(Resume resume);
	public void insertSelectKey(Resume resume);
	public List<Resume> getList();
}
