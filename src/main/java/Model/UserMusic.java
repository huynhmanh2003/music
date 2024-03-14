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
    private String linkToImage;
    private String linkToSong;
    public UserMusic() {
    }

    public UserMusic(int UserID, int MusicID,String linkToImage,String linkToSong) {
        this.UserID = UserID;
        this.MusicID = MusicID;
        this.linkToImage=linkToImage;
        this.linkToSong=linkToSong;
    }

    public String getLinkToImage() {
        return linkToImage;
    }

    public void setLinkToImage(String linkToImage) {
        this.linkToImage = linkToImage;
    }

    public String getLinkToSong() {
        return linkToSong;
    }

    public void setLinkToSong(String linkToSong) {
        this.linkToSong = linkToSong;
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
        return "UserMusic{" + "UserID=" + UserID + ", MusicID=" + MusicID + ", linkToImage=" + linkToImage + ", linkToSong=" + linkToSong + '}';
    }


    
    
}
