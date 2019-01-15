//
//  Waiter.swift
//  QFCommand
//
//  Created by 情风 on 2019/1/15.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

import UIKit

class Waiter: NSObject {
    
    var commandList: [AbstractCommand] = []
    
    /// 通过命令 设置订单
    func setOrder(command: AbstractCommand) {
        commandList.append(command)
    }
    
    /// 发送通知，执行命令
    func notify() {
        for command in commandList {
            command.excuteCommand(count: command.count)
        }
    }
    
}
