using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace StudentScoreManagement
{
    public partial class Frm_QLsinhvien : Form
    {
        int flag = -1;
        string abc;
        //string masv = "";
        string gioitinh;
        public Frm_QLsinhvien()
        {
            InitializeComponent();
        }

        private void Frm_QLsinhvien_Load(object sender, EventArgs e)
        {
            LoadListSinhVien();
            LoadtxtFalse();
            LoadcmbMaLop();
            groupBoxTimkiem.Visible = false;
            groupBoxThongtin.Visible = true;
        }
        void LoadListSinhVien()
        {
            string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
            var connection = new SqlConnection(connString);
            connection.Open();
            SqlCommand cmd = new SqlCommand("sp_ShowListSinhVien", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            connection.Close();
            dgvQLsinhvien.DataSource = dt;
        }
        void LoadtxtFalse()
        {
            txtMaSV.Enabled = false;
            txtHoten.Enabled = false;
            dateTimePickerNgaysinh.Enabled = false;
            cmbGioitinh.Enabled = false;
            txtDiachi.Enabled = false;
            cmbMalop.Enabled = false;
        }
        void LoadtxtTrue()
        {
            txtMaSV.Enabled = true;
            txtHoten.Enabled = true;
            dateTimePickerNgaysinh.Enabled = true;
            cmbGioitinh.Enabled = true;
            txtDiachi.Enabled = true;
            cmbMalop.Enabled = true;
        }
        void LoadtxtNull()
        {
            txtMaSV.Text = "";
            txtHoten.Text = "";
            dateTimePickerNgaysinh.Text = "";
            cmbGioitinh.Text = "";
            txtDiachi.Text = "";
            cmbMalop.Text = "";
        }
        void LoadcmbMaLop()
        {
            string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
            var connection = new SqlConnection(connString);
            connection.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM tblLop", connection);
            SqlDataReader sqlReader = cmd.ExecuteReader();

            while (sqlReader.Read())
            {
                cmbMalop.Items.Add(sqlReader["MaLop"].ToString() + " - " + sqlReader["TenLop"].ToString());
            }

            sqlReader.Close();
        }
        private void toolStripButtonXoa_Click(object sender, EventArgs e)
        {
            if (txtMaSV.Text != "")
            {
                DialogResult del = MessageBox.Show("Bạn có chắc muốn xóa hay không?", "Thông báo ", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (del == DialogResult.Yes)
                {
                    string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                    var connection = new SqlConnection(connString);
                    connection.Open();
                    SqlCommand command = new SqlCommand("sp_DeleteSinhVien", connection);
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@maSV", txtMaSV.Text);
                    command.ExecuteNonQuery();
                    LoadtxtNull();
                    MessageBox.Show("Xóa dữ liệu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    LoadListSinhVien();
                }
            }
        }

        private void toolStripButtonSua_Click(object sender, EventArgs e)
        {
            LoadtxtTrue();
            txtMaSV.ReadOnly = true;
            flag = 1;
        }

        private void toolStripButtonLuu_Click(object sender, EventArgs e)
        {
            if (flag == 0)
            {
                string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                var connection = new SqlConnection(connString);
                connection.Open();
                SqlCommand CheckUserExist = new SqlCommand("SELECT COUNT(*) FROM tblSinhVien WHERE (MaSV = @user)", connection);
                CheckUserExist.Parameters.AddWithValue("@user", txtMaSV.Text);
                int CodeExist = (int)CheckUserExist.ExecuteScalar();
                if (CodeExist > 0)
                {
                    MessageBox.Show("Mã sinh viên đã tồn tại.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    if (txtMaSV.Text != "")
                    {
                        if (txtHoten.Text != "")
                        {
                            if (cmbMalop.Text != "")
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
                                string ConvertDatetimeNgayssinh = dateTimePickerNgaysinh.Value.ToString("yyyy-MM-dd");
                                SqlCommand command = new SqlCommand("sp_InsertSinhVien", connection);
                                command.CommandType = CommandType.StoredProcedure;
                                command.Parameters.AddWithValue("@masv", txtMaSV.Text);
                                command.Parameters.AddWithValue("@hoten", txtHoten.Text);
                                command.Parameters.AddWithValue("@ngaysinh", ConvertDatetimeNgayssinh);
                                command.Parameters.AddWithValue("@gioitinh", gioitinh);
                                command.Parameters.AddWithValue("@diachi", txtDiachi.Text);
                                command.Parameters.AddWithValue("@malop", cmbMalop.SelectedItem);
                                command.ExecuteNonQuery();
                                connection.Close();
                                MessageBox.Show("Thêm dữ liệu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                LoadListSinhVien();
                            }
                            else
                            {
                                MessageBox.Show("Vui lòng chọn mã lớp.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            }
                        }
                        else
                        {
                            MessageBox.Show("Vui lòng nhập họ tên.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                    }
                    else
                    {
                        MessageBox.Show("Vui lòng nhập mã sinh viên.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
            if (flag == 1)
            {
                if (txtHoten.Text != "")
                {
                    if (cmbMalop.Text != "")
                    {
                        if (cmbGioitinh.Text == "")
                        {
                            gioitinh = "";
                        }
                        else
                        {
                            gioitinh = cmbGioitinh.SelectedItem.ToString();
                        }
                        string ConvertDatetimeNgayssinh = dateTimePickerNgaysinh.Value.ToString("yyyy-MM-dd");
                        string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                        var connection = new SqlConnection(connString);
                        connection.Open();
                        SqlCommand command = new SqlCommand("sp_UpdateSinhVien", connection);
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@masv", txtMaSV.Text);
                        command.Parameters.AddWithValue("@hoten", txtHoten.Text);
                        command.Parameters.AddWithValue("@ngaysinh", ConvertDatetimeNgayssinh);
                        command.Parameters.AddWithValue("@gioitinh", gioitinh);
                        command.Parameters.AddWithValue("@diachi", txtDiachi.Text);
                        if (abc=="select")
                        {
                            command.Parameters.AddWithValue("@malop", cmbMalop.SelectedItem);
                        }
                        else
                        {
                            command.Parameters.AddWithValue("@malop", cmbMalop.Text);
                        }
                        command.ExecuteNonQuery();
                        MessageBox.Show("Sửa dữ liệu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        LoadListSinhVien();
                    }
                    else
                    {
                        MessageBox.Show("Vui lòng chọn mã lớp.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                else
                {
                    MessageBox.Show("Vui lòng nhập họ tên.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }

            if (flag == 2)
            {
                string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                var connection = new SqlConnection(connString);
                connection.Open();

                for (int i = 0; i < dgvQLsinhvien.Rows.Count - 1; i++)
                {
                    SqlCommand command = new SqlCommand("sp_InsertSinhVien", connection);
                    command.CommandType = CommandType.StoredProcedure;
                    string masv = dgvQLsinhvien.Rows[i].Cells[0].Value.ToString();
                    string hoten = dgvQLsinhvien.Rows[i].Cells[1].Value.ToString();
                    string ngaysinh = dgvQLsinhvien.Rows[i].Cells[2].Value.ToString();
                    DateTime oDate = Convert.ToDateTime(ngaysinh);
                    string ConvertDatetimeNgayssinh = oDate.ToString("yyyy-MM-dd");
                    string gioitinh = dgvQLsinhvien.Rows[i].Cells[3].Value.ToString();
                    string diachi = dgvQLsinhvien.Rows[i].Cells[4].Value.ToString();
                    string malop = dgvQLsinhvien.Rows[i].Cells[5].Value.ToString();
                    command.Parameters.AddWithValue("@masv", masv);
                    command.Parameters.AddWithValue("@hoten", hoten);
                    command.Parameters.AddWithValue("@ngaysinh", ConvertDatetimeNgayssinh);
                    command.Parameters.AddWithValue("@gioitinh", gioitinh);
                    command.Parameters.AddWithValue("@diachi", diachi);
                    command.Parameters.AddWithValue("@malop", malop);
                    command.ExecuteNonQuery();
                }
                connection.Close();
                MessageBox.Show("Thêm dữ liệu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }
        private void toolStripButtonTimkiem_Click(object sender, EventArgs e)
        {
            groupBoxTimkiem.Visible = true;
            groupBoxThongtin.Visible = false;
        }

        private void dgvQLsinhvien_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow row = this.dgvQLsinhvien.Rows[e.RowIndex];
                //masv = row.Cells[0].Value.ToString();
                txtMaSV.Text = row.Cells[0].Value.ToString();
                txtHoten.Text = row.Cells[1].Value.ToString();
                dateTimePickerNgaysinh.Text = row.Cells[2].Value.ToString();
                cmbGioitinh.Text = row.Cells[3].Value.ToString();
                txtDiachi.Text = row.Cells[4].Value.ToString();
                cmbMalop.Text = row.Cells[5].Value.ToString();
                LoadtxtFalse();
                flag = -1;
            }
        }

        private void btnTimkiem_Click(object sender, EventArgs e)
        {
            if (cmbTimkiem.Text == "")
            {
                MessageBox.Show("Vui lòng chọn loại tìm kiếm.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                var connection = new SqlConnection(connString);
                connection.Open();
                SqlCommand cmd = new SqlCommand("sp_SearchSinhVien", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@loaitimkiem", cmbTimkiem.SelectedItem);
                cmd.Parameters.AddWithValue("@thongtintimkiem", txtThongtintimkiem.Text);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                dgvQLsinhvien.DataSource = dt;
            }
        }
        private void btnThoattimkiem_Click(object sender, EventArgs e)
        {
            groupBoxTimkiem.Visible = false;
            groupBoxThongtin.Visible = true;
        }

        private void txtMaSV_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && (e.KeyChar != '.'))
            {
                e.Handled = true;
                MessageBox.Show("Vui lòng nhập số.", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void dgvQLsinhvien_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Right)
            {
                var hit = dgvQLsinhvien.HitTest(e.X, e.Y);
                if (hit.Type == DataGridViewHitTestType.ColumnHeader || hit.Type == DataGridViewHitTestType.None || hit.Type == DataGridViewHitTestType.TopLeftHeader || hit.Type == DataGridViewHitTestType.RowHeader)
                {

                }
                else
                {
                    dgvQLsinhvien.ClearSelection();
                    dgvQLsinhvien[hit.ColumnIndex, hit.RowIndex].Selected = true;
                    int tongsodongdemtu1 = dgvQLsinhvien.Rows.Count;
                    int tongsodongdemtu0 = this.dgvQLsinhvien.SelectedRows[0].Index;
                    if (tongsodongdemtu1 - tongsodongdemtu0 > 1)
                    {
                        int currentMouseOverRow = dgvQLsinhvien.HitTest(e.X, e.Y).RowIndex;
                        ContextMenu m = new ContextMenu();
                        System.Windows.Forms.MenuItem AutoTakeCode = new System.Windows.Forms.MenuItem("Lấy mã SV.", AutoTakeCode_Click);
                        m.MenuItems.Add(AutoTakeCode);
                        m.Show(dgvQLsinhvien, new System.Drawing.Point(e.X, e.Y));
                    }
                }
            }
        }
        private void AutoTakeCode_Click(object sender, EventArgs e)
        {
            if (dgvQLsinhvien.Rows[0].Cells[0].Value.ToString() == "")
            {
                int _mssv = 0;
                string _usercode;
                string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                var connection = new SqlConnection(connString);
                connection.Open();
                SqlCommand cmd = new SqlCommand("SELECT TOP 1 MaSV FROM [tblSinhVien] ORDER BY MaSV DESC", connection);
                SqlDataReader sqlReader = cmd.ExecuteReader();
                while (sqlReader.Read())
                {
                    _usercode = sqlReader["MaSV"].ToString();
                    _mssv = int.Parse(_usercode);
                }
                sqlReader.Close();
                for (int i = 0; i < dgvQLsinhvien.Rows.Count - 1; i++)
                {
                    dgvQLsinhvien.Rows[i].Cells[0].Value = (_mssv + 1 + i).ToString();
                }
                MessageBox.Show("Lấy mã sinh viên thành công.", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                MessageBox.Show("Danh sách đã có mã số sinh viên.", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }    
        }

        private void ToolStripMenuItemThemtay_Click(object sender, EventArgs e)
        {
            LoadtxtTrue();
            LoadtxtNull();
            flag = 0;
            txtMaSV.ReadOnly = false;
        }

        private void ToolStripMenuItemTuExcel_Click(object sender, EventArgs e)
        {
            string txtFilePath = "";
            //List<string> listSheet = new List<string>();
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Filter = "Excel Files (.xls*)|*.xls*|All Files (*.*)|*.*";
            //dlg.Multiselect = false;

            DialogResult dlgResult = dlg.ShowDialog();
            if (dlgResult == DialogResult.OK)
            {
                txtFilePath = dlg.FileName;
                if (txtFilePath.Equals(""))
                {
                    //lblMsg.Text = "Please Load File First!!!";
                    return;
                }
                if (!File.Exists(txtFilePath))
                {
                    //lblMsg.Text = "Can not Open File!!!";
                    return;
                }
                string filePath = txtFilePath;
                string excelcon;
                if (filePath.Substring(filePath.LastIndexOf('.')).ToLower() == ".xlsx")
                {
                    excelcon = "Provider = Microsoft.ACE.OLEDB.12.0; Data Source = " + filePath + "; Extended Properties = 'Excel 12.0;HDR=Yes;IMEX=1;'";
                }
                else
                {
                    excelcon = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + filePath + ";Extended Properties='Excel 8.0;HDR=NO;IMEX=1'";
                }
                OleDbConnection conexcel = new OleDbConnection(excelcon);

                try
                {
                    conexcel.Open();
                    DataTable dtExcel = conexcel.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
                    string sheetName = dtExcel.Rows[0]["Table_Name"].ToString();
                    OleDbCommand cmdexcel1 = new OleDbCommand();
                    cmdexcel1.Connection = conexcel;
                    cmdexcel1.CommandText = "select * from[" + sheetName + "]";
                    DataTable dt = new DataTable();
                    OleDbDataAdapter da = new OleDbDataAdapter();
                    da.SelectCommand = cmdexcel1;
                    da.Fill(dt);
                    conexcel.Close();
                    dgvQLsinhvien.Columns.Clear();
                    dgvQLsinhvien.DataSource = dt;
                    //dgvQLsinhvien.Rows.RemoveAt(0);
                    flag = 2;
                }
                catch (Exception ex)
                {
                    conexcel.Close();
                    MessageBox.Show(ex.ToString());
                }
            }
        }

        private void cmbMalop_SelectedIndexChanged(object sender, EventArgs e)
        {
            abc = "select";
        }
    }
}

