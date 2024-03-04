//
//  FirestoreManager_createuser.swift
//  CozyGather
//
//  Created by user2 on 03/03/24.
//

import FirebaseFirestore

class FirestoreManager {
    static let shared = FirestoreManager()

    private let db = Firestore.firestore()

    func createUser(_ user: User) {
        // Replace "users" with your actual Firestore collection name
        db.collection("users").document(user.id).setData([
            "fullName": user.fullName,
            "userName": user.userName,
            
            // Add other user properties as needed
        ]) { error in
            if let error = error {
                print("Error adding document: \(error)")
            } else {
                print("Document added with ID: \(user.id)")
            }
        }
    }

    // Add additional functions as needed for fetching user information
}

