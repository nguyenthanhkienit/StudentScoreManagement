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
    public partial class Frm_QLgiaovien : Form
    {
        int flag = -1;
        string gioitinh;
        public Frm_QLgiaovien()
        {
            InitializeComponent();
        }

        private void Frm_QLgiaovien_Load(object sender, EventArgs e)
        {
            LoadtxtFalse();
            LoadListGiaoVien();
            groupBoxTimkiemGV.Visible = false;
            groupBoxThongtinGV.Visible = true;
        }
        void LoadListGiaoVien()
        {
            string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
            var connection = new SqlConnection(connString);
            connection.Open();
            SqlCommand cmd = new SqlCommand("sp_ShowListGiaoVien", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            connection.Close();
            dgvQLgiaovien.DataSource = dt;
        }
        void LoadtxtFalse()
        {
            txtMaGV.Enabled = false;
            txtTenGV.Enabled = false;
            dateTimePickerNgaysinhGV.Enabled = false;
            cmbGioitinh.Enabled = false;
            txtEmailGV.Enabled = false;
            dateTimePickerNgaynhanviecGV.Enabled = false;
            txtSdt.Enabled = false;
            txtTrinhdo.Enabled = false;
        }
        void LoadtxtTrue()
        {
            txtMaGV.Enabled = true;
            txtTenGV.Enabled = true;
            dateTimePickerNgaysinhGV.Enabled = true;
            cmbGioitinh.Enabled = true;
            txtEmailGV.Enabled = true;
            dateTimePickerNgaynhanviecGV.Enabled = true;
            txtSdt.Enabled = true;
            txtTrinhdo.Enabled = true;
        }
        void LoadtxtNull()
        {
            txtMaGV.Text = "";
            txtTenGV.Text = "";
            dateTimePickerNgaysinhGV.Text = "";
            cmbGioitinh.Text = "";
            txtEmailGV.Text = "";
            dateTimePickerNgaynhanviecGV.Text = "";
            txtSdt.Text = "";
            txtTrinhdo.Text = "";
        }

        private void toolStripButtonThemGV_Click(object sender, EventArgs e)
        {
            LoadtxtTrue();
            LoadtxtNull();
            flag = 0;
            txtMaGV.ReadOnly = false;
        }

        private void toolStripButtonXoaGV_Click(object sender, EventArgs e)
        {
            if (txtMaGV.Text != "")
            {
                DialogResult del = MessageBox.Show("Bạn có chắc muốn xóa hay không?", "Thông báo ", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (del == DialogResult.Yes)
                {
                    string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                    var connection = new SqlConnection(connString);
                    connection.Open();
                    SqlCommand command = new SqlCommand("sp_DeleteGiaoVien", connection);
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@magv", txtMaGV.Text);
                    command.ExecuteNonQuery();
                    MessageBox.Show("Xóa dữ liệu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    LoadtxtNull();
                    LoadListGiaoVien();
                }
            }
        }

        private void toolStripButtonSuaGV_Click(object sender, EventArgs e)
        {
            LoadtxtTrue();
            txtMaGV.ReadOnly = true;
            flag = 1;
        }

        private void toolStripButtonLuuGV_Click(object sender, EventArgs e)
        {
            if (flag == 0)
            {
                string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                var connection = new SqlConnection(connString);
                connection.Open();
                SqlCommand CheckUserGVExist = new SqlCommand("SELECT COUNT(*) FROM tblGiaoVien WHERE (MaGV = @userGV)", connection);
                CheckUserGVExist.Parameters.AddWithValue("@userGV", txtMaGV.Text);
                int CodeExist = (int)CheckUserGVExist.ExecuteScalar();
                if (CodeExist > 0)
                {
                    MessageBox.Show("Mã giáo viên đã tồn tại.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    if (txtMaGV.Text != "")
                    {
                        if (txtTenGV.Text != "")
                        {
                            if (txtSdt.Text != "")
                            {
                                if (cmbGioitinh.Text == "")
                                {
                                    gioitinh = "";
                                }
                                else
                                {
                                    gioitinh = cmbGioitinh.SelectedItem.ToString();
                                }
                                //string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                                //var connection = new SqlConnection(connString);
                                //connection.Open();
                                string ConvertDatetimeNgaysinh = dateTimePickerNgaysinhGV.Value.ToString("yyyy-MM-dd");
                                string ConvertDatetimeNgaynhanviec = dateTimePickerNgaynhanviecGV.Value.ToString("yyyy-MM-dd");

                                SqlCommand command = new SqlCommand("sp_InsertGiaoVien", connection);
                                command.CommandType = CommandType.StoredProcedure;
                                command.Parameters.AddWithValue("@magv", txtMaGV.Text);
                                command.Parameters.AddWithValue("@tengv", txtTenGV.Text);
                                command.Parameters.AddWithValue("@ngaysinh", ConvertDatetimeNgaysinh);
                                command.Parameters.AddWithValue("@gioitinh", gioitinh);
                                command.Parameters.AddWithValue("@email", txtEmailGV.Text);
                                command.Parameters.AddWithValue("@ngaynhanviec", ConvertDatetimeNgaynhanviec);
                                command.Parameters.AddWithValue("@sdt", txtSdt.Text);
                                command.Parameters.AddWithValue("@trinhdo", txtTrinhdo.Text);
                                command.ExecuteNonQuery();
                                connection.Close();
                                MessageBox.Show("Thêm dữ liệu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                LoadListGiaoVien();
                            }
                            else
                            {
                                MessageBox.Show("Vui lòng nhập số điện thoại.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            }
                        }
                        else
                        {
                            MessageBox.Show("Vui lòng nhập họ tên giáo viên.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                    }
                    else
                    {
                        MessageBox.Show("Vui lòng nhập mã giáo viên.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
            if (flag == 1)
            {
                if (txtTenGV.Text != "")
                {
                    if (txtSdt.Text != "")
                    {
                        if (cmbGioitinh.Text == "")
                        {
                            gioitinh = "";
                        }
                        else
                        {
                            gioitinh = cmbGioitinh.SelectedItem.ToString();
                        }
                        string ConvertDatetimeNgaysinh = dateTimePickerNgaysinhGV.Value.ToString("yyyy-MM-dd");
                        string ConvertDatetimeNgaynhanviec = dateTimePickerNgaynhanviecGV.Value.ToString("yyyy-MM-dd");
                        string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                        var connection = new SqlConnection(connString);
                        connection.Open();
                        SqlCommand command = new SqlCommand("sp_UpdateGiaoVien", connection);
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@magv", txtMaGV.Text);
                        command.Parameters.AddWithValue("@tengv", txtTenGV.Text);
                        command.Parameters.AddWithValue("@ngaysinh", ConvertDatetimeNgaysinh);
                        command.Parameters.AddWithValue("@gioitinh", gioitinh);
                        command.Parameters.AddWithValue("@email", txtEmailGV.Text);
                        command.Parameters.AddWithValue("@ngaynhanviec", ConvertDatetimeNgaynhanviec);
                        command.Parameters.AddWithValue("@sdt", txtSdt.Text);
                        command.Parameters.AddWithValue("@trinhdo", txtTrinhdo.Text);
                        command.ExecuteNonQuery();
                        MessageBox.Show("Sửa dữ liệu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        LoadListGiaoVien();
                    }
                    else
                    {
                        MessageBox.Show("Vui lòng nhập số điện thoại.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                else
                {
                    MessageBox.Show("Vui lòng nhập họ tên giáo viên.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void dgvQLgiaovien_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow row = this.dgvQLgiaovien.Rows[e.RowIndex];
                //masv = row.Cells[0].Value.ToString();
                txtMaGV.Text = row.Cells[0].Value.ToString();
                txtTenGV.Text = row.Cells[1].Value.ToString();
                dateTimePickerNgaysinhGV.Text = row.Cells[2].Value.ToString();
                cmbGioitinh.Text = row.Cells[3].Value.ToString();
                txtEmailGV.Text = row.Cells[4].Value.ToString();
                dateTimePickerNgaynhanviecGV.Text = row.Cells[5].Value.ToString();
                txtSdt.Text = row.Cells[6].Value.ToString();
                txtTrinhdo.Text = row.Cells[7].Value.ToString();
                LoadtxtFalse();
                flag = -1;
            }
        }

        private void toolStripButtonTimkiemGV_Click(object sender, EventArgs e)
        {
            groupBoxTimkiemGV.Visible = true;
            groupBoxThongtinGV.Visible = false;
        }

        private void btnTimkiemGV_Click(object sender, EventArgs e)
        {
            if (cmbTimkiemGV.Text == "")
            {
                MessageBox.Show("Vui lòng chọn loại tìm kiếm.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                var connection = new SqlConnection(connString);
                connection.Open();
                SqlCommand cmd = new SqlCommand("sp_SearchGiaoVien", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@loaitimkiemGV", cmbTimkiemGV.SelectedItem);
                cmd.Parameters.AddWithValue("@thongtintimkiemGV", txtThongtintimkiemGV.Text);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                dgvQLgiaovien.DataSource = dt;
            }
        }

        private void btnThoattimkiemGV_Click(object sender, EventArgs e)
        {
            groupBoxTimkiemGV.Visible = false;
            groupBoxThongtinGV.Visible = true;
        }

        private void txtSdt_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && (e.KeyChar != '.'))
            {
                e.Handled = true;
                MessageBox.Show("Vui lòng nhập số.", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
