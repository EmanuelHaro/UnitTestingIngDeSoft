using ClassLibraryIS;
using System;
using TechTalk.SpecFlow;

namespace ClassLibrary.SpectFlow.StepDefinitions
{
    [Binding]
    public class ReglaDeDescuentoStepDefinitions
    {
        private List<ReglaDeDescuento> reglaDeDescuento = new List<ReglaDeDescuento> ();
        private decimal total;
        [Given(@"que existe la regla de descuento:")]
        public void GivenQueExisteLaReglaDeDescuento(Table table)
        {
            var regla1 = new ReglaDeDescuento(5000, 10000, 0.03);
            var regla2 = new ReglaDeDescuento(10001, 25000, 0.05);
            var regla3 = new ReglaDeDescuento(25001, 99999, 0.1);
            reglaDeDescuento.Add(regla1);
            reglaDeDescuento.Add(regla2);
            reglaDeDescuento.Add(regla3);
        }

        [When(@"Se introduce un valor total igual a (.*)")]
        public void WhenSeIntroduceUnValorTotalIgualA(Decimal p0)
        {
            total = p0;
        }

        [Then(@"El sistema muestra la excepción ""([^""]*)""")]
        public void ThenElSistemaMuestraLaExcepcion(string p0)
        {
            reglaDeDescuento.First().AplicarDescuento();
        }

        [Then(@"El sistema devuelve el valor (.*)")]
        public void ThenElSistemaDevuelveElValor(Decimal p0)
        {
            throw new PendingStepException();
        }

        [Then(@"El sistema devuelve el valor de (.*)")]
        public void ThenElSistemaDevuelveElValorDe(Decimal p0)
        {
            throw new PendingStepException();
        }
    }

}
