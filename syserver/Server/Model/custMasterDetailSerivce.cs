using System;
namespace syserver.Shared.Model
{
	public class custMasterDetailSerivce
	{
        styleConnections styleConnections = new styleConnections();
        public async Task<Style[]> GetCustDetails(string CustName)
        {
            Style[] custsObjs;
            Console.WriteLine("test1");
            custsObjs = styleConnections.GetCustDetails(CustName).Result.ToArray();
            return custsObjs;
        }

    }
}

