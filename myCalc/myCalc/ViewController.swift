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
	
	
	
	//起動時に行うメソッド
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		// ボタンの枠を丸くする.
		lbResult.layer.masksToBounds = true
		
		// コーナーの半径を設定する.
		lbResult.layer.cornerRadius = 20.0
	}
	
	//メモリエラー時に行うメソッド
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	//キーボードの確定ボタンを押した時に行うメソッド
	@IBAction func pushRetrun(_ sender: Any) {
		
	}

	//四則演算キーを押した時のメソッド
	@IBAction func doCalc(_ sender: UIButton) {
		
		//テキストフィールドの値を定数を宣言(String型）
		let str01 = tfValue01.text!
		let str02 = tfValue02.text!

		
		//String型から整数型に変換
		let num01 = Int(str01)!
		let num02 = Int(str02)!
		
		//resの値を初期化
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
		
		//整数型から文字列型に変換
		let res2 = String(res)
		lbResult.text = res2
		
		//キーボードが動作しないようにする
		tfValue01.resignFirstResponder()
		tfValue02.resignFirstResponder()
		
	}

	@IBAction func textClear(_ sender: Any) {

		//値を空で返す
		tfValue01.text = nil
		tfValue02.text = nil
		lbResult.text = nil
		
		
		//キーボードが動作しないようにする
		tfValue01.resignFirstResponder()
		tfValue02.resignFirstResponder()
		
	}
	
}

