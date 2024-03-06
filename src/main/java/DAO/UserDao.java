/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DTBconnect.ConnectDatabase;
import Model.User;
import Model.Music;
import Model.MusicCart;
import Model.CartItems;
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
                list.add(new Music(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4)));
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

    public void addUser(User u1) {
        Connection con = null;
        PreparedStatement stmt = null;
        ConnectDatabase db = new ConnectDatabase();
        try {
            con = db.connect();
            String query = "INSERT INTO [User] (id, username, password, email, firstName, lastName) VALUES (?, ?, ?, ?, ?, ?)";
            stmt = con.prepareStatement(query);
            stmt.setInt(1, u1.getUserID());
            stmt.setString(2, u1.getUserLoginName());
            stmt.setString(3, u1.getUserLoginPassword());
            stmt.setString(4, u1.getUserFirstName());
            stmt.setString(5, u1.getUserLastName());
            stmt.setString(6, u1.getRole());
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

    public void addMusic(Music m1) {
        Connection con = null;
        PreparedStatement stmt = null;
        ConnectDatabase db = new ConnectDatabase();
        try {
            con = db.connect();
            String query = "INSERT INTO Music (id, musicName, artist, price) VALUES (?, ?, ?, ?)";
            stmt = con.prepareStatement(query);
            stmt.setInt(1, m1.getMusicID());
            stmt.setString(2, m1.getMusicName());
            stmt.setString(3, m1.getArtist());
            stmt.setDouble(4, m1.getPrice());
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

    public void deleteUser(int UserId) {
        Connection con = null;
        PreparedStatement stmt = null;
        ConnectDatabase db = new ConnectDatabase();
        try {
            con = db.connect();
            String query = "DELETE FROM [User] WHERE id = ?";
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

    public void updateUser(User u1) {
        Connection con = null;
        PreparedStatement stmt = null;
        ConnectDatabase db = new ConnectDatabase();
        try {
            con = db.connect();
            String query = "UPDATE [User] SET username = ?, password = ?, email = ?, firstName = ?, lastName = ? WHERE id = ?";
            stmt = con.prepareStatement(query);
            stmt.setInt(1, u1.getUserID());
            stmt.setString(2, u1.getUserLoginName());
            stmt.setString(3, u1.getUserLoginPassword());
            stmt.setString(4, u1.getUserFirstName());
            stmt.setString(5, u1.getUserLastName());
            stmt.setString(6, u1.getRole());
            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("User updated successfully!");
            } else {
                System.out.println("No user found with ID " + u1.getUserID() + " to update.");
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
            String query = "UPDATE Music SET musicName = ?, artist = ?, price = ? WHERE id = ?";
            stmt = con.prepareStatement(query);
            stmt.setInt(1, m1.getMusicID());
            stmt.setString(2, m1.getMusicName());
            stmt.setString(3, m1.getArtist());
            stmt.setDouble(4, m1.getPrice());
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
        UserDao u = new UserDao();
        ArrayList<User> arr = new ArrayList<>();
        arr = u.getUser();
        System.out.println(arr);

    }
}
