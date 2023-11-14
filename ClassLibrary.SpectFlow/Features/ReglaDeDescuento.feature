Feature: ReglaDeDescuento


@mytag
Scenario: TotalIntroducidoMenorACero
    Given que existe la regla de descuento:
    | TotalInicial | TotalFinal | PorcentajeDeDescuento |
    | 5000         | 10000      | 0.03                  |
    | 10000        | 25000      | 0.05                  |
    | 25001        | 99999      | 0.1                   | 
    When Se introduce un valor total igual a 0.0
    Then El sistema muestra la excepción "El total debe ser mayor a 0"

Scenario: TotalIntroducidoIgualASeisMil
    Given que existe la regla de descuento:
    | TotalInicial | TotalFinal | PorcentajeDeDescuento |
    | 5000         | 10000      | 0.03                  |
    | 10000        | 25000      | 0.05                  |
    | 25001        | 99999      | 0.1                   | 
    When Se introduce un valor total igual a 6000.0
    Then El sistema devuelve el valor 180.0

Scenario: TotalIntroducidoIgualADiezMilUno
    Given que existe la regla de descuento:
    | TotalInicial | TotalFinal | PorcentajeDeDescuento |
    | 5000         | 10000      | 0.03                  |
    | 10000        | 25000      | 0.05                  |
    | 25001        | 99999      | 0.1                   | 
    When Se introduce un valor total igual a 10001.0
    Then El sistema devuelve el valor de 500.05

Scenario: TotalIntroducidoIgualAVeinticincoMilUno
    Given que existe la regla de descuento:
    | TotalInicial | TotalFinal | PorcentajeDeDescuento |
    | 5000         | 10000      | 0.03                  |
    | 10000        | 25000      | 0.05                  |
    | 25001        | 99999      | 0.1                   | 
    When Se introduce un valor total igual a 25001.0
    Then El sistema devuelve el valor de 2500.1