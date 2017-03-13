//: Playground - noun: a place where people can play

import UIKit


/******************************************************************************/

// MARK: Map

var alunosNotas = [4, 5, 7, 9, 6, 10, 3]

// Exemplo: Adicionar 1 a todos valores de um array de notas de alunos

var novaNotas:[Int] = []

/* Percorre todo array de alunosNotas, adiciona 1 ao valor em seguida adiciona
    no array novasNotas este elemento.
 */
for nota in alunosNotas {
    let novaNota = nota + 1
    novaNotas.append(novaNota)
}


// MARK: Map : Uma das sintaxes do map, utilizando closure

alunosNotas = alunosNotas.map({(nota:Int) -> Int in
    return nota + 1
})

// MARK: Map: Map com a sintaxe de sugar com $0, onde $0 é o elemento atual, $1 próximo elemento e assim sucessivamente

alunosNotas = alunosNotas.map {$0 + 1}

/******************************************************************************/


/******************************************************************************/

// MARK: Filter

var alunosNotasFilter = [4, 5, 7, 9, 6, 10, 3]

// Exemplo: Adicionar 1 a todos valores de um array de notas de alunos

var aprovadosNotas:[Int] = []

/* Percorre todo array de alunosNotas, verifica se a nota está com 5 ou mais e  adiciona
 no array aprovadosNotas este elemento.
 */
for nota in alunosNotasFilter {
    if nota >= 5 {
        aprovadosNotas.append(nota)
    }
}


// MARK: Filter com a sintaxe de sugar com $0, onde $0 é o elemento atual, $1 próximo elemento e assim sucessivamente

alunosNotas = alunosNotas.filter { $0 >= 5 }

/******************************************************************************/




/******************************************************************************/

// MARK: Reduce

var alunosNotasReduce = [4, 5, 7, 9, 6, 10, 3]

var soma = 0

/* Percorre todo array de alunosNotasReduce, e a cada elemento soma ele mesmo com a variavel soma */

for nota in alunosNotasFilter {
    soma += nota
}

// MARK: Reduce com a sintaxe de sugar com $0, onde $0 é o elemento atual, $1 próximo elemento e assim sucessivamente
soma = 0
soma = alunosNotas.reduce (0, {$0 + $1})

// Além disso temos uma outra sintaxe para o reduce, onde passamos o valor inicial e a operação
soma = 0
soma = alunosNotas.reduce (0, +)

/******************************************************************************/