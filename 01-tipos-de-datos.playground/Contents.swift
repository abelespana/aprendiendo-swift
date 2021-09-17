import UIKit

// MUTABILIDAD:
// Variables vs constantes. Depende de si su valor podrá ser reasignado durante la ejecución del programa.

let name:String = "Abel"; // No podrá ser cambiado.
//name = "Alberto"; <-- Error, no es mutable

var nameMutable:String = "Abel";
nameMutable  = "Óscar"; // OK
//nameMutable = 32; <-- Error, no se puede mutar el tipo


// INFERENCIA DE TIPOS
let  inferedTypeName = "Abel"; // <- Aunque no especificamos el tipo, el sistema lo infiere y este código es válido.

// Otra forma de asignar un tipo
let number = Float(20.0); // <- Usamos el constructor del tipo para asignar el valor directamente.

// TIPOS POR VALOR Y TIPOS POR REFERENCIA
// Tipos por valor
var a = 10;
var b = a;
print(a) // 10
print(b) // 10
b = 15;
print(a, b); // 10, 15
// Se está pasando el valor por copia, cambiar uno de los valores luego no afecta al otro

// Tipos por referencia
let c = UILabel(frame: CGRect(x: 0, y: 0, width: 90, height: 100));
c.text = "Etiqueta";
c.text // Etiqueta
let d = c;
d.text = "Otra etiqueta";
d.text // Otra etiqueta <- OK
c.text // Otra etiqueta <- ?? Esto pasó porque d y c son tipos por referencia, apuntan al mismo elemento (en este caso, una clase) y eso provocó que una reasignación afecte a ambos. Uso muy habitual en clases.


// VARIABLES CON DATOS NO VACÍOS
var valor1: String;
var valor2 = Float(20.0);
// print(valor1); <- Error: variable usada antes de ser inicializada.

// Inicializarla dentro de un condicional tampoco es posible (podría ser false)
if valor2 > 10 {
    valor1 = "Valor1"
}

// print(valor1); <-- Error: variable usada antes de ser inicializada pese a que entra en el if al ser valor2 > 10
// En cambio, si ese if tuviera un else sí permitiría hacerlo

valor1 = "Valor 1";
print(valor1); // OK, usada después de ser inicializada

// USO DE ALIAS DE TIPOS
let unaCadena: String = "Una cadena";
typealias Cadena = String;
let cadenaDos: Cadena = "Otra cadena";
// Como vemos, crear un alias me permite usar el tipo String pero con mi nombre personalizado. Veremos más adelante otras aplicaciones.


