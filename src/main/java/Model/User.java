/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Hi
 */
public class User {
   private int UserID;
   private String UserLoginName, UserLoginPassword, UserFirstName, UserLastName, Role;

    public User() {
    }

    public User(int UserID, String UserLoginName, String UserLoginPassword, String UserFirstName, String UserLastName, String Role) {
        this.UserID = UserID;
        this.UserLoginName = UserLoginName;
        this.UserLoginPassword = UserLoginPassword;
        this.UserFirstName = UserFirstName;
        this.UserLastName = UserLastName;
        this.Role = Role;
    }

    public int getUserID() {
        return UserID;
    }

    public void setUserID(int UserID) {
        this.UserID = UserID;
    }

    public String getUserLoginName() {
        return UserLoginName;
    }

    public void setUserLoginName(String UserLoginName) {
        this.UserLoginName = UserLoginName;
    }

    public String getUserLoginPassword() {
        return UserLoginPassword;
    }

    public void setUserLoginPassword(String UserLoginPassword) {
        this.UserLoginPassword = UserLoginPassword;
    }

    public String getUserFirstName() {
        return UserFirstName;
    }

    public void setUserFirstName(String UserFirstName) {
        this.UserFirstName = UserFirstName;
    }

    public String getUserLastName() {
        return UserLastName;
    }

    public void setUserLastName(String UserLastName) {
        this.UserLastName = UserLastName;
    }

    public String getRole() {
        return Role;
    }

    public void setRole(String Role) {
        this.Role = Role;
    }

    @Override
    public String toString() {
        return "User{" + "UserID=" + UserID + ", UserLoginName=" + UserLoginName + ", UserLoginPassword=" + UserLoginPassword + ", UserFirstName=" + UserFirstName + ", UserLastName=" + UserLastName + ", Role=" + Role + '}';
    }
   
   
    
}
