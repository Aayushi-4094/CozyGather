//import SwiftUI
//
//struct ConfirmEvent: View {
//    @State private var isSelectCoHostVisible = false
//    @State private var isDateAndTimeVisible = false
//    @State private var coHostName: String = "Cohost"
//    @State private var eventDate = Date()
//    @State private var showInvite = false
//    @State private var eventName: String = "Event name"
//    
//    
//    
//    var body: some View {
//        VStack {
//            ScrollView{
//                HStack {
//                    Button(action: {
//                        // Add action for the back button
//                    }) {
//                        Image(systemName: "chevron.left")
//                            .font(.title)
//                            .foregroundColor(.blue)
//                    }
//                    
//                    Spacer()
//                    
//                    
//                    Text("Create Event")
//                        .font(Font.custom("AirbnbCereal_W_Md", size: 24))
//                        .foregroundColor(Color(red: 0.07, green: 0.05, blue: 0.15))
//                    
//                    Spacer()
//                }
//                .padding()
//                .background(Color.white)
//                
//                ZStack(alignment: .bottom) {
//                    VStack {
//                        Image("nametheevent")
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
//                            .frame(height: 300)
//                    }
//                    //                Capsule()
//                    //                    .fill(Color.gray.opacity(1))
//                    //                    .frame(height: 50)
//                    //                    .overlay(
//                    //                        Text("Days : Hours : Minutes")
//                    //                            .foregroundColor(.black)
//                    //                            .padding(.horizontal)
//                    //                    )
//                    //                    .padding(.horizontal, 40) // Add left and right padding
//                    
//                }
//                HStack{
//                    Text("Event Name")
//                        .font(.headline)
//                        .position(CGPoint(x: 50.0, y: 10.0))
//                    
//                    
//                    TextField("Event Name", text: $eventName)
//                        .foregroundColor(.gray)
//                    
//                }
//                
//                
//                .padding()
//                Button(action: {
//                    /* Add co-host functionality */
//                    isSelectCoHostVisible.toggle()
//                }) {
//                    HStack {
//                        Image(systemName: "person.fill")
//                        Text("Add a Co-host")
//                            .font(.headline)
//                        Spacer()
//                        Text("Sam Aiden as the co-host")
//                            .foregroundColor(.gray)
//                    }
//                    .padding()
//                    .foregroundColor(.black)
//                    .background(Color.white)
//                    .cornerRadius(10)
//                }
//                .sheet(isPresented: $isSelectCoHostVisible) {
//                    SelectCoHost()
//                }
//                
//                
//                
//                Button(action: {
//                    /* Add date and time functionality */
//                    isDateAndTimeVisible.toggle()
//                }) {
//                    HStack {
//                        Image(systemName: "calendar")
//                        Text("Add date and time")
//                            .font(.headline)
//                        Spacer()
//                        Text("Sam Aiden as the co-host")
//                            .foregroundColor(.gray)
//                    }
//                    .padding()
//                    .foregroundColor(.black)
//                    .background(Color.white)
//                    .cornerRadius(10)
//                }
//                .sheet(isPresented: $isDateAndTimeVisible) {
//                    DateAndTime()
//                }
//                
//                
//                HStack {
//                    Image(systemName: "location.fill")
//                        .font(.title)
//                        .foregroundColor(.blue)
//                    
//                    TextField("Mapping", text: .constant(""))
//                        .textFieldStyle(RoundedBorderTextFieldStyle())
//                        .padding(.horizontal)
//                }
//                .padding()
//                
//                HStack {
//                    Image(systemName: "dollarsign.circle.fill")
//                        .font(.title)
//                        .foregroundColor(.blue)
//                    
//                    TextField("budget", text: .constant(""))
//                        .textFieldStyle(RoundedBorderTextFieldStyle())
//                        .padding(.horizontal)
//                }
//                .padding()
//                
//                
//                //            Button(action:{self.showInvite.toggle()}) {
//                //                           HStack{
//                //                               Text("Generate e-Invite")
//                //                                   .font(.headline)
//                //                               Image(systemName: "arrow.clockwise.circle")
//                //                           }
//                //                           .padding()
//                //                           .foregroundColor(.black)
//                //                           .background(Color.white)
//                //                           .cornerRadius(10)
//                //                       }
//                //                       .sheet(isPresented:$showInvite) {
//                //                           // Your e-invite view goes here
//                //                           Image("invite")
//                //                               .frame(width: 20,height: 20)
//                //                           Spacer()
//                //                           Image("invite")
//                //                               .frame(width: 20,height: 20)
//                //                       }
//                
//                VStack {
//                    Button(action: { self.showInvite.toggle() }) {
//                        HStack {
//                            Text("Generate e-Invite")
//                                .font(.headline)
//                            Image(systemName: "arrow.clockwise.circle")
//                        }
//                        .padding()
//                        .foregroundColor(.black)
//                        .background(Color.white)
//                        .cornerRadius(10)
//                    }
//                    .sheet(isPresented: $showInvite) {
//                        // Your e-invite view goes here
//                        ScrollView {
//                            LazyVGrid(columns: [GridItem(.flexible())]) {
//                                ForEach(0..<3) { _ in
//                                    Image("invite")
//                                        .resizable()
//                                    
//                                        .frame(width: 300, height: 500) // Adjust the size as needed
//                                }
//                            }
//                        }
//                    }
//                }
//                .padding()
//                
//                
//                
//                Spacer()
//                
//                
//                
//                Button(action: {
//                    // Add action for the Confirm button
//                    // Handle the logic to confirm the event
//                }) {
//                    Text("Confirm")
//                        .foregroundColor(.white)
//                        .font(.headline)
//                        .padding()
//                        .frame(maxWidth: .infinity)
//                        .background(Color.blue)
//                        .cornerRadius(10)
//                        .padding()
//                }
//            }
//            .padding(.horizontal)
//            
//            
//            
//            
//            
//            
//        }
//        
//        
//    }
//        private let dateFormatter: DateFormatter = {
//            let formatter = DateFormatter()
//            formatter.dateStyle = .medium
//            formatter.timeStyle = .short
//            return formatter
//        }()
//    }
//    
//    
////    struct FilterButton: View {
////        var imageName: String
////        var label: String
////        var isSelected: Bool
////        var action: () -> Void
////        
////        var body: some View {
////            VStack {
////                Image(systemName: imageName)
////                    .font(.title)
////                    .foregroundColor(isSelected ? .blue : .gray)
////                Text(label)
////                    .foregroundColor(isSelected ? .blue : .black)
////            }
////            .padding()
////            .background(isSelected ? Color.blue.opacity(0.2) : Color.clear)
////            .cornerRadius(10)
////            .onTapGesture(perform: action)
////            
////            
////        }
////    }
////    
////    
//    struct ConfirmEvent_Previews: PreviewProvider {
//        static var previews: some View {
//            ConfirmEvent()
//        }
//    }
//
