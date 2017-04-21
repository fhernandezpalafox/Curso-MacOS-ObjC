//
//  main.m
//  CursoObjectiveC
//
//  Created by Felipe Hernandez on 29/08/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction5.h"
#import "calculadora12.h"
#import "Fraction16.h"
#import "Fraction17.h"
#import "Mensaje.h"
#import "Saludador.h"

#import "operaciones.h"


//herencia
#import "Persona.h"
#import "Empleado.h"


//protocolo
#import "Alumno.h"

//polimorfismo
#import "Gerente.h"


#import "NSString+PruebaCategorias.h"
#import "Fraction5+PruebaCategoria2.h"


//mezclando codigo
#import "User.h"
#import "CursoObjectiveC-Swift.h"


//bloques
#import "Bloques.h"


/*
 //EJERCICIO 1
 int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Hola mundo!");
    }
    return 0;
}*/

/*
 //EJERCICIO 2
int main(int argc, const char * argv[]) {
    @autoreleasepool {
     
        NSLog(@"Prueba...\n..1\n..2\n..3");
        
    }
    return 0;
}
*/


/*
//EJERCICIO 3
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int suma;
        suma =  50 + 25;
        NSLog(@"la suma de 50 y 25 es: %i",suma);
        
    }
    return 0;
}
 */


/*
//EJERCICIO 4
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int suma,valor1,valor2;
        valor1  = 50;
        valor2  = 25;
        suma =  valor1 + valor2;
        NSLog(@"la suma de %i y %i es: %i",valor1,valor2,suma);
        
    }
    return 0;
}
*/

/*
//EJERCICIO 5
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int suma,valor1,valor2;
        valor1  = 50;
        valor2  = 25;
        suma =  valor1 + valor2;
        NSLog(@"la suma de %i y %i es: %i",valor1,valor2,suma);
        
    }
    return 0;
}
*/

/*
//EJERCICIO 6
int main(int argc, const char * argv[]) {
 
    @autoreleasepool {
        
        //se instancia la clase de Fraction
        Fraction5 * myfraction =  [[Fraction5 alloc] init];
        [myfraction setNumerator:1];
        [myfraction setDenominator:3];
        //imprimimos  los datos
        NSLog(@"El valor de mi fraction es:");
        [myfraction print];
        
    }
    return 0;
}
 */

/*
//EJERCICIO 7
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int  integerVar = 100;
        float floatingVar  = 331.79;
        double doubleVar = 8.44e11;
        char charVar = 'w';
        
        NSLog(@"integerVar  =  %i",integerVar);
        NSLog(@"floatingVar  =  %f",floatingVar);
        NSLog(@"doubleVar  =  %e",doubleVar);
        NSLog(@"doubleVar  =  %g",doubleVar);
        NSLog(@"charVar  =  %c",charVar);
    }
    return 0;
}
 */

/*
//EJERCICIO 8
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //ejemplos de uso de operadores  aritmeticos
        int  a = 100;
        int  b = 2;
        int  c = 25;
        int  d =  4;
        int resultado;
        resultado  =  a - b; //resta
        NSLog(@"a - b =  %i",resultado);
        resultado  =  a / b; //division
        NSLog(@"a / b =  %i",resultado);
        resultado  =  a * b; //multiplicar
        NSLog(@"a * b =  %i",resultado);
        resultado  = a + b * c;//precedencia
        NSLog(@"a + b * c =  %i",resultado);
        NSLog(@"a + b * c =  %i",a * b + c *d);
    }
    return 0;
}
*/

/*
//EJERCICIO 9
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //ejemplos de uso de operadores  aritmeticos
        int  a = 25;
        int  b = 2;
        int resultado;
        float c  = 25.0;
        float d = 2.0;
        //por la ley de los  signos (/,*,+,-)
 
         //Primero, se hacen las operaciones dentro de parÈntesis;
         //DespuÈs, se multiplica y se divide de izquierda a derecha;
         //Finalmente, su suma y se resta de izquierda a derecha.
        NSLog(@"6 + a / 5 * b = %i",6 + a / 5 * b);
        NSLog(@"a / b * b =  %i",a / b * b);
        NSLog(@"c / d * d =  %f",c / d * d);
        NSLog(@"-a =  %i",-a);
    }
    return 0;
}
*/

/*
//EJERCICIO 10
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //ejemplos de uso de operadores  aritmeticos
        int   a =  25;
        int   b =  5;
        int   c =  10;
        int   d =  7;
        
        NSLog(@" a %%  b = %i",a % b);
        NSLog(@" a %%  c = %i",a % c);
        NSLog(@" a %%  d  = %i",a % d);
        NSLog(@" a / d * d + a %% d = %i",a / d * d + a % d);
    }
    return 0;
}
*/

/*
//EJERCICIO 11
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //conversiones  basicas  en  objective-c
        float f1 = 123.125,f2;
        int i1,i2= -150;
        i1 = f1; //conversion float a int
        NSLog(@"%f asignado a un entero produce %i",f1,i1);
        f1 = i2; //conversion  int a float
        NSLog(@"%i asignado a un entero produce %f",i2,f1);
        f1 = i2/100; //entero  dividido por un entero
        NSLog(@"%i Dividido entre 100 produce %f",i2,f1);
        f2 = i2/100.0; //entero dividido por un decimal
        NSLog(@"%i Dividido entre 100.0 produce %f",i2,f2);
        f2 = (float)i2/100; //operador de cambio de tipo
        NSLog(@"(float)%i Dividido por 100 produce %f",i2,f2);
    }
    return 0;
}*/


/*
//EJERCICIO 12
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        calculadora12 *deskcalc;
        deskcalc  = [[calculadora12 alloc] init];
        [deskcalc clear];
        [deskcalc setAcumulador:100.0];
        [deskcalc suma:200];
        [deskcalc division:15.0];
        [deskcalc resta:10.0];
        [deskcalc multiplicacion:5];
        NSLog(@"El resultado es: %g",[deskcalc acumulador]);
    }
    return 0;
}*/

/*
//EJERCICIO 13 PARTE (1)
int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        int numerotriangular;
        numerotriangular  = 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8;
        NSLog(@"El numero triangular  de  8 es: %i",numerotriangular);
        
    }
    return 0;
}
*/

/*
//EJERCICIO 14 PARTE (2)
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int numerotriangular,n;
        for(n=1;n<=8;n = n + 1)
        {
            numerotriangular  += n;
        }
        NSLog(@"El numero triangular  de  200 es: %i",numerotriangular);
        
    }
    return 0;
}
*/

/*
//EJERCICIO 15 PARTE (3)
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int numerotriangular,n,numero;
        NSLog(@"Introduce el numero triangular a calcular");
        scanf("%i",&numero);  //instruccion de C
        numerotriangular =0;
        
        for(n=1;n<=numero;n = n + 1)
        {
            numerotriangular  += n;
        }
        NSLog(@"El numero triangular  de  %i es: %i",numero,numerotriangular);
        
    }
    return 0;
}*/

/*
//EJERCICIO 16
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //se instancia la clase de Fraction
        Fraction16 * myfraction =  [[Fraction16 alloc] init];
        [myfraction setNumerator:1];
        [myfraction setDenominator:3];
        //imprimimos  los datos
        NSLog(@"El valor de mi fraction es:");
        [myfraction print];
    }
    return 0;
}
*/


/*
//EJERCICIO 17
int main(int argc, const char * argv[]) {
    @autoreleasepool {

        //se instancia la clase de Fraction
        Fraction17 * myfraction =  [[Fraction17 alloc] init];
        //se llama metodos
        [myfraction setTo:100 over:200];
        [myfraction print];
        
        [myfraction setTo:1 over:3];
        [myfraction print];
        
        //PROPIEDADES GET Y SET
        [myfraction setNumerator:120];
    }

    return 0;
}
*/

/*
//EJERCICIO 18
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        NSLog(@"hola felipe");
        NSLog(@"%@",[Mensaje Saludo2]);
        NSLog(@"%@",[Mensaje saludonombre:@"felipe" Andapellido:@"Hernandez"]);
    }
    
    return 0;
}
*/


/*
//EJERCICIO 19
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        //Saludador * s = [[Saludador alloc] init];
        //[s saluda];
        //[s setSaludo:"Hola de  nuevo"];
        //[s saluda];
        //[s setSaludo:"Hola  buenos dias"
        //           y:"Encantado de verte"];
        //[s saluda];
       
        
        Saludador * s = [[Saludador alloc] initWithSaludo:@"Hola desde el constructor"];
        
        [s saluda];
        [s setSaludo:"Hola de nuevo"];
        [s saluda];
        [s setSaludo:"Hola buenos dias "
                   y:"Encantado de verte"];
        [s saluda];
        
        
        
    }
    
    return 0;
}
 */

/*
//EJERCICIO 20
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        @try
        {
            // Your statements here
            @throw [NSException exceptionWithName:@"FileNotFoundException"
                                           reason:@"File Not Found on System" userInfo:nil];
        } @catch (NSException * e) // use: @catch (id exceptionName) to catch all objects.
        {
            NSLog(@"Exception: %@", e);
        } @finally
        {
            NSLog(@"Finally. Time to clean up.");
        }
        
    }
    
    return 0;
}*/

/*
//EJERCICIO 21
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //NSString
        NSString *nombre =@"Felipe Hernandez Palafox";
        NSLog(@"Hola %@",nombre);
        
        
        //NSMutableString
        NSMutableString *nombreEdad = [NSMutableString stringWithString:@"Felipe Hernandez Palafox"];
        [nombreEdad appendString:@" tiene 27 años"];
        NSLog(@"%@",nombreEdad);
        
        
        //NSNumber
        NSNumber *numeroLetra = @'Z';
        char letraZ  =[numeroLetra charValue];
        NSLog(@" %c",letraZ);
        
        //booleanos
        BOOL yesBool =  YES;
        BOOL noBool = NO;
        NSLog(@"%i",yesBool);
        
        
        //NSArray - Arreglos
        NSArray *arreglo = @[@1,@2,@3,@4];
        NSNumber *tercerNumero = arreglo[2];
        NSLog(@"El tercer numero  es %@",tercerNumero);
        
        NSArray *arreglo2 = @[@"Felipe",@"Armando",@"Angel"];
        NSString *nombrePersona = arreglo2[0];
        NSLog(@" El nombre %@ ",nombrePersona);
        NSLog(@"El nombre  que escogiste es %@ ",[arreglo2 objectAtIndex:0]);
        
        //sacamos los datos por medio del for
        for (int i = 0;i < arreglo2.count; i++) {
            NSLog(@" Nombre %@",[arreglo2 objectAtIndex:i]);
        }
        
        //NSMutableArray
        NSMutableArray *mutableArray = [NSMutableArray arrayWithCapacity:2];
        [mutableArray addObject:@"Felipe"];
        [mutableArray addObject:@"Armando"];
        [mutableArray removeObjectAtIndex:0];
        
        NSLog(@" Mutable array %@",[mutableArray objectAtIndex:0]);
        
        
        //NSDictionary
        NSDictionary *aDictionary  = @{@"key1":@"llave 1",
                                      @"key2":@"llave 2",
                                      @"key3":@"llave3"};
        
        NSObject *valueObject =  aDictionary[@"key1"];
        //NSObject *valueObject =  aDictionary[@" key1"];
        NSLog(@" object = %@ ",valueObject);
        
        
        //NSMutableDictionary
        NSMutableDictionary *mutableDictionary = [NSMutableDictionary dictionaryWithCapacity:2];
        [mutableDictionary  setObject:@"Valor 1" forKey:@"key1"];
        [mutableDictionary  setObject:@"Valor 2" forKey:@"key2"];
        
        [mutableDictionary removeObjectForKey:@"key1"];
        
        //NSSet
        NSSet *set = [NSSet setWithObjects:@"Hola ",@"Felipe ",@" Hernandez", nil];
        NSLog(@"%@",set);
        
        //NSMutableSet
        NSMutableSet *mutableSet  = [NSMutableSet setWithCapacity:2];
        [mutableSet addObject:@"Hola 1"];
        [mutableSet addObject:@"Hola 2"];
        NSLog(@"%@",mutableSet);
        
        //If
        BOOL hayDeComer = NO;
        
        if (hayDeComer) {
            NSLog(@"No hay para comer");
        }else {
            NSLog(@"Si hay para comer ");
        }
        
        //instancia de objeto
        operaciones *op = [[operaciones alloc]init];
        //switch
        int dia = 1;
        
        switch (dia) {
            case 1:
                [op imprimirDia:@"Lunes"];
                break;
            case 2:
                [op imprimirDia:@"Martes"];
                break;
            case 3:
                [op imprimirDia:@"Miercoles"];
                break;
            default:
                break;
        }
        
        // uso del while
        int i = 0;
        while (i < 4) {
            NSLog(@"%d",i++);
        }
        
        //uso del for
        int j;
        for (j = 0; j < 4; j++) {
            NSLog(@"%d",j++);
        }
        
        
        //try catch
        @try
        {
            // aqui va tu codigo
            @throw [NSException exceptionWithName:@"FileNotFoundException"
                                           reason:@"File Not Found on System" userInfo:nil];
        } @catch (NSException * e) // use: @catch (id exceptionName) to catch all objects.
        {
            NSLog(@"Exception: %@", e);
        } @finally
        {
            NSLog(@"Finally. Time to clean up.");
        }
        
        //NSError
        NSError *error = [NSError errorWithDomain:@"Correo invalido" code:4 userInfo:nil];
        NSLog(@" %@",error);
        
        //operador ternario
        NSString *edad = (12<21)?@"Este es un operador":@"Este es un operador diferente";
        NSLog(@" %@",edad);
        
        //preprocesador
        #ifdef DEBUG
          NSLog(@"Corriendo en modo debug");
        #endif
    }
    
    return 0;
}
 */


/*
 //EJERCICIO 22
 int main(int argc, const char * argv[]) {
     @autoreleasepool {
      
         NSLog(@"Clase persona");
         Persona *persona = [[Persona alloc]initWithName:@"Felipe" andAge:27];
         [persona print];
         
         NSLog(@"Herencia");
         Empleado *empleado = [[Empleado alloc]initWithName:@"Felipe" andAge:27 andEducation:@"Ingenieria"];
         [empleado print];
         
     }
 return 0;
 }
*/

/*
//EJERCICIO 23 PROTOCOLOS
int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        Alumno *alumno = [[Alumno alloc]init];
        [alumno Imprimir];
        [alumno Suma:2 andSecond:3];
        [alumno Resta:2 andSecond:2];
        
    }
    return 0;
}
*/

/*
//EJERCICIO 24 POLIMORFISMO
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Opcion #1
        //Persona *persona = [[Persona alloc]init];
        //Empleado *empleado = [[Empleado alloc]init];
        //Gerente *gerente = [[Gerente alloc]init];
        
        //Opcion #2
        Persona *persona = [[Persona alloc]init];
        Persona *empleado = [[Empleado alloc]init];
        Persona *gerente = [[Gerente alloc]init];
        
       
        [persona EstoyCasado];
        NSLog(@"---------------");
        [empleado EstoyCasado];
        NSLog(@"---------------");
        [gerente EstoyCasado];
        NSLog(@"---------------");
        
        //sobrecarga de metodos
        [persona estoyCasdo:YES];
         NSLog(@"---------------");
        [empleado estoyCasdo:NO];
         NSLog(@"---------------");
        [gerente estoyCasdo:YES];
        
        //castear para llamar al metodo de la clase gerente que  tiene un metodo diferente
        [(Gerente *)gerente mostrarSalario];
    }
    return 0;
}
*/

/*
//EJERCICIO 24 Categorias opcion #1
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    NSString *str = @"armando";
    NSLog(@"La palabra %@: tiene: %d 'a' ",[str capitalizedString],
     [str contarLetraA]);
    }
    return 0;
}
*/

/*
//EJERCICIO 25 Categorias opcion #2
int main(int argc, const char * argv[]) {
    @autoreleasepool {
 
        Fraction5 *fraction5 = [[Fraction5 alloc]init];
        [fraction5 setDenominator:2];
        [fraction5 setNumerator:5];
        [fraction5 ImprimirDatos];
       
    }
    return 0;
}
*/

/*
 //EJERCICIO 26 mezclado codigo
 int main(int argc, const char * argv[]) {
     @autoreleasepool {
         User *usuario = [[User alloc]init];
         usuario.nombre  = @"Felipe";
         usuario.apellido = @"Hernandez";
         NSLog(@"Hola, %@!",[ usuario nombreCompleto]);
         
         
         Mascota *perro = [[Mascota alloc] init];
         perro.nombre = @"pinto";
         perro.owner =  usuario;
         
         NSLog(@"%@",[perro traerTexto]);
         
     }
 return 0;
 }
*/


//EJERCICIO 27 Bloques
int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        Bloques *bloque = [[Bloques alloc]init];
        
        [bloque variasOperaciones:2 and:3 andtipo:1];
        [bloque variasOperaciones:2 and:3 andtipo:2];
        
        //Bloque #1
        [bloque bloqueDentroFuncion];
        
        //Bloque #2
        [bloque division];
        
        //Bloque #3
        [bloque imprimirNombre];
    }
    return 0;
}


