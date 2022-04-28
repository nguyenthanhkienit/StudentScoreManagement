
namespace StudentScoreManagement
{
    partial class Frm_Main
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.pnlContain = new System.Windows.Forms.Panel();
            this.btnQLsinhvien = new System.Windows.Forms.Button();
            this.btnQLgiaovien = new System.Windows.Forms.Button();
            this.btnQLdiem = new System.Windows.Forms.Button();
            this.btnQLlop = new System.Windows.Forms.Button();
            this.btnQLmonhoc = new System.Windows.Forms.Button();
            this.btnQLkhoa = new System.Windows.Forms.Button();
            this.btnThoat = new System.Windows.Forms.Button();
            this.lbNgayGio = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.lbNguoiDung = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // pnlContain
            // 
            this.pnlContain.BackColor = System.Drawing.SystemColors.ScrollBar;
            this.pnlContain.Location = new System.Drawing.Point(164, 0);
            this.pnlContain.Name = "pnlContain";
            this.pnlContain.Size = new System.Drawing.Size(899, 557);
            this.pnlContain.TabIndex = 1;
            // 
            // btnQLsinhvien
            // 
            this.btnQLsinhvien.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnQLsinhvien.Location = new System.Drawing.Point(12, 94);
            this.btnQLsinhvien.Name = "btnQLsinhvien";
            this.btnQLsinhvien.Size = new System.Drawing.Size(125, 38);
            this.btnQLsinhvien.TabIndex = 1;
            this.btnQLsinhvien.Text = "QL Sinh viên";
            this.btnQLsinhvien.UseVisualStyleBackColor = true;
            this.btnQLsinhvien.Click += new System.EventHandler(this.btnQLsinhvien_Click);
            // 
            // btnQLgiaovien
            // 
            this.btnQLgiaovien.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnQLgiaovien.Location = new System.Drawing.Point(12, 50);
            this.btnQLgiaovien.Name = "btnQLgiaovien";
            this.btnQLgiaovien.Size = new System.Drawing.Size(125, 38);
            this.btnQLgiaovien.TabIndex = 0;
            this.btnQLgiaovien.Text = "QL Giáo viên";
            this.btnQLgiaovien.UseVisualStyleBackColor = true;
            this.btnQLgiaovien.Click += new System.EventHandler(this.btnQLgiaovien_Click);
            // 
            // btnQLdiem
            // 
            this.btnQLdiem.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnQLdiem.Location = new System.Drawing.Point(12, 138);
            this.btnQLdiem.Name = "btnQLdiem";
            this.btnQLdiem.Size = new System.Drawing.Size(125, 38);
            this.btnQLdiem.TabIndex = 2;
            this.btnQLdiem.Text = "QL Điểm";
            this.btnQLdiem.UseVisualStyleBackColor = true;
            this.btnQLdiem.Click += new System.EventHandler(this.btnQLdiem_Click);
            // 
            // btnQLlop
            // 
            this.btnQLlop.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnQLlop.Location = new System.Drawing.Point(12, 226);
            this.btnQLlop.Name = "btnQLlop";
            this.btnQLlop.Size = new System.Drawing.Size(125, 38);
            this.btnQLlop.TabIndex = 4;
            this.btnQLlop.Text = "QL Lớp";
            this.btnQLlop.UseVisualStyleBackColor = true;
            this.btnQLlop.Click += new System.EventHandler(this.btnQLlop_Click);
            // 
            // btnQLmonhoc
            // 
            this.btnQLmonhoc.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnQLmonhoc.Location = new System.Drawing.Point(12, 270);
            this.btnQLmonhoc.Name = "btnQLmonhoc";
            this.btnQLmonhoc.Size = new System.Drawing.Size(125, 38);
            this.btnQLmonhoc.TabIndex = 5;
            this.btnQLmonhoc.Text = "QL Môn học";
            this.btnQLmonhoc.UseVisualStyleBackColor = true;
            this.btnQLmonhoc.Click += new System.EventHandler(this.btnQLmonhoc_Click);
            // 
            // btnQLkhoa
            // 
            this.btnQLkhoa.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnQLkhoa.Location = new System.Drawing.Point(12, 182);
            this.btnQLkhoa.Name = "btnQLkhoa";
            this.btnQLkhoa.Size = new System.Drawing.Size(125, 38);
            this.btnQLkhoa.TabIndex = 3;
            this.btnQLkhoa.Text = "QL Khoa";
            this.btnQLkhoa.UseVisualStyleBackColor = true;
            this.btnQLkhoa.Click += new System.EventHandler(this.btnQLkhoa_Click);
            // 
            // btnThoat
            // 
            this.btnThoat.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThoat.Location = new System.Drawing.Point(12, 314);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(125, 38);
            this.btnThoat.TabIndex = 6;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // lbNgayGio
            // 
            this.lbNgayGio.AutoSize = true;
            this.lbNgayGio.Location = new System.Drawing.Point(161, 565);
            this.lbNgayGio.Name = "lbNgayGio";
            this.lbNgayGio.Size = new System.Drawing.Size(49, 13);
            this.lbNgayGio.TabIndex = 8;
            this.lbNgayGio.Text = "Ngày giờ";
            this.lbNgayGio.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 565);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(80, 13);
            this.label1.TabIndex = 9;
            this.label1.Text = "Đăng nhập bởi:";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // lbNguoiDung
            // 
            this.lbNguoiDung.AutoSize = true;
            this.lbNguoiDung.Location = new System.Drawing.Point(90, 565);
            this.lbNguoiDung.Name = "lbNguoiDung";
            this.lbNguoiDung.Size = new System.Drawing.Size(16, 13);
            this.lbNguoiDung.TabIndex = 10;
            this.lbNguoiDung.Text = "...";
            this.lbNguoiDung.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // Frm_Main
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Gainsboro;
            this.ClientSize = new System.Drawing.Size(1063, 586);
            this.Controls.Add(this.lbNguoiDung);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.lbNgayGio);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.btnQLkhoa);
            this.Controls.Add(this.btnQLmonhoc);
            this.Controls.Add(this.btnQLlop);
            this.Controls.Add(this.btnQLdiem);
            this.Controls.Add(this.btnQLgiaovien);
            this.Controls.Add(this.btnQLsinhvien);
            this.Controls.Add(this.pnlContain);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D;
            this.MaximizeBox = false;
            this.Name = "Frm_Main";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "PHẦN MỀM QUẢN LÝ ĐIỂM SINH VIÊN";
            this.Load += new System.EventHandler(this.Frm_Main_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Panel pnlContain;
        private System.Windows.Forms.Button btnQLsinhvien;
        private System.Windows.Forms.Button btnQLgiaovien;
        private System.Windows.Forms.Button btnQLdiem;
        private System.Windows.Forms.Button btnQLlop;
        private System.Windows.Forms.Button btnQLmonhoc;
        private System.Windows.Forms.Button btnQLkhoa;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.Label lbNgayGio;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lbNguoiDung;
    }
}

