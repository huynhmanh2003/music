/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Hi
 */
public class UserMusic {
    private int UserID, MusicID;

    public UserMusic() {
    }

    public UserMusic(int UserID, int MusicID) {
        this.UserID = UserID;
        this.MusicID = MusicID;
    }

    public int getUserID() {
        return UserID;
    }

    public void setUserID(int UserID) {
        this.UserID = UserID;
    }

    public int getMusicID() {
        return MusicID;
    }

    public void setMusicID(int MusicID) {
        this.MusicID = MusicID;
    }

    @Override
    public String toString() {
        return "UserMusic{" + "UserID=" + UserID + ", MusicID=" + MusicID + '}';
    }
    
    
}
