# Desafio

Crie uma classe que represente a estrutura de dados de um *Nó* de uma
lista encadeada SIMPLES [1] (em uma lista encadeada simples, cada nó
aponta *apenas* para o próximo nó da lista ou para nulo). Cada nó da
lista deve ser capaz de armazenar um valor de um tipo qualquer: String,
inteiros, datas ou outros objetos.

Escreva uma rotina chamada "inverteLista" que receba como parâmetro uma
instância de um nó de uma lista encadeada e *inverta* a ordem de seus
elementos. Essa rotina não poderá instanciar uma nova lista, a inversão
deve ser realizada na própria lista passada como parâmetro. Ela deverá
retornar o nó da cabeça da lista resultante.

Utilize como exemplo, a lista cujos nós possuem os seguintes valores
(nesta ordem):

* "Oi"
* 5
* 1/1/2005 14:00:00
* 1.5
* "Tchau"

Sua função deverá resultar na *mesma* lista, no entanto, a ordem
resultante de seus elementos estará assim:

* "Tchau"
* 1.5
* 1/1/2005 14:00:00
* 5
* "Oi"

Seu código *não poderá utilizar* nenhuma classe de coleção já pronta da
linguagem que você escolher (por exemplo: em Java, classes como Vector,
ArrayList, Hashtable, LinkedList, etc) ou de qualquer outra biblioteca externa.

A função "inverteLista" poderá utilizar apenas (além da própria lista
passada como parâmetro de entrada) até 3 ponteiros auxiliares. Ela não
poderá utilizar nenhuma estrutura de dados auxiliar além desses. A
inversão da lista deve ocorrer em uma única passada, ou seja, sua

complexidade algorítmica deve ser O(n) (linear).

## Como rodar os teste
Instalar as dependências do projeto
``` bundle install ```

Rodar testes
``` rspec  ```
