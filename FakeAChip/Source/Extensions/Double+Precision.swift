//
//  Double+Precision.swift
//  Double+Precision
//
//  Created by Mike Hall on 21/10/2021.
//

import Foundation


extension Double {
    func to8Places() -> String {
        return String(format: "%.12f", self)
    }
}
