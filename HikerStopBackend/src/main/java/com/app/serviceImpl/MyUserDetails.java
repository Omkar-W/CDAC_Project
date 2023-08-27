//package com.app.serviceImpl;
//
//import java.util.Arrays;
//import java.util.Collection;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.GrantedAuthority;
//import org.springframework.security.core.authority.SimpleGrantedAuthority;
//import org.springframework.security.core.userdetails.UserDetails;
//
//import com.app.pojos.Admin;
//import com.app.pojos.Customer;
//import com.app.pojos.Guide;
//import com.app.pojos.User;
//
//public class MyUserDetails implements UserDetails{
//
//	
//	@Autowired
//	User user;
//	
//	@Autowired
//	Admin admin;
//	
//	@Autowired
//	Guide guide;
//	
//	
//	@Autowired
//	Customer customer;
//	
//	@Override
//    public Collection<? extends GrantedAuthority> getAuthorities() {
//        SimpleGrantedAuthority authority = new SimpleGrantedAuthority(admin.getRole());
//        authority = new SimpleGrantedAuthority(guide.getRole());
//        authority = new SimpleGrantedAuthority(customer.getRole());
//        return Arrays.asList(authority);
//    }
//
//	@Override
//	public String getPassword() {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public String getUsername() {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public boolean isAccountNonExpired() {
//		// TODO Auto-generated method stub
//		return false;
//	}
//
//	@Override
//	public boolean isAccountNonLocked() {
//		// TODO Auto-generated method stub
//		return false;
//	}
//
//	@Override
//	public boolean isCredentialsNonExpired() {
//		// TODO Auto-generated method stub
//		return false;
//	}
//
//	@Override
//	public boolean isEnabled() {
//		// TODO Auto-generated method stub
//		return false;
//	}
//	
//}
