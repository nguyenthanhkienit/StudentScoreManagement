using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace StudentScoreManagement
{
    public partial class Frm_Main : Form
    {
        //Khai báo delegate
        public delegate void SendNguoiDung(string _mes);
        public SendNguoiDung Sender;
        private void GetNguoiDung(string Message_)
        {
            lbNguoiDung.Text = Message_;
        }
        public Frm_Main()
        {
            InitializeComponent();
            //Tạo con trỏ tới hàm GetNguoiDung
            Sender = new SendNguoiDung(GetNguoiDung); //Hàm có nhiệm vụ lấy tham số truyền vào
        }
        private void btnQLgiaovien_Click(object sender, EventArgs e)
        {
            this.pnlContain.Controls.Clear();
            Frm_QLgiaovien frm_QLGV = new Frm_QLgiaovien();
            frm_QLGV.TopLevel = false;
            frm_QLGV.AutoScroll = true;
            pnlContain.Controls.Add(frm_QLGV);
            frm_QLGV.FormBorderStyle = FormBorderStyle.None;
            frm_QLGV.Show();
        }
        private void btnQLsinhvien_Click(object sender, EventArgs e)
        {
            this.pnlContain.Controls.Clear();
            Frm_QLsinhvien frm_QLSV = new Frm_QLsinhvien();
            frm_QLSV.TopLevel = false;
            frm_QLSV.AutoScroll = true;
            pnlContain.Controls.Add(frm_QLSV);
            frm_QLSV.FormBorderStyle = FormBorderStyle.None;
            frm_QLSV.Show();
        }
        public void btnQLdiem_Click(object sender, EventArgs e)
        {
            this.pnlContain.Controls.Clear();
            Frm_QLdiem frm_QLD = new Frm_QLdiem();
            frm_QLD.TopLevel = false;
            frm_QLD.AutoScroll = true;
            pnlContain.Controls.Add(frm_QLD);
            frm_QLD.FormBorderStyle = FormBorderStyle.None;
            frm_QLD.Show();
        }
        private void btnQLkhoa_Click(object sender, EventArgs e)
        {
            this.pnlContain.Controls.Clear();
            Frm_QLkhoa frm_QLK = new Frm_QLkhoa();
            frm_QLK.TopLevel = false;
            frm_QLK.AutoScroll = true;
            pnlContain.Controls.Add(frm_QLK);
            frm_QLK.FormBorderStyle = FormBorderStyle.None;
            frm_QLK.Show();
        }

        private void btnQLlop_Click(object sender, EventArgs e)
        {
            this.pnlContain.Controls.Clear();
            Frm_QLlop frm_QLL = new Frm_QLlop();
            frm_QLL.TopLevel = false;
            frm_QLL.AutoScroll = true;
            pnlContain.Controls.Add(frm_QLL);
            frm_QLL.FormBorderStyle = FormBorderStyle.None;
            frm_QLL.Show();
        }

        private void btnQLmonhoc_Click(object sender, EventArgs e)
        {
            this.pnlContain.Controls.Clear();
            Frm_QLmonhoc frm_QLMH = new Frm_QLmonhoc();
            frm_QLMH.TopLevel = false;
            frm_QLMH.AutoScroll = true;
            pnlContain.Controls.Add(frm_QLMH);
            frm_QLMH.FormBorderStyle = FormBorderStyle.None;
            frm_QLMH.Show();
        }

        private void Frm_Main_Load(object sender, EventArgs e)
        {
            DateTime aDateTime = DateTime.Now;
            lbNgayGio.Text = aDateTime.ToString();
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
