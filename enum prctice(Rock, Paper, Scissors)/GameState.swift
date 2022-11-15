//
//  GameState.swift
//  enum prctice(Rock, Paper, Scissors)
//
//  Created by Ryan Lin on 2022/11/14.
//

import Foundation
/*
//用enum創造一個叫GameState的型別，底下包含下列四個指定的資料
enum GameState {
    case start
    case win
    case tie
    case lose
    //創造一個型別為字串的變數，搭配switch使用，切換四種不同資料時的字串變化
    var state: String {
        //判斷enum自己型別裡的資料要加上self
        switch self {
        case .start:
            return "Rock, Paper, Scissors?"
        case .win:
            return "You Won!"
        case .tie:
            return "Tie!"
        case .lose:
            return "🎃 Won!"
        }
    }
} */

//可以用原始值(rawValue)的寫法，會比上面寫法精簡
enum GameState:String {
    case start = "Rock, Paper, Scissors?"
    case win = "You Won!"
    case tie = "Tie!"
    case lose = "🎃 Won!"
}
