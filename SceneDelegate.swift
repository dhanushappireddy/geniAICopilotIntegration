import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    // Called when a new scene session is being created
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {

        // Ensure we have a window scene
        guard let windowScene = (scene as? UIWindowScene) else { return }

        // Create a new window with the scene
        window = UIWindow(windowScene: windowScene)

        // Set the root view controller
        let viewController = UIViewController()
        viewController.view.backgroundColor = .white
        window?.rootViewController = viewController

        // Show the window
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called when the scene is released
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when scene moves to active state
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when scene will move to inactive state
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called when transitioning from background to foreground
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called when transitioning from foreground to background
    }
}
