//
//  Interactor.swift
//  MediumViper
//
//  Created by Altay Kırlı on 4.01.2022.
//

import Foundation

class Interactor : PresenterToInteractorProtocol {
    var presenter: InteractorToPresenterProtocol?

    func yaz(girdi: String) {
            let yazi = girdi
            presenter?.presenteraVeriGonder(sonuc: String(yazi))
    }
}
