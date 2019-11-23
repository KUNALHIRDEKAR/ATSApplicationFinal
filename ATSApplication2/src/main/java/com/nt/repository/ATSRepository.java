package com.nt.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.nt.entity.UserEntity;

@Repository
public interface ATSRepository extends JpaRepository<UserEntity,Integer> {

	UserEntity findByEmailAndPazzword(String s, String pass);
	UserEntity findByEmail(String email);

}
