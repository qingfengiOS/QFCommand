//
//  ViewController.swift
//  QFCommand
//
//  Created by 情风 on 2019/1/15.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        commandPratten()
        
        /**
         命令模式：将一个请求封装为一个对象，从而使你可用不同的请求对客户进行参数化；对排队或记录请求日志，以及支持可撤销的操作。
         
         命令模式把请求一个操作的对象与知道怎么执行一个操作的对象分割开。
         */
        
        /**
         命令模式的优点：
         1、比较容易地设计一个命令队列（waiter的commandList数组）
         2、在需要的情况下，可以很容易地将命令记录日志（在Waiter的setOrder记录）
         3、允许接收方命令的一方决定是否否决该命令（Cooker类可以通知Waiter无货源）
         4、可以对请求进行撤销、修改和重做（可以修改命令的数量）
         5、由于新加的具体命令类不影响其他类，因此增加新的具体命令类很容易
         */
        
    }
    
    func commandPratten() {
        
        let cooker: Cooker = Cooker()//厨师
        let waiter: Waiter = Waiter()//服务生
        
        // 初始化命令
        let backMuttoncommand1 = BakeMuttonCommand(reciever: cooker, count: 10)
        let backMuttoncommand2 = BakeMuttonCommand(reciever: cooker, count: 8)
        let backCheckenWing = BakeCheckenWinngCommand(reciever: cooker, count: 5)
        
        //初始化后，可调用此方法修改数量（10个太多吃不下，重新设置数量）
        //backMuttoncommand1.setCommandCount(count: 4)
        
        // 设置命令
        waiter.setOrder(command: backMuttoncommand1)
        waiter.setOrder(command: backMuttoncommand2)
        waiter.setOrder(command: backCheckenWing)
        
        // 通知命令接受者执行命令
        waiter.notify()
    }

}

