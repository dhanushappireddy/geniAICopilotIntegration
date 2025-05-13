import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    // Called when the app has finished launching
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        
        // Create a UIWindow with the screen bounds
        window = UIWindow(frame: UIScreen.main.bounds)
        
        // Set initial view controller (replace with your VC)
        let viewController = UIViewController()
        viewController.view.backgroundColor = .white // Just for visibility
        window?.rootViewController = viewController
        
        // Show the window
        window?.makeKeyAndVisible()
        
        return true
    }

    // Optional: Called when the app is about to become inactive
    func applicationWillResignActive(_ application: UIApplication) {
        // Pause ongoing tasks or disable features
    }

    // Optional: Called when app enters background
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Save data, release shared resources, etc.
    }

    // Optional: Called when app enters foreground
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Undo changes made on entering background
    }

    // Optional: Called when app becomes active again
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart paused tasks
    }

    // Optional: Called just before app is terminated
    func applicationWillTerminate(_ application: UIApplication) {
        // Save data if needed
    }
}
