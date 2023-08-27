//package com.app.security;
//
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.GrantedAuthority;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.stereotype.Service;
//
//import com.app.pojos.User;
//import com.app.services.UserService;
//import com.app.utils.Security;
//
//import java.util.List;
//
//@Service
//public class CustomUserDetailsService implements UserDetailsService {
//    @Autowired
//    private UserService userService;
//
//    @Override
//    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//        User user = userService.findByUsername(username).orElseThrow(() -> new UsernameNotFoundException(username));
//
//        List<GrantedAuthority> authorities = List.of(Security.convertToAuthority(user.getRole().name()));
//
//        return UserPrinciple.builder()
//                .user(user)
//                .id(user.getId())
//                .username(user.getUsername())
//                .password(user.getPassword())
//                .authorities(authorities)
//                .build();
//    }
//}
