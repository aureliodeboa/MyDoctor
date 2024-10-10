import Foundation

struct Remedio: Codable,Identifiable {
    var id: Int
    var nome: String
    var hora: String
    var detalhe: String
    var inicioTratamento: Date
    var fimTratamento: Date
    var unidade: String
    var quantidade: Double
    var estoque: Double
}

func salvarRemedios(_ remedio: Remedio) {
    var remedios = carregarRemedios()
    remedios.append(remedio)
    if let data = try? JSONEncoder().encode(remedios) {
        UserDefaults.standard.set(data, forKey: "remedios")
    }
}

func carregarRemedios() -> [Remedio] {
    if let data = UserDefaults.standard.data(forKey: "remedios"),
       let remedios = try? JSONDecoder().decode([Remedio].self, from: data) {
        return remedios
    }
    return []
}

// Função para criar datas de exemplo
func createDate(day: Int, month: Int, year: Int) -> Date? {
    var dateComponents = DateComponents()
    dateComponents.day = day
    dateComponents.month = month
    dateComponents.year = year
    return Calendar.current.date(from: dateComponents)
}

// Função para gerar ID único incremental
func gerarIdUnico(remedios: [Remedio]) -> Int {
    return (remedios.map { $0.id }.max() ?? 0) + 1
}



