//
//  UseViewController.swift
//  Warikan
//
//  Created by 長沢　遼 on 2016/08/28.
//  Copyright © 2016年 Sgtmt. All rights reserved.
//

import UIKit

class UseViewController: UIViewController {
//変数定義
    @IBOutlet weak var peopleText: UITextField!
//people Textfield
    @IBOutlet weak var all_Money: UITextField!
//AllMoney Textfield
    @IBOutlet weak var result_Data: UILabel!
//Result Label
    @IBOutlet weak var kitaku: UITextField!
//Textfield
    @IBOutlet weak var sakibarai: UITextField!
///   Textfield
    var people : Int? = 0
    var money : Int? = 0
    var kitaku_people : Int? = 0
    var place_money : Int? = 0
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    @IBAction func tap_view(sender: UITapGestureRecognizer) {
         self.view.endEditing(true)
    }

    @IBAction func Result_Action_Btn(sender: AnyObject) {
        
        text()
        let siharai:Int? = money!-place_money!
        let iri:Int? = people!-kitaku_people!
        
        let result:Int? = siharai!/iri!
        
        result_Data.text = String(result)
        

        
    }
    func text(){
        people = peopleText.text.flatMap{ Int($0) }
        money = all_Money.text.flatMap{ Int($0) }
        kitaku_people = kitaku.text.flatMap{ Int($0) }
        place_money = sakibarai.text.flatMap{ Int($0) }

    }
    
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
