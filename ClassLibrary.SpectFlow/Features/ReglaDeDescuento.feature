Feature: ReglaDeDescuento


@mytag
Scenario: ValorIntroducidoMenorACero
    Given que existe la regla de descuento:
    | Total                    | PorcentajeDeDescuento   |
    |5000-10000                |            3%           |
    |10000-25000            |            5%           |
    |total > 25000            |            10%          |
    When Se introduce un valor total igual a "0"
    Then El sistema muestra la excepción "El total debe ser mayor a 0"

Scenario: TotalIntroducidoIgualASeisMil
    Given que existe la regla de descuento:
    | Total                    | PorcentajeDeDescuento   |
    |5000-10000                |            3%           |
    |10000-25000            |            5%           |
    |total > 25000            |            10%          |
    When Se introduce un valor total igual a "6000"
    Then El sistema devuelve el valor "180"

Scenario: TotalIntroducidoIgualADiezMilUno
    Given que existe la regla de descuento:
    | Total                    | PorcentajeDeDescuento   |
    |5000-10000                |            3%           |
    |10000-25000            |            5%           |
    |total > 25000            |            10%          |
    When Se introduce un valor total igual a "10001"
    Then El sistema devuelve el valor "500,05"

Scenario: TotalIntroducidoIgualAVeinticincoMilUno
    Given que existe la regla de descuento:
    | Total                    | PorcentajeDeDescuento   |
    |5000-10000                |            3%           |
    |10000-25000            |            5%           |
    |total > 25000            |            10%          |
    When Se introduce un valor total igual a "25001"
    Then El sistema devuelve el valor "2500,1"