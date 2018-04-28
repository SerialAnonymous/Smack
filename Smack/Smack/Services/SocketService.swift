//
//  SocketService.swift
//  Smack
//
//  Created by Nayan Jariwala on 26/04/18.
//  Copyright © 2018 Ghost. All rights reserved.
//

import UIKit
import SocketIO

class SocketService: NSObject {
   static let instance = SocketService()
    override init() {
        super.init()
    }
    
    let socket : SocketIOClient = SocketIOClient(socketURL : URL(string: BASE_URL)!)
    
    func establishConnection(){
        socket.connect()
    }
    func closeConnection(){
        socket.disconnect()
    }
    func addChannel(channelName:String, channelDescription: String, completetion: @escaping CompletionHandler){
        socket.emit("newChannel", channelName, channelDescription)
        completetion(true)
    }
    
    func getChannel(completion: @escaping CompletionHandler){
        socket.on("channelCreated") { (dataArray, ack) in
            guard let channelName = dataArray[0] as? String else { return }
            guard let channelDesc = dataArray[1] as? String else { return }
            guard let channelId = dataArray[2] as? String else { return }
            
            let newChannel = Channel(channelTitle: channelName, channelDescription: channelDesc, id: channelId)
            MessageService.instance.channels.append(newChannel)
            completion(true)
        }
    }
}
