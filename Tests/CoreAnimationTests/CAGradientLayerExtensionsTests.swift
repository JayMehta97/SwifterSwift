//
//  CAGradientLayerExtensionsTests.swift
//  SwifterSwift
//
//  Created by Jay Mehta on 11/10/19.
//  Copyright © 2019 SwifterSwift
//

import XCTest
@testable import SwifterSwift

#if !os(watchOS)

final class CAGradientLayerExtensionsTests: XCTestCase {

    func testInitWithGradientAttributes() {
        let colors: [UIColor] = [.red, .blue, .orange, .yellow]
        let locations: [CGFloat]? = nil
        let startPoint = CGPoint(x: 0.0, y: 0.5)
        let endPoint = CGPoint(x: 1.0, y: 0.5)
        let gradientLayerType: CAGradientLayerType = .axial

        let gradientLayer = CAGradientLayer(colors: colors, locations: locations, startPoint: startPoint, endPoint: endPoint, type: gradientLayerType)

        XCTAssertEqual(gradientLayer.colors?.count, colors.count)
        XCTAssertEqual(gradientLayer.locations as? [CGFloat], locations)
        XCTAssertEqual(gradientLayer.startPoint, startPoint)
        XCTAssertEqual(gradientLayer.endPoint, endPoint)
        XCTAssertEqual(gradientLayer.type, gradientLayerType)
    }

}

#endif
