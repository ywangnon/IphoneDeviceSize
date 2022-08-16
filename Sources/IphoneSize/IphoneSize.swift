public struct IphoneSize {
    var text = "Hello, iphone!"
    
    private var iphone: [iphoneDeviceSize] = [
        iphoneDeviceSize(Device: "iPhone 3gs",
                     LCDSize: 3.5,
                     renderedPixels: "320 x 480",
                     points: "320 x 480"),
        iphoneDeviceSize(Device: "iPhone 4",
                     LCDSize: 3.5,
                     renderedPixels: "640 x 960",
                     points: "320 x 480"),
        iphoneDeviceSize(Device: "iPhone 4s",
                     LCDSize: 3.5,
                     renderedPixels: "640 x 960",
                     points: "320 x 480"),
        iphoneDeviceSize(Device: "iPhone 5",
                     LCDSize: 4,
                     renderedPixels: "640 x 1136",
                     points: "320 x 568"),
        iphoneDeviceSize(Device: "iPhone 5c",
                     LCDSize: 4,
                     renderedPixels: "640 x 1136",
                     points: "320 x 568"),
        iphoneDeviceSize(Device: "iPhone 5s",
                     LCDSize: 4,
                     renderedPixels: "640 x 1136",
                     points: "320 x 568"),
        iphoneDeviceSize(Device: "iPhone SE1",
                     LCDSize: 4,
                     renderedPixels: "640 x 1136",
                     points: "320 x 568"),
        iphoneDeviceSize(Device: "iPhone 6",
                     LCDSize: 4.7,
                     renderedPixels: "750 x 1334",
                     points: "375 x 667"),
        iphoneDeviceSize(Device: "iPhone 6s",
                     LCDSize: 4.7,
                     renderedPixels: "750 x 1334",
                     points: "375 x 667"),
        iphoneDeviceSize(Device: "iPhone 7",
                     LCDSize: 4.7,
                     renderedPixels: "750 x 1334",
                     points: "375 x 667"),
        iphoneDeviceSize(Device: "iPhone 8",
                     LCDSize: 4.7,
                     renderedPixels: "750 x 1334",
                     points: "375 x 667"),
        iphoneDeviceSize(Device: "iPhone SE2",
                     LCDSize: 4.7,
                     renderedPixels: "750 x 1334",
                     points: "375 x 667"),
        iphoneDeviceSize(Device: "iPhone 12 mini",
                     LCDSize: 5.4,
                     renderedPixels: "1080 x 2340",
                     points: "375 x 812"),
        iphoneDeviceSize(Device: "iPhone 13 mini",
                     LCDSize: 5.4,
                     renderedPixels: "1080 x 2340",
                     points: "375 x 812"),
        iphoneDeviceSize(Device: "iPhone 6+",
                     LCDSize: 5.5,
                     renderedPixels: "1242 x 2208",
                     points: "414 x 736"),
        iphoneDeviceSize(Device: "iPhone 6s+",
                     LCDSize: 5.5,
                     renderedPixels: "1242 x 2208",
                     points: "414 x 736"),
        iphoneDeviceSize(Device: "iPhone 7+",
                     LCDSize: 5.5,
                     renderedPixels: "1242 x 2208",
                     points: "414 x 736"),
        iphoneDeviceSize(Device: "iPhone 8+",
                     LCDSize: 5.5,
                     renderedPixels: "1242 x 2208",
                     points: "414 x 736"),
        iphoneDeviceSize(Device: "iPhone X",
                     LCDSize: 5.8,
                     renderedPixels: " 1125 x 2436",
                     points: "375 x 812"),
        iphoneDeviceSize(Device: "iPhone XS",
                     LCDSize: 5.8,
                     renderedPixels: " 1125 x 2436",
                     points: "375 x 812"),
        iphoneDeviceSize(Device: "iPhone 11 Pro",
                     LCDSize: 5.8,
                     renderedPixels: " 1125 x 2436",
                     points: "375 x 812"),
        iphoneDeviceSize(Device: "iPhone Xr",
                     LCDSize: 6.1,
                     renderedPixels: "828 x 1792",
                     points: "414 x 896"),
        iphoneDeviceSize(Device: "iPhone 12",
                     LCDSize: 6.1,
                     renderedPixels: "1170 x 2532",
                     points: "390 x 844"),
        iphoneDeviceSize(Device: "iPhone 12 Pro",
                     LCDSize: 6.1,
                     renderedPixels: "1170 x 2532",
                     points: "390 x 844"),
        iphoneDeviceSize(Device: "iPhone 13",
                     LCDSize: 6.1,
                     renderedPixels: "1170 x 2532",
                     points: "390 x 844"),
        iphoneDeviceSize(Device: "iPhone 13 Pro",
                     LCDSize: 6.1,
                     renderedPixels: "1170 x 2532",
                     points: "390 x 844"),
        iphoneDeviceSize(Device: "iPhone Xs Max",
                     LCDSize: 6.5,
                     renderedPixels: "1242 x 2688",
                     points: "414 x 896"),
        iphoneDeviceSize(Device: "iPhone 11 Pro Max",
                     LCDSize: 6.5,
                     renderedPixels: "1242 x 2688",
                     points: "414 x 896"),
        iphoneDeviceSize(Device: "iPhone 12 Pro Max",
                     LCDSize: 6.7,
                     renderedPixels: "1284 x 2778",
                     points: "428 x 926"),
        iphoneDeviceSize(Device: "iPhone 13 Pro Max",
                     LCDSize: 6.7,
                     renderedPixels: "1284 x 2778",
                     points: "428 x 926")
        
    ]
    
    public init() {
        
    }
    
    mutating func addDevice(_ device: iphoneDeviceSize) {
        self.iphone.append(device)
    }
    
    public func allDevice() {
        iphone.forEach {print($0.Device)}
    }
    
    public func lcdsizeOfDevice(_ device: String) {
        iphone.forEach { deviceSize in
            if deviceSize.Device == device {
                print(deviceSize.LCDSize)
            }
        }
    }
    
    public func devicesOfsize(_ size: Float) {
        iphone.forEach { deviceSize in
            if deviceSize.LCDSize == size {
                print(deviceSize.Device)
            }
        }
    }
}

struct iphoneDeviceSize {
    let Device: String
    let LCDSize: Float
    let renderedPixels: String
    let points: String
}
