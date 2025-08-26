
//    Copyright 2005-2021 Michel Fortin
//
//    Licensed under the Apache License, Version 2.0 (the "License");
//    you may not use this file except in compliance with the License.
//    You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
//    Unless required by applicable law or agreed to in writing, software
//    distributed under the License is distributed on an "AS IS" BASIS,
//    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//    See the License for the specific language governing permissions and
//    limitations under the License.

import Foundation

public enum VisionType: Int, CaseIterable {
    case normal
    case deutan
    case deuteranomaly
    case protan
    case protanomaly
    case tritan
    case tritanomaly
    case monochromat
    case mixedAnomalousTri

    public var name: String {
        switch self {
            case .normal:               return NSLocalizedString("Normal Vision", tableName: "SimDaltonismFilter", comment: "")
            case .deutan:               return NSLocalizedString("Deuteranopia", tableName: "SimDaltonismFilter", comment: "")
            case .deuteranomaly:        return NSLocalizedString("Deuteranomaly", tableName: "SimDaltonismFilter", comment: "")
            case .protan:               return NSLocalizedString("Protanopia", tableName: "SimDaltonismFilter", comment: "")
            case .protanomaly:          return NSLocalizedString("Protanomaly", tableName: "SimDaltonismFilter", comment: "")
            case .tritan:               return NSLocalizedString("Tritanopia", tableName: "SimDaltonismFilter", comment: "")
            case .tritanomaly:          return NSLocalizedString("Tritanomaly", tableName: "SimDaltonismFilter", comment: "")
            case .monochromat:          return NSLocalizedString("Monochromacy", tableName: "SimDaltonismFilter", comment: "")
            case .mixedAnomalousTri:    return NSLocalizedString("Mixed Anomalous Trichromacy", tableName: "SimDaltonismFilter", comment: "")
        }
    }

    static let defaultValue = VisionType.normal

    init(runtime: Int) {
        self = .init(rawValue: runtime) ?? .defaultValue
    }
}
