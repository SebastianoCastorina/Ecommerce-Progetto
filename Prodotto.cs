using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_Commerce
{
    public class Prodotto
    {
        public int Id;
        public string Name { get; set; }
        public string DescrizioneBreve { get; set; }

        public string FullDescrizione { get; set; }

        public double Price { get; set; }

        public string Image { get; set; }

        public Prodotto () { }

        public Prodotto (int id, string name, string descrizioneBreve, string fullDescrizione, double price, string image)
        {
            this.Id = id;
            this.Name = name;
            this.DescrizioneBreve = descrizioneBreve;
            this.FullDescrizione = fullDescrizione;
            this.Price = price;
            this.Image = image;
        }
    }
}