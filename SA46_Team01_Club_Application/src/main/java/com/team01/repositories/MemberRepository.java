package com.team01.repositories;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import com.team01.model.Member;

public interface MemberRepository extends JpaRepository<Member, Integer> {
	
	 @Query(value = "SELECT DISTINCT u.memberNo FROM Member u", nativeQuery=true)
	 ArrayList<Member> findAllMember();
	 

		@Query("SELECT c from Member c WHERE c.memberNo = :eid")
		Member findMemberByEID(@Param("eid") Integer eid);	 
}
