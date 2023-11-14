using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibraryIS
{
    public class ReglaDeDescuento
    {
        public float TotalInicial { get; set; }
        public float TotalFinal { get; set; }
        public double Descuento { get; set; }

        public ReglaDeDescuento(float _TotalInicial, float _TotalFinal, double _Descuento)
        {
            TotalInicial = _TotalInicial;
            TotalFinal = _TotalFinal;
            Descuento = _Descuento;
        }



        public double AplicarDescuento()
        {
            throw new NotImplementedException();
        }
    }
}
