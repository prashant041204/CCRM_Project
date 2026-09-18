/**
 * Campus Course & Records Manager (CCRM) - Main Entry Point
 * Programming in Java Project 1
 */

import edu.ccrm.cli.MainMenu;
import edu.ccrm.config.AppConfig;

public class Main {
    
    public static void main(String[] args) {
        // Enable assertions
        assert true : "Assertions are enabled";
        
        System.out.println("=== Campus Course & Records Manager (CCRM) ===");
        System.out.println("Version 1.0 - Programming in Java Project");
        System.out.println();
        
        try {
            // Initialize application configuration
            AppConfig config = AppConfig.getInstance();
            System.out.println("Application initialized successfully.");
            
            // Launch main menu
            MainMenu menu = new MainMenu();
            menu.displayMenu();
            
        } catch (Exception e) {
            System.err.println("Fatal error starting application: " + e.getMessage());
            e.printStackTrace();
            System.exit(1);
        }
    }
}