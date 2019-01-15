//
//  BakeCheckenWinngCommand.swift
//  QFCommand
//
//  Created by 情风 on 2019/1/15.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

import UIKit

/// 烤鸡翅命令
class BakeCheckenWinngCommand: AbstractCommand {

    override func excuteCommand(count: Int) {
        reciever.bakeCheckenWing(count)
    }
    
}
