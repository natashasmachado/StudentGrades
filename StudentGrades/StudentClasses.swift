//
//  StudentClasses.swift
//  StudentGrades
//
//  Created by Natasha on 3/20/23.
//

import Foundation


class Student {
  private(set) var lastname: String
  private(set) var firstname: String
  
  init(lastname: String , firstname: String) {
    self.lastname = lastname
    self.firstname = firstname
  }
  
  func printName () -> String {
    return firstname + lastname
  }
}

class english: Student {
  private(set) var termPaper: Double
  private(set) var midTermE: Double
  private(set) var finalEnglish: Double
  
  init(termPaper: Double, midTermE: Double, finalEnglish: Double , firstname: String , lastname: String) {
    self.termPaper = termPaper
    self.midTermE = midTermE
    self.finalEnglish = finalEnglish
    
    super.init(lastname: lastname , firstname: firstname)
  }
  
  func aEnglishScore () -> Double {
    let averagePaper = termPaper * (0.25)
    let averageTerm = midTermE * (0.35)
    let averageFinal = finalEnglish * (0.40)
    let averageEnglish = averagePaper + averageTerm + averageFinal
    return averageEnglish
    
  }
}

class history: Student {
  private(set) var attendance: Double
  private(set) var project: Double
  private(set) var midTermH: Double
  private(set) var finalHistory: Double
  
  init(attendance: Double , project: Double , midTermH: Double , finalHistory: Double , firstname: String , lastname: String) {
    self.attendance = attendance
    self.project = project
    self.midTermH = midTermH
    self.finalHistory = finalHistory
    super.init(lastname: lastname , firstname: firstname)
  }
  
  func aHistoryScore() -> Double {
    let averageAttendance = attendance * (0.10)
    let avarageProject = project * (0.30)
    let averageMidTerm = midTermH * (0.30)
    let averageFinalExam = finalHistory * (0.30)
    let averageHistory = averageAttendance + avarageProject + averageMidTerm + averageFinalExam
    return averageHistory
  }
}

class math: Student {
  private(set) var quiz1: Double
  private(set) var quiz2: Double
  private(set) var quiz3: Double
  private(set) var quiz4: Double
  private(set) var quiz5: Double
  private(set) var test1: Double
  private(set) var test2: Double
  private(set) var finalMath: Double
  
  init(quiz1: Double , quiz2: Double , quiz3: Double , quiz4: Double, quiz5: Double , test1: Double , test2: Double , finalMath: Double , firstname: String , lastname: String) {
    self.quiz1 = quiz1
    self.quiz2 = quiz2
    self.quiz3 = quiz3
    self.quiz4 = quiz4
    self.quiz5 = quiz5
    self.test1 = test1
    self.test2 = test2
    self.finalMath = finalMath
    super.init(lastname: lastname , firstname: firstname)
  }
  
  func aMathScore () -> Double {
    let sumQuiz = quiz1 + quiz2 + quiz3 + quiz4 + quiz5
    let averageQuiz = ( sumQuiz / 5 ) * 0.15
    let averagetest1 = test1 * (0.25)
    let averagetest2 = test2 * (0.25)
    let averageFinalMath = finalMath * (0.35)
    let averageMath = averageQuiz + averagetest1 + averagetest2 + averageFinalMath
    return averageMath
  }
  
}
//
//init  letterGradeEnglish () -> String {
//  var gradeA = 0
//
//  if averageEnglish || averageHistory || averageMath > 90 {
//    let gradeA =+1
//  }



func formattedOut() -> String {
  var formated = ""
  let welcome = "Student Grade Summary"
  print(welcome.uppercased())
  print("--------------------------")
  let studentName = "Student"
  let name = "\nName"
  let final = "Final"
  let exam = "Exam"
  let avg = "Avg"
  let letter = "Letter"
  let grade = "Grade"
  formated += studentName.padding(toLength: 40, withPad: " ", startingAt: 0) +
  final.padding(toLength: 20, withPad: " ", startingAt: 0) +
  final.padding(toLength: 20, withPad: " ", startingAt: 0) +
  letter.padding(toLength: 20, withPad: " ", startingAt: 0) +
  name.padding(toLength: 41, withPad: " ", startingAt: 0) +
  exam.padding(toLength: 20, withPad: " ", startingAt: 0) +
  avg.padding(toLength: 20, withPad: " ", startingAt: 0) +
  grade.padding(toLength: 20, withPad: " ", startingAt: 0)
  
  return formated
}

 func input() -> String? {
//   while true {
      print("Please enter the name of the input file.")
//      let lines = [readLine()]
//      _ = lines.split(separator: "/n")
//      let studentNumb = lines[0]
////      return studentNumb
//    }
   var names = readLine()
   var names1 = names?.components(separatedBy: ",")
   let namess = names1?[1]
   return namess
 }





//static func formattedSong(title: String, artist: String, style: Song.Style? = nil, size: Int? = nil) -> String {
//    var result = "| "
//    result += title.padding(toLength: 36, withPad: " ", startingAt: 0)
//    result += "| "
//    result += artist.padding(toLength: 26, withPad: " ", startingAt: 0)
//    result += "| "
//    if let style = style {
//      result += style.toFullName.padding(toLength: 12, withPad: " ", startingAt: 0)  // "Alternative" = 11 characters
//    } else {
//      result += "Style".padding(toLength: 12, withPad: " ", startingAt: 0)  // "Alternative" = 11 characters
//    }
//    result += "| "
//    if let size = size {
//      result += "\(String(format: "%.1f", Song.convertToMB(size)))"
//    } else {
//      result += "Size (MB)"
//    }
//    return result
//  }



//func categoryDetails(category: Song.Style) {
//    menu() // Print the menu headers for the playlist details
//    var song = 0
//    var size = 0
//    for i in songs {
//      if i.category == category { // If the song have the category
//        print(i.description)
//        size += i.size
//        song += 1
//      }
//    }
