//
//  LoginViewController.swift
//  Lab_login
//
//  Created by 曹家瑋 on 2023/9/27.
//

import UIKit

class LoginViewController: UIViewController {

    // 使用者名稱
    @IBOutlet weak var userNameTextField: UITextField!
    // 忘記使用者名稱
    @IBOutlet weak var forgotUsernameButton: UIButton!
    // 忘記密碼
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    // 為了設定轉場的目的地視圖控制器的標題
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // 轉型：確保 sender 是一個 UIButton
        guard let senderButton = sender as? UIButton else { return }
        
        // 根據按鈕設定轉場的目的地視圖控制器的標題
        if senderButton == forgotUsernameButton {
            segue.destination.navigationItem.title = "忘記使用者名稱"
        } else if senderButton == forgotPasswordButton {
            segue.destination.navigationItem.title = "忘記密碼"
        } else {
            // 如果不是以上兩個按鈕，則設定標題為使用者名稱
            segue.destination.navigationItem.title = userNameTextField.text
        }
        
    }
    
    // 當 "忘記使用者名稱" 按鈕被點擊時觸發的方法
    @IBAction func forgotUsernameButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    
    // 當 "忘記密碼" 按鈕被點擊時觸發的方法
    @IBAction func forgotPasswordButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    

}
