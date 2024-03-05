/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DTBconnect.ConnectDatabase;
import Model.User;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Manh
 */
public class UserDao {

    public ArrayList<User> getUser() {
        Connection con = null;
        ArrayList<User> list = new ArrayList<>();
        ConnectDatabase db = new ConnectDatabase();
        try {
            con = db.connect();
            String query = "select * from [User]";
            ResultSet rs = con.prepareStatement(query).executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void addUser(User u1) {

    }
    public static void main(String[] args) {
        UserDao u = new UserDao();
        ArrayList<User> arr = new ArrayList<>();
        arr = u.getUser();
        System.out.println(arr);
        
    }
}
