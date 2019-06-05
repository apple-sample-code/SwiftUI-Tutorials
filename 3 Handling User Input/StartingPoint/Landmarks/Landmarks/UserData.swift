
import Combine
import SwiftUI

final class UserData: BindableObject {
    
    let didChange = PassthroughSubject<UserData, Never>()
    
    var showFavoritesOnly = false {
        didSet { didChange.send(self) }
    }
    
    var landmarks = landmarkData {
        didSet { didChange.send(self) }
    }
}
