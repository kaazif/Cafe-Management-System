/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author kaazif
 */
public class DbOperations {
     public static void setDataorDelete(String Query, String msg){
         
           try {
               Connection con = ConnectionProvider.getCon();
             Statement s =con.createStatement();
             s.executeUpdate(Query);
               if (!msg.equals("")) 
                   JOptionPane.showMessageDialog(null, msg);
               
                   
               
             
         } 
           catch (Exception e) {
         
             JOptionPane.showMessageDialog(null, e, "messgase", JOptionPane.ERROR_MESSAGE);
         }
         }
     public static ResultSet getData(String query){
         try {
             Connection con = ConnectionProvider.getCon();
             Statement st = con.createStatement();
             ResultSet rs = st.executeQuery(query);
             return rs;
             
         } catch (Exception e) {
           JOptionPane.showMessageDialog(null, e, "messgase", JOptionPane.ERROR_MESSAGE);
           return null; 
         }
     }
}
