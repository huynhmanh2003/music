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

    public Music() {
    }

    public Music(int MusicID, String MusicName, String Artist, double price) {
        this.MusicID = MusicID;
        this.MusicName = MusicName;
        this.Artist = Artist;
        this.price = price;
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

    @Override
    public String toString() {
        return "Music{" + "MusicID=" + MusicID + ", MusicName=" + MusicName + ", Artist=" + Artist + ", price=" + price + '}';
    }
    
    
}
