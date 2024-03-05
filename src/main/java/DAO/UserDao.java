/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DTBconnect.ConnectDatabase;
import Model.User;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Manh
 */
public class UserDao {
    public ArrayList<User> getUser(){
        ConnectDatabase db = new ConnectDatabase();
        Connection con = null;
        ArrayList<User> list = new ArrayList<>();
        con = db.connect();
        String query = "select * from User";
        ResultSet rs = con.prepareStatement(query).executeQuery();
        while(rs.next()){
            list.add(new User(0, query, query, query, query, query))
        }
    }
}
