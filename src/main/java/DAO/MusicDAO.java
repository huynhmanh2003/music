/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DTBconnect.ConnectDatabase;
import Model.Music;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author MSIGAMING
 */
public class MusicDAO {
    public ArrayList<Music> getMusic() {
        Connection con = null;
        ArrayList<Music> list = new ArrayList<>();
        ConnectDatabase db = new ConnectDatabase();
        try {
            con = db.connect();
            String query = "SELECT * FROM Music"; // Assuming "Music" is the table containing music data
            ResultSet rs = con.prepareStatement(query).executeQuery();
            while (rs.next()) {
                // Assuming Music class has appropriate constructor and getters
                list.add(new Music(rs.getInt(1), rs.getString(2), rs.getString(5), rs.getDouble(6), rs.getString(3), rs.getString(4)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }
    
    public void addMusic(Music m1) {
        Connection con = null;
        PreparedStatement stmt = null;
        ConnectDatabase db = new ConnectDatabase();
        try {
            con = db.connect();
            String query = "INSERT INTO Music (id, musicName, artist, price, linkToImage, linkToSong) VALUES (?, ?, ?, ?, ?, ?)";
            stmt = con.prepareStatement(query);
            stmt.setInt(1, m1.getMusicID());
            stmt.setString(2, m1.getMusicName());
            stmt.setString(3, m1.getArtist());
            stmt.setDouble(4, m1.getPrice());
            stmt.setString(5, m1.getLinkToImage());
            stmt.setString(6, m1.getLinkToSong());
            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("Music added successfully!");
            } else {
                System.out.println("Failed to add music!");
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
    
    public void deleteMusic(int musicId) {
        Connection con = null;
        PreparedStatement stmt = null;
        ConnectDatabase db = new ConnectDatabase();
        try {
            con = db.connect();
            String query = "DELETE FROM Music WHERE id = ?";
            stmt = con.prepareStatement(query);
            stmt.setInt(1, musicId);
            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("Music with ID " + musicId + " deleted successfully!");
            } else {
                System.out.println("No music found with ID " + musicId + " to delete.");
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

    public void updateMusic(Music m1) {
        Connection con = null;
        PreparedStatement stmt = null;
        ConnectDatabase db = new ConnectDatabase();
        try {
            con = db.connect();
            String query = "UPDATE Music SET musicName = ?, artist = ?, price = ?, linkToImage = ?, linkToSong = ? ,WHERE id = ?";
            stmt = con.prepareStatement(query);
            stmt.setInt(6, m1.getMusicID());
            stmt.setString(1, m1.getMusicName());
            stmt.setString(2, m1.getArtist());
            stmt.setDouble(3, m1.getPrice());
            stmt.setString(4, m1.getLinkToImage());
            stmt.setString(5, m1.getLinkToSong());
            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("Music updated successfully!");
            } else {
                System.out.println("No music found with ID " + m1.getMusicID() + " to update.");
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
        MusicDAO m1 = new MusicDAO();
        System.out.println(m1.getMusic());
    }
}
