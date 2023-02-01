//
//  ProfileView.swift
//  Little Lemon App
//
//  Created by Ryan on 2023/02/01.
//

import SwiftUI

struct ProfileView: View {
    // Defaults
    @AppStorage("firstName") private var firstName: String = ""
    @AppStorage("lastName") private var lastName: String = ""
    @AppStorage("email") private var email: String = ""
    @AppStorage("phoneNumber") private var phoneNumber: String = ""
    @AppStorage("shouldShowOnboarding") private var shouldShowOnboarding: Bool = true
    
    // Notification states
    @State private var checkedOrderStatus = true
    @State private var checkedPasswordChanges = true
    @State private var checkedSpetialOffers = true
    @State private var checkedNewsletters = true
    
    var body: some View {
        VStack {
            HeaderView()
            
            ScrollView{
                VStack(alignment: .leading) {
                    Group {
                        Text("Personal Information")
                            .font(Font.system(size: 18, weight: .bold))
                            .foregroundColor(Color(red: 51/255, green: 51/255, blue: 51/255))
                            .padding([.leading, .trailing], 20)
                            .padding(.top, 12)
                            .padding(.bottom, 5)
                            .bold()
                        
                        Text("Avatar")
                            .foregroundColor(Color(red: 175/255, green: 175/255, blue: 175/255))
                            .bold()
                            .padding([.leading, .trailing], 20)
                        
                        HStack {
                            Image("profile-image-placeholder")
                                .resizable()
                                .frame(width: 100, height: 100)
                            
                            Button("Change") {
                            }
                            .buttonStyle(FillButtonStyle())
                            
                            Button("Remove") {
                            }
                            .buttonStyle(BorderButtonStyle())
                            
                            Spacer()
                        }
                        .padding(.leading)
                    }
                    
                    // Input Fields
                    Group {
                        TextInputView(title: "First name", value: firstName)
                        TextInputView(title: "Last name", value: lastName)
                        TextInputView(title: "Email", value: email)
                        TextInputView(title: "Phone Number", value: phoneNumber)
                    }
                    
                    // Notifications
                    Group {
                        Text("Email notifications")
                            .font(Font.system(size: 18, weight: .bold))
                            .foregroundColor(Color(red: 51/255, green: 51/255, blue: 51/255))
                            .padding([.leading, .trailing], 20)
                            .padding(.top, 10)
                            .padding(.bottom, 5)
                            .bold()
                        
                        NotificationToggle(label: "Order Statuses")
                        NotificationToggle(label: "Password Changes")
                        NotificationToggle(label: "Special Offers")
                        NotificationToggle(label: "Newsletter")
                    }
                    
                    // Controls
                    Group {
                        VStack(alignment: .center){
                            Button("Log out") {
                                logout()
                            }
                            .font(Font.system(size: 16, weight: .bold))
                            .frame(maxWidth: .infinity)
                            .padding([.top, .bottom], 10)
                            .foregroundColor(Color(red: 73/255, green: 94/255, blue: 87/255))
                            .background(Color(red: 244/255, green: 206/255, blue: 20/255))
                            .cornerRadius(7)
                            .padding(20)
                            
                            HStack {
                                Button("Discard changes") {
                                }
                                .buttonStyle(BorderButtonStyle())
                                
                                Button("Save changes") {
                                }
                                .buttonStyle(FillButtonStyle())
                            }
                        }
                        .frame(maxWidth: .infinity)
                    }
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .overlay(
                    RoundedRectangle(cornerRadius: 7)
                        .stroke(Color(red: 175/255, green: 175/255, blue: 175/255), lineWidth: 1)
                )
            }
            .frame(maxWidth: .infinity)
            .overlay(
                RoundedRectangle(cornerRadius: 7)
                    .stroke(Color(red: 175/255, green: 175/255, blue: 175/255), lineWidth: 1)
            )
        }
    }
    
    private func logout() {
        shouldShowOnboarding = true
        firstName = ""
        lastName = ""
        email = ""
        phoneNumber = ""
    }
}
