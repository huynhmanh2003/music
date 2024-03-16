/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Hi
 */
public class Music {
    private int MusicID;
    private String MusicName, Artist;
    private double price;
    private String linkToImage;
    private String linkToSong;

    public Music() {
    }

    public Music(int MusicID, String MusicName, String Artist, double price, String linkToImage, String linkToSong) {
        this.MusicID = MusicID;
        this.MusicName = MusicName;
        this.Artist = Artist;
        this.price = price;
        this.linkToImage = linkToImage;
        this.linkToSong = linkToSong;
    }

    public int getMusicID() {
        return MusicID;
    }

    public void setMusicID(int MusicID) {
        this.MusicID = MusicID;
    }

    public String getMusicName() {
        return MusicName;
    }

    public void setMusicName(String MusicName) {
        this.MusicName = MusicName;
    }

    public String getArtist() {
        return Artist;
    }

    public void setArtist(String Artist) {
        this.Artist = Artist;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
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

    @Override
    public String toString() {
        return "Music{" + "MusicID=" + MusicID + ", MusicName=" + MusicName + ", Artist=" + Artist + ", price=" + price + ", linkToImage=" + linkToImage + ", linkToSong=" + linkToSong + '}';
    }
}
