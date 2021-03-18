import UIKit

struct Lecture {
    var name : String
    var teacher : String
    var studentNum : Int
}



func printLecture(from teacher: String, lectures : [Lecture]) {
//    var lectureName = ""
//    
//    for lecture in lectures {
//        if teacher == lecture.teacher {
//            lectureName = lecture.name
//        }
//    }
    
    let lectureName = lectures.first { $0.teacher == teacher }?.name ?? ""
        print("강의 이름은 \(lectureName)")
    }

let lec1 = Lecture(name: "iOS AutoLayout", teacher: "민성홍", studentNum: 40)
let lec2 = Lecture(name: "iOS & Firebase", teacher: "고영상", studentNum: 40)
let lec3 = Lecture(name: "iOS & nabigation", teacher: "차요셉", studentNum: 40)
let lectures = [lec1,lec2,lec3]

printLecture(from: "민성홍", lectures: lectures)
