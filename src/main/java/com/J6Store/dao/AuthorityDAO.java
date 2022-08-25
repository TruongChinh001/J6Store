package com.J6Store.dao;

import java.util.List;

import com.J6Store.entity.Account;
import com.J6Store.entity.Authority;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface AuthorityDAO extends JpaRepository<Authority, Integer>{

	@Query("SELECT DISTINCT a FROM Authority a WHERE a.account IN ?1")
	List<Authority> authoritiesOf(List<Account> accounts);

}
