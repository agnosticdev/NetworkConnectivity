import Foundation
import NetworkConnectivity


public class connectivity {

	public init() {
		let _ = NetworkConnectivity.shared.setup(with: "agnosticdev.com")
		sleep(10) // Provides time for connection setup to occur
		print("Exiting...")
	}

}

extension connectivity: NetworkConnectivityDelegate {

	public func networkStatusChanged(online: Bool, connectivityStatus: String) {
		print("Online: \(online) - connectivityStatus: \(connectivityStatus)")
	}
	
}


let conn = connectivity()

