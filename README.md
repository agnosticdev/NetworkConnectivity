# NetworkConnectivity

Swift Package designed as an alternative to detecting network connectivity when traditional methods do not work.  For example, Apple recommends that to properly check connectivity your application should send a network request and the request should let your application know the connectivity state of the device.  If device is offline the request should fail immediately and you can provide the user with proper feedback.  If the device is online the request will go out and you can also inform your user that the application is waiting for updated data. <br><br>

In most cases this approach works great. There are some rare conditions that still exist that require your application to still check for the connectivity state of the device.  For these rare cases the NetworkConnectivity package was built.  NetworkConnectivity examines the state of a TCP connection and provides updates to a delegate method so your application can act accordingly.


```swift 
class BaseViewController: ViewController {
    func viewDidLoad() {
        let _ = NetworkConnectivity.shared.setup(with "agnosticdev.com")
    }
 }
 
extension BaseViewController: NetworkConnectivityDelegate {
    
    public func networkStatusChanged(online: Bool, connectivityStatus: String) {
        if online { 
            // handle online status
        } else {
            // handle offline status
        }
    }
}
```
