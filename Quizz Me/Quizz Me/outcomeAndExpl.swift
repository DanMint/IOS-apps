//
//  outcomeAndExpl.swift
//  Quizz Me
//
//  Created by Daniel mints on 8/24/21.
//

import UIKit

class outcomeAndExpl: UIViewController {

    @IBOutlet weak var outcome: UILabel!
    
    @IBOutlet weak var explination: UILabel!
    
    @IBOutlet weak var continueMod: UIButton!
    
    var explinationsCountries : [[String]] = [["countries"],["What countries trees produces the most oxygen","The largest country in the world is Russia and due to that fact Russia is the country that produces the most oxygen due to its trees"],["Country with the highest population","China is the highest populoated country with 1,397,897,720 closely followed by India with 1,339,330,514"],["The only jewish country","Israel is the only jewish country which was established on the 14th of May 1948 by David Ben-Gurion"], ["What country has the highest life expectancy", "Japan has the highest life expectancy due to fewer deaths from heart diseases and cancers"],["What country has the longest street", "Canada has the longest street in the world called Yonge Street which stretches over 1896 km"],["What country cosumes the most chocalet", "Every year, the average Swiss person eats just under 9,1 kg of chocolate"],["What country is the largest exporter of rice", "Thailand exports 8.9 million tons of rice a year"],["What country has Dracula's castle","Romania has the Draculas castle located in central Romania"], ["What country the the tallest water fall","Venezuela has the tallest water fall, its called angel fall, its 807 meters tall"],["What country has the largest stadium", "The lasrgest stadium is in, Pyongyang, North Korea's Rungrado 1st of May Stadium. It can hold 150,000 people"],["Who invented the steam engine","A British engineer called Thomas Savery invented the steam engine in 1698"], ["What country introduced coffee to europe","Coffee was introduced to europe in the 17th century by Turkey"],["What country invented the metric system","The metric system was created by in France by Gabriel Mouton a a church vicar in Lyons in 1670"], ["What country invented the ruler","The first ruler was invented in 1500 BCE in India"], ["What country invented the helicopter","Asbóth Oszkár a Hungarian engineer is credit in creating the helicopter"]]
    
    var explinationsCapitals : [[String]] = [["capitals"], ["Whats the capital city of the USA", "The capital of the United States is Washington DC"], ["Whats the capital city of Israel", "Jarusalem is the capital city of Israel"], ["Whats the capital of Russia", "Moscow is the capital city of Russia"], ["Whats the capital of North Korea", "Pyongyang is the capital city of North Korea"], ["Whats the capital of Brazil", "Brasília is the capital city of Brazil"], ["Whats the capital of Nigeria", "Abuja is the capital if Nigeria"], ["Whats the capital of green land", "Nuuk is the capital city of green land"], ["Whats the capital of Georgia (country)", "Tbilisi is the capital city of Georgia"], ["Whats the capital of China", "Beijing is the capital city of China"], ["Capital city of Ukraine" ,"Kiev is the capital of Ukraine"], ["Whats the capital city of Ireland", "Dublin is the capital of Ireland"]]
    
    var explinationsHistory : [[String]] = [["history"], ["When did WW2 start", "World war 2 started in 1939"], ["When did WW1 start", "World War 1 started in 1914"], ["when did the US gain its independence", "The United States gained independence in 1776"], ["When was Israel created", "Israel was created in 1948"], ["when was the wall street crash", "The wall street crash happened in 1929"], ["When was the EU created", "The European Union was created in 1993"], ["When did the french revolution start", "The French revolution start in 1789"], ["When did the medical revolutoin start", "The medical revolution start in 1796"], ["When did the Russian revoulution start", "The Russian revolution started in 1917"], ["When did India gain Independence", "India gained independence in 1947"], ["When was the internet created", "The internet was created in 1965"], ["When did the cold was end", "The cold ended in 1991"]]
    
    var explinationShuffle : [[String]] = [["shuffle"],["When did WW2 start", "World war 2 started in 1939"], ["When did WW1 start", "World War 1 started in 1914"], ["when did the US gain its independence", "The United States gained independence in 1776"], ["When was Israel created", "Israel was created in 1948"], ["when was the wall street crash", "The wall street crash happened in 1929"], ["When was the EU created", "The European Union was created in 1993"], ["When did the french revolution start", "The French revolution start in 1789"], ["When did the medical revolutoin start", "The medical revolution start in 1796"], ["When did the Russian revoulution start", "The Russian revolution started in 1917"], ["When did India gain Independence", "India gained independence in 1947"], ["When was the internet created", "The internet was created in 1965"], ["When did the cold was end", "The cold ended in 1991"], ["Whats the capital city of the USA", "The capital of the United States is Washington DC"], ["Whats the capital city of Israel", "Jarusalem is the capital city of Israel"], ["Whats the capital of Russia", "Moscow is the capital city of Russia"], ["Whats the capital of North Korea", "Pyongyang is the capital city of North Korea"], ["Whats the capital of Brazil", "Brasília is the capital city of Brazil"], ["Whats the capital of Nigeria", "Abuja is the capital if Nigeria"], ["Whats the capital of green land", "Nuuk is the capital city of green land"], ["Whats the capital of Georgia (country)", "Tbilisi is the capital city of Georgia"], ["Whats the capital of China", "Beijing is the capital city of China"], ["Capital city of Ukraine" ,"Kiev is the capital of Ukraine"], ["Whats the capital city of Ireland", "Dublin is the capital of Ireland"] ,   ["What countries trees produces the most oxygen","The largest country in the world is Russia and due to that fact Russia is the country that produces the most oxygen due to its trees"],["Country with the highest population","China is the highest populoated country with 1,397,897,720 closely followed by India with 1,339,330,514"],["The only jewish country","Israel is the only jewish country which was established on the 14th of May 1948 by David Ben-Gurion"], ["What country has the highest life expectancy", "Japan has the highest life expectancy due to fewer deaths from heart diseases and cancers"],["What country has the longest street", "Canada has the longest street in the world called Yonge Street which stretches over 1896 km"],["What country cosumes the most chocalet", "Every year, the average Swiss person eats just under 9,1 kg of chocolate"],["What country is the largest exporter of rice", "Thailand exports 8.9 million tons of rice a year"],["What country has Dracula's castle","Romania has the Draculas castle located in central Romania"], ["What country the the tallest water fall","Venezuela has the tallest water fall, its called angel fall, its 807 meters tall"],["What country has the largest stadium", "The lasrgest stadium is in, Pyongyang, North Korea's Rungrado 1st of May Stadium. It can hold 150,000 people"],["Who invented the steam engine","A British engineer called Thomas Savery invented the steam engine in 1698"], ["What country introduced coffee to europe","Coffee was introduced to europe in the 17th century by Turkey"],["What country invented the metric system","The metric system was created by in France by Gabriel Mouton a a church vicar in Lyons in 1670"], ["What country invented the ruler","The first ruler was invented in 1500 BCE in India"], ["What country invented the helicopter","Asbóth Oszkár a Hungarian engineer is credit in creating the helicopter"]]

    
    var answer : String = ""
    var topicUSed : String = ""
    var pointo : Int?
    var counter : Int?
    var questionUsed2 : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        outcome.layer.cornerRadius = 40.0
        outcome.layer.borderWidth = 3
        outcome.clipsToBounds = true
        
        explination.layer.cornerRadius = 40.0
        explination.layer.borderWidth = 3
        explination.clipsToBounds = true
        
        continueMod.layer.cornerRadius = 30
        continueMod.layer.borderWidth = 3
        
        var currentTopic : [[String]]?
        
        if topicUSed == "countries" {
            currentTopic = explinationsCountries
        }
        if topicUSed == "capitals" {
            currentTopic = explinationsCapitals
        }
        if topicUSed == "history" {
            currentTopic = explinationsHistory
        }
        if topicUSed == "shuffle" {
            currentTopic = explinationShuffle
        }
        
        if answer == "correct" {
            outcome.text = answer
            outcome.textColor = UIColor.green
            outcome.layer.borderColor = UIColor.green.cgColor
        }
        else {
            outcome.text = answer
            outcome.textColor = UIColor.red
            outcome.layer.borderColor = UIColor.red.cgColor
            
        }
        
        for i in currentTopic! {
            if i[0] == questionUsed2 {
                explination.text = i[1]
                break
            }
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "scoreSheet" {
            let ve = segue.destination as! scoreView
            ve.totalPoints = String(pointo!)
        }
        else {
            let vc = segue.destination as! questionireView
            vc.toUse = topicUSed
            vc.points = pointo!
            vc.whereWeAt = counter!
        }
    }
    
    @IBAction func `continue`(_ sender: Any) {
        if counter == 10 {
            performSegue(withIdentifier: "scoreSheet", sender: self)
        }
        else {
            performSegue(withIdentifier: "backToQuestion", sender: self)
        }
    }
    
}
