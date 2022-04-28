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
    public partial class Frm_QLketqua : Form
    {
        public Frm_QLketqua()
        {
            InitializeComponent();
        }
        private void btnXuatdiem_Click(object sender, EventArgs e)
        {
            string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
            var connection = new SqlConnection(connString);
            connection.Open();
            SqlCommand cmd = new SqlCommand("sp_ShowListScore", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@masv_malop", txtThongtincapnhat.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            connection.Close();
            dgvKQ.DataSource = dt;
        }

        private void btnCapnhat_Click(object sender, EventArgs e)
        {
            string connString = ConfigurationManager.ConnectionStrings["connectionSQL"].ConnectionString;
            var connection = new SqlConnection(connString);
            int CodeExist = 0;
            connection.Open();
            SqlCommand CheckUserExist = new SqlCommand("SELECT COUNT (DISTINCT MaSV) FROM tblDiem WHERE (Malop = @malop)", connection);
            CheckUserExist.Parameters.AddWithValue("@malop", txtThongtincapnhat.Text);
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



                    for (i = k; i < dgvKQ.Rows.Count - 1; i++)
                    {
                        if (i == 0)
                        {
                            string diemtrungbinh = dgvKQ.Rows[i].Cells[2].Value.ToString();
                            string sotinchi = dgvKQ.Rows[i].Cells[3].Value.ToString();
                            string hocky = dgvKQ.Rows[i].Cells[4].Value.ToString();

                            Double _diemtrungbinh = Double.Parse(diemtrungbinh);
                            int _sotinchi = int.Parse(sotinchi);
                            stc = stc + _sotinchi;
                            int _hocky = int.Parse(hocky);

                            Double diem1mon = _diemtrungbinh * _sotinchi;
                            DiemTK_temp = DiemTK_temp + diem1mon;
                        }
                        else
                        {
                            if ((i - 1 + h) < dgvKQ.Rows.Count - 2)
                            {
                                if (dgvKQ.Rows[i - 1 + h].Cells[0].Value.ToString() == dgvKQ.Rows[i + h].Cells[0].Value.ToString())
                                {
                                    string diemtrungbinh = dgvKQ.Rows[i + h].Cells[2].Value.ToString();
                                    string sotinchi = dgvKQ.Rows[i + h].Cells[3].Value.ToString();
                                    string hocky = dgvKQ.Rows[i + h].Cells[4].Value.ToString();

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
                                    SqlCommand commandDel = new SqlCommand("DELETE tblKetQua WHERE (MaSV = @masv)", connection);
                                    //commandDel.CommandType = CommandType.StoredProcedure;
                                    commandDel.Parameters.AddWithValue("@masv", dgvKQ.Rows[i - 1].Cells[0].Value.ToString());
                                    commandDel.ExecuteNonQuery();

                                    SqlCommand command = new SqlCommand("sp_InsertKetQua", connection);
                                    command.CommandType = CommandType.StoredProcedure;
                                    command.Parameters.AddWithValue("@masv", dgvKQ.Rows[i - 1].Cells[0].Value.ToString());
                                    command.Parameters.AddWithValue("@tensv", dgvKQ.Rows[i - 1].Cells[1].Value.ToString());
                                    command.Parameters.AddWithValue("@diemtongket", DiemTK.ToString());
                                    command.Parameters.AddWithValue("@ketqua", kq);

                                    command.ExecuteNonQuery();

                                    //connection.Close();
                                    //MessageBox.Show("Thêm dữ liệu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);




                                    string diemtrungbinh = dgvKQ.Rows[i].Cells[2].Value.ToString();
                                    string sotinchi = dgvKQ.Rows[i].Cells[3].Value.ToString();
                                    string hocky = dgvKQ.Rows[i].Cells[4].Value.ToString();

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

                                //xóa dữ liệu cũ
                                SqlCommand commandDel = new SqlCommand("DELETE tblKetQua WHERE (MaSV = @masv)", connection);
                                //commandDel.CommandType = CommandType.StoredProcedure;
                                commandDel.Parameters.AddWithValue("@masv", dgvKQ.Rows[i].Cells[0].Value.ToString());
                                commandDel.ExecuteNonQuery();

                                SqlCommand command = new SqlCommand("sp_InsertKetQua", connection);
                                command.CommandType = CommandType.StoredProcedure;
                                command.Parameters.AddWithValue("@masv", dgvKQ.Rows[i].Cells[0].Value.ToString());
                                command.Parameters.AddWithValue("@tensv", dgvKQ.Rows[i].Cells[1].Value.ToString());
                                command.Parameters.AddWithValue("@diemtongket", DiemTK.ToString());
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
                for (i = k; i < dgvKQ.Rows.Count - 1; i++)
                {
                    if (i == 0)
                    {
                        string diemtrungbinh = dgvKQ.Rows[i].Cells[2].Value.ToString();
                        string sotinchi = dgvKQ.Rows[i].Cells[3].Value.ToString();
                        string hocky = dgvKQ.Rows[i].Cells[4].Value.ToString();

                        Double _diemtrungbinh = Double.Parse(diemtrungbinh);
                        int _sotinchi = int.Parse(sotinchi);
                        stc = stc + _sotinchi;
                        int _hocky = int.Parse(hocky);

                        Double diem1mon = _diemtrungbinh * _sotinchi;
                        DiemTK_temp = DiemTK_temp + diem1mon;
                    }
                    else
                    {
                        if ((i - 1 + h) < dgvKQ.Rows.Count - 2)
                        {
                            if (dgvKQ.Rows[i - 1 + h].Cells[0].Value.ToString() == dgvKQ.Rows[i + h].Cells[0].Value.ToString())
                            {
                                string diemtrungbinh = dgvKQ.Rows[i + h].Cells[2].Value.ToString();
                                string sotinchi = dgvKQ.Rows[i + h].Cells[3].Value.ToString();
                                string hocky = dgvKQ.Rows[i + h].Cells[4].Value.ToString();

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
            SqlCommand commandDel_masv = new SqlCommand("DELETE tblKetQua WHERE (MaSV = @masv)", connection);
            //commandDel.CommandType = CommandType.StoredProcedure;
            commandDel_masv.Parameters.AddWithValue("@masv", dgvKQ.Rows[i - 1].Cells[0].Value.ToString());
            commandDel_masv.ExecuteNonQuery();

            SqlCommand command_masv = new SqlCommand("sp_InsertKetQua", connection);
            command_masv.CommandType = CommandType.StoredProcedure;
            command_masv.Parameters.AddWithValue("@masv", dgvKQ.Rows[i - 1].Cells[0].Value.ToString());
            command_masv.Parameters.AddWithValue("@tensv", dgvKQ.Rows[i - 1].Cells[1].Value.ToString());
            command_masv.Parameters.AddWithValue("@diemtongket", DiemTK_masv.ToString());
            command_masv.Parameters.AddWithValue("@ketqua", kq_masv);

            command_masv.ExecuteNonQuery();
        }
    }
}
