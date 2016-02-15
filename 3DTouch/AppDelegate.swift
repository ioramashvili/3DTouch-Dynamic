import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        if let shortcutItems = application.shortcutItems where shortcutItems.isEmpty {
            let item1 = UIApplicationShortcutItem(type: "Share", localizedTitle: "share title", localizedSubtitle: "share subtitle", icon: UIApplicationShortcutIcon(type: UIApplicationShortcutIconType.Share), userInfo: nil)
            
            let item2 = UIApplicationShortcutItem(type: "Play", localizedTitle: "play title", localizedSubtitle: "play subtitle", icon: UIApplicationShortcutIcon(type: UIApplicationShortcutIconType.Play), userInfo: nil)
            
            let item3 = UIApplicationShortcutItem(type: "Search", localizedTitle: "search title", localizedSubtitle: "search subtitle", icon: UIApplicationShortcutIcon(type: UIApplicationShortcutIconType.Search), userInfo: nil)
            
            application.shortcutItems = [item1, item2, item3]
        }
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        
    }

    func applicationDidEnterBackground(application: UIApplication) {
        
    }

    func applicationWillEnterForeground(application: UIApplication) {

    }

    func applicationDidBecomeActive(application: UIApplication) {
        
    }

    func applicationWillTerminate(application: UIApplication) {
        
    }

    func application(application: UIApplication, performActionForShortcutItem shortcutItem: UIApplicationShortcutItem, completionHandler: (Bool) -> Void) {
        let alert = UIAlertController(title: shortcutItem.type, message: "", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.window?.rootViewController?.presentViewController(alert, animated: true, completion: nil)
    }
}

