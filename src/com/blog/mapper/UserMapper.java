package com.blog.mapper;
 
import java.util.List;

import com.blog.pojo.User;
import com.blog.util.Page;
 
public interface UserMapper {
 
      
    public int add(User user);  
       
      
    public void delete(int id);  
       
      
    public User get(int id);  
     
      
    public int update(User user);   
       
      
    public List<User> list();
    
    public List<User> list(Page page);
    
      
    public int total(); 
    
    public User getByUsername(String userName);
    
    
}