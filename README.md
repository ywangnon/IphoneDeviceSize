# IPhoneSizeManager

iPhone 기기별 화면 정보를 관리하는 라이브러리  

---

## Features

- 지원 기기: iPhone 3GS ~ iPhone 16 Pro Max
- 자동완성 지원 enum (`DeviceModel`)
- LCD Size 조회
- 동일 사이즈 기기 목록 조회
- Aspect Ratio 계산 지원

---

## Usage

```swift
let manager = IPhoneSizeManager()

// 모든 기기 목록
manager.allDeviceNames()

// 특정 기기 LCD 크기
manager.lcdSize(of: .iPhone16ProMax)

// 특정 LCD 크기 가진 기기들
manager.devices(ofLcdSize: 6.7)

// 특정 기기 화면 비율
manager.aspectRatio(of: .iPhone12ProMax)
```

---

## API

| 함수 | 설명 | 리턴값 |
|------|------|--------|
|allDeviceNames()|지원하는 모든 기기 이름| [String] |
|lcdSize(of: DeviceModel)|특정 기기의 LCD Size| Float? |
|devices(ofLcdSize: Float)|특정 사이즈 기기 목록| [DeviceModel] |
|aspectRatio(of: DeviceModel)|특정 기기의 화면 비율| String? |

---

## Example

```swift
print(manager.lcdSize(of: .iPhone16ProMax)) 
// 출력: 6.9

print(manager.aspectRatio(of: .iPhoneX)) 
// 출력: 2.16:1
```
