//
//  BakeMuttonCommand.swift
//  QFCommand
//
//  Created by 情风 on 2019/1/15.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

import UIKit


/// 烤羊肉串命令
class BakeMuttonCommand: AbstractCommand {
    

    override func excuteCommand(count: Int) {
        reciever.bakeMutton(count)
    }
    
    
}
