//
//  main.swift
//  StudentGrades
//
//  Created by Natasha on 3/20/23.
//

import Foundation

print("Please enter the name of the input file.")
let filename = readLine()
let inputString = try? String(contentsOfFile: "/Users/natasha/Desktop/StudentGrades/StudentGrades/\(filename ?? "")")
let studentArray = input(inputString ?? "")



print("Please enter the name of the output file.")
let outputFilename = readLine()
let output: String = "\(mainFunction())"
if let dir = FileManager.default.urls(for: .desktopDirectory, in: .userDomainMask).first {
  let fileURL = dir.appendingPathComponent(outputFilename ?? "", isDirectory: true)
  do {
    try output.write(to: fileURL, atomically: false, encoding: .utf8)
    print("Sucessfully wrote into \(fileURL.absoluteString)")
  } catch {
    print(error.localizedDescription)
  }
}
