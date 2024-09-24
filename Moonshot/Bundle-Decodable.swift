//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Juan Carlos Robledo Morales on 24/09/24.
//

import Foundation


extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("No se pudo localizar \(file) en el bundle.")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("No se pudo cargar \(file) del bundle.")
        }

        let decoder = JSONDecoder()

        do {
            return try decoder.decode(T.self, from: data)
        } catch DecodingError.keyNotFound(let key, let context) {
            fatalError("No se pudo decodificar \(file) debido a la falta de la clave '\(key.stringValue)' – \(context.debugDescription)")
        } catch DecodingError.typeMismatch(_, let context) {
            fatalError("No se pudo decodificar \(file) debido a una incompatibilidad de tipos – \(context.debugDescription)")
        } catch DecodingError.valueNotFound(let type, let context) {
            fatalError("No se pudo decodificar \(file) debido a la falta de un valor \(type) – \(context.debugDescription)")
        } catch DecodingError.dataCorrupted(_) {
            fatalError("No se pudo decodificar \(file) porque parece ser JSON no válido.")
        } catch {
            fatalError("No se pudo decodificar \(file): \(error.localizedDescription)")
        }

    }
}
