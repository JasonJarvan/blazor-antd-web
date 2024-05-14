using System;
namespace syserver.Shared.Model
{
	public class Style
	{
        public int styleid { get; set; }
        public string stylename { get; set; }
        public int stylecoloid { get; set; }
        public int stylesizeid { get; set; }
        public int stylenum { get; set; }

        public void SaveChanges()
        {
            throw new NotImplementedException();
        }
    }
}

