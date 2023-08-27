//package com.app.daos;
//
//
//
//import org.springframework.data.jpa.repository.Query;
//import org.springframework.data.repository.CrudRepository;
//import org.springframework.data.repository.query.Param;
//
//import com.app.pojos.User;
//
//public interface UserDao extends CrudRepository<User, Long> {
//
//   @Query("SELECT u FROM User u WHERE u.userid = :userid")
//   public User getUserByUserid(@Param("userid") String userid);
//}
