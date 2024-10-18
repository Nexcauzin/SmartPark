//
//  formatDate.swift
//  SmartPark
//
//  Created by Turma02-26 on 18/10/24.
//

import Foundation


    func converterMilissegundos(milissegundos: Int64) -> String {
            let segundos = (TimeInterval(milissegundos) / 1000)
            let date = Date(timeIntervalSince1970:  segundos)
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "HH:mm - dd/MM/yy"
            return dateFormatter.string(from: date)
    }
