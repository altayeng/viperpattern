//
//  ViewController.swift
//  MediumViper
//
//  Created by Altay Kırlı on 4.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    @IBOutlet weak var textFieldGiris: UITextField!
    
    var presenterNesnesi : ViewToPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        labelSonuc.text = ""
        Router.createModule(ref: self) //bu şekilde de yetkilendirmeyi açtık
    }

    @IBAction func buttonGirisYap(_ sender: Any) {
        let yazi = textFieldGiris.text!
        presenterNesnesi?.yazdir(girdi: yazi)
    }
    
}

extension ViewController : PresenterToViewProtocol {
    func vieweVeriGonder(sonuc: String) {
        labelSonuc.text = "Merhaba " + sonuc
    }
}



