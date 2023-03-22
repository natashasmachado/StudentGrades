//
//  StudentClasses.swift
//  StudentGrades
//
//  Created by Natasha on 3/20/23.
//

import Foundation



class Student {
  private(set) var firstname: String
  private(set) var lastname: String
  
  init(firstname: String , lastname: String ) {
    self.firstname = firstname
    self.lastname = lastname
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
    
    super.init(firstname: firstname, lastname: lastname)
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
    super.init(firstname: firstname, lastname: lastname)
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
    super.init(firstname: firstname, lastname: lastname)
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





