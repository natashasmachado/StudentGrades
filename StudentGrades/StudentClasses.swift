//
//  StudentClasses.swift
//  StudentGrades
//
//  Created by Natasha on 3/20/23.
//

import Foundation



class Student {
  enum Course: String {
    case english , history, math
  }
   private(set) var firstname: String
   private(set) var lastname: String
   private(set) var subject: Course

  init (firstname: String , lastname: String , subject: Course ) {
    self.firstname = firstname
    self.lastname = lastname
    self.subject = subject
  }
}

class english: Student {
  private(set) var termPaper: Int = 100
  private(set) var midTerm: Int = 100
  private(set) var finalExam: Int = 100

  init(termPaper: Int, midTerm: Int , finalExam: Int) {
    self.termPaper = termPaper
    self.midTerm = midTerm
    self.finalExam = finalExam
  }
  func englishScore () {
    private(set) var scoreTermPaper: Int = 0
    private(set) var 
   let averageEnglish = 0
    if let averageEnglish {
      midTerm
    }
    
  }
}



