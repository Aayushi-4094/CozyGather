import SwiftUI

struct VendorList: View {
    @State private var searchText: String = ""
    @State private var isFilterScreenPresented = false

    var body: some View {
        ZStack {
            // Content
            VStack {
                // Header
                HStack {
                    Spacer()
                    
                    Button(action: {
                        // Add action for when the back button is tapped
                    }) {
                        Image(systemName: "chevron.left")
                            .font(.title)
                            .foregroundColor(.blue)
                    }
                    .padding(.leading, 16)
                    
                    

                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    

                    Text("Vendors")
                        .font(.title)
                        .foregroundColor(Color(red: 0.07, green: 0.05, blue: 0.15))
                        .fontWeight(.bold)
                        

                    Spacer()
                }
                .padding()

                // Search and Filter
                HStack {
                    // Search TextField
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.blue)
                            .padding(.leading, 10)
                        
                        TextField("Search", text: $searchText)
                            .padding()

                    }
                    .background(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1))
                    .frame(width: 230, height: 10)
                    


                    // Spacer to push Filter button to the righ
                    // Filter Button
                    Button(action: {
                        isFilterScreenPresented.toggle()
                    }) {
                        HStack {
                            Image(systemName: "slider.horizontal.3")
                                .foregroundColor(.white)
                            Text("Filter")
                                .foregroundColor(.white)
                                .font(.headline)
                        }
                        .frame(width: 100, height: 60)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .padding(.horizontal, 16)
                    }
                    .sheet(isPresented: $isFilterScreenPresented) {
                        FilterScreen()
                    }
                }
                .padding(.horizontal, 16)

                // Vendor List
                ScrollView {
                    VStack(spacing: 8) {
                        VendorListCustomBox1(
                            imageName: "vendr1",
                            title: "Product Title",
                            description: "Product description goes here.",
                            numberOfStars: 5,
                            price: "$19.99",
                            hyperlinkText: "Details"
                        )

                        VendorListCustomBox1(
                            imageName: "vendr1",
                            title: "Product Title",
                            description: "Product description goes here.",
                            numberOfStars: 5,
                            price: "$19.99",
                            hyperlinkText: "Details"
                        )

                        VendorListCustomBox1(
                            imageName: "vendr1",
                            title: "Product Title",
                            description: "Product description goes here.",
                            numberOfStars: 5,
                            price: "$19.99",
                            hyperlinkText: "Details"
                        )

                        VendorListCustomBox1(
                            imageName: "vendr1",
                            title: "Product Title",
                            description: "Product description goes here.",
                            numberOfStars: 5,
                            price: "$19.99",
                            hyperlinkText: "Details"
                        )
                    }
                    .padding(.horizontal, 16)
                }
                .background(Color.gray.opacity(0.1)) // Set a background color to demonstrate separation
            }

            // Toolbar at the bottom
            VStack {
                Spacer() // Push the toolbar to the bottom
                Toolbar()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    .padding(.horizontal)
                    .position(CGPoint(x: 235.0, y: 750.0))
            }
        }
    }
}



import SwiftUI

struct VendorListCustomBox1: View {
    var imageName: String
    var title: String
    var description: String
    var numberOfStars: Int
    var price: String
    var hyperlinkText: String

    var body: some View {
        HStack {
            Image(imageName) // Use the custom image name
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .padding()

            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.black)

                Text(description)
                    .foregroundColor(.gray)

                HStack {
                    ForEach(0..<numberOfStars) { _ in
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                }
            }
            .padding()

            Spacer()

            VStack(alignment: .trailing, spacing: 4) {
                Text(price)
                    .font(.headline)
                    .foregroundColor(.black)

                Button(action: {
                    // Handle button action
                }) {
                    Text(hyperlinkText)
                        .foregroundColor(.blue)
                        .underline()
                }
            }
            .padding()
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(12)
        
        
    }
}


struct VendorList_Previews: PreviewProvider {
    static var previews: some View {
        VendorList()
    }
}
