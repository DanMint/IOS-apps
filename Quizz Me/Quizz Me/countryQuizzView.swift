//
//  ViewController.swift
//  Quizz Me
//
//  Created by Daniel mints on 8/18/21.
//

import UIKit

class countryQuizzView: UIViewController {
    
    
    @IBOutlet weak var questionDisplay: UILabel!
    
    
    @IBOutlet weak var dispCountryA: UILabel!
    
    
    @IBOutlet weak var dispCountryTwo: UILabel!
    
    
    @IBOutlet weak var dispCountryThree: UILabel!
    
    
    
    @IBOutlet weak var points: UILabel!
    
    
    
    /// here we will create a 2D. Place 0 will be the description, 1st place will be the correct answer and 2nd + 3rd + 4th will be the possible solutions
    
    var countries : [[String]] = [["countries"],["What countries trees produces the most oxygen", "Russia", "Germany", "Israel", "Russia"], ["Country witht the highest population" , "China", "Jamika", "China", "India"],[ "The only jewish country", "Israel" ,"Israel", "Brazil", "Japan"], ["What country has the highest life expectancy", "Japan", "Austria", "Japan", "China"], ["What country has the longest street", "Canada", "Canada", "USA", "England"], ["What country cosumes the most chocalet", "Switzerland", "Japan", "Belgium", "Switzerland"], ["What country is the largest exporter of rice", "Thailand", "China", "Thailand", "Tiwan"], ["What country has Dracula's castle", "Romaina", "Romaina", "Serbia", "USA"], ["What country the the tallest water fall", "Venezuela", "Canada", "Venezuela","Switzerland"], ["What country has the largest stadium", "North Korea", "USA", "Russia", "North Korea"],["Who invented the steam engine", "Britain", "USA", "Britain", "Ireland"], ["What country introduced coffee to europe", "Turkey", "Turkey", "Britain", "Liberia"], ["What country invented the metric system", "France", "China", "Britain", "France"], ["What country invented the ruler", "India", "Austria", "Italy", "India"], ["What country invented the helicopter", "Hungary", "Hungary", "USA", "Germany"]]
    
    var capitals : [[String]] = [["capitals"], ["Whats the capital city of the USA", "Washington DC", "Washington DC", "Boston", "New York"], ["Whats the capital city of Israel", "Jarusalem", "Tel aviv", "Jarusalem", "Ashkelon"], ["Whats the capital of Russia", "Moscow", "Petersburg", "Rastov", "Moscow"], ["Whats the capital of North Korea", "Pyongyang", "Pyongyang", "Seoul", "Nampo"], ["Whats the capital of Brazil", "Brasília", "Salvador", "Brasília", "Sao paulo"], ["Whats the capital of Nigeria", "Abuja", "Lagos", "Kano", "Abuja"], ["Whats the capital of green land", "Nuuk", "Nuuk", "Sisimiut", "Maniitsoq"], ["Whats the capital of Georgia (country)", "Tbilisi", "Gori", "Tbilisi", "Poti"], ["Whats the capital of China", "Beijing", "Shanghai", "Hong Kong", "Beijing"], ["Capital city of Ukraine" ,"Kiev", "Odessa", "Kiev", "Chernobel"], ["Whats the capital city of Ireland", "Dublin", "Galway", "Cork", "Dublin"]]
    
    var history : [[String]] = [["history"], ["When did WW2 start", "1939", "1939", "1938", "1940"], ["When did WW1 start", "1914", "1913", "1914", "1918"], ["when did the US gain its independence", "1776", "1676", "1775", "1776"], ["When was Israel created", "1948", "1948", "1950", "1946"], ["when was the wall street crash", "1929", "1930", "1929", "1940"], ["When was the EU created", "1993", "1990", "1995", "1993"], ["When did the french revolution start", "1789", "1789", "1801", "1785"], ["When did the medical revolutoin start", "1796", "1801", "1796", "1910"], ["When did the Russian revoulution start", "1917", "1916", "1920", "1917"], ["When did India gain Independence", "1947", "1950", "1947", "1955"], ["When was the internet created", "1965", "1970", "1966", "1965"], ["When did the cold was end", "1991", "1991", "1990", "1998"]]
    
    var totalPossibilities = [Int]()
    var whereWeAt = 0
    var pointTracker : Int = 0
    var pointsForScore : String = ""
    var totalPoints : String = "10"
    var arrayToUse : String = ""
    var arrayUsed = [[String]]()
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "scoreSheet" {
            let vc = segue.destination as! countryQuizzOutcome
            vc.pointo = pointsForScore
            vc.total = totalPoints
        }
        
        if segue.identifier == "backFCountryToMenue" {
            _ = segue.destination as! categoryView
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        if arrayToUse == countries[0][0] {
            arrayUsed = countries
        }
        else if arrayToUse == capitals[0][0] {
            arrayUsed = capitals
        }
        else if arrayToUse == history[0][0] {
            arrayUsed = history
        }
        
        print(arrayUsed.count)
        
        totalPossibilities = Array(1...arrayUsed.count - 1)
        totalPossibilities.shuffle()
        questionDisplay.text = arrayUsed[totalPossibilities[whereWeAt]][0]
        dispCountryA.text = arrayUsed[totalPossibilities[whereWeAt]][2]
        dispCountryTwo.text = arrayUsed[totalPossibilities[whereWeAt]][3]
        dispCountryThree.text = arrayUsed[totalPossibilities[whereWeAt]][4]

    }

   

    @IBAction func back(_ sender: Any) {
        performSegue(withIdentifier: "backFCountryToMenue", sender: self)
    }
    
    
    
    @IBAction func firstOption(_ sender: Any) {
        
        if arrayUsed[totalPossibilities[whereWeAt]][2] == arrayUsed[totalPossibilities[whereWeAt]][1] {
            pointTracker += 1
            points.text = "\(pointTracker)"
        }
        
        if whereWeAt != 10 {
            whereWeAt += 1
            questionDisplay.text = arrayUsed[totalPossibilities[whereWeAt]][0]
            dispCountryA.text = arrayUsed[totalPossibilities[whereWeAt]][2]
            dispCountryTwo.text = arrayUsed [totalPossibilities[whereWeAt]][3]
            dispCountryThree.text = arrayUsed[totalPossibilities[whereWeAt]][4]
        }
        
        if whereWeAt == 10 {
            self.pointsForScore = "\(pointTracker)"
            performSegue(withIdentifier: "scoreSheet", sender: self)
        }
       
    }
    
    
    @IBAction func secondOption(_ sender: Any) {

        if arrayUsed[totalPossibilities[whereWeAt]][3] == arrayUsed[totalPossibilities[whereWeAt]][1] {
            pointTracker += 1
            points.text = "\(pointTracker)"

        }
        
        if whereWeAt != arrayUsed.count - 1 {
            whereWeAt += 1
            questionDisplay.text = arrayUsed[totalPossibilities[whereWeAt]][0]
            dispCountryA.text = arrayUsed[totalPossibilities[whereWeAt]][2]
            dispCountryTwo.text = arrayUsed[totalPossibilities[whereWeAt]][3]
            dispCountryThree.text = arrayUsed[totalPossibilities[whereWeAt]][4]
        }
        
        if whereWeAt == 10 {
            self.pointsForScore = "\(pointTracker)"
            performSegue(withIdentifier: "scoreSheet", sender: self)
        }
    }
    
     
    @IBAction func thirdOption(_ sender: Any) {
        if arrayUsed[totalPossibilities[whereWeAt]][4] == arrayUsed[totalPossibilities[whereWeAt]][1] {
            pointTracker += 1
            points.text = "\(pointTracker)"

        }
        
        if whereWeAt != arrayUsed.count - 1 {
            whereWeAt += 1
            questionDisplay.text = arrayUsed[totalPossibilities[whereWeAt]][0]
            dispCountryA.text = arrayUsed[totalPossibilities[whereWeAt]][2]
            dispCountryTwo.text = arrayUsed[totalPossibilities[whereWeAt]][3]
            dispCountryThree.text = arrayUsed[totalPossibilities[whereWeAt]][4]
        }
        
        if whereWeAt == 10 {
            self.pointsForScore = "\(pointTracker)"
            performSegue(withIdentifier: "scoreSheet", sender: self)
        }
    }
    
    
}

