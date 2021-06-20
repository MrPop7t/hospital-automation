using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace HospitalAutomation
{
    public partial class FrmDoktorGIris : Form
    {
        public FrmDoktorGIris()
        {
            InitializeComponent();
        }
        
        sqlBaglantisi bg1 = new sqlBaglantisi();

        private void button1_Click(object sender, EventArgs e)
        {
            FrmGirisler fr = new FrmGirisler();
            fr.Show();
            this.Hide();
        }

        private void btnGiris_Click(object sender, EventArgs e)
        {

            SqlCommand command = new SqlCommand("Select * From Tb1_Doktorlar where DoktorTC =  @p1 and DoktorSifre = @p2", bgl.baglanti());
            command.Parameters.AddWithValue("@p1", mskTC.Text);
            command.Parameters.AddWithValue("@p2", txtPassword.Text);
            SqlDataReader dr = command.ExecuteReader();
            if (dr.Read())
            {

                FrmDoktorDetay fr = new FrmDoktorDetay();
                fr.tc = mskTC.Text;
                fr.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("TC kimlik no veya sifre hatali!", "Hata!", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            bg1.baglanti().Close();
        }

        private void FrmDoktorGiris_Load(object sender, EventArgs e)
        {
            
        }
    }
}