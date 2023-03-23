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

func myFunction() -> String {
  var output: String {
    var students: [Student] = []
    for student in studentArray {
      if student.count >= 2 {
        let name = student[0]
        let nameComponents = name.split(separator: ",")
        if nameComponents.count >= 2 {
          let lastname = String(nameComponents[0])
          let firstname = String(nameComponents[1])
          let newStudent = Student(lastname: lastname, firstname: firstname)
          students.append(newStudent)
          
          let subject = student[1]
          if subject == "English" {
            let termPaper = Double(student[2]) ?? 0
            let midTermE = Double(student[3]) ?? 0
            let finalEnglish = Double(student[4]) ?? 0
            
            let englishStudent = English(termPaper: termPaper, midTermE: midTermE, finalEnglish: finalEnglish, lastname: lastname, firstname: firstname)
            students.append(englishStudent)
            
          }
          else if subject == "History" {
            let attendance = Double(student[2]) ?? 0
            let project = Double(student[3]) ?? 0
            let midTermH = Double(student[4]) ?? 0
            let finalHistory = Double(student[5]) ?? 0
            
            let historyStudent = History(attendance: attendance, project: project, midTermH: midTermH, finalHistory: finalHistory, lastname: lastname, firstname: firstname)
            students.append(historyStudent)
          }
          else if subject == "Math" {
            let quiz1 = Double(student[2]) ?? 0
            let quiz2 = Double(student[3]) ?? 0
            let quiz3 = Double(student[4]) ?? 0
            let quiz4 = Double(student[5]) ?? 0
            let quiz5 = Double(student[6]) ?? 0
            let test1 = Double(student[7]) ?? 0
            let test2 = Double(student[8]) ?? 0
            let finalMath = Double(student[9]) ?? 0
            
            let mathStudent = Math(quiz1: quiz1, quiz2: quiz2, quiz3: quiz3, quiz4: quiz4, quiz5: quiz5, test1: test1, test2: test2, finalMath: finalMath, lastname: lastname , firstname: firstname)
            students.append(mathStudent)
            
          }
        }
      }
    }
    print("Student Grade Summary")
    print("--------------------------")
    
    // Group students by class
    var englishStudents = [English]()
    var historyStudents = [History]()
    var mathStudents = [Math]()
    var totalAGrades = 0
    var totalBGrades = 0
    var totalCGrades = 0
    var totalDGrades = 0
    var totalFGrades = 0
    
    for student in students {
      if let englishStudent = student as? English {
        englishStudents.append(englishStudent)
      } else if let historyStudent = student as? History {
        historyStudents.append(historyStudent)
      } else if let mathStudent = student as? Math {
        mathStudents.append(mathStudent)
      }
    }
    
    // Print students by class
    if !englishStudents.isEmpty {
      print("\nENGLISH CLASS\n")
      print(formattedOut())
      print("----------------------------------------------------------------------------------------")
      for englishStudent in englishStudents.sorted(by: { $0.lastname < $1.lastname }) {
        let fullname = englishStudent.firstname + " " + englishStudent.lastname
        let englishLetterGrade = englishStudent.letterGradeE()
        print(fullname.padding(toLength: 40, withPad: " ", startingAt: 0) +
              String(englishStudent.finalEnglish).padding(toLength: 20, withPad: " ", startingAt: 0) +
              String(englishStudent.aEnglishScore()).padding(toLength: 20, withPad: " ", startingAt: 0) +
              String(englishStudent.letterGradeE()).padding(toLength: 20, withPad: " ", startingAt: 0))
        switch englishLetterGrade {
        case "A":
          totalAGrades += 1
        case "B":
          totalBGrades += 1
        case "C":
          totalCGrades += 1
        case "D":
          totalDGrades += 1
        default:
          totalFGrades += 1
        }
      }
    }
    
    if !historyStudents.isEmpty {
      print("\nHISTORY CLASS\n")
      print(formattedOut())
      print("----------------------------------------------------------------------------------------")
      for historyStudent in historyStudents.sorted(by: { $0.lastname < $1.lastname }) {
        let fullname = historyStudent.firstname + " " + historyStudent.lastname
        let historyLetterGrade = historyStudent.letterGradeH()
        print(fullname.padding(toLength: 40, withPad: " ", startingAt: 0) +
              String(historyStudent.finalHistory).padding(toLength: 20, withPad: " ", startingAt: 0) +
              String(historyStudent.aHistoryScore()).padding(toLength: 20, withPad: " ", startingAt: 0) +
              String(historyStudent.letterGradeH()).padding(toLength: 20, withPad: " ", startingAt: 0))
        switch historyLetterGrade {
        case "A":
          totalAGrades += 1
        case "B":
          totalBGrades += 1
        case "C":
          totalCGrades += 1
        case "D":
          totalDGrades += 1
        default:
          totalFGrades += 1
        }
      }
    }
    
    
    if !mathStudents.isEmpty {
      print("\nMATH CLASS\n")
      print(formattedOut())
      print("----------------------------------------------------------------------------------------")
      for mathStudent in mathStudents.sorted(by: { $0.lastname < $1.lastname }) {
        let fullname = mathStudent.firstname + " " +  mathStudent.lastname
        let mathLetterGrade = mathStudent.letterGradeM()
        print(fullname.padding(toLength: 40, withPad: " ", startingAt: 0) +
              String(mathStudent.finalMath).padding(toLength: 20, withPad: " ", startingAt: 0) +
              String(mathStudent.aMathScore()).padding(toLength: 20, withPad: " ", startingAt: 0) +
              String(mathStudent.letterGradeM()).padding(toLength: 20, withPad: " ", startingAt: 0))
        switch mathLetterGrade {
        case "A":
          totalAGrades += 1
        case "B":
          totalBGrades += 1
        case "C":
          totalCGrades += 1
        case "D":
          totalDGrades += 1
        default:
          totalFGrades += 1
        }
      }
    }
    
    print("\n")
    print("\nOVERALL GRADE DISTRIBUTION\n")
    print("A: \(totalAGrades)")
    print("B: \(totalBGrades)")
    print("C: \(totalCGrades)")
    print("D: \(totalDGrades)")
    print("F: \(totalFGrades)")
    return ""
  }
  return output
}

