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
    public partial class Frm_QLkhoa : Form
    {
        int flag = -1;
        public Frm_QLkhoa()
        {
            InitializeComponent();
        }
        private void Frm_QLkhoa_Load(object sender, EventArgs e)
        {
            LoadListKhoa();
            LoadtxtFalse();
        }
        void LoadListKhoa()
        {
            string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
            var connection = new SqlConnection(connString);
            connection.Open();
            SqlCommand cmd = new SqlCommand("sp_ShowListKhoa", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            connection.Close();
            dgvQLkhoa.DataSource = dt;
        }
        void LoadtxtFalse()
        {
            txtMaK.Enabled = false;
            txtTenK.Enabled = false;
            dateTimePickerNgaytao.Enabled = false;
        }
        void LoadtxtTrue()
        {
            txtMaK.Enabled = true;
            txtTenK.Enabled = true;
            dateTimePickerNgaytao.Enabled = true;
        }
        void LoadtxtNull()
        {
            txtMaK.Text = "";
            txtTenK.Text = "";
            dateTimePickerNgaytao.Text = "";
        }
        private void toolStripButtonThemK_Click(object sender, EventArgs e)
        {
            LoadtxtTrue();
            LoadtxtNull();
            flag = 0;
            txtMaK.ReadOnly = false;
        }

        private void toolStripButtonXoaK_Click(object sender, EventArgs e)
        {
            if (txtMaK.Text != "")
            {
                DialogResult del = MessageBox.Show("Bạn có chắc muốn xóa hay không?", "Thông báo ", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (del == DialogResult.Yes)
                {
                    string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                    var connection = new SqlConnection(connString);
                    connection.Open();
                    SqlCommand command = new SqlCommand("sp_DeleteKhoa", connection);
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@makhoa", txtMaK.Text);
                    command.ExecuteNonQuery();
                    LoadtxtNull();
                    MessageBox.Show("Xóa dữ liệu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    LoadListKhoa();
                }
            }
        }

        private void toolStripButtonSuaK_Click(object sender, EventArgs e)
        {
            LoadtxtTrue();
            txtMaK.ReadOnly = true;
            flag = 1;
        }

        private void toolStripButtonLuuK_Click(object sender, EventArgs e)
        {
            if (flag == 0)
            {
                string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                var connection = new SqlConnection(connString);
                connection.Open();
                SqlCommand CheckCodeKExist = new SqlCommand("SELECT COUNT(*) FROM tblKhoa WHERE (MaKhoa = @codek)", connection);
                CheckCodeKExist.Parameters.AddWithValue("@codek", txtMaK.Text);
                int CodeExist = (int)CheckCodeKExist.ExecuteScalar();
                if (CodeExist > 0)
                {
                    MessageBox.Show("Mã khoa đã tồn tại.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    if (txtMaK.Text != "")
                    {
                        if (txtTenK.Text != "")
                        {
                            //string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                            //var connection = new SqlConnection(connString);
                            //connection.Open();
                            string ConvertDatetimeNgaytao = dateTimePickerNgaytao.Value.ToString("yyyy-MM-dd");

                            SqlCommand command = new SqlCommand("sp_InsertKhoa", connection);
                            command.CommandType = CommandType.StoredProcedure;
                            command.Parameters.AddWithValue("@makhoa", txtMaK.Text);
                            command.Parameters.AddWithValue("@tenkhoa", txtTenK.Text);
                            command.Parameters.AddWithValue("@ngaytao", ConvertDatetimeNgaytao);
                            command.ExecuteNonQuery();
                            connection.Close();
                            MessageBox.Show("Thêm dữ liệu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            LoadListKhoa();

                        }
                        else
                        {
                            MessageBox.Show("Vui lòng nhập tên khoa.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                    }
                    else
                    {
                        MessageBox.Show("Vui lòng nhập mã khoa.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
            if (flag == 1)
            {

                if (txtTenK.Text != "")
                {
                    string ConvertDatetimeNgaytao = dateTimePickerNgaytao.Value.ToString("yyyy-MM-dd");
                    string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                    var connection = new SqlConnection(connString);
                    connection.Open();
                    SqlCommand command = new SqlCommand("sp_UpdateKhoa", connection);
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@makhoa", txtMaK.Text);
                    command.Parameters.AddWithValue("@tenkhoa", txtTenK.Text);
                    command.Parameters.AddWithValue("@ngaytao", ConvertDatetimeNgaytao);
                    command.ExecuteNonQuery();
                    MessageBox.Show("Sửa dữ liệu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    LoadListKhoa();

                }
                else
                {
                    MessageBox.Show("Vui lòng nhập tên khoa.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void dgvQLkhoa_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow row = this.dgvQLkhoa.Rows[e.RowIndex];
                //masv = row.Cells[0].Value.ToString();
                txtMaK.Text = row.Cells[0].Value.ToString();
                txtTenK.Text = row.Cells[1].Value.ToString();
                dateTimePickerNgaytao.Text = row.Cells[2].Value.ToString();
                LoadtxtFalse();
                flag = -1;
            }
        }
    }
}
