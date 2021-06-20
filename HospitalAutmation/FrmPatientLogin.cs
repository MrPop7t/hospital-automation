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
    public partial class FrmHastaGiris : FormatException
    {
        public FrmHastaGiris()
        {
            InitializeComponent();
        }

        sqlBaglantisi bg1 = new sqlBaglantisi();

        private void button1_Click(object sender, EventArgs e)
        {


        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            FrmGirisler fr = new FrmGirisler();
            fr.show();
            this.Hide();
        }

        private void FrmHastaGiris_Load(object sender, EventArgs e)
        {


        }

        private voidlinkb1Uye01_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            FrmHastaGirisKayit fr = new FrmHastaKayit();
            fr.Show();
        }

        private void btnGiris_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("Select * From Hastalar Where HastaTC = @p1 and HastaSifre = @p2",bgl.baglanti());
            command.Parameters.AddWithValue("@p1", mskTC.Text);
            command.Parameters.AddWithValue("@p2", txtPassword.Text);
            SqlDataReader dr = command.ExecuteReader();
            if (dr.Read())
            {

                FrmHastaDetay fr = new FrmHastaDetay();
                fr.tc = mskTC.Text;
                fr.Show();
                this.Hide();
            }

            else
            {
                MessageBox.Show("Tc kimlik no veya sifre hatali!", "Hata", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}