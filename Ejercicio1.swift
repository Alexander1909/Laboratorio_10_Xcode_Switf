import Foundation

func leerNumero(mensaje: String) -> Double {
    while true {
        print(mensaje, terminator: " ")
        if let entrada = readLine(), let numero = Double(entrada) {
            return numero
        }
        print("Error: ingrese un número válido.")
    }
}

func mostrarMenu() {
    print("\n=== CALCULADORA SWIFT ===")
    print("1. Suma")
    print("2. Resta")
    print("3. Multiplicación")
    print("4. División")
    print("5. Potencia")
    print("6. Raíz cuadrada")
    print("0. Salir")
}

func calculadora() {
    var continuar = true
    while continuar {
        mostrarMenu()
        print("Seleccione una opción:", terminator: " ")
        let opcion = readLine() ?? ""

        switch opcion {
        case "1":
            let a = leerNumero(mensaje: "Ingrese el primer número:")
            let b = leerNumero(mensaje: "Ingrese el segundo número:")
            print("Resultado: \(a) + \(b) = \(a + b)")

        case "2":
            let a = leerNumero(mensaje: "Ingrese el primer número:")
            let b = leerNumero(mensaje: "Ingrese el segundo número:")
            print("Resultado: \(a) - \(b) = \(a - b)")

        case "3":
            let a = leerNumero(mensaje: "Ingrese el primer número:")
            let b = leerNumero(mensaje: "Ingrese el segundo número:")
            print("Resultado: \(a) × \(b) = \(a * b)")

        case "4":
            let a = leerNumero(mensaje: "Ingrese el dividendo:")
            let b = leerNumero(mensaje: "Ingrese el divisor:")
            if b == 0 {
                print("Error: división entre cero no permitida.")
            } else {
                print("Resultado: \(a) ÷ \(b) = \(a / b)")
            }

        case "5":
            let base = leerNumero(mensaje: "Ingrese la base:")
            let expo = leerNumero(mensaje: "Ingrese el exponente:")
            print("Resultado: \(base)^\(expo) = \(pow(base, expo))")

        case "6":
            let n = leerNumero(mensaje: "Ingrese el número:")
            if n < 0 {
                print("Error: raíz de número negativo no definida en reales.")
            } else {
                print("Resultado: √\(n) = \(sqrt(n))")
            }

        case "0":
            print("Saliendo...")
            continuar = false

        default:
            print("Opción no válida.")
        }
    }
}

calculadora()
