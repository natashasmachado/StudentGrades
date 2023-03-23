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
}

class English: Student {
  private(set) var termPaper: Double
  private(set) var midTermE: Double
  private(set) var finalEnglish: Double
  
  init(termPaper: Double, midTermE: Double, finalEnglish: Double , lastname: String , firstname: String) {
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
      return Double(String(format: "%.2f", averageEnglish))!
  }
  
  func letterGradeE() -> String {
    switch aEnglishScore() {
    case 90...100:
      return "A"
    case 80..<90:
      return "B"
    case 70..<80:
      return "C"
    case 60..<70:
      return "D"
    default:
      return "F"
    }
  }
}

class History: Student {
  private(set) var attendance: Double
  private(set) var project: Double
  private(set) var midTermH: Double
  private(set) var finalHistory: Double
  
  init(attendance: Double , project: Double , midTermH: Double , finalHistory: Double, lastname: String , firstname: String ) {
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
    return Double(String(format: "%.2f", averageHistory))!
  }
  func letterGradeH() -> String {
    switch aHistoryScore() {
    case 90...100:
      return "A"
    case 80..<90:
      return "B"
    case 70..<80:
      return "C"
    case 60..<70:
      return "D"
    default:
      return "F"
    }
  }
}

class Math: Student {
  private(set) var quiz1: Double
  private(set) var quiz2: Double
  private(set) var quiz3: Double
  private(set) var quiz4: Double
  private(set) var quiz5: Double
  private(set) var test1: Double
  private(set) var test2: Double
  private(set) var finalMath: Double
  
  init(quiz1: Double , quiz2: Double , quiz3: Double , quiz4: Double, quiz5: Double , test1: Double , test2: Double , finalMath: Double , lastname: String , firstname: String ) {
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
    return Double(String(format: "%.2f", averageMath))!
  }
  
  func letterGradeM() -> String {
    switch aMathScore () {
    case 90...100:
      return "A"
    case 80..<90:
      return "B"
    case 70..<80:
      return "C"
    case 60..<70:
      return "D"
    default:
      return "F"
    }
  }
}


func formattedOut() -> String {
  var formated = ""
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

func studentsNum(_ inputString: String) -> [[String]] {
  let lines = inputString.components(separatedBy: "\n").filter { !$0.isEmpty }
  var outputArray = [[String]]()
  for i in stride(from: 1, to: lines.count, by: 2) {
    let numb = lines[i-1]
    let studentN = [numb]
    outputArray.append(studentN)
  }
  return outputArray
}

func input(_ inputString: String) -> [[String]] {
  let lines = inputString.components(separatedBy: "\n").filter { !$0.isEmpty }
  var outputArray = [[String]]()
  for i in stride(from: 2, to: lines.count, by: 2) {
    let name = lines[i-1]
    let grades = lines[i].components(separatedBy: " ")
    let studentArray = [name] + grades
    outputArray.append(studentArray)
  }
  return outputArray
}



