/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Models.ModelsMapping;
import Models.RestaurantJ;
import java.util.ArrayList;

/**
 *
 * @author Denis Charette
 */
public class RestaurantManager {
    
    public static void Add(RestaurantJ rj){        
        ModelsMapping.createRestaurant(rj);
    }    
    
    public static RestaurantJ GetRestaurant(int id){
        RestaurantJ r = ModelsMapping.getRestaurant(id);
        return r;
    }
    
    public static ArrayList<RestaurantJ> GetRestaurants(String s){
        ArrayList<RestaurantJ> a = ModelsMapping.SearchRestaurant(s);
        return a;
    }
    
    public static ArrayList<RestaurantJ> GetAllRestaurant(){
        ArrayList<RestaurantJ> a = ModelsMapping.getAllRestaurant();
        return a;
    }
    
    public static ArrayList<RestaurantJ> GetRestaurantsByRestaurateur(int id){
        ArrayList<RestaurantJ> a = ModelsMapping.getRestaurantbyRestaurateur(id);
        return a;
    }
    
    public static ArrayList<RestaurantJ> GetAllSnack(){
        ArrayList<RestaurantJ> a = ModelsMapping.getAllSnack();
        return a;
    }
    
    public static ArrayList<RestaurantJ> GetBestRestaurants(){
        ArrayList<RestaurantJ> a = ModelsMapping.bestRestaurant();
        return a;
    }
    
    public static RestaurantJ RandomRestaurant(){
        RestaurantJ r = ModelsMapping.randomRestaurant();
        return r;
    }
    
    public static void Update(RestaurantJ rj){        
        ModelsMapping.updateRestaurant(rj);
    }
    
    public static void Delete(int id){
        ModelsMapping.deleteRestaurant(id);
    }
}