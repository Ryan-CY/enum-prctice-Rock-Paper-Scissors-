//
//  ViewController.swift
//  enum prctice(Rock, Paper, Scissors)
//
//  Created by Ryan Lin on 2022/11/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var npcSignLabel: UILabel!
    
    @IBOutlet weak var stateLabel: UILabel!
    
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    
    @IBOutlet weak var showReplayButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updatedUI(newState: .start)
    }
    
    @IBAction func replay(_ sender: Any) {
        updatedUI(newState: .start)
    }
    
    @IBAction func rockChosen(_ sender: Any) {
        play(playerSign: .rock)
    }
    
    @IBAction func scissorsChosen(_ sender: Any) {
        play(playerSign: .scissors)
    }
    
    @IBAction func paperChosen(_ sender: Any) {
        play(playerSign: .paper)
    }
    
    func updatedUI(newState:GameState) {
        //因為創造enum GameState時有設定原始值(rawValue)，所以用.rawValue呼叫
        stateLabel.text = newState.rawValue
        //參數newState的型別是GameState，可以呼叫GameState底下的四個資料
        switch newState {
        case .start:
            view.backgroundColor = .systemGray5
            
            showReplayButton.isHidden = true
            npcSignLabel.text = "🎃"
            
            rockButton.isHidden = false
            scissorsButton.isHidden = false
            paperButton.isHidden = false
            
            rockButton.isEnabled = true
            scissorsButton.isEnabled = true
            paperButton.isEnabled = true
            
        case .win:
            view.backgroundColor = .systemCyan
        case .tie:
            view.backgroundColor = .systemGray6
        case .lose:
            view.backgroundColor = .systemOrange
        }
    }

    func play(playerSign: Sign) {
        //統一random這一次
        let npcSign = randomSign()
        //呼叫Sign型別底下的result函數(隨機的npcSign)存入常數gameState
        let gameState = playerSign.result(npcSign: npcSign)
        //呼叫函式updatedUI判斷勝負狀態
        updatedUI(newState: gameState)
        //npcSignLabel跟著改變
        npcSignLabel.text = npcSign.rawValue
        
        rockButton.isHidden = true
        scissorsButton.isHidden = true
        paperButton.isHidden = true
        
        rockButton.isEnabled = false
        scissorsButton.isEnabled = false
        paperButton.isEnabled = false
        
        //顯示被選擇的按鈕
        switch playerSign {
        case .rock:
            rockButton.isHidden = false
        case .scissors:
            scissorsButton.isHidden = false
        case .paper:
            paperButton.isHidden = false
        }
        //顯示重玩按鈕
        showReplayButton.isHidden = false
    }
}
