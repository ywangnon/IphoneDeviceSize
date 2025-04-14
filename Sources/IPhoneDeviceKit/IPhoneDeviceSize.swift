
import Foundation

// MARK: - 디바이스 데이터 모델
public struct IPhoneDeviceSize {
    let model: DeviceModel
    let lcdSize: Float
    let renderedPixels: String
    let points: String

    var aspectRatio: String {
        let components = renderedPixels
            .replacingOccurrences(of: " ", with: "")
            .split(separator: "x")
            .compactMap { Float($0) }

        guard components.count == 2 else { return "Unknown" }

        let width = components[0]
        let height = components[1]
        let ratio = height / width

        return String(format: "%.2f:1", ratio)
    }
}
