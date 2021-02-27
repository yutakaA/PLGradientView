# PLGradientView
Can easily introduce gradation.

[![CocoaPods compatible](https://img.shields.io/cocoapods/v/PLGradientView)](https://cocoapods.org/pods/PLGradientView)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)



## Features

- Can easily introduce gradation.



## How to use

Example

```swift
class ViewController: UIViewController {
    private let gradientView: PLGradientView = PLGradientView()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupGradientView()
    }

    private func setupGradientView() {
        gradientView.setup(colors: [UIColor.red.cgColor, UIColor.white.cgColor, UIColor.yellow.cgColor, UIColor.white.cgColor, UIColor.green.cgColor],
                           locations: [0, 0.1, 0.3, 0.5, 0.9],
                           gradientPosition: .leftTopToRightBootm)
        gradientView.frame = self.view.frame
        gradientView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(gradientView)

        gradientView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        gradientView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        gradientView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        gradientView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1).isActive = true
    }
}
```

It can be used with either `Code` or `Storyboard`.



## Runtime Requirements

- iOS 9.0 or later
- Xcode 12.0 
- Swift4.0 or later



## Installation and Setup



### Installing with CocoaPods

[CocoaPods](http://cocoapods.org) is a centralised dependency manager that automates the process of adding libraries to your Cocoa application. You can install it with the following command:

```bash
$ gem update
$ gem install cocoapods
$ pods --version
```

To integrate PLGradientView into your Xcode project using CocoaPods, specify it in your `Podfile` and run `pod install`.

```bash
platform :ios, '9.0'
use_frameworks!
pod 'PLGradientView'
```



### Installing with Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.
To install Reachability.swift with Carthage:

Install Carthage via [Homebrew](http://brew.sh/)

```bash
  $ brew update
  $ brew install carthage
  ```

Just add to your Cartfile:

```ogdl
github "yutakaA/PLGradientView"
```



### Manual Installation

To install PLGradientView without a dependency manager, please add `PLGradientView.swift` to your Xcode Project.



## Contribution

Please file issues or submit pull requests for anything you’d like to see! We're waiting! :)



## License

PLGradientView.swift is released under the MIT license. Go read the LICENSE file for more information.
