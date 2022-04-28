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
    public partial class Frm_QLlop : Form
    {
        int flag = -1;
        public Frm_QLlop()
        {
            InitializeComponent();
        }

        private void Frm_QLlop_Load(object sender, EventArgs e)
        {
            LoadListLop();
            LoadtxtFalse();
            LoadcmbMaKhoa();
        }
        void LoadListLop()
        {
            string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
            var connection = new SqlConnection(connString);
            connection.Open();
            SqlCommand cmd = new SqlCommand("sp_ShowListLop", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            connection.Close();
            dgvQLlop.DataSource = dt;
        }
        void LoadtxtFalse()
        {
            txtMaL.Enabled = false;
            txtTenL.Enabled = false;
            dateTimePickerNgaytao.Enabled = false;
            cmbMakhoa.Enabled = false;
        }
        void LoadtxtTrue()
        {
            txtMaL.Enabled = true;
            txtTenL.Enabled = true;
            dateTimePickerNgaytao.Enabled = true;
            cmbMakhoa.Enabled = true;
        }
        void LoadtxtNull()
        {
            txtMaL.Text = "";
            txtTenL.Text = "";
            dateTimePickerNgaytao.Text = "";
            cmbMakhoa.Text = "";
        }
        void LoadcmbMaKhoa()
        {
            string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
            var connection = new SqlConnection(connString);
            connection.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM tblKhoa", connection);
            SqlDataReader sqlReader = cmd.ExecuteReader();

            while (sqlReader.Read())
            {
                cmbMakhoa.Items.Add(sqlReader["MaKhoa"].ToString() + " - " + sqlReader["TenKhoa"].ToString());
            }

            sqlReader.Close();
        }
        private void toolStripButtonThemL_Click(object sender, EventArgs e)
        {
            LoadtxtTrue();
            LoadtxtNull();
            flag = 0;
            txtMaL.ReadOnly = false;
        }

        private void toolStripButtonXoaL_Click(object sender, EventArgs e)
        {
            if (txtMaL.Text != "")
            {
                DialogResult del = MessageBox.Show("Bạn có chắc muốn xóa hay không?", "Thông báo ", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (del == DialogResult.Yes)
                {
                    string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                    var connection = new SqlConnection(connString);
                    connection.Open();
                    SqlCommand command = new SqlCommand("sp_DeleteLop", connection);
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@malop", txtMaL.Text);
                    command.ExecuteNonQuery();
                    LoadtxtNull();
                    MessageBox.Show("Xóa dữ liệu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    LoadListLop();
                }
            }
        }

        private void toolStripButtonSuaL_Click(object sender, EventArgs e)
        {
            LoadtxtTrue();
            txtMaL.ReadOnly = true;
            flag = 1;
        }
        private void toolStripButtonLuuL_Click(object sender, EventArgs e)
        {
            if (flag == 0)
            {
                string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                var connection = new SqlConnection(connString);
                connection.Open();
                SqlCommand CheckCodeLExist = new SqlCommand("SELECT COUNT(*) FROM tblLop WHERE (MaLop = @codel)", connection);
                CheckCodeLExist.Parameters.AddWithValue("@codel", txtMaL.Text);
                int CodeExist = (int)CheckCodeLExist.ExecuteScalar();
                if (CodeExist > 0)
                {
                    MessageBox.Show("Mã lớp đã tồn tại.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    if (txtMaL.Text != "")
                    {
                        if (txtTenL.Text != "")
                        {
                            if (cmbMakhoa.Text != "")
                            {
                                //string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                                //var connection = new SqlConnection(connString);
                                //connection.Open();
                                string ConvertDatetimeNgaytao = dateTimePickerNgaytao.Value.ToString("yyyy-MM-dd");
                                SqlCommand command = new SqlCommand("sp_InsertLop", connection);
                                command.CommandType = CommandType.StoredProcedure;
                                command.Parameters.AddWithValue("@malop", txtMaL.Text);
                                command.Parameters.AddWithValue("@tenlop", txtTenL.Text);
                                command.Parameters.AddWithValue("@ngaytao", ConvertDatetimeNgaytao);
                                command.Parameters.AddWithValue("@makhoa", cmbMakhoa.SelectedItem);
                                command.ExecuteNonQuery();
                                connection.Close();
                                MessageBox.Show("Thêm dữ liệu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                LoadListLop();
                            }
                            else
                            {
                                MessageBox.Show("Vui lòng nhập mã khoa.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            }
                        }
                        else
                        {
                            MessageBox.Show("Vui lòng nhập tên lớp.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                    }
                    else
                    {
                        MessageBox.Show("Vui lòng nhập mã lớp.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
            if (flag == 1)
            {

                if (txtTenL.Text != "")
                {
                    if (cmbMakhoa.Text != "")
                    {
                        string ConvertDatetimeNgaytao = dateTimePickerNgaytao.Value.ToString("yyyy-MM-dd");
                        string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                        var connection = new SqlConnection(connString);
                        connection.Open();
                        SqlCommand command = new SqlCommand("sp_UpdateLop", connection);
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@malop", txtMaL.Text);
                        command.Parameters.AddWithValue("@tenlop", txtTenL.Text);
                        command.Parameters.AddWithValue("@ngaytao", ConvertDatetimeNgaytao);
                        command.Parameters.AddWithValue("@makhoa", cmbMakhoa.SelectedItem);
                        command.ExecuteNonQuery();
                        MessageBox.Show("Sửa dữ liệu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        LoadListLop();
                    }
                    else
                    {
                        MessageBox.Show("Vui lòng nhập mã khoa.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                else
                {
                    MessageBox.Show("Vui lòng nhập tên lớp.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
        private void dgvQLlop_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow row = this.dgvQLlop.Rows[e.RowIndex];
                //masv = row.Cells[0].Value.ToString();
                txtMaL.Text = row.Cells[0].Value.ToString();
                txtTenL.Text = row.Cells[1].Value.ToString();
                dateTimePickerNgaytao.Text = row.Cells[2].Value.ToString();
                cmbMakhoa.Text = row.Cells[3].Value.ToString();
                LoadtxtFalse();
                flag = -1;
            }
        }
    }
}
