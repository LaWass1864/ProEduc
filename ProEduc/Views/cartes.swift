//import SwiftUI
//import URLImage
//
//struct CartsView: View {
//    @State private var students: [Student] = []
//    
//    var body: some View {
//        List(students, id: \.name) { student in
//            HStack {
//                Text(student.name)
//                if let imageURL = student.imageURL {
//                    URLImage(url: imageURL) { image in
//                        image
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 50, height: 50)
//                    }
//                }
//            }
//        }
//        .onAppear {
//            fetchStudents()
//        }
//    }
//    
//    func fetchStudents() {
//        AirtableService().fetchStudents { students in
//            if let students = students {
//                self.students = students
//            }
//        }
//    }
//}

//
//struct ImageView: View {
//    @ObservedObject private var imageService = ImageService()
//
//    var imageURL: URL
//
//    init(imageURL: URL) {
//        self.imageURL = imageURL
//        imageService.fetchImage(from: imageURL)
//    }
//
//    var body: some View {
//        if let image = imageService.image {
//            Image(uiImage: image)
//                .resizable()
//                .scaledToFit()
//        } else {
//            Text("Loading Image...")
//        }
//    }
//}
//
////struct ContentView: View {
////    let airtableImageURL = URL(string: "YOUR_AIRTABLE_IMAGE_URL")!
////
////    var body: some View {
////        VStack {
////            ImageView(imageURL: airtableImageURL)
////                .frame(width: 200, height: 200)
////        }
////    }
////}
////
////@main
////struct YourApp: App {
////    var body: some Scene {
////        WindowGroup {
////            ContentView()
////        }
////    }
////}
