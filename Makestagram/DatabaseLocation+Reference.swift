//
//  DatabaseLocation+Reference.swift
//  Makestagram
//
//  Created by Duncan MacDonald on 6/28/17.
//  Copyright © 2017 MakeSchool. All rights reserved.
//

import Foundation
import FirebaseDatabase

extension DatabaseReference {
    enum MGLocation {
        case root
        case posts(uid: String)
        case showPost(uid: String, postKey: String)
        case postLikes(postKey: String, uid: String)
        case likeCount(uid: String, postKey: String)
        case postLikeRef(postKey: String)
        case username(uid: String)
        case users
        case followers(uid: String)
        case timeline(uid: String)
        case postCount(uid: String)
        case followingCount(uid: String)
        case followerCount(uid: String)
        
        func asDatabaseRefereance() -> DatabaseReference {
            let root = Database.database().reference()
            
            switch self {
            case .root:
                return root
            case .posts(let uid):
                return root.child("posts").child(uid)
            case let .showPost(uid, postKey):
                return root.child("posts").child(uid).child(postKey)
            case let .postLikes(postKey, uid):
                return root.child("postLikes").child(postKey).child(uid)
            case let .likeCount(uid, postKey):
                return root.child("posts").child(uid).child(postKey).child("like_count")
            case let .postLikeRef(postKey):
                return root.child("postLikes").child(postKey)
            case let .username(uid):
                return root.child("users").child(uid)
            case .users:
                return root.child("users")
            case let .followers(uid):
                return root.child("followers").child(uid)
            case let .timeline(uid):
                return root.child("timeline").child(uid)
            case let .postCount(uid):
                return root.child("users").child(uid).child("post_count")
            case let .followingCount(uid):
                return root.child("users").child(uid).child("following_count")
            case let .followerCount(uid):
                return root.child("users").child(uid).child("follower_count")
            }
        }
    }
    
    static func toLocation(_ location: MGLocation) -> DatabaseReference {
        return location.asDatabaseRefereance()
    }
}
