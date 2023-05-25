//
//  Transactions.swift
//  Sides
//
//  Created by Diego Herrera Redondo on 25/5/23.
//

import Foundation
import RealmSwift

class TransModel: Object, Identifiable {
    
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var category: String
    @Persisted var type: String
    @Persisted var quantity: Int
    @Persisted var currency = Locale.current.currencySymbol!
}
