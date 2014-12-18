//
//  main.swift
//  DailyProgrammer2-Checkpoint
//
//  Created by Preston Smith on 12/18/14.
//  Copyright (c) 2014 Preston Smith. All rights reserved.
//

import Foundation
//Fuckton of Arrays
var firstName : [String] = ["Preston", "Wally", "dx", "Hamcha", "Dman", "ESWAT", "Aliceffekt", "Xaxi", "Theneko_^^"] //First names Array
var lastName : [String] = ["Esper", "Maxdeviant", "Amatecha", "Tumult", "Pak", "Retrovertigo", "Somnius"] // Last names Array
var issueMonth : [String] = ["Monuary", "Dotuary", "Trisuary", "Tetruary", "Pentuary", "Hexuary", "Septamber", "Octamber", "Enneamber", "Desamber", "Undesamber", "Dodesamber"]
var issueYear : [Int] = [19101,19102,19103,19104,19105,19106,19107] //Year ID was issued.
var reqDocuments : [String] = ["Standard Identification", "Valid Passport"]
var commands : [String] = ["accept", "reject" ]


//Other
var currentYear = 19107 // The year
var region = "Netica"
var country = "Esper"
var city = "Merveilles"
var issueLocation = ["Merveilles","Kerbal","MineCity","XXIIVV", "Lautical", "Fanitava", "Indict"]
func introduction(){
    println("Welcome to Merveilles Checkpoint, please provide proper immagration documentation to the correct official")
    println("The following documents are requested: \(reqDocuments)\n")
    println("Please ensure they are from \(city), otherwise reject them. \n")
    println("Commands: accept, reject")

}
introduction()

func envSet(){
    println("Year: \(currentYear)\nRegion: \(region)\nCountry: \(country)\nCity: \(city)\n")
}
envSet()

func profileSet(){
    let firstRandom = Int(arc4random() % 10)
    let secondRandom = Int(arc4random() % 7)
    let locationRand = Int(arc4random() % 7)
    let monthRand = Int(arc4random() % 11)
    let yearRand = Int(arc4random() % 6)
    var standardIdent = "First Name: \(firstName[firstRandom]) | Last Name: \(lastName[secondRandom])\n"
    var passportIdent = "Issue Location: \(issueLocation[locationRand]),\nIssue Date: \(issueMonth[monthRand]), \(issueYear[yearRand])"
    var randCity = issueLocation[locationRand]
    println(standardIdent)
    println(passportIdent)
    //allow player to accept/reject immagration
    

   /* if (randCity == city){
        println("Correct")
    }
        else if (randCity != city){ 941-544-6869
            println("False")
        }
*/
    
    }

profileSet()

func input() -> String{
//restarts game
   var fileHandle = NSFileHandle.fileHandleWithStandardInput()
    println("Accept or Reject")
    if var userData = fileHandle.availableData{
        var userString = NSString(data: userData, encoding: NSUTF8StringEncoding)
        println("You have been \(userString)")
    }
}
input()