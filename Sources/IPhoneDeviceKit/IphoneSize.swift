
import Foundation

// MARK: - 매니저
public struct IPhoneSizeManager {
    
    private let devices: [IPhoneDeviceSize] = [
        IPhoneDeviceSize(model: .iPhone3gs, lcdSize: 3.5, renderedPixels: "320 x 480", points: "320 x 480"),
        IPhoneDeviceSize(model: .iPhone4, lcdSize: 3.5, renderedPixels: "640 x 960", points: "320 x 480"),
        IPhoneDeviceSize(model: .iPhone4s, lcdSize: 3.5, renderedPixels: "640 x 960", points: "320 x 480"),
        IPhoneDeviceSize(model: .iPhone5, lcdSize: 4.0, renderedPixels: "640 x 1136", points: "320 x 568"),
        IPhoneDeviceSize(model: .iPhone5c, lcdSize: 4.0, renderedPixels: "640 x 1136", points: "320 x 568"),
        IPhoneDeviceSize(model: .iPhone5s, lcdSize: 4.0, renderedPixels: "640 x 1136", points: "320 x 568"),
        IPhoneDeviceSize(model: .iPhoneSE1, lcdSize: 4.0, renderedPixels: "640 x 1136", points: "320 x 568"),
        IPhoneDeviceSize(model: .iPhone6, lcdSize: 4.7, renderedPixels: "750 x 1334", points: "375 x 667"),
        IPhoneDeviceSize(model: .iPhone6s, lcdSize: 4.7, renderedPixels: "750 x 1334", points: "375 x 667"),
        IPhoneDeviceSize(model: .iPhone7, lcdSize: 4.7, renderedPixels: "750 x 1334", points: "375 x 667"),
        IPhoneDeviceSize(model: .iPhone8, lcdSize: 4.7, renderedPixels: "750 x 1334", points: "375 x 667"),
        IPhoneDeviceSize(model: .iPhoneSE2, lcdSize: 4.7, renderedPixels: "750 x 1334", points: "375 x 667"),
        IPhoneDeviceSize(model: .iPhone12Mini, lcdSize: 5.4, renderedPixels: "1080 x 2340", points: "375 x 812"),
        IPhoneDeviceSize(model: .iPhone13Mini, lcdSize: 5.4, renderedPixels: "1080 x 2340", points: "375 x 812"),
        IPhoneDeviceSize(model: .iPhone6Plus, lcdSize: 5.5, renderedPixels: "1242 x 2208", points: "414 x 736"),
        IPhoneDeviceSize(model: .iPhone6sPlus, lcdSize: 5.5, renderedPixels: "1242 x 2208", points: "414 x 736"),
        IPhoneDeviceSize(model: .iPhone7Plus, lcdSize: 5.5, renderedPixels: "1242 x 2208", points: "414 x 736"),
        IPhoneDeviceSize(model: .iPhone8Plus, lcdSize: 5.5, renderedPixels: "1242 x 2208", points: "414 x 736"),
        IPhoneDeviceSize(model: .iPhoneX, lcdSize: 5.8, renderedPixels: "1125 x 2436", points: "375 x 812"),
        IPhoneDeviceSize(model: .iPhoneXS, lcdSize: 5.8, renderedPixels: "1125 x 2436", points: "375 x 812"),
        IPhoneDeviceSize(model: .iPhone11Pro, lcdSize: 5.8, renderedPixels: "1125 x 2436", points: "375 x 812"),
        IPhoneDeviceSize(model: .iPhoneXR, lcdSize: 6.1, renderedPixels: "828 x 1792", points: "414 x 896"),
        IPhoneDeviceSize(model: .iPhone12, lcdSize: 6.1, renderedPixels: "1170 x 2532", points: "390 x 844"),
        IPhoneDeviceSize(model: .iPhone12Pro, lcdSize: 6.1, renderedPixels: "1170 x 2532", points: "390 x 844"),
        IPhoneDeviceSize(model: .iPhone13, lcdSize: 6.1, renderedPixels: "1170 x 2532", points: "390 x 844"),
        IPhoneDeviceSize(model: .iPhone13Pro, lcdSize: 6.1, renderedPixels: "1170 x 2532", points: "390 x 844"),
        IPhoneDeviceSize(model: .iPhoneXSMax, lcdSize: 6.5, renderedPixels: "1242 x 2688", points: "414 x 896"),
        IPhoneDeviceSize(model: .iPhone11ProMax, lcdSize: 6.5, renderedPixels: "1242 x 2688", points: "414 x 896"),
        IPhoneDeviceSize(model: .iPhone12ProMax, lcdSize: 6.7, renderedPixels: "1284 x 2778", points: "428 x 926"),
        IPhoneDeviceSize(model: .iPhone13ProMax, lcdSize: 6.7, renderedPixels: "1284 x 2778", points: "428 x 926"),
        IPhoneDeviceSize(model: .iPhone16Pro, lcdSize: 6.3, renderedPixels: "2622 x 1206", points: "393 x 852"),
        IPhoneDeviceSize(model: .iPhone16ProMax, lcdSize: 6.9, renderedPixels: "2868 x 1320", points: "430 x 932")
    ]
    
    public init() {}
    
    // 모든 기기 이름 반환
    public func allDeviceNames() -> [String] {
        devices.map { $0.model.rawValue }
    }
    
    // 특정 기기 LCD 사이즈 반환
    public func lcdSize(of model: DeviceModel) -> Float? {
        devices.first { $0.model == model }?.lcdSize
    }
    
    // 특정 LCD 사이즈 가진 기기 목록
    public func devices(ofLcdSize size: Float) -> [DeviceModel] {
        devices.filter { $0.lcdSize == size }.map { $0.model }
    }
    
    // 특정 기기 화면 비율
    public func aspectRatio(of model: DeviceModel) -> String? {
        devices.first { $0.model == model }?.aspectRatio
    }
}
