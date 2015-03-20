//
//  ViewController.swift
//  WAQ2015
//
//  Created by Emilie Lessard on 2015-02-26.
//  Copyright (c) 2015 Irrelevant Manatee Corporation. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

//    func hangCompiler() {
//        ["A": [ ["B": [ 1, 2, 3, 4, 5 ]], ["C": [ ]], ["D": [ ["A": [ 1 ]] ]] ]]
//    }

    func dontHangCompiler() {
        ["A": [ ["B": [ 1, 2, 3, 4, 5 ]] as [String: [Int]], ["C": [ ]] as [String: [Int]], ["D": [ ["A": [ 1 ]] as [String: [Int]] ]] ]]
    }

}


