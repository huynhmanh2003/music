/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Hi
 */
public class MusicCart {
    private int CartNum, UserID, CartItemID;
    private double TotalPrice;

    public MusicCart() {
    }

    public MusicCart(int CartNum, int UserID, int CartItemID, double TotalPrice) {
        this.CartNum = CartNum;
        this.UserID = UserID;
        this.CartItemID = CartItemID;
        this.TotalPrice = TotalPrice;
    }

    public int getCartNum() {
        return CartNum;
    }

    public void setCartNum(int CartNum) {
        this.CartNum = CartNum;
    }

    public int getUserID() {
        return UserID;
    }

    public void setUserID(int UserID) {
        this.UserID = UserID;
    }

    public int getCartItemID() {
        return CartItemID;
    }

    public void setCartItemID(int CartItemID) {
        this.CartItemID = CartItemID;
    }

    public double getTotalPrice() {
        return TotalPrice;
    }

    public void setTotalPrice(double TotalPrice) {
        this.TotalPrice = TotalPrice;
    }

    @Override
    public String toString() {
        return "MusicCart{" + "CartNum=" + CartNum + ", UserID=" + UserID + ", CartItemID=" + CartItemID + ", TotalPrice=" + TotalPrice + '}';
    }
    
    
}
