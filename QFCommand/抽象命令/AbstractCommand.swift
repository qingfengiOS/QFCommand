//
//  AbstractCommand.swift
//  QFCommand
//
//  Created by 情风 on 2019/1/15.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

import UIKit

/// 抽象命令
class AbstractCommand: NSObject {
    
    var reciever: Cooker
    var count: Int = 0
    
    /// 初始化方法
    ///
    /// - Parameters:
    ///   - reciever: 命令的接收者（厨师对象）
    ///   - count: 该命令包含的数量
    init(reciever: Cooker, count: Int) {
        self.reciever = reciever
        self.count = count
    }
    
    
    /// 设置命令的数量，若初始化之后需要修改可调用改方法
    ///
    /// - Parameter count: 命令数量
    func setCommandCount(count: Int) {
        self.count = count
    }
    
    /// 执行命令
    func excuteCommand(count: Int)  {
        
    }
    
    
}
