/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import DAO.MusicDAO;
import java.util.ArrayList;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;

/**
 *
 * @author Manh
 */
public class CartProvider {

    public static String getOldCart(Cookie[] ck) {
        if (ck != null) {
            for (Cookie tempCookie : ck) {
                if (tempCookie.getName().equals("cookies")) {
                    return tempCookie.getValue();
                }
            }
        }
        return "";
    }

    public static String getNewCart(String cartString, String musicID) {
        if (cartString.length() > 0 && !(cartString.contains(musicID))) {
            return cartString + "-" + musicID;
        } else if (cartString.length() == 0) {
            return musicID;
        }
        return cartString;
    }

    public static String cartSize(Cookie[] ck) {

        return "" + ck.length;
    }

    public static String changeCart(String[] oldcart, String id) {
        String newcart = "";
        if (oldcart.length == 1 && id.equals(oldcart[0])) {
            return newcart;
        }
        for (String test : oldcart) {
            if (test.equals(oldcart[0])) {
                newcart = test;
            } else if (!test.equals(id)) {
                newcart = newcart + "-" + test;
            }
        }

        if (id.equals(oldcart[0]) && oldcart.length != 1) {
            newcart = newcart.substring(2);
        }
        if (id.equals(oldcart[0]) && oldcart.length < 2) {
            newcart = oldcart[1];
        }

        return newcart;
    }

    public static void main(String[] args) {
        String[] test1 = {"0", "1", "3", "4", "5"};
        System.out.println(CartProvider.changeCart(test1, "0"));
    }
}
