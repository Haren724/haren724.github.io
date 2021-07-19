//
//  main.swift
//  Shell2048
//
//  Created by 陈驰坤 on 2021/7/4.
//

class Rectangle {
    var rect = Array(repeating: Array(repeating: 0, count: 4), count: 4)
    var isDead = false
    
    enum moveDirection {
        case up,
           down,
           left,
          right
    }
    
    init() {
        let rand1 = Int.random(in: 0..<16)
        var rand2 = Int.random(in: 0..<16)
        while rand1 == rand2 {
            rand2 = Int.random(in: 0..<16)
        }
        rect[rand1 / 4][rand1 % 4] = Int.random(in: 1...2) * 2
        rect[rand2 / 4][rand2 % 4] = Int.random(in: 1...2) * 2
    }
    
    func rectPrint() {
        for y in self.rect {
            for x in y {
                x == 0 ? print("", terminator: "\t") : print(x, terminator: "\t")
            }
            print("\n")
        }
    }
    
    private func moveRect(_ depth: Int, to: Int, from: Int) {
        self.rect[depth][to] = self.rect[depth][from]
        self.rect[depth][from] = 0
    }
    
    private func combRect(_ depth: Int, to: Int, from: Int) {
        self.rect[depth][to] *= 2
        self.rect[depth][from] = 0
    }
    
    func move(_ direction: moveDirection) {
        let rotation = ""
        var setOfData = ["from": Int(), "to": Int(), "by": Int(), ]
        
        switch direction {
        case .up:
            break
        case .down:
            break
        case .left:
            break
        case .right:
            setOfData["from"] = 0
            setOfData["through"] = 3
            setOfData["by"] = 1
        }
        if rotation == "left&right" {
            for (y, line) in zip(self.rect, stride(from: setOfData["from"]!, through: setOfData["through"]!, by: setOfData["by"]!)) {
                if y[3] == 0 {
                    if y[2] == 0 {
                        if y[1] == 0 {
                            if y[0] == 0 {
                                continue
                            } else {
                                moveRect(line, to: 3, from: 0)
                                continue
                            }
                        } else {
                            moveRect(line, to: 3, from: 1)
                            if y[0] == 0 {
                                continue
                            } else if y[0] == y[1] {
                                combRect(line, to: 3, from: 0)
                                continue
                            } else {
                                moveRect(line, to: 2, from: 0)
                                continue
                            }
                        }
                    } else {
                        moveRect(line, to: 3, from: 2)
                        if y[0] == 0 {
                            continue
                        } else if y[0] == y[2] {
                            combRect(line, to: 3, from: 0)
                            continue
                        } else {
                            moveRect(line, to: 2, from: 0)
                            continue
                        }
                    }
                } else {
                    if y[2] == 0 {
                        if y[1] == 0 {
                            if y[0] == 0 {
                                continue
                            } else if y[0] == y[3] {
                                combRect(line, to: 3, from: 0)
                                continue
                            } else {
                                moveRect(line, to: 2, from: 0)
                                continue
                            }
                        } else if y[1] == y[3] {
                            combRect(line, to: 3, from: 1)
                            if y[0] == 0 {
                                continue
                            } else if y[0] == 2 * y[3] {
                                combRect(line, to: 3, from: 0)
                                continue
                            } else {
                                moveRect(line, to: 2, from: 0)
                                continue
                            }
                        } else {
                            moveRect(line, to: 2, from: 1)
                            if y[0] == 0 {
                                continue
                            } else if y[0] == y[1] {
                                combRect(line, to: 2, from: 0)
                                continue
                            } else {
                                moveRect(line, to: 1, from: 0)
                                continue
                            }
                        }
                    } else if y[2] == y[3] {
                        combRect(line, to: 3, from: 2)
                        if y[1] == 0 {
                            if y[0] == 0 {
                                continue
                            }
                        } else if y[1] == y[3] {
                            combRect(line, to: 3, from: 1)
                            if y[0] == 0 {
                                continue
                            } else if y[0] == 2 * y[3] {
                                combRect(line, to: 3, from: 0)
                                continue
                            } else {
                                moveRect(line, to: 2, from: 0)
                                continue
                            }
                        } else {
                            moveRect(line, to: 2, from: 1)
                            if y[0] == 0 {
                                continue
                            } else if y[0] == y[1] {
                                combRect(line, to: 2, from: 0)
                                continue
                            } else {
                                moveRect(line, to: 1, from: 0)
                                continue
                            }
                        }
                    } else {
                        if y[1] == 0 {
                            if y[0] == 0 {
                                continue
                            } else if y[0] == y[2] {
                                combRect(line, to: 2, from: 0)
                                continue
                            } else {
                                moveRect(line, to: 1, from: 0)
                                continue
                            }
                        } else if y[1] == y[2] {
                            combRect(line, to: 2, from: 1)
                            if y[0] == 0 {
                                continue
                            } else if y[0] == 2 * y[2] {
                                combRect(line, to: 2, from: 0)
                                continue
                            } else {
                                moveRect(line, to: 1, from: 0)
                                continue
                            }
                        } else {
                            if y[0] == 0 {
                                continue
                            } else if y[0] == y[1] {
                                combRect(line, to: 1, from: 0)
                                continue
                            } else {
                                continue
                            }
                        }
                    }
                }
            }
        } else if rotation == "up&down" {
            
        } else {
            print("There must be something wrong!")
        }
        
    }
    
}

var player1 = Rectangle()
player1.rect = [[2,0,0,2],[2,0,2,0],[2,2,0,0],[4,0,0,2]]
var directionControl: String? = ""
repeat {
    player1.rectPrint()
    directionControl = readLine()
    switch directionControl {
    case "w":
        player1.move(.up)
    case "a":
        player1.move(.left)
    case "s":
        player1.move(.down)
    case "d":
        player1.move(.right)
    default:
        print("Invalid input, try again.")
    }
} while !player1.isDead
