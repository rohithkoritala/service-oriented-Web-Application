using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace HashRef
{
    public class hashref
    {
         public string Hash(string data, string salt)
            {
                using (var sha = new SHA512CryptoServiceProvider())
            {
                var hashedString = sha.ComputeHash(Encoding.Default.GetBytes(data + salt)); return Convert.ToBase64String(hashedString);
            }
        }
    }
}
