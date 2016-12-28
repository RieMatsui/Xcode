//
//  ViewController.swift
//  SinpleCalc
//
//  Created by 松井 里衣 on 2016/12/27.
//  Copyright © 2016年 松井　里衣. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	//テキストフィールドの値を設定
	@IBOutlet weak var tfValue01: UITextField!
	@IBOutlet weak var tfValue02: UITextField!
	
	//ラベルの値を設定
	@IBOutlet weak var lbResult: UILabel!
	

	// 画面が起動後に実行されるメソッド
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	
	// メモリーエラーが発生した時に呼び出される
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	// キーボードの確定キーを押したときに実行されるメッソッド
	@IBAction func pushReturn(_ sender: Any) {
		//キーボードを隠すためであれば空でOK
	}
	
	// +ボタンを押した時
    @IBAction func doCalc(_ sender: UIButton) {

		//　リテラル値を表示
//		NSLog("doCalc")
//		// NSLog(#function) メソッドの名前を表示
//		NSLog("\(sender.titleLabel?.text)")
//		
//		//タグのログを表示
//		NSLog("\(sender.tag)")
		
		
		
		//入力値の取得(定数への代入処理）
		let str01 = tfValue01.text!
		let str02 = tfValue02.text!
		
		//データ型の変換（文字列型　-> 数値型）
		let num01 = Int(str01)!
		let	num02 = Int(str02)!
		
		//計算処理(分岐処理を行って記載）
		var res = 0
		
		//let res = num01 + num02のとき
		if sender.tag == 1 {
			
			//計算処理する
			res = num01 + num02
		}
			
		
		//let res = num01 - num02のとき
		else if sender.tag == 2 {
			res = num01 - num02

		}
		
		//let res = num01 * num02
		else if sender.tag == 3 {
			res = num01 * num02
			
		}
		
		//let res = num01 / num02
		else if sender.tag == 4 {
			
			if  num02 != 0{
				res = num01 / num02
			}
		
			else {
				lbResult.text = "0割はだめ"
				return
			}
		}
		
//		else if sender.tag == 4 && num01 == 0 || num02 ==0 {
//			
//			res = String("error")
//		}

		
		//データ型の変換（数値　-> 文字列型）
		let res2 = String(res)
		
	    //計算結果表示
		lbResult.text = res2
		
		//		else{
		//			res = 0
		//		}
		
	}
	
	@IBAction func textClear(_ sender: Any) {
		
		lbResult.text = nil
		tfValue01.text = nil
		tfValue02.text = nil
		
		
	}

	
}

