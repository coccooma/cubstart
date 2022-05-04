//
//  ContentView.swift
//  BearEssentials
//
//  Created by Coco Ma, Hidy Chan, Elaine Liang, Tiffany Lin on 4/21/22.
//

import SwiftUI

let backgroundcolor = Color(red: 0.878, green: 0.827, blue: 0.784)
let titlecolor = Color(red: 0.455, green: 0.392, blue: 0.427)
let subtitle = Color(red: 0.663, green: 0.510, blue: 0.318)
let subjectcolor = Color(red: 0.957, green: 0.933, blue: 0.792)
let textbox = Color(red: 0.816, green: 0.706, blue: 0.655)
let textcolor = Color(red: 0.455, green: 0.392, blue: 0.427)

struct ContentView: View {
    
    var body: some View {
        //Color("backgroundcolor").edgesIgnoringSafeArea(.all)
        NavigationView {
            VStack {
                Image("oksi2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(25)
                    .frame(width: 430.0, height: 430.0, alignment: .center)
                Text("Bear Essentials")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(titlecolor)
                Spacer()
                NavigationLink(destination: MainView(), label: {
                    Text("Click here to begin")
                        .foregroundColor(subtitle)
                        .multilineTextAlignment(.trailing)
                })

            }.background(backgroundcolor)
        }
    }
        
}


struct MainView: View {
   
    var body: some View {
        VStack {
            
            Image("loginbear")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50.0, height: 50.0, alignment: .topTrailing)
            NavigationLink(destination: LoginView(), label: {
                Text("Log In")
                    
                    .foregroundColor(.black)
                    
                   
            }).navigationTitle("Menu")
       
                
            Text("Tuesday, May 3 2022").padding()
            Text("Welcome to Bear Meet!").padding()
        
            NavigationLink(destination: TimeView(), label: {
                Text("My Schedule")
                    .bold()
                    .frame(width: 280, height: 50)
                    .background(textbox)
                    .foregroundColor(subjectcolor)
                    .cornerRadius(10)
            })
            
            NavigationLink(destination: MeetView(), label: {
                Text("Bear Meet")
                    .bold()
                    .frame(width: 280, height: 50)
                    .background(textbox)
                    .foregroundColor(subjectcolor)
                    .cornerRadius(10)
            })
            
            NavigationLink(destination: RMCView(), label: {
                Text("Rate My Courses")
                    .bold()
                    .frame(width: 280, height: 50)
                    .background(textbox)
                    .foregroundColor(subjectcolor)
                    .cornerRadius(10)
            })
            
            NavigationLink(destination: InviteView(), label: {
                Text("Invite a Friend")
                    .bold()
                    .frame(width: 280, height: 50)
                    .background(textbox)
                    .foregroundColor(subjectcolor)
                    .cornerRadius(10)
            })
            
            NavigationLink(destination: SettingView(), label: {
                Text("Setting")
                    .bold()
                    .frame(width: 280, height: 50)
                    .background(textbox)
                    .foregroundColor(subjectcolor)
                    .cornerRadius(10)
            })


            NavigationLink(destination: ProfileView(), label: {
                Text("Profile")
                    .bold()
                    .frame(width: 280, height: 50)
                    .background(textbox)
                    .foregroundColor(subjectcolor)
                    .cornerRadius(10)
            })
        
        
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundcolor)
    }
}

struct LoginView: View {
    
    @State var tempUsername: String = ""
    @State var tempPassword: String = ""
    
    var body: some View {
        VStack{
            VStack {
                Text("Username:")
                    .padding()
                    .frame(width: 280, height: 50)
                    .background(backgroundcolor)
                    .cornerRadius(10)
                TextField("username", text: $tempUsername)
                    .padding()
                    .frame(width: 280, height: 50)
                    .background(textbox)
                    .cornerRadius(10)
                Text("Password:")
                    .padding()
                    .frame(width: 280, height: 50)
                    .background(backgroundcolor)
                    .cornerRadius(10)
                TextField("password", text: $tempPassword)
                    .padding()
                    .frame(width: 280, height: 50)
                    .background(textbox)
                    .cornerRadius(10)
            }
            
            VStack {
                NavigationLink(destination: MainView(), label: {
                    Text("Go Bears")
                        .bold()
                        .frame(width: 280, height: 50)
                        .background(textbox)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                })
            }
            VStack {
                NavigationLink(destination: ForgotPWDView(), label: {
                    Text("Forgot Password?")
                        .foregroundColor(.black)
                })
            }
            Spacer()
            Text("No Account?")
            VStack {
                NavigationLink(destination: NewAccountView(), label: {
                    Text("Sign Up Here!")
                        .frame(width:140, height:20)
                        .background(backgroundcolor)
                        .foregroundColor(.black)
                })
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundcolor)
    }
        
}

struct TimeView: View {
    var body: some View {
        VStack{
            Text("Time Table")
                .bold()
                .font(.system(size: 30))
                .padding(.bottom, 10)
                .frame(width:500, height:20)
                .background(textbox)
                .foregroundColor(.black)
            Image("TimeTable")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundcolor)
    }
}

struct MeetView: View {
    var body: some View {
        VStack{
            Text("Bear Meet")
                .bold()
                .font(.system(size: 30))
                .padding(.bottom, 10)
                .frame(width:500, height:20)
                .background(textbox)
                .foregroundColor(.black)
            Image("MeetSchedule")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundcolor)
    }
}

struct RMCView: View {
    @State var tempCourse: String = ""
    
    //function to take classes as input and store in an array
    class Classes: Identifiable{
        var classname: String
        var score: String
        init(classname: String, score: String) {
            self.classname = classname
            self.score = score
        }
    }
    @State var list = [
            Classes(classname: "Cubstart", score: "5")
        ]
    @State var tempScore: String = ""
    func addclass() {
        list.append(Classes(classname: tempCourse, score: tempScore))
        tempCourse = ""
        tempScore = ""
    }
    //for loop for sum,
//    func sum(score) {
//        var sum = 0.0
//        for score in scores {
//            sum += scores
//        }
//        return sum
//    }
    
    var body: some View {
        VStack {
            Text("Rate my courses")
                .bold()
                .font(.system(size: 30))
                .padding(.bottom, 10)
                .frame(width:500, height:20)
                .background(textbox)
                .foregroundColor(.black)
            Spacer()
            Text("Enter a course name to get started")
            TextField("Enter the course name:", text: $tempCourse)
                .padding()
                .frame(width: 280, height: 50)
                .background(.white)
                .cornerRadius(10)
                
            NavigationLink(destination: CourseRateView(), label: {
                VStack {
                Text("Search")
                    .bold()
                    .frame(width: 280, height: 50)
                    .background(textbox)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .padding()
            
                }
            })
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundcolor)
    }
}

struct SettingView: View {
    var body: some View {
        VStack{
            Group {
                Text("Settings")
                    .bold()
                    .font(.system(size: 30))
                    .padding(.bottom, 10)
                    .frame(width:500, height:20)
                    .background(textbox)
                    .foregroundColor(.black)
                Spacer()
                Text("Font Size")
                    .bold()
                    .font(.system(size: 25))
                    .frame(width: 280, height: 50)
                    .background(textbox)
                    .foregroundColor(subjectcolor)
                    .cornerRadius(10)
                Text("(this is the perfect size,don' t changes on it!)")
                    .frame(width: 280, height: 50)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .padding(.top, -30)
                    .padding()
                Text("Language")
                    .bold()
                    .font(.system(size: 25))
                    .frame(width: 280, height: 50)
                    .background(textbox)
                    .foregroundColor(subjectcolor)
                    .cornerRadius(10)
                Text("(sorry currently only English is available)")
                    .frame(width: 280, height: 50)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .padding(.top, -30)
                    .padding()
                Text("Feedback")
                    .bold()
                    .font(.system(size: 25))
                    .frame(width: 280, height: 50)
                    .background(textbox)
                    .foregroundColor(subjectcolor)
                    .cornerRadius(10)
                Text("(ONLY positive feedback is acceptable)")
                    .frame(width: 280, height: 50)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .padding(.top, -30)
                    .padding()
                Text("Help")
                    .bold()
                    .font(.system(size: 25))
                    .frame(width: 280, height: 50)
                    .background(textbox)
                    .foregroundColor(subjectcolor)
                    .cornerRadius(10)
                Text("(staff shortage, specialist will get back to you in 5 years)")
                    .frame(width: 280, height: 50)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .padding(.top, -30)
                    .padding()
                
            }
            Spacer()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundcolor)
    }
        
}

struct InviteView: View {
    @State var tempFriend: String = ""
    var body: some View {
        VStack{
            Text("Invite a Friend")
                .bold()
                .font(.system(size: 30))
                .padding(.bottom, 10)
                .frame(width:500, height:20)
                .background(textbox)
                .foregroundColor(.black)
            Spacer()
            Text("Enter your friend's username:")
            TextField("Enter your friend's username:", text: $tempFriend)
                .padding()
                .frame(width: 280, height: 50)
                .background(textbox)
                .cornerRadius(10)
            VStack {
                NavigationLink(destination: MainView(), label: {
                    Text("Connect!")
                        .bold()
                        .frame(width: 280, height: 50)
                        .background(textbox)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .padding()
                
                })
    
            }
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundcolor)
    }
       
}

struct CourseRateView: View {
    
    var body: some View {
        VStack{
            Text("Course rate")
                .bold()
                .font(.system(size: 30))
                .padding(.bottom, 10)
                .frame(width:500, height:20)
                .background(textbox)
                .foregroundColor(.black)
            Spacer()
            Text("Cubstart")
                .font(.system(size: 20))
                .foregroundColor(textcolor)
                .padding()
            Text("5/5")
                .font(.system(size: 50))
                .foregroundColor(.black)
            VStack {
                NavigationLink(destination: RateCourseView(), label: {
                    Text("Rate This Course")
                        .bold()
                        .frame(width: 280, height: 50)
                        .background(textbox)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .padding()
                })
            }
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundcolor)
    }
}

struct RateCourseView: View {
    @State var tempRate: String = ""
    var body: some View {
        VStack{
            
        
            Text("Rate a course")
                .bold()
                .font(.system(size: 30))
                .padding(.bottom, 10)
                .frame(width:500, height:20)
                .background(textbox)
                .foregroundColor(.black)
            Spacer()
            Text("Cubstart")
                .padding()
            Text("Enter the course rate (out of 5)")
            TextField("Enter your course rate:", text: $tempRate)
                .padding()
                .frame(width: 280, height: 50)
                .background(.white)
                .cornerRadius(10)
            VStack {
                NavigationLink(destination: MainView(), label: {
                    Text("Rate This Course")
                        .bold()
                        .frame(width: 280, height: 50)
                        .background(textbox)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .padding()
                })
        }
        Spacer()
    }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundcolor)
    }
}

struct ProfileView: View {
    @State var tempName: String = ""
    var body: some View {
        VStack{
            Text("Profile")
                .bold()
                .font(.system(size: 30))
                .padding(.bottom, 10)
                .frame(width:500, height:20)
                .background(textbox)
                .foregroundColor(.black)
            Spacer()
            
            Text("Your Username:")
            TextField("Enter your username:", text: $tempName)
                .padding()
                .frame(width: 280, height: 50)
                .background(.white)
                .cornerRadius(10)
                .padding()
            
            VStack {
                NavigationLink(destination: FriendListView(), label: {
                    Text("Friend List")
                        .bold()
                        .frame(width: 280, height: 50)
                        .background(textbox)
                        .foregroundColor(textcolor)
                        .cornerRadius(10)
                })
            }
            
            VStack {
                NavigationLink(destination: ChangePWDView(), label: {
                    Text("Change Password")
                        .bold()
                        .frame(width: 280, height: 50)
                        .background(textbox)
                        .foregroundColor(textcolor)
                        .cornerRadius(10)
                })
            }
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundcolor)
        
    }
}

struct NewAccountView: View {
    
    @State var tempUsername: String = ""
    @State var tempOldPw: String = ""
    @State var tempNewPw: String = ""
    
    var body: some View {
        VStack{
            Text("Creat New Account")
                .bold()
                .font(.system(size: 30))
                .padding(.bottom, 10)
                .frame(width:500, height:20)
                .background(textbox)
                .foregroundColor(.black)
            Spacer()
            Text("Enter Your Username:")
            TextField("Enter your course rate:", text: $tempUsername)
                .padding()
                .frame(width: 280, height: 50)
                .background(textbox)
                .cornerRadius(10)
            Text("Enter Your Password:")
            TextField("Enter your course rate:", text: $tempOldPw)
                .padding()
                .frame(width: 280, height: 50)
                .background(textbox)
                .cornerRadius(10)
            Text("Re-enter Your Password:")
            TextField("Enter your course rate:", text: $tempNewPw)
                .padding()
                .frame(width: 280, height: 50)
                .background(textbox)
                .cornerRadius(10)
            VStack {
                NavigationLink(destination: MainView(), label: {
                    Text("Go Bears!")
                        .bold()
                        .frame(width: 280, height: 50)
                        .background(textbox)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .padding()
                })
            }
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundcolor)
    }
}

struct ForgotPWDView: View {
    
    @State var tempUsername: String = ""
    @State var tempNewPw: String = ""
    @State var tempReenterPw: String = ""
    
    var body: some View {
        VStack {
            Text("Forgot Password")
                .bold()
                .font(.system(size: 30))
                .padding(.bottom, 10)
                .frame(width:500, height:20)
                .background(textbox)
                .foregroundColor(.black)
            Spacer()
            
                Text("Enter Your Username:")
            TextField("Enter your course rate:", text: $tempUsername)
                .padding()
                .frame(width: 280, height: 50)
                .background(textbox)
                .cornerRadius(10)
            Text("Enter Your New Password:")
            TextField("Enter your course rate:", text: $tempNewPw)
                .padding()
                .frame(width: 280, height: 50)
                .background(textbox)
                .cornerRadius(10)
            Text("Re-enter Your Password:")
            TextField("Enter your course rate:", text: $tempReenterPw)
                .padding()
                .frame(width: 280, height: 50)
                .background(textbox)
                .cornerRadius(10)
            VStack {
                NavigationLink(destination: ProfileView(), label: {
                    Text("Go Bears!")
                        .bold()
                        .frame(width: 280, height: 50)
                        .background(textbox)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .padding()
            })
            }
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundcolor)
    }
}

struct ChangePWDView: View {
    
    @State var tempUsername: String = ""
    @State var tempOldPw: String = ""
    @State var tempNewPw: String = ""
    
    var body: some View {
        VStack{
            Text("Change Password")
                .bold()
                .padding()
                .font(.system(size: 30))
                .frame(width:500, height:20)
                .background(textbox)
                .foregroundColor(.black)
            Spacer()
            
            Text("Enter Your Username:")
            TextField("Enter your course rate:", text: $tempUsername)
                .padding()
                .frame(width: 280, height: 50)
                .background(textbox)
                .cornerRadius(10)
            Text("Enter Your Old Password:")
            TextField("Enter your course rate:", text: $tempOldPw)
                .padding()
                .frame(width: 280, height: 50)
                .background(textbox)
                .cornerRadius(10)
            Text("Enter Your New Password:")
            TextField("Enter your course rate:", text: $tempNewPw)
                .padding()
                .frame(width: 280, height: 50)
                .background(textbox)
                .cornerRadius(10)
            VStack {
                NavigationLink(destination: ProfileView(), label: {
                    Text("Go Bears!")
                        .bold()
                        .frame(width: 280, height: 50)
                        .background(textbox)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .padding()
                })
               
            }
           Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundcolor)
    }
}

struct FriendListView: View {
    var body: some View {
        VStack{
            Text("Jordan Yee")
                .font(.system(size: 30))
                .bold()
                .background(textbox)
                .foregroundColor(.black)
                .cornerRadius(10)
                .padding()
            Text("Tony Hong")
                .font(.system(size: 30))
                .bold()
                .background(textbox)
                .foregroundColor(.black)
                .cornerRadius(10)
                .padding()
            Text("Jeremy Liu")
                .font(.system(size: 30))
                .bold()
                .background(textbox)
                .foregroundColor(.black)
                .cornerRadius(10)
                .padding()
            Text("John Denero")
                .font(.system(size: 30))
                .bold()
                .background(textbox)
                .foregroundColor(.black)
                .cornerRadius(10)
                .padding()
            Text("Pamela Fox")
                .font(.system(size: 30))
                .bold()
                .background(textbox)
                .foregroundColor(.black)
                .cornerRadius(10)
                .padding()
            Text("Paul Hilfinger")
                .font(.system(size: 30))
                .bold()
                .background(textbox)
                .foregroundColor(.black)
                .cornerRadius(10)
                .padding()
            Text("Alexander Paulin")
                .font(.system(size: 30))
                .bold()
                .background(textbox)
                .foregroundColor(.black)
                .cornerRadius(10)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundcolor)
    }
}
