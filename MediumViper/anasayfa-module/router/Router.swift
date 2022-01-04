//
//  Router.swift
//  MediumViper
//
//  Created by Altay Kırlı on 4.01.2022.
//

import Foundation


class Router : PresenterToRouterProtocol {
    static func createModule(ref: ViewController) {
        
        let presenter = Presenter()
        
        //view sınıfı değişkeni
        ref.presenterNesnesi = presenter //vc içindeki presenter'ı kullandırdık
        
        //presenter sınıfı değişkenleri
        ref.presenterNesnesi?.interactor = Interactor()
        ref.presenterNesnesi?.view = ref //zaten VC'deyiz, self yani
        
        //Interactor değişkeni
        ref.presenterNesnesi?.interactor?.presenter = presenter

    }
}
