//
//  ViewController.swift
//  myCalc
//
//  Created by 松井 里衣 on 2016/12/28.
//  Copyright © 2016年 松井　里衣. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var tfValue01: UITextField!
	@IBOutlet weak var tfValue02: UITextField!
	@IBOutlet weak var lbResult: UILabel!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func pushRetrun(_ sender: Any) {
		
	}

	@IBAction func doCalc(_ sender: UIButton) {
		
		//テキストフィールドの値を定数を宣言(String型）
		let str01 = tfValue01.text!
		let str02 = tfValue02.text!
		
		//String型から整数型に変換
		let num01 = Int(str01)!
		let num02 = Int(str02)!
		
		var res = 0
		
		//+ボタンを押した時
		if sender.tag == 1{
			
		   res = num01 + num02
			
	   }
		//-ボタンを押した時
		else if sender.tag == 2{
			
			res = num01 - num02
			
		}
		//×ボタンを押した時
		else if sender.tag == 3{
			
			res = num01 * num02
			
		}
		//÷ボタンを押した時
		else if sender.tag == 4{

			if num02 != 0 {
			
		//num02が0ではない時は計算します
               res = num01 / num02
			}
			
			else{
		//num02が0の時は入力できないと表示
			  lbResult.text = "0は入力できません"
				return
			}
			
			
		}
		
		
		let res2 = String(res)
		lbResult.text = res2
	
		
		
	}

	@IBAction func btClear(_ sender: Any) {
		
		tfValue01.text = nil
		tfValue02.text = nil
		lbResult.text = nil
	}
	
}

