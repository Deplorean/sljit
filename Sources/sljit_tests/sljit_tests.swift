//
//  sljit_tests.swift
//  sljit
//
//  Created by Charles Gardner on 4/8/25.
//

import Testing
import sljit

struct sljit_tests {
    @Test("Assert library loaded")
    func assertLibraryLoaded() async throws {
        let version = "\(sljit.SLJIT_MAJOR_VERSION).\(sljit.SLJIT_MINOR_VERSION)"
        
        assert(version == "0.95")
    }
}
