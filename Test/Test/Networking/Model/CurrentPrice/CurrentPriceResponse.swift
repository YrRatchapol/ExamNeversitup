import Foundation

// MARK: - CurrentPriceResponse
struct CurrentPriceResponse: Codable {
    let time: Time?
    let disclaimer: String?
    let chartName: String?
    let bpi: Bpi?

    enum CodingKeys: String, CodingKey {
        case time = "time"
        case disclaimer = "disclaimer"
        case chartName = "chartName"
        case bpi = "bpi"
    }
}

// MARK: - Bpi
struct Bpi: Codable {
    let usd: Currency?
    let gbp: Currency?
    let eur: Currency?

    enum CodingKeys: String, CodingKey {
        case usd = "USD"
        case gbp = "GBP"
        case eur = "EUR"
    }
}

// MARK: - Eur
struct Currency: Codable {
    let code: String?
    let symbol: String?
    let rate: String?
    let description: String?
    let rateFloat: Double?
    
    var title: String {
        var decodedSymbol = ""
        
        if let data = (symbol ?? "").data(using: .utf8) {
            if let attributedString = try? NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil) {
                decodedSymbol = attributedString.string
            }
        }
        
        return "\(decodedSymbol) \(code ?? "")"
    }
    
    var rateDisplay: String {
        return "\(rate ?? "0") \(code ?? "")/BTC"
    }

    enum CodingKeys: String, CodingKey {
        case code = "code"
        case symbol = "symbol"
        case rate = "rate"
        case description = "description"
        case rateFloat = "rate_float"
    }
}

// MARK: - Time
struct Time: Codable {
    let updated: String?
    let updatedISO: String?
    let updateduk: String?

    enum CodingKeys: String, CodingKey {
        case updated = "updated"
        case updatedISO = "updatedISO"
        case updateduk = "updateduk"
    }
}
