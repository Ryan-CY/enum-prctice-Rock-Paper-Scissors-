//
//  Sign.swift
//  enum prctice(Rock, Paper, Scissors)
//
//  Created by Ryan Lin on 2022/11/14.
//

import Foundation
/*
//用enum創造一個叫Sign的型別，底下包含下列三個指定的資料
enum Sign {
    case scissors
    case rock
    case paper

    //創造一個型別為字串的變數，搭配switch使用，因應三種不同資料的變化回傳不同的emoji
    var emoji: String {
        //判斷enum自己型別裡的資料要加上self
        switch self {
        case .scissors:
            return "✌️"
        case .rock:
            return "👊"
        case .paper:
            return "🖐️"
        }
    }
    
    //在enum型別底下創造一個判斷勝負的func，搭配if跟switch使用，回傳型別是GameState
    func result(npcSign: Sign) -> GameState {
        if self == npcSign {
            return .tie
        }
        
        switch self {
        case .scissors:
            if npcSign == .paper {
                return .win
            }
        case .rock:
            if npcSign == .scissors {
                return .win
            }
        case .paper:
            if npcSign == .rock {
                return .win
            }
        }
        //上述條件以外的回傳，會呼叫GameState型別底下的lose
        return .lose
    }
}
*/

//可以用原始值(rawValue)的寫法，會比上面寫法精簡
enum Sign:String {
    case scissors = "✌️"
    case rock = "👊"
    case paper = "🖐️"
    
    func result(npcSign: Sign) -> GameState {
        if self == npcSign {
            return .tie
        }
        switch self {
        case .scissors:
            if npcSign == .paper {
                return .win
            }
        case .rock:
            if npcSign == .scissors {
                return .win
            }
        case .paper:
            if npcSign == .rock {
                return .win
            }
        }
        return .lose
    }
}
//創造一個func讓剪刀石頭布隨機出，讓npc使用
func randomSign() -> Sign {
    let sign = Int.random(in: 0...2)
    switch sign {
    case 0:
        return .scissors
    case 1:
        return .rock
    default:
        return .paper
    }
}
