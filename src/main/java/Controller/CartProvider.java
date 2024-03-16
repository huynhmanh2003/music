/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import DAO.MusicDAO;
import javax.servlet.http.Cookie;

/**
 *
 * @author Manh
 */
public class CartProvider {
    public String getCart(Cookie[] ck){
            if (ck != null) {
                for (Cookie tempCookie : ck) {
                    if (tempCookie.getName().equals("musicIDs")) {
                        return tempCookie.getValue();
                    }
                }
            }
           return ""; 
    }
    public String getCart(String cartString, String musicID){
        if(cartString.length()>0&&!cartString.contains(musicID)){
            return cartString + "-" + musicID ;
        }
        else{
            return cartString;
        }
    }
}
