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
    public partial class Frm_QLmonhoc : Form
    {
        int flag = -1;
        public Frm_QLmonhoc()
        {
            InitializeComponent();
        }

        private void Frm_QLmonhoc_Load(object sender, EventArgs e)
        {
            LoadtxtFalse();
            LoadListMonHoc();
            LoadcmbMaGV();
            LoadcmbMaKhoa();
            groupBoxTimkiemMH.Visible = false;
            groupBoxThongtinMH.Visible = true;
        }
        void LoadListMonHoc()
        {
            string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
            var connection = new SqlConnection(connString);
            connection.Open();
            SqlCommand cmd = new SqlCommand("sp_ShowListMonHoc", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            connection.Close();
            dgvQLmonhoc.DataSource = dt;
        }
        void LoadtxtFalse()
        {
            txtMaMH.Enabled = false;
            txtTenMH.Enabled = false;
            txtSotinchi.Enabled = false;
            cmbMaGV.Enabled = false;
            txtHocky.Enabled = false;
            cmbMakhoa.Enabled = false;
        }
        void LoadtxtTrue()
        {
            txtMaMH.Enabled = true;
            txtTenMH.Enabled = true;
            txtSotinchi.Enabled = true;
            cmbMaGV.Enabled = true;
            txtHocky.Enabled = true;
            cmbMakhoa.Enabled = true;
        }
        void LoadtxtNull()
        {
            txtMaMH.Text = "";
            txtTenMH.Text = "";
            txtSotinchi.Text = "";
            cmbMaGV.Text = "";
            txtHocky.Text = "";
            cmbMakhoa.Text = "";
        }
        void LoadcmbMaGV()
        {
            string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
            var connection = new SqlConnection(connString);
            connection.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM tblGiaoVien", connection);
            SqlDataReader sqlReader = cmd.ExecuteReader();

            while (sqlReader.Read())
            {
                cmbMaGV.Items.Add(sqlReader["MaGV"].ToString() + " - " + sqlReader["TenGV"].ToString());
            }

            sqlReader.Close();
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

        private void toolStripButtonThemMH_Click(object sender, EventArgs e)
        {
            LoadtxtTrue();
            LoadtxtNull();
            flag = 0;
            txtMaMH.ReadOnly = false;
        }

        private void toolStripButtonXoaMH_Click(object sender, EventArgs e)
        {
            if (txtMaMH.Text != "")
            {
                DialogResult del = MessageBox.Show("Bạn có chắc muốn xóa hay không?", "Thông báo ", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (del == DialogResult.Yes)
                {
                    string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                    var connection = new SqlConnection(connString);
                    connection.Open();
                    SqlCommand command = new SqlCommand("sp_DeleteMonHoc", connection);
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@mamh", txtMaMH.Text);
                    command.ExecuteNonQuery();
                    MessageBox.Show("Xóa dữ liệu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    LoadtxtNull();
                    LoadListMonHoc();
                }
            }
        }
        private void toolStripButtonSuaMH_Click(object sender, EventArgs e)
        {
            LoadtxtTrue();
            txtMaMH.ReadOnly = true;
            flag = 1;
        }

        private void toolStripButtonLuuMH_Click(object sender, EventArgs e)
        {
            if (flag == 0)
            {
                string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                var connection = new SqlConnection(connString);
                connection.Open();
                SqlCommand CheckCodeMHExist = new SqlCommand("SELECT COUNT(*) FROM tblMonHoc WHERE (MaMon = @codeMH)", connection);
                CheckCodeMHExist.Parameters.AddWithValue("@codeMH", txtMaMH.Text);
                int CodeExist = (int)CheckCodeMHExist.ExecuteScalar();
                if (CodeExist > 0)
                {
                    MessageBox.Show("Mã môn học đã tồn tại.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    if (txtMaMH.Text != "" && txtTenMH.Text != "" && txtSotinchi.Text != "" && cmbMaGV.Text != "" && txtHocky.Text != "" && cmbMakhoa.Text != "")
                    {
                        //string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                        //var connection = new SqlConnection(connString);
                        //connection.Open();
                        SqlCommand command = new SqlCommand("sp_InsertMonHoc", connection);
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@mamh", txtMaMH.Text);
                        command.Parameters.AddWithValue("@tenmh", txtTenMH.Text);
                        command.Parameters.AddWithValue("@sotinchi", txtSotinchi.Text);
                        command.Parameters.AddWithValue("@magv", cmbMaGV.SelectedItem);
                        command.Parameters.AddWithValue("@hocky", txtHocky.Text);
                        command.Parameters.AddWithValue("@makhoa", cmbMakhoa.SelectedItem);
                        command.ExecuteNonQuery();
                        connection.Close();
                        MessageBox.Show("Thêm dữ liệu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        LoadListMonHoc();
                    }
                    else
                    {
                        MessageBox.Show("Vui lòng nhập đầy đủ thông tin.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
            if (flag == 1)
            {
                if (txtTenMH.Text != "" && txtSotinchi.Text != "" && cmbMaGV.Text != "" && txtHocky.Text != "" && cmbMakhoa.Text != "")
                {
                    string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                    var connection = new SqlConnection(connString);
                    connection.Open();
                    SqlCommand command = new SqlCommand("sp_UpdateMonHoc", connection);
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@mamh", txtMaMH.Text);
                    command.Parameters.AddWithValue("@tenmh", txtTenMH.Text);
                    command.Parameters.AddWithValue("@sotinchi", txtSotinchi.Text);
                    command.Parameters.AddWithValue("@magv", cmbMaGV.SelectedItem);
                    command.Parameters.AddWithValue("@hocky", txtHocky.Text);
                    command.Parameters.AddWithValue("@makhoa", cmbMakhoa.SelectedItem);
                    command.ExecuteNonQuery();
                    connection.Close();
                    MessageBox.Show("Sửa dữ liệu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    LoadListMonHoc();
                }
                else
                {
                    MessageBox.Show("Vui lòng nhập đầy đủ thông tin.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void dgvQLmonhoc_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow row = this.dgvQLmonhoc.Rows[e.RowIndex];
                //masv = row.Cells[0].Value.ToString();
                txtMaMH.Text = row.Cells[0].Value.ToString();
                txtTenMH.Text = row.Cells[1].Value.ToString();
                txtSotinchi.Text = row.Cells[2].Value.ToString();
                cmbMaGV.Text = row.Cells[3].Value.ToString();
                txtHocky.Text = row.Cells[4].Value.ToString();
                cmbMakhoa.Text = row.Cells[5].Value.ToString();
                LoadtxtFalse();
                flag = -1;
            }
        }

        private void toolStripButtonTimkiemMH_Click(object sender, EventArgs e)
        {
            groupBoxTimkiemMH.Visible = true;
            groupBoxThongtinMH.Visible = false;
        }

        private void btnTimkiemMH_Click(object sender, EventArgs e)
        {
            if (cmbTimkiemMH.Text == "")
            {
                MessageBox.Show("Vui lòng chọn loại tìm kiếm.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                var connection = new SqlConnection(connString);
                connection.Open();
                SqlCommand cmd = new SqlCommand("sp_SearchMonHoc", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@loaitimkiemMH", cmbTimkiemMH.SelectedItem);
                cmd.Parameters.AddWithValue("@thongtintimkiemMH", txtThongtintimkiemMH.Text);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                dgvQLmonhoc.DataSource = dt;
            }
        }

        private void btnThoattimkiemMH_Click(object sender, EventArgs e)
        {
            groupBoxTimkiemMH.Visible = false;
            groupBoxThongtinMH.Visible = true;
        }

        private void txtSotinchi_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && (e.KeyChar != '.'))
            {
                e.Handled = true;
                MessageBox.Show("Vui lòng nhập số.", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void txtHocky_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && (e.KeyChar != '.'))
            {
                e.Handled = true;
                MessageBox.Show("Vui lòng nhập số.", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
