//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    @IBOutlet weak var firstEmojiTextField: UITextField!
    @IBOutlet weak var secondEmojiTextField: UITextField!
    @IBAction func emoijButtonTapped(_ sender: Any) {
        
        
        
        
        guard let firstText = firstEmojiTextField.text,
            let secondText = secondEmojiTextField.text else {return}
        let tupleString = (firstText, secondText)
        emojiDelegate?.create(emojiGroup: tupleString)
        
        
        dismiss(animated: true, completion: nil)
    }
    
    var emojiDelegate: EmojiCreation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
}
