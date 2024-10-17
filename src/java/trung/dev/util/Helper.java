/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package trung.dev.util;

import trung.dev.data.model.OrderItem;
import java.util.List;

/**
 *
 * @author Welcome
 */
public class Helper {
    public static double total(List<OrderItem> cart) {
        double total = 0.0;
        for (OrderItem item : cart) {
            total += item.getPrice() * item.getQuantity();
        }
        return total;
    }
}
