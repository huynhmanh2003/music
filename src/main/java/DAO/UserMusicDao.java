/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DTBconnect.ConnectDatabase;
import Model.User;
import Model.UserMusic;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Manh
 */
public class UserMusicDao {
    public static ArrayList<UserMusic> getUserMusic() {
        Connection con = null;
        ArrayList<UserMusic> list = new ArrayList<>();
        ConnectDatabase db = new ConnectDatabase();
        PreparedStatement stmt = null;
        try {
            con = db.connect();
            String query = "select * from [UserMusic]";
            stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                list.add(new UserMusic(rs.getInt(1), rs.getInt(2)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }
    public static void addUserMusic(UserMusic u1) {
        Connection con = null;
        PreparedStatement stmt = null;
        ConnectDatabase db = new ConnectDatabase();
        try {
            con = db.connect();
            String query = "insert into [UserMusic](UserID, MusicID)\n"
                    + "values(?,?);";
            stmt = con.prepareStatement(query);
            stmt.setInt(1, u1.getUserID());
            stmt.setInt(2, u1.getMusicID());
            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("User added successfully!");
            } else {
                System.out.println("Failed to add user!");
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
        public static void deleteUserMusic(int UserId) {
        Connection con = null;
        PreparedStatement stmt = null;
        ConnectDatabase db = new ConnectDatabase();
        try {
            con = db.connect();
            String query = "DELETE FROM UserMusic WHERE UserId = ?";
            stmt = con.prepareStatement(query);
            stmt.setInt(1, UserId);
            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("User with ID " + UserId + " deleted successfully!");
            } else {
                System.out.println("No user found with ID " + UserId + " to delete.");
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    public static void main(String[] args) {
        UserMusicDao u1 = new UserMusicDao();
//        System.out.println(u1.getUserMusic());
u1.deleteUserMusic(1);
    }

}
