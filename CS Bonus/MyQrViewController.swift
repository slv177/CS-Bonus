//
//  MyQrViewController.swift
//  CS Bonus
//
//  Created by SS on 23.9.18.
//  Copyright © 2018 SS. All rights reserved.
//

import UIKit

class MyQrViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//     Выводим на экран сгенерирванный QR
        let MyQR = generateQRCode(from: userOpenKey)
        myQrImageOutlet.image = MyQR
        
//      Выыодим текущий баланс
        myCurrentBalanceOutlet.text = "Мой баланс " + String(currentBalance) + " CS"
    }
    
    
    
//    Генерируем QR из openKey пользователя
    func generateQRCode(from string: String) -> UIImage? {
        let data = string.data(using: String.Encoding.ascii)
        
        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            let transform = CGAffineTransform(scaleX: 3, y: 3)
            
            if let output = filter.outputImage?.transformed(by: transform) {
                return UIImage(ciImage: output)
            }
        }
        return nil
    }
    
    @IBOutlet weak var myQrImageOutlet: UIImageView!
    @IBOutlet weak var myCurrentBalanceOutlet: UILabel!
    
}
