//
//  questionireView.swift
//  Quizz Me
//
//  Created by Daniel mints on 8/23/21.
//

import UIKit

class questionireView: UIViewController {
    
    
    @IBOutlet weak var questionDisplay: UILabel!
    
    
    @IBOutlet weak var optionAText: UILabel!
    
    
    @IBOutlet weak var optionBText: UILabel!
    
    
    @IBOutlet weak var optionCText: UILabel!
    
    
 
    var toUse = ""
    
    var countryChoices : [String] = ["Afghanistan", "Albania", "Algeria", "Andorra", "Angola", "Brazil", "Brunei", "Bulgaria", "Burkina", "Burundi", "Cambodia", "Cameroon", "Canada", "Korea North", "Korea South", "Kosovo", "Kuwait", "Kyrgyzstan", "Laos", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg", "Macedonia", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Mauritania", "Mauritius", "Mexico", "Micronesia", "Moldova", "Monaco", "Mongolia", "Montenegro", "Morocco", "Mozambique", "Myanmar", "Namibia", "Nauru", "Nepal", "Turkey", "Turkmenistan", "Tuvalu", "Uganda", "Ukraine", "UAE", "England", "USA", "Uruguay", "Uzbekistan", "Vanuatu", "Vatican", "Venezuela", "Vietnam", "Yemen", "Zambia",  "Zimbabwe", "Israel","Russia", "China", "Japan",  "Switzerland", "Thailand", "Romania", "North Korea", "Britain", "France", "India", "Hungary"]
    
    var countries : [[String]] = [["countries"],["What countries trees produces the most oxygen", "Russia"], ["Country with the highest population" , "China"],[ "The only jewish country", "Israel"], ["What country has the highest life expectancy", "Japan"], ["What country has the longest street", "Canada"], ["What country cosumes the most chocalet", "Switzerland"], ["What country is the largest exporter of rice", "Thailand"], ["What country has Dracula's castle", "Romania"], ["What country the the tallest water fall", "Venezuela"], ["What country has the largest stadium", "North Korea"],["Who invented the steam engine", "Britain"], ["What country introduced coffee to europe", "Turkey"], ["What country invented the metric system", "France"], ["What country invented the ruler", "India"], ["What country invented the helicopter", "Hungary"]]
    
    var capitalChoices : [String] =  ["Kabul","Tirana","Algiers","Luanda","Yerevan","Canberra","Vienna","Baku","Nassau","Manama","Dhaka","Bridgetown","Minsk","Brussels","Belmopan","Copenhagen","Djibouti","Roseau","Quito","Cairo","Tallinn","Suva","Helsinki","Paris","Tbilisi","Berlin","Accra","Athens","Budapest","Reykjavik","New Delhi","Jakarta","Tehran","Baghdad","Dublin","Jerusalem","Rome","Kingston","Tokyo","Amman","Male","Bamako","Valletta","Majuro","Nouakchott","Port Louis","Chisinau","Monaco","Ulaanbaatar","Podgorica","Rabat","Maputo","Windhoek","Kathmandu","Amsterdam","Wellington","Abuja","Oslo","Muscat","Islamabad","Asuncion","Lima","Manila","Warsaw","Lisbon","Doha","Bucharest","Moscow","Taipei","Bangkok","Tunis","Ankara","Kampala","Kyiv","Abu Dhabi","London","Washington","Montevideo","Tashkent","Port-Vila","Vatican City","Caracas","Hanoi","Sanaa","Lusaka", "Jarusalem", "Pyongyang", "Brasília", "Nuuk", "Beijing", "Kiev"]
    
    var capitals : [[String]] = [["capitals"], ["Whats the capital city of the USA", "Washington"], ["Whats the capital city of Israel", "Jarusalem"], ["Whats the capital of Russia", "Moscow"], ["Whats the capital of North Korea", "Pyongyang"], ["Whats the capital of Brazil", "Brasília"], ["Whats the capital of Nigeria", "Abuja"], ["Whats the capital of green land", "Nuuk"], ["Whats the capital of Georgia (country)", "Tbilisi"], ["Whats the capital of China", "Beijing"], ["Capital city of Ukraine" ,"Kiev"], ["Whats the capital city of Ireland", "Dublin"]]

    var datesChoices : [String] = ["1900","1901","1902","1903","1904","1905","1906","1907","1908","1909","1910","1911","1912","1913","1914","1915","1916","1917","1918","1919","1920","1921","1922","1923","1924","1925","1926","1927","1928","1929","1930","1931","1932","1933","1934","1935","1936","1937","1938","1939","1940","1941","1942","1943","1944","1945","1946","1947","1948","1949","1950","1980","1981","1982","1983","1984","1985","1986","1987","1988","1989","1990","1991","1992","1993","1994","1995","1996","1997","1998","1999","2000","1770","1771","1772","1773","1774","1775","1776","1777","1778","1779","1780","1781","1782","1783","1784","1785","1786","1787","1788","1789","1790","1791","1792","1793","1794","1795","1796","1797","1798","1799","1800", "1965"]
    
    var history : [[String]] = [["history"], ["When did WW2 start", "1939"], ["When did WW1 start", "1914"], ["when did the US gain its independence", "1776"], ["When was Israel created", "1948"], ["when was the wall street crash", "1929"], ["When was the EU created", "1993"], ["When did the french revolution start", "1789"], ["When did the medical revolutoin start", "1796"], ["When did the Russian revoulution start", "1917"], ["When did India gain Independence", "1947"], ["When was the internet created", "1965"], ["When did the cold was end", "1991"]]

    var shuffle : [[String]] = [["shuffle"], ["When did WW2 start", "1939"], ["When did WW1 start", "1914"], ["when did the US gain its independence", "1776"], ["When was Israel created", "1948"], ["when was the wall street crash", "1929"], ["When was the EU created", "1993"], ["When did the french revolution start", "1789"], ["When did the medical revolutoin start", "1796"], ["When did the Russian revoulution start", "1917"], ["When did India gain Independence", "1947"], ["When was the internet created", "1965"], ["When did the cold was end", "1991"],  ["Whats the capital city of the USA", "Washington"], ["Whats the capital city of Israel", "Jarusalem"], ["Whats the capital of Russia", "Moscow"], ["Whats the capital of North Korea", "Pyongyang"], ["Whats the capital of Brazil", "Brasília"], ["Whats the capital of Nigeria", "Abuja"], ["Whats the capital of green land", "Nuuk"], ["Whats the capital of Georgia (country)", "Tbilisi"], ["Whats the capital of China", "Beijing"], ["Capital city of Ukraine" ,"Kiev"], ["Whats the capital city of Ireland", "Dublin"], ["What countries trees produces the most oxygen", "Russia"], ["Country with the highest population" , "China"],[ "The only jewish country", "Israel"], ["What country has the highest life expectancy", "Japan"], ["What country has the longest street", "Canada"], ["What country cosumes the most chocalet", "Switzerland"], ["What country is the largest exporter of rice", "Thailand"], ["What country has Dracula's castle", "Romaina"], ["What country the the tallest water fall", "Venezuela"], ["What country has the largest stadium", "North Korea"],["Who invented the steam engine", "Britain"], ["What country introduced coffee to europe", "Turkey"], ["What country invented the metric system", "France"], ["What country invented the ruler", "India"], ["What country invented the helicopter", "Hungary"]]
    
    var currentChoice = [String]()
    var currentQuestions = [[String]]()
    var whereWeAt = 0
    var totalPossibilities = [Int]()

    var toUseFor1 : String = ""
    var toUseFor2 : String = ""
    var toUseFor3 : String = ""
    
    var outcomeOfQuestion : String = ""
    var points : Int = 0
    var questionUsed : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        questionDisplay.layer.cornerRadius = 40.0
        questionDisplay.layer.borderWidth = 3
        questionDisplay.clipsToBounds = true
        
        optionAText.layer.cornerRadius = 30.0
        optionAText.layer.borderWidth = 3
        optionAText.clipsToBounds = true
        
        optionBText.layer.cornerRadius = 30.0
        optionBText.layer.borderWidth = 3
        optionBText.clipsToBounds = true
        
        optionCText.layer.cornerRadius = 30.0
        optionCText.layer.borderWidth = 3
        optionCText.clipsToBounds = true

        
        if toUse == countries[0][0] {
            currentChoice = countryChoices
            currentQuestions = countries
        }
        
        if toUse == capitals[0][0] {
            currentChoice = capitalChoices
            currentQuestions = capitals
        }
        
        if toUse == history[0][0]  {
            currentChoice = datesChoices
            currentQuestions = history
        }
        
        if toUse == shuffle[0][0] {
            currentQuestions = shuffle
        }

        totalPossibilities = Array(1...currentQuestions.count - 1)
        totalPossibilities.shuffle()
        questionDisplay.text = currentQuestions[totalPossibilities[0]][0]
        questionUsed = currentQuestions[totalPossibilities[0]][0]
        
        print("--------------------------------------------------------------------------------")
        
        if toUse == shuffle[0][0] {
            for i in countryChoices {
                print(i)
                if i == currentQuestions[totalPossibilities[0]][1] {
                    print("Here")
                    currentChoice = countryChoices
                }
            }
    
            for i in capitalChoices {
                if i == currentQuestions[totalPossibilities[0]][1] {
                    print("Here")
                    currentChoice = capitalChoices
                }
            }
            
            for i in datesChoices {
                if i == currentQuestions[totalPossibilities[0]][1] {
                    print("Here")
                    currentChoice = datesChoices
                }
            }
        }
        
        print(currentQuestions[totalPossibilities[0]][1])
        print(currentChoice)
        
        let randomVal : Int = Int.random(in: 1...3)
        
        if randomVal == 1 {
            toUseFor1 = currentQuestions[totalPossibilities[0]][1]
        }
        else {
            toUseFor1 = currentChoice[Int.random(in: 0...currentChoice.count - 1)]
        }
        
        if randomVal == 2 {
            toUseFor2 = currentQuestions[totalPossibilities[0]][1]
        }
        else {
            toUseFor2 = currentChoice[Int.random(in: 0...currentChoice.count - 1)]
            if toUseFor2 == toUseFor1 {
                toUseFor2 = currentQuestions[totalPossibilities[0]][1]
                if toUseFor2 == toUseFor1 {
                    toUseFor2 = currentQuestions[totalPossibilities[0]][1]
                }
            }
        }
        
        if randomVal == 3 {
            toUseFor3 = currentQuestions[totalPossibilities[0]][1]
        }
        else {
            toUseFor3 = currentChoice[Int.random(in: 0...currentChoice.count - 1)]
            if toUseFor3 == toUseFor1 || toUseFor3 == toUseFor2 {
                toUseFor2 = currentQuestions[totalPossibilities[0]][1]
                if toUseFor3 == toUseFor1 || toUseFor3 == toUseFor2 {
                    toUseFor2 = currentQuestions[totalPossibilities[0]][1]
                    if toUseFor3 == toUseFor1 || toUseFor3 == toUseFor2 {
                        toUseFor2 = currentQuestions[totalPossibilities[0]][1]
                    }
                }
            }
        }
        
        optionAText.text = toUseFor1
        optionBText.text = toUseFor2
        optionCText.text = toUseFor3
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "backToCat" {
            _ = segue.destination as! categoryView
        }
        else {
            let vc = segue.destination as! outcomeAndExpl
            /// answer is outcome
            vc.answer = outcomeOfQuestion
            /// topicUsed is the category: country, capital...
            vc.topicUSed = toUse
            /// pointo is the points
            vc.pointo = points
            /// comuter is counting where we at
            vc.counter = whereWeAt
            /// question shower
            vc.questionUsed2 = questionUsed
        }
    }
    
    @IBAction func optionA(_ sender: Any) {
        whereWeAt += 1
        
        if toUseFor1 == currentQuestions[totalPossibilities[0]][1] {
            self.outcomeOfQuestion = "correct"
            points += 1
        }
        else {
            self.outcomeOfQuestion = "false"
        }
        
        performSegue(withIdentifier: "optionASeg", sender: self)
    }
    
    
    @IBAction func optionB(_ sender: Any) {
        whereWeAt += 1
        
        if toUseFor2 == currentQuestions[totalPossibilities[0]][1] {
            self.outcomeOfQuestion = "correct"
            points += 1
        }
        else {
            self.outcomeOfQuestion = "false"
        }
        
        performSegue(withIdentifier: "optionBSeg", sender: self)
    }
    
    
    @IBAction func optionC(_ sender: Any) {
        whereWeAt += 1
        
        if toUseFor3 == currentQuestions[totalPossibilities[0]][1] {
            outcomeOfQuestion = "correct"
            points += 1
        }
        else {
            self.outcomeOfQuestion = "false"
        }
        performSegue(withIdentifier: "optionCSeg", sender: self)
    }
    
    
    @IBAction func backToCategories(_ sender: Any) {
        performSegue(withIdentifier: "backToCat", sender: self)
    }
    
    
}
