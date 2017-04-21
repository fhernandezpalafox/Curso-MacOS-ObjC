//: Playground - noun: a place where people can play

import UIKit

var miUrl =  NSURL(string: "http://www.ap ple.com/")

miUrl?.lastPathComponent


if miUrl != nil {
    miUrl!.lastPathComponent
}

//miUrl!.lastPathComponent

var otraUrl: NSURL = NSURL(string: "http://www.apple.com")!


if let otraUrl2 = NSURL(string: "http://www.apple.com"){
    otraUrl2.lastPathComponent
}

