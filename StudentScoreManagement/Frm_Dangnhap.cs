using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace StudentScoreManagement
{
    public partial class Frm_Dangnhap : Form
    {
        public Frm_Dangnhap()
        {
            InitializeComponent();
        }
        private void btnDongY_Click(object sender, EventArgs e)
        {
            string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
            var connection = new SqlConnection(connString);
            connection.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM tblNguoiDung WHERE TaiKhoan='" + txtTK.Text + "' AND MatKhau='" + txtMK.Text + "'", connection);
            SqlDataReader sqlReader = cmd.ExecuteReader();
            if (sqlReader.Read()) 
            {
                this.Hide();
                Frm_Main frm_main = new Frm_Main();
                frm_main.Sender(txtTK.Text);    //Gọi delegate
                frm_main.ShowDialog();
                this.Close();
            }
            else
            {
                MessageBox.Show("Đăng nhập thất bại.\nVui lòng kiểm tra lại thông tin.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }    
            sqlReader.Close();
        }
        private void btnThoat_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void txtMK_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnDongY.PerformClick();
            }
        }
    }
}
