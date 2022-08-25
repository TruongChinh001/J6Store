package com.J6Store.dao;

import java.util.List;

import com.J6Store.entity.Account;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface AccountDAO extends JpaRepository<Account, String>{

	@Query("SELECT DISTINCT ar.account FROM Authority ar WHERE ar.role.id IN ('ADMIN', 'STAFF')")
	List<Account> getAdminitrators();

}
