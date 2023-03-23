//
//  main.swift
//  StudentGrades
//
//  Created by Natasha on 3/20/23.
//

import Foundation

//
// How to read a file?
print("Please enter the name of the input file.")
let filename = readLine()
let inputString = try? String(contentsOfFile: "/Users/natasha/Desktop/StudentGrades/StudentGrades/\(filename ?? "")")
let studentArray = input(inputString ?? "" )

print("Please enter the name of the output file.")
let outputFilename = "sample.out"
var outputString: String {
  willSet(newValue) {
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
  return outputString
}
}

if let dir = FileManager.default.urls(for: .desktopDirectory, in: .userDomainMask).first {

  let fileURL = dir.appendingPathComponent(outputFilename, isDirectory: true)
  do {
    try outputString.write(to: fileURL, atomically: false, encoding: .utf8)
    print("Sucessfully wrote into \(fileURL.absoluteString)")
  } catch {
    print(error.localizedDescription)
  }
}

