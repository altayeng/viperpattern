//
//  Protocols.swift
//  MediumViper
//
//  Created by Altay Kırlı on 4.01.2022.
//

import Foundation

//Ana protokol
protocol PresenterToInteractorProtocol {
    var presenter:InteractorToPresenterProtocol? {get set}
    func yaz(girdi:String)
}

//Ana protokol
protocol ViewToPresenterProtocol {
    var interactor:PresenterToInteractorProtocol? {get set}
    var view:PresenterToViewProtocol? {get set}
    func yazdir(girdi:String)
}

//Taşıyıcı
protocol InteractorToPresenterProtocol {
    func presenteraVeriGonder(sonuc:String)
}

//Taşıyıcı
protocol PresenterToViewProtocol {
    func vieweVeriGonder(sonuc:String)
 }

//Yetkilendirme Protokolü

protocol PresenterToRouterProtocol {
    //statik olmasının sebebi direkt erişim yapacak olmamız
    static func createModule(ref:ViewController) //Viewcontroller class içindeki her şeyi çalıştır dedik
}
