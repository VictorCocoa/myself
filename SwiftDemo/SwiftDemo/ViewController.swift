//
//  ViewController.swift
//  SwiftDemo
//
//  Created by wangyunze on 2017/2/28.
//  Copyright © 2017年 wangyunze. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIAlertViewDelegate,UIActionSheetDelegate ,UITableViewDelegate,UITableViewDataSource{

    
    lazy var data:[Int] = {
    
        var nums = [Int]();
        
        for i in 0...50{
        
            nums.append(i);
        }
        
        return nums;
    }();
    
    override func viewDidLoad() {
        super.viewDidLoad()
    /*
         self.createLabel();
         self.creatButton();
         self.creatAlertView();
         self.creatActionSheet();
    */
        self.creatTableView();
        
        
    }
    
    func creatTableView() {
        let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height), style: UITableViewStyle.plain);
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "idCell");
        tableView.dataSource = self;
        tableView.delegate = self;
        self.view.addSubview(tableView);
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let tableCell = tableView.dequeueReusableCell(withIdentifier: "idCell", for: indexPath);
        tableCell.textLabel?.text = "假数据 - \(data[indexPath.row])";
        return tableCell;
        
    }
/*
    func creatActionSheet() {
        let actionSheet = UIActionSheet.init(title: "iiii", delegate: self, cancelButtonTitle: "self", destructiveButtonTitle: "nihao");
        
        actionSheet.title = "How are you";
        actionSheet.addButtonWithTitle("one")
        actionSheet.addButtonWithTitle("eee")
        actionSheet.destructiveButtonIndex = 2
        actionSheet.cancelButtonIndex = 3

        actionSheet.actionSheetStyle = UIActionSheetStyle.Default;
        actionSheet.showInView(self.view);
    }
    
 
    func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
        print("\(buttonIndex)被点击了")
    }
    

    func creatAlertView() {
        let alertView = UIAlertView();
        alertView.frame = CGRectMake(100, 100, 100, 100);
        alertView.title = "请看提示";
        alertView.alertViewStyle = UIAlertViewStyle.LoginAndPasswordInput;
        alertView.addButtonWithTitle("取消");
        alertView.addButtonWithTitle("确定");
//        alertView.addButtonWithTitle("取消");
        alertView.delegate = self;
        print(alertView.cancelButtonIndex);
        print(alertView.firstOtherButtonIndex);
        alertView.show();
    }      
    
    
    func alertViewCancel(alertView: UIAlertView) {
        print("KKK");
    }
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        print(buttonIndex);
    }

    func creatButton() {
        let button :UIButton = UIButton.init(type: UIButtonType.Custom);
        button.backgroundColor = UIColor.blueColor();
        button.frame = CGRectMake(100, 100, 100, 100);
        button.setTitle("d点我", forState: UIControlState.Normal);
        button.addTarget(self, action:#selector(btnClick(_:)), forControlEvents: UIControlEvents.TouchUpInside);
        self.view.addSubview(button);
    }
    
    
    func btnClick(button:UIButton)  {
        NSLog((button.titleLabel?.text)!);
    }
    

     func createLabel(){
     let label :UILabel = UILabel();
     //设置尺寸
     label.frame = CGRect(x: 10, y: 10, width: 100, height: 100);
     label.backgroundColor = UIColor.red;
     label.text = "我是一个好人";
     label.font = UIFont.systemFont(ofSize: 15);
     label.textColor = UIColor.blue;
     label.shadowColor = UIColor.white;
     
     label.shadowOffset = CGSize.init(width: 20, height: 20);
     label.textAlignment = NSTextAlignment.center;
     self.view.addSubview(label);
     
     }

*/
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

