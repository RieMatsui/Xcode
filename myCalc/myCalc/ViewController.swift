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
	
	
    //それぞれのボタンにアウトレット設定をする
	@IBOutlet weak var btTasu: UIButton!
	@IBOutlet weak var btHiku: UIButton!
	@IBOutlet weak var btWaru: UIButton!
	@IBOutlet weak var btKakeru: UIButton!
	@IBOutlet weak var btAmari: UIButton!
	

	
	//クリアボタンのアウトレット設定
	@IBOutlet weak var btClear: UIButton!
	
	//MARK: - プロパティ（フィールド） メソッド
	//起動時に行うメソッド
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		//クリアボタンを丸くしコーナーの半径を設定する.
		btClear.layer.masksToBounds = true
		btClear.layer.cornerRadius = 20.0
		
		// 四則演算ボタンの枠を丸くする.
		btTasu.layer.masksToBounds = true
		btHiku.layer.masksToBounds = true
		btKakeru.layer.masksToBounds = true
		btWaru.layer.masksToBounds = true
		btAmari.layer.masksToBounds = true
		
		// 四則演算ボタンのコーナーの半径を設定する.
		btTasu.layer.cornerRadius = 25.0
		btHiku.layer.cornerRadius = 25.0
		btKakeru.layer.cornerRadius = 25.0
		btWaru.layer.cornerRadius = 25.0
		btAmari.layer.cornerRadius = 25.0
		
		// 結果ボタンの枠を丸くしコーナーの半径を設定する.
	    lbResult.layer.masksToBounds = true
		lbResult.layer.cornerRadius = 20.0
		
		
	}
	
	//メモリエラー時に行うメソッド
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	        //MARK: - アクション メソッド
	
	
	//キーボードの確定ボタンを押した時に行うメソッド
	@IBAction func pushRetrun(_ sender: Any) {
	}

	//数字ボタンを押した時のメソッド
	@IBAction func doCalc(_ sender: UIButton) {
		
		lbResult.text = ""
		switch sender.tag {
		case 1:
		    tfValue01.text = tfValue01.text! + "1"
		case 2:
			tfValue01.text = tfValue01.text! + "2"
		case 3:
			tfValue01.text = tfValue01.text! + "3"
		case 4:
			tfValue01.text = tfValue01.text! + "4"
		case 5:
			tfValue01.text = tfValue01.text! + "5"
		case 6:
			tfValue01.text = tfValue01.text! + "6"
		case 7:
			tfValue01.text = tfValue01.text! + "7"
		case 8:
			tfValue01.text = tfValue01.text! + "8"
		case 9:
			tfValue01.text = tfValue01.text! + "9"
		case 10:
			tfValue01.text = tfValue01.text! + "0"
		
		case 11:
			 tfValue01.text = nil
		default:tfValue01.text = ""
			
		}
		
	}
	
	@IBAction func pushTasu(_ sender: UIButton) {
		
		// +キーを押したとき
		if sender.tag == 1 {
		
		if lbResult.text != "" {
			
			let sum01 = Int(lbResult.text!)!
			let userDefaults = UserDefaults.standard
			userDefaults.register(defaults: [ "Tasu" : "default" ])
			userDefaults.set(sum01,forKey: "Tasu")
			tfValue01.text = ""
		}
		else{
			
			let str01 = tfValue01.text!
			let userDefaults = UserDefaults.standard
			userDefaults.register(defaults: [ "Tasu" : "default" ])
			userDefaults.set(str01,forKey: "Tasu")
			tfValue01.text = ""
		   }
			
		}
		
		// -キーボードを押した時
		
		if sender.tag == 2 {
			
		   let userDefaults02 = UserDefaults.standard
		   let loadHiku = userDefaults02.integer(forKey: "Hiku")
		   let b = loadHiku - Int(tfValue01.text!)!
			
		   lbResult.text = String(b)
		   userDefaults02.removeObject(forKey: "Hiku")
			
		}
		
			//イコールを押した時
			NSLog("\(sender.tag)")
			
		if sender.tag == 6{
			
		    let userDefaults = UserDefaults.standard
			let loadtasu = userDefaults.integer(forKey: "Tasu")
			let a = loadtasu + Int(tfValue01.text!)!
			
			lbResult.text = String(a)
			userDefaults.removeObject(forKey: "Tasu")

			
			}
		
		
		
		
		

		
	}
	
	@IBAction func pushHiku(_ sender: Any) {
		
		if lbResult.text != "" {
			
			let sum01 = Int(lbResult.text!)!
			let userDefaults02 = UserDefaults.standard
			userDefaults02.register(defaults: [ "Hiku" : "default" ])
			userDefaults02.set(sum01,forKey: "Hiku")
			tfValue01.text = ""
		}
		else{
			
			let str01 = tfValue01.text!
			let userDefaults02 = UserDefaults.standard
			userDefaults02.register(defaults: [ "Hiku" : "default" ])
			userDefaults02.set(str01,forKey: "Hiku")
			tfValue01.text = ""
		}
	}
	
	@IBAction func pushKakeru(_ sender: Any) {
		if lbResult.text != "" {
			
			let sum01 = Int(lbResult.text!)!
			let userDefaults03 = UserDefaults.standard
			userDefaults03.register(defaults: [ "Kakeru" : "default" ])
			userDefaults03.set(sum01,forKey: "Kakeru")
			tfValue01.text = ""
		}
		else{
			
			let str01 = tfValue01.text!
			let userDefaults03 = UserDefaults.standard
			userDefaults03.register(defaults: [ "Kakeru" : "default" ])
			userDefaults03.set(str01,forKey: "Kakeru")
			tfValue01.text = ""
		}
	}
	
//	@IBAction func pushEqual(_ sender: Any) {
//		
//		
//		let userDefaults = UserDefaults.standard
//		let loadtasu = userDefaults.integer(forKey: "Tasu")
//		let a = loadtasu + Int(tfValue01.text!)!
//			
//		lbResult.text = String(a)
//		userDefaults.removeObject(forKey: "Tasu")


//		let userDefaults02 = UserDefaults.standard
//		let loadHiku = userDefaults02.integer(forKey: "Hiku")
//		let b = loadHiku - Int(tfValue01.text!)!
//		
//		lbResult.text = String(b)
//		userDefaults02.removeObject(forKey: "Hiku")
//		
//		let userDefaults03 = UserDefaults.standard
//		let loadKakeru = userDefaults03.integer(forKey: "Kakeru")
//		let c = loadKakeru * Int(tfValue01.text!)!
//		
//		lbResult.text = String(c)
//		userDefaults03.removeObject(forKey: "Kakeru")
//		
//		
//		
//	}
	
//		//テキストフィールドの値を定数を宣言(String型）
//		let str01 = tfValue01.text!
//		let str02 = tfValue02.text!
//
//		
//		//String型から整数型に変換
//		let num01 = Int(str01)!
//		let num02 = Int(str02)!
//		
//		//resの値を初期化
//		var res = ""
//		
//		//+ボタンを押した時
//		if sender.tag == 10{
//			
//		  res = String(num01 + num02)
//			
//	   }
//		//-ボタンを押した時
//		else if sender.tag == 11{
//			
//			res = String(num01 - num02)
//			
//		}
//		//×ボタンを押した時
//		else if sender.tag == 12{
//			
//			res = String(num01 * num02)
//			
//		}
//		//÷ボタンを押した時
//		else if sender.tag == 13{
//
//			if num02 != 0 {
//			
//		//num02が0ではない時は計算します
//
//			res = String(Float(num01) / Float(num02))
//				
//		}
//
//			else{
//		//num02が0の時は入力できないと表示
//			  lbResult.text = "0は入力できません"
//				return
//			}
//			
//			
//		}
//		
//		else if sender.tag == 14 {
//			res = String(num01 % num02)
//		}
//		
//		
//		lbResult.text = res
//		
//		//キーボードが動作しないようにする
//		tfValue01.resignFirstResponder()
//		tfValue02.resignFirstResponder()
//			
//		
//	}
//
//	@IBAction func textClear(_ sender: Any) {
//
//		//値を空で返す
//		tfValue01.text = nil
//		tfValue02.text = nil
//		lbResult.text = nil
//		
//		
//		//キーボードが動作しないようにする
//		tfValue01.resignFirstResponder()
//		tfValue02.resignFirstResponder()
//		
//		
//		
//	}
	
}

