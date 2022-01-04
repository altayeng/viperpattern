//
//  Presenter.swift
//  MediumViper
//
//  Created by Altay Kırlı on 4.01.2022.
//

import Foundation

class Presenter : ViewToPresenterProtocol {
 
    var interactor: PresenterToInteractorProtocol?
    var view: PresenterToViewProtocol?
    
    func yazdir(girdi: String) {
        interactor?.yaz(girdi: girdi)
    }
}

//taşıyıcı protocoller extension ile eklenir

extension Presenter : InteractorToPresenterProtocol {
    func presenteraVeriGonder(sonuc: String) {
        view?.vieweVeriGonder(sonuc: sonuc)
    }
}

