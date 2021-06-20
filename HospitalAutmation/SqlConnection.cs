using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace HospitalAutomation
{

    class sqlConnection
    {

        public SqlConnection connection() {

            SqlConnection connect = new SqlConnection("Data Source=DESKTOP-7I9J2B9;Initial Catalog=HastaneProje;Integrated Security=True");
            connect.Open();
            return connect;
        
        }



    }
}