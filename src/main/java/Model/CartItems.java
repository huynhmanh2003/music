/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Hi
 */
public class CartItems {
    private int CartItemsID, MusicID;

    public CartItems() {
    }

    public CartItems(int CartItemsID, int MusicID) {
        this.CartItemsID = CartItemsID;
        this.MusicID = MusicID;
    }

    public int getCartItemsID() {
        return CartItemsID;
    }

    public void setCartItemsID(int CartItemsID) {
        this.CartItemsID = CartItemsID;
    }

    public int getMusicID() {
        return MusicID;
    }

    public void setMusicID(int MusicID) {
        this.MusicID = MusicID;
    }

    @Override
    public String toString() {
        return "CartItems({" + "CartItemsID=" + CartItemsID + ", MusicID=" + MusicID + '}';
    }
    
    
}
