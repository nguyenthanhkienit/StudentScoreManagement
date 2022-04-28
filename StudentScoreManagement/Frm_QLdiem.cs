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
    public partial class Frm_QLdiem : Form
    {
        int exist = 0;
        int flag = -1;
        string abc;
        string mamontemp;
        //string updatepresent;
        public Frm_QLdiem()
        {
            InitializeComponent();
        }

        private void Frm_QLdiem_Load(object sender, EventArgs e)
        {
            LoadtxtFalse();
            //LoadcmbMaLop();
            LoadcmbMaMon();
            txtHoten.ReadOnly = true;
            txtMalop.ReadOnly = true;
            groupBoxTimkiemD.Visible = false;
            groupBoxCapnhatDTK.Visible = false;
            groupBoxThongtinD.Visible = true;
        }
        void LoadHoTenMaLop()
        {
            string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
            var connection = new SqlConnection(connString);
            connection.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM tblSinhVien WHERE MaSV=" + txtMaSV.Text, connection);
            SqlDataReader sqlReader = cmd.ExecuteReader();

            while (sqlReader.Read())
            {
                txtHoten.Text = (sqlReader["HoTen"].ToString());
                txtMalop.Text = (sqlReader["Malop"].ToString());
            }
            sqlReader.Close();
            if (txtHoten.Text == "" && txtMalop.Text == "")
            {
                MessageBox.Show("Mã sinh viên không có trong danh sách sinh viên.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
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
                //txtMalop.Items.Add(sqlReader["MaLop"].ToString() + " - " + sqlReader["TenLop"].ToString());
            }

            sqlReader.Close();
        }
        void LoadcmbMaMon()
        {
            string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
            var connection = new SqlConnection(connString);
            connection.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM tblMonHoc", connection);
            SqlDataReader sqlReader = cmd.ExecuteReader();

            while (sqlReader.Read())
            {
                cmbMamon.Items.Add(sqlReader["MaMon"].ToString() + " - " + sqlReader["TenMon"].ToString());
            }

            sqlReader.Close();
        }
        void LoadtxtFalse()
        {
            txtMaSV.Enabled = false;
            //txtHoten.Enabled = false;
            //txtMalop.Enabled = false;
            txtDiemgiuaky.Enabled = false;
            txtDiemcuoiky.Enabled = false;
            txtDiemTB.Enabled = false;
            cmbMamon.Enabled = false;
            txtGhichu.Enabled = false;
        }
        void LoadtxtTrue()
        {
            txtMaSV.Enabled = true;
            //txtHoten.Enabled = true;
            //txtMalop.Enabled = true;
            txtDiemgiuaky.Enabled = true;
            txtDiemcuoiky.Enabled = true;
            txtDiemTB.Enabled = true;
            cmbMamon.Enabled = true;
            txtGhichu.Enabled = true;
        }
        void LoadtxtNull()
        {
            txtMaSV.Text = "";
            txtHoten.Text = "";
            txtMalop.Text = "";
            txtDiemgiuaky.Text = "";
            txtDiemcuoiky.Text = "";
            txtDiemTB.Text = "";
            cmbMamon.Text = "";
            txtGhichu.Text = "";
        }

        //private void button1_Click(object sender, EventArgs e)
        //{
        //    string congthuc;
        //    string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
        //    var connection = new SqlConnection(connString);
        //    connection.Open();
        //    SqlCommand cmd = new SqlCommand("SELECT TOP 1 DiemTrungBinh FROM [tblDTB]", connection);
        //    SqlDataReader sqlReader = cmd.ExecuteReader();
        //    while (sqlReader.Read())
        //    {
        //        congthuc = sqlReader["DiemTrungBinh"].ToString();
        //    }
        //    sqlReader.Close();
        //    for (int i = 0; i < dgvQLdiem.Rows.Count - 1; i++)
        //    {
        //        Double dgk = Double.Parse(dgvQLdiem.Rows[i].Cells[3].Value.ToString());
        //        Double dck = Double.Parse(dgvQLdiem.Rows[i].Cells[4].Value.ToString());

        //        dgvQLdiem.Rows[i].Cells[5].Value = (dgk + dck * 2) / 3;
        //    }
        //}
        private void toolStripButtonLuuD_Click(object sender, EventArgs e)
        {
            if (flag == 1)
            {
                if (txtMaSV.Text != "" && txtHoten.Text != "" && txtMalop.Text != "" && txtDiemgiuaky.Text != "" && txtDiemcuoiky.Text != "" && txtDiemTB.Text != "" && cmbMamon.Text != "")
                {
                    string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                    var connection = new SqlConnection(connString);
                    connection.Open();
                    string Str = (string)cmbMamon.SelectedItem;
                    string Str_cut = Str.Substring(0, 6);
                    SqlCommand CheckUserExist = new SqlCommand("SELECT COUNT(*) FROM tblDiem WHERE MaSV = @SVexist and MaMon = @MaMHexist and MaLop = @MaLopexist", connection);
                    CheckUserExist.Parameters.AddWithValue("@SVexist", txtMaSV.Text);
                    CheckUserExist.Parameters.AddWithValue("@MaMHexist", Str_cut);
                    CheckUserExist.Parameters.AddWithValue("@MaLopexist", txtMalop.Text);
                    int CodeExist = (int)CheckUserExist.ExecuteScalar();
                    if (CodeExist > 0)
                    {
                        MessageBox.Show("Mã sinh viên " + txtMaSV.Text + " đã có điểm môn " + Str_cut + ".", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        connection.Close();
                    }
                    else
                    {
                        //string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                        //var connection = new SqlConnection(connString);
                        //connection.Open();
                        SqlCommand command = new SqlCommand("sp_InsertDiem", connection);
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@masv", txtMaSV.Text);
                        command.Parameters.AddWithValue("@tensv", txtHoten.Text);
                        command.Parameters.AddWithValue("@diemgiuaky", txtDiemgiuaky.Text);
                        command.Parameters.AddWithValue("@diemcuoiky", txtDiemcuoiky.Text);
                        command.Parameters.AddWithValue("@diemTB", txtDiemTB.Text);
                        command.Parameters.AddWithValue("@ghichu", txtGhichu.Text);
                        command.Parameters.AddWithValue("@malop", txtMalop.Text);
                        command.Parameters.AddWithValue("@mamon", cmbMamon.SelectedItem);
                        command.ExecuteNonQuery();
                        connection.Close();
                        dgvQLdiem.Rows.Add(txtMaSV.Text, txtHoten.Text, txtMalop.Text, Str_cut, txtDiemgiuaky.Text, txtDiemcuoiky.Text, txtDiemTB.Text, txtGhichu.Text);
                        MessageBox.Show("Thêm dữ liệu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        flag = 1;
                    }
                }
                else
                {
                    MessageBox.Show("Vui lòng nhập đầy đủ thông tin.\nGhi chú có thể bỏ trống.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            if (flag == 2 || flag == 3)
            {
                string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                var connection = new SqlConnection(connString);
                connection.Open();

                for (int i = 0; i < dgvQLdiem.Rows.Count - 1; i++)
                {
                    SqlCommand CheckUserExist = new SqlCommand("SELECT COUNT(*) FROM tblDiem WHERE MaSV = @SVexist and MaMon = @MaMHexist and MaLop = @MaLopexist", connection);
                    CheckUserExist.Parameters.AddWithValue("@SVexist", dgvQLdiem.Rows[i].Cells[0].Value.ToString());
                    CheckUserExist.Parameters.AddWithValue("@MaMHexist", dgvQLdiem.Rows[i].Cells[3].Value.ToString());
                    CheckUserExist.Parameters.AddWithValue("@MaLopexist", dgvQLdiem.Rows[i].Cells[2].Value.ToString());
                    int CodeExist = (int)CheckUserExist.ExecuteScalar();
                    if (CodeExist > 0)
                    {
                        MessageBox.Show("Mã sinh viên " + dgvQLdiem.Rows[i].Cells[0].Value.ToString() + " đã có điểm môn " + dgvQLdiem.Rows[i].Cells[3].Value.ToString() + ".", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        connection.Close();
                        break;
                    }
                    else
                    {
                        SqlCommand command = new SqlCommand("sp_InsertDiem", connection);
                        command.CommandType = CommandType.StoredProcedure;
                        string masv = dgvQLdiem.Rows[i].Cells[0].Value.ToString();
                        string hoten = dgvQLdiem.Rows[i].Cells[1].Value.ToString();
                        string malop = dgvQLdiem.Rows[i].Cells[2].Value.ToString();
                        string mamon = dgvQLdiem.Rows[i].Cells[3].Value.ToString();
                        string diemgiuaky = dgvQLdiem.Rows[i].Cells[4].Value.ToString();
                        string diemcuoiky = dgvQLdiem.Rows[i].Cells[5].Value.ToString();
                        string diemTB = dgvQLdiem.Rows[i].Cells[6].Value.ToString();
                        string ghichu = dgvQLdiem.Rows[i].Cells[7].Value.ToString();
                        command.Parameters.AddWithValue("@masv", masv);
                        command.Parameters.AddWithValue("@tensv", hoten);
                        command.Parameters.AddWithValue("@diemgiuaky", diemgiuaky);
                        command.Parameters.AddWithValue("@diemcuoiky", diemcuoiky);
                        command.Parameters.AddWithValue("@diemTB", diemTB);
                        command.Parameters.AddWithValue("@ghichu", ghichu);
                        command.Parameters.AddWithValue("@malop", malop);
                        command.Parameters.AddWithValue("@mamon", mamon);
                        command.ExecuteNonQuery();
                        exist = 1;
                    }
                }
                if (exist == 1)
                {
                    connection.Close();
                    MessageBox.Show("Thêm dữ liệu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    exist = 0;
                    flag = 2;
                }
            }
            if (flag == 5)
            {
                if (txtDiemgiuaky.Text != "" && txtDiemcuoiky.Text != "" && txtDiemTB.Text != "" && cmbMamon.Text != "")
                {

                    string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                    var connection = new SqlConnection(connString);
                    connection.Open();
                    SqlCommand command = new SqlCommand("sp_UpdateDiem", connection);
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@masv", txtMaSV.Text);
                    //command.Parameters.AddWithValue("@tensv", txtHoten.Text);
                    command.Parameters.AddWithValue("@diemgiuaky", txtDiemgiuaky.Text);
                    command.Parameters.AddWithValue("@diemcuoiky", txtDiemcuoiky.Text);
                    command.Parameters.AddWithValue("@diemTB", txtDiemTB.Text);
                    command.Parameters.AddWithValue("@ghichu", txtGhichu.Text);
                    command.Parameters.AddWithValue("@mamontemp", mamontemp);
                    //command.Parameters.AddWithValue("@malop", txtMalop.Text);
                    if (abc == "select")
                    {
                        command.Parameters.AddWithValue("@mamon", cmbMamon.SelectedItem);
                    }
                    else
                    {
                        command.Parameters.AddWithValue("@mamon", cmbMamon.Text);
                    }
                    command.ExecuteNonQuery();
                    toolStripButtonTimkiemD.PerformClick();
                    btnTimkiemD.PerformClick();
                    btnThoattimkiemD.PerformClick();
                    connection.Close();
                    //int row = dgvQLdiem.CurrentCell.RowIndex;
                    //dgvQLdiem.Rows.RemoveAt(row);

                    //if (abc == "select")
                    //{
                    //    dgvQLdiem.Rows.Add(txtMaSV.Text, txtHoten.Text, txtMalop.Text, cmbMamon.SelectedItem, txtDiemgiuaky.Text, txtDiemcuoiky.Text, txtDiemTB.Text, txtGhichu.Text);
                    //}
                    //else
                    //{
                    //    dgvQLdiem.Rows.Add(txtMaSV.Text, txtHoten.Text, txtMalop.Text, cmbMamon.Text, txtDiemgiuaky.Text, txtDiemcuoiky.Text, txtDiemTB.Text, txtGhichu.Text);
                    //}
                    MessageBox.Show("Sửa dữ liệu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    flag = 1;
                }
                else
                {
                    MessageBox.Show("Vui lòng nhập đầy đủ thông tin.\nGhi chú có thể bỏ trống.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
        private void ToolStripMenuItemNhaptay_Click(object sender, EventArgs e)
        {
            LoadtxtTrue();
            LoadtxtNull();
            flag = 1;
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
                    dgvQLdiem.Columns.Clear();
                    dgvQLdiem.DataSource = dt;
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
        private void txtMaSV_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                LoadHoTenMaLop();
            }
        }

        private void toolStripButtonXoa_Click(object sender, EventArgs e)
        {
            if (flag == 3)
            {
                if (txtMaSV.Text != "")
                {
                    DialogResult del = MessageBox.Show("Bạn có chắc muốn xóa hay không?", "Thông báo ", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                    if (del == DialogResult.Yes)
                    {
                        string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                        var connection = new SqlConnection(connString);
                        connection.Open();
                        SqlCommand command = new SqlCommand("sp_DeleteDiem", connection);
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@maSV", txtMaSV.Text);
                        command.Parameters.AddWithValue("@malop", txtMalop.Text);
                        command.Parameters.AddWithValue("@maMH", cmbMamon.Text);
                        command.ExecuteNonQuery();
                        int row = dgvQLdiem.CurrentCell.RowIndex;
                        dgvQLdiem.Rows.RemoveAt(row);
                        LoadtxtNull();
                        MessageBox.Show("Xóa dữ liệu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
            }
            if (flag == 4)
            {
                int row = dgvQLdiem.CurrentCell.RowIndex;
                dgvQLdiem.Rows.RemoveAt(row);
                MessageBox.Show("Xóa dữ liệu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                flag = 2;
            }
        }

        private void dgvQLdiem_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (flag == 1 || flag == 3 || flag == 5)
            {
                var hit = dgvQLdiem.HitTest(e.RowIndex, e.ColumnIndex);
                if (hit.Type == DataGridViewHitTestType.None && e.RowIndex >= 0)
                {
                    DataGridViewRow row = this.dgvQLdiem.Rows[e.RowIndex];
                    //masv = row.Cells[0].Value.ToString();
                    txtMaSV.Text = row.Cells[0].Value.ToString();
                    txtHoten.Text = row.Cells[1].Value.ToString();
                    txtMalop.Text = row.Cells[6].Value.ToString();
                    cmbMamon.Text = row.Cells[7].Value.ToString();
                    mamontemp = row.Cells[7].Value.ToString();
                    txtDiemgiuaky.Text = row.Cells[2].Value.ToString();
                    txtDiemcuoiky.Text = row.Cells[3].Value.ToString();
                    txtDiemTB.Text = row.Cells[4].Value.ToString();
                    txtGhichu.Text = row.Cells[5].Value.ToString();
                    LoadtxtFalse();
                    flag = 3;
                    //updatepresent = row.Cells[3].Value.ToString();
                }
            }
            if (flag == 2 || flag == 4)
            {
                flag = 4;
            }
        }
        private void toolStripButtonSua_Click(object sender, EventArgs e)
        {
            LoadtxtTrue();
            txtMaSV.ReadOnly = true;
            //cmbMamon.Enabled = false;
            flag = 5;
        }

        private void toolStripButtonTimkiemD_Click(object sender, EventArgs e)
        {
            groupBoxTimkiemD.Visible = true;
            groupBoxThongtinD.Visible = false;
            groupBoxCapnhatDTK.Visible = false;

        }

        private void btnTimkiemD_Click(object sender, EventArgs e)
        {
            if (cmbTimkiemD.Text == "")
            {
                MessageBox.Show("Vui lòng chọn loại tìm kiếm.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                var connection = new SqlConnection(connString);
                connection.Open();
                SqlCommand cmd = new SqlCommand("sp_SearchDiem", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@loaitimkiemD", cmbTimkiemD.SelectedItem);
                cmd.Parameters.AddWithValue("@thongtintimkiemD", txtThongtintimkiemD.Text);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                dgvQLdiem.DataSource = dt;
                flag = 1;
            }
        }

        private void btnThoattimkiemD_Click(object sender, EventArgs e)
        {
            groupBoxTimkiemD.Visible = false;
            groupBoxThongtinD.Visible = true;
            groupBoxCapnhatDTK.Visible = false;
        }

        private void txtDiemgiuaky_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && (e.KeyChar != '.'))
            {
                e.Handled = true;
                MessageBox.Show("Vui lòng nhập số.", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void txtDiemcuoiky_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && (e.KeyChar != '.'))
            {
                e.Handled = true;
                MessageBox.Show("Vui lòng nhập số.", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void txtDiemTB_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && (e.KeyChar != '.'))
            {
                e.Handled = true;
                MessageBox.Show("Vui lòng nhập số.", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void txtMaSV_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && (e.KeyChar != '.'))
            {
                e.Handled = true;
                MessageBox.Show("Vui lòng nhập số.", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void toolStripButtonTongketD_Click(object sender, EventArgs e)
        {
            groupBoxCapnhatDTK.Visible = true;
            groupBoxThongtinD.Visible = false;
            groupBoxTimkiemD.Visible = false;
            btnCapnhat.Enabled = false;
        }
        private void btnKiemtra_Click(object sender, EventArgs e)
        {
            if (txtThongtincapnhat.Text != "" && txtHockyDTK.Text != "")
            {
                dgvQLdiem.Columns.Clear();
                string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                var connection = new SqlConnection(connString);
                connection.Open();
                SqlCommand cmd = new SqlCommand("sp_ShowListScore", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@masv_malop", txtThongtincapnhat.Text);
                cmd.Parameters.AddWithValue("@hocky", txtHockyDTK.Text);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                dgvQLdiem.DataSource = dt;
                if (dgvQLdiem.Rows.Count > 1)
                {
                    btnCapnhat.Enabled = true;
                }
                else
                {
                    btnCapnhat.Enabled = false;
                }
            }
            else
            { MessageBox.Show("Vui lòng nhập đầy đủ thông tin.", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Error); }    
        }
        private void btnCapnhat_Click(object sender, EventArgs e)
        {
            string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
            var connection = new SqlConnection(connString);
            int CodeExist = 0;
            connection.Open();
            SqlCommand CheckUserExist = new SqlCommand("sp_CountQuantity", connection);
            CheckUserExist.CommandType = CommandType.StoredProcedure;
            CheckUserExist.Parameters.AddWithValue("@masv_malop", txtThongtincapnhat.Text);
            CheckUserExist.Parameters.AddWithValue("@hocky", txtHockyDTK.Text);
            CodeExist = (int)CheckUserExist.ExecuteScalar();

            int i = 0;
            int k = 0;
            int h = 0;
            Double DiemTK_temp = 0;
            int stc = 0;

            if (CodeExist > 1)
            {
                for (int j = 0; j < CodeExist; j++)
                {



                    for (i = k; i < dgvQLdiem.Rows.Count - 1; i++)
                    {
                        if (i == 0)
                        {
                            string diemtrungbinh = dgvQLdiem.Rows[i].Cells[2].Value.ToString();
                            string sotinchi = dgvQLdiem.Rows[i].Cells[3].Value.ToString();
                            string hocky = dgvQLdiem.Rows[i].Cells[4].Value.ToString();

                            Double _diemtrungbinh = Double.Parse(diemtrungbinh);
                            int _sotinchi = int.Parse(sotinchi);
                            stc = stc + _sotinchi;
                            int _hocky = int.Parse(hocky);

                            Double diem1mon = _diemtrungbinh * _sotinchi;
                            DiemTK_temp = DiemTK_temp + diem1mon;
                        }
                        else
                        {
                            if ((i - 1 + h) < dgvQLdiem.Rows.Count - 2)
                            {
                                if (dgvQLdiem.Rows[i - 1 + h].Cells[0].Value.ToString() == dgvQLdiem.Rows[i + h].Cells[0].Value.ToString())
                                {
                                    string diemtrungbinh = dgvQLdiem.Rows[i + h].Cells[2].Value.ToString();
                                    string sotinchi = dgvQLdiem.Rows[i + h].Cells[3].Value.ToString();
                                    string hocky = dgvQLdiem.Rows[i + h].Cells[4].Value.ToString();

                                    Double _diemtrungbinh = Double.Parse(diemtrungbinh);
                                    int _sotinchi = int.Parse(sotinchi);
                                    stc = stc + _sotinchi;
                                    int _hocky = int.Parse(hocky);

                                    Double diem1mon = _diemtrungbinh * _sotinchi;
                                    DiemTK_temp = DiemTK_temp + diem1mon;
                                }
                                else
                                {


                                    k = i;
                                    i = i + h;
                                    Double DiemTK = DiemTK_temp / stc;
                                    //label1.Text = DiemTK.ToString();

                                    string kq;
                                    if (DiemTK >= 5)
                                    {
                                        kq = "Đạt";
                                    }
                                    else
                                    {
                                        kq = "Không đạt";
                                    }

                                    // save database
                                    //string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
                                    //var connection = new SqlConnection(connString);
                                    //connection.Open();
                                    //string ConvertDatetimeNgayssinh = dateTimePickerNgaysinh.Value.ToString("yyyy-MM-dd");

                                    //xóa dữ liệu cũ
                                    SqlCommand commandDel = new SqlCommand("DELETE tblKetQua WHERE (MaSV = @masv AND HocKy = @hocky)", connection);
                                    //commandDel.CommandType = CommandType.StoredProcedure;
                                    commandDel.Parameters.AddWithValue("@masv", dgvQLdiem.Rows[i - 1].Cells[0].Value.ToString());
                                    commandDel.Parameters.AddWithValue("@hocky", txtHockyDTK.Text);
                                    commandDel.ExecuteNonQuery();

                                    SqlCommand command = new SqlCommand("sp_InsertKetQua", connection);
                                    command.CommandType = CommandType.StoredProcedure;
                                    command.Parameters.AddWithValue("@masv", dgvQLdiem.Rows[i - 1].Cells[0].Value.ToString());
                                    command.Parameters.AddWithValue("@tensv", dgvQLdiem.Rows[i - 1].Cells[1].Value.ToString());
                                    command.Parameters.AddWithValue("@diemtongket", DiemTK.ToString());
                                    command.Parameters.AddWithValue("@hocky", txtHockyDTK.Text);
                                    command.Parameters.AddWithValue("@ketqua", kq);

                                    command.ExecuteNonQuery();

                                    //connection.Close();
                                    //MessageBox.Show("Thêm dữ liệu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);




                                    string diemtrungbinh = dgvQLdiem.Rows[i].Cells[2].Value.ToString();
                                    string sotinchi = dgvQLdiem.Rows[i].Cells[3].Value.ToString();
                                    string hocky = dgvQLdiem.Rows[i].Cells[4].Value.ToString();

                                    Double _diemtrungbinh = Double.Parse(diemtrungbinh);
                                    int _sotinchi = int.Parse(sotinchi);
                                    stc = _sotinchi;
                                    int _hocky = int.Parse(hocky);

                                    Double diem1mon = _diemtrungbinh * _sotinchi;
                                    DiemTK_temp = diem1mon;
                                    h++;


                                    break;

                                }
                            }
                            else
                            {
                                Double DiemTK = DiemTK_temp / stc;
                                //label1.Text = DiemTK.ToString();
                                string kq;
                                if (DiemTK >= 5)
                                {
                                    kq = "Đạt";
                                }
                                else
                                {
                                    kq = "Không đạt";
                                }

                                //xóa dữ liệu cũ //// test
                                SqlCommand commandDel = new SqlCommand("DELETE tblKetQua WHERE (MaSV = @masv AND HocKy = @hocky)", connection);
                                //commandDel.CommandType = CommandType.StoredProcedure;
                                commandDel.Parameters.AddWithValue("@masv", dgvQLdiem.Rows[i+h-1].Cells[0].Value.ToString());
                                commandDel.Parameters.AddWithValue("@hocky", txtHockyDTK.Text);
                                commandDel.ExecuteNonQuery();

                                SqlCommand command = new SqlCommand("sp_InsertKetQua", connection);
                                command.CommandType = CommandType.StoredProcedure;
                                command.Parameters.AddWithValue("@masv", dgvQLdiem.Rows[i + h - 1].Cells[0].Value.ToString());
                                command.Parameters.AddWithValue("@tensv", dgvQLdiem.Rows[i + h - 1].Cells[1].Value.ToString());
                                command.Parameters.AddWithValue("@diemtongket", DiemTK.ToString());
                                command.Parameters.AddWithValue("@hocky", txtHockyDTK.Text);
                                command.Parameters.AddWithValue("@ketqua", kq);

                                command.ExecuteNonQuery();
                                break;
                            }
                        }
                    }

                }
            }
            else //1 mã sinh viên
            {
                for (i = k; i < dgvQLdiem.Rows.Count - 1; i++)
                {
                    if (i == 0)
                    {
                        string diemtrungbinh = dgvQLdiem.Rows[i].Cells[2].Value.ToString();
                        string sotinchi = dgvQLdiem.Rows[i].Cells[3].Value.ToString();
                        string hocky = dgvQLdiem.Rows[i].Cells[4].Value.ToString();

                        Double _diemtrungbinh = Double.Parse(diemtrungbinh);
                        int _sotinchi = int.Parse(sotinchi);
                        stc = stc + _sotinchi;
                        int _hocky = int.Parse(hocky);

                        Double diem1mon = _diemtrungbinh * _sotinchi;
                        DiemTK_temp = DiemTK_temp + diem1mon;
                    }
                    else
                    {
                        if ((i - 1 + h) < dgvQLdiem.Rows.Count - 2)
                        {
                            if (dgvQLdiem.Rows[i - 1 + h].Cells[0].Value.ToString() == dgvQLdiem.Rows[i + h].Cells[0].Value.ToString())
                            {
                                string diemtrungbinh = dgvQLdiem.Rows[i + h].Cells[2].Value.ToString();
                                string sotinchi = dgvQLdiem.Rows[i + h].Cells[3].Value.ToString();
                                string hocky = dgvQLdiem.Rows[i + h].Cells[4].Value.ToString();

                                Double _diemtrungbinh = Double.Parse(diemtrungbinh);
                                int _sotinchi = int.Parse(sotinchi);
                                stc = stc + _sotinchi;
                                int _hocky = int.Parse(hocky);

                                Double diem1mon = _diemtrungbinh * _sotinchi;
                                DiemTK_temp = DiemTK_temp + diem1mon;
                            }

                        }
                    }
                }
                Double DiemTK_masv = DiemTK_temp / stc;
                //label1.Text = DiemTK.ToString();
                string kq_masv;
                if (DiemTK_masv >= 5)
                {
                    kq_masv = "Đạt";
                }
                else
                {
                    kq_masv = "Không đạt";
                }

                //xóa dữ liệu cũ
                SqlCommand commandDel_masv = new SqlCommand("DELETE tblKetQua WHERE (MaSV = @masv AND HocKy = @hocky)", connection);
                //commandDel.CommandType = CommandType.StoredProcedure;
                commandDel_masv.Parameters.AddWithValue("@masv", dgvQLdiem.Rows[i - 1].Cells[0].Value.ToString());
                commandDel_masv.Parameters.AddWithValue("@hocky", txtHockyDTK.Text);
                commandDel_masv.ExecuteNonQuery();

                SqlCommand command_masv = new SqlCommand("sp_InsertKetQua", connection);
                command_masv.CommandType = CommandType.StoredProcedure;
                command_masv.Parameters.AddWithValue("@masv", dgvQLdiem.Rows[i - 1].Cells[0].Value.ToString());///
                command_masv.Parameters.AddWithValue("@tensv", dgvQLdiem.Rows[i - 1].Cells[1].Value.ToString());///
                command_masv.Parameters.AddWithValue("@diemtongket", DiemTK_masv.ToString());
                command_masv.Parameters.AddWithValue("@hocky", txtHockyDTK.Text);
                command_masv.Parameters.AddWithValue("@ketqua", kq_masv);

                command_masv.ExecuteNonQuery();
            }
            MessageBox.Show("Cập nhật điểm tổng kết thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void btnXembangdiem_Click(object sender, EventArgs e)
        {
            dgvQLdiem.Columns.Clear();
            string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
            var connection = new SqlConnection(connString);
            connection.Open();
            SqlCommand cmd = new SqlCommand("sp_ExportDiemTongKet", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@masv_malop", txtThongtincapnhat.Text);
            cmd.Parameters.AddWithValue("@hocky", txtHockyDTK.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            connection.Close();
            dgvQLdiem.DataSource = dt;
            btnCapnhat.Enabled = false;
        }

        private void btnThoatDTK_Click(object sender, EventArgs e)
        {
            groupBoxCapnhatDTK.Visible = false;
            groupBoxThongtinD.Visible = true;
            groupBoxTimkiemD.Visible = false;
        }

        private void txtHockyDTK_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && (e.KeyChar != '.'))
            {
                e.Handled = true;
                MessageBox.Show("Vui lòng nhập số.", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void cmbMamon_SelectedIndexChanged(object sender, EventArgs e)
        {
            abc = "select";
        }
    }
}
