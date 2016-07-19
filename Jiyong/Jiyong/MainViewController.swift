//
//  MainViewController.swift
//  Jiyong
//
//  Created by lexue on 16/7/19.
//  Copyright © 2016年 Simon. All rights reserved.
//

import UIKit
import SnapKit


class MainViewController: UIViewController {
    
     var didSetupConstraints = false
    
    let topView : UIView = {
        let view = UIView()
        view.backgroundColor = .greenColor()
        
        let scanBtu = UIButton()
        view.addSubview(scanBtu)
        scanBtu.setTitle("扫码", forState: .Normal)
        scanBtu.snp_makeConstraints(closure: { (make) in
            make.left.equalTo(view).offset(100) ;
            make.centerY.equalTo(view)
        })
        
        let walletBtu = UIButton()
        view.addSubview(walletBtu)
        walletBtu.setTitle("钱包", forState: .Normal)
        walletBtu.snp_makeConstraints(closure: { (make) in
            make.right.equalTo(view).offset(-100) ;
            make.centerY.equalTo(view)
        })
        
        return view
    }()
    
    let midView: UIView = {
        let view = UIView()
        view.backgroundColor = .blueColor()
        
        return view
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(topView)
        self.view.addSubview(midView)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func updateViewConstraints() {
        
        if (!didSetupConstraints) {
            
            topView.snp_makeConstraints { make in
                make.top.equalTo(snp_topLayoutGuideBottom)
                make.left.equalTo(view).offset(0)
                make.right.equalTo(view).offset(0)
                make.size.equalTo(CGSizeMake(100, 200))
            }
            
            midView.snp_makeConstraints(closure: { (make) in
                make.top.equalTo(topView.snp_bottom).offset(30)
                make.left.equalTo(view).offset(0)
                make.right.equalTo(view).offset(0)
                make.size.equalTo(CGSizeMake(100, 200))
            })
            
            didSetupConstraints = true
        }
        
        super.updateViewConstraints()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
