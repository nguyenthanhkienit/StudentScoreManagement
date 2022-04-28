
namespace StudentScoreManagement
{
    partial class Frm_QLsinhvien
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
            this.dgvQLsinhvien = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column6 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.toolStripSV = new System.Windows.Forms.ToolStrip();
            this.toolStripDropDownButtonThemSV = new System.Windows.Forms.ToolStripDropDownButton();
            this.ToolStripMenuItemThemtay = new System.Windows.Forms.ToolStripMenuItem();
            this.ToolStripMenuItemTuExcel = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripButtonXoa = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripButtonSua = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator4 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripButtonLuu = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator3 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripButtonTimkiem = new System.Windows.Forms.ToolStripButton();
            this.txtHoten = new System.Windows.Forms.TextBox();
            this.cmbMalop = new System.Windows.Forms.ComboBox();
            this.txtDiachi = new System.Windows.Forms.TextBox();
            this.cmbGioitinh = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txtMaSV = new System.Windows.Forms.TextBox();
            this.groupBoxThongtin = new System.Windows.Forms.GroupBox();
            this.dateTimePickerNgaysinh = new System.Windows.Forms.DateTimePicker();
            this.groupBoxTimkiem = new System.Windows.Forms.GroupBox();
            this.btnThoattimkiem = new System.Windows.Forms.Button();
            this.btnTimkiem = new System.Windows.Forms.Button();
            this.label8 = new System.Windows.Forms.Label();
            this.cmbTimkiem = new System.Windows.Forms.ComboBox();
            this.txtThongtintimkiem = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgvQLsinhvien)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.toolStripSV.SuspendLayout();
            this.groupBoxThongtin.SuspendLayout();
            this.groupBoxTimkiem.SuspendLayout();
            this.SuspendLayout();
            // 
            // dgvQLsinhvien
            // 
            this.dgvQLsinhvien.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvQLsinhvien.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column2,
            this.Column3,
            this.Column4,
            this.Column5,
            this.Column6});
            this.dgvQLsinhvien.Location = new System.Drawing.Point(6, 21);
            this.dgvQLsinhvien.Name = "dgvQLsinhvien";
            this.dgvQLsinhvien.ReadOnly = true;
            this.dgvQLsinhvien.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvQLsinhvien.Size = new System.Drawing.Size(862, 301);
            this.dgvQLsinhvien.TabIndex = 14;
            this.dgvQLsinhvien.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvQLsinhvien_CellClick);
            this.dgvQLsinhvien.MouseDown += new System.Windows.Forms.MouseEventHandler(this.dgvQLsinhvien_MouseDown);
            // 
            // Column1
            // 
            this.Column1.DataPropertyName = "MaSV";
            this.Column1.HeaderText = "Mã SV";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            // 
            // Column2
            // 
            this.Column2.DataPropertyName = "Hoten";
            this.Column2.HeaderText = "Họ tên";
            this.Column2.Name = "Column2";
            this.Column2.ReadOnly = true;
            // 
            // Column3
            // 
            this.Column3.DataPropertyName = "Ngaysinh";
            this.Column3.HeaderText = "Ngày sinh";
            this.Column3.Name = "Column3";
            this.Column3.ReadOnly = true;
            // 
            // Column4
            // 
            this.Column4.DataPropertyName = "Gioitinh";
            this.Column4.HeaderText = "Giới tính";
            this.Column4.Name = "Column4";
            this.Column4.ReadOnly = true;
            // 
            // Column5
            // 
            this.Column5.DataPropertyName = "Diachi";
            this.Column5.HeaderText = "Địa chỉ";
            this.Column5.Name = "Column5";
            this.Column5.ReadOnly = true;
            // 
            // Column6
            // 
            this.Column6.DataPropertyName = "Malop";
            this.Column6.HeaderText = "Mã lớp";
            this.Column6.Name = "Column6";
            this.Column6.ReadOnly = true;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.dgvQLsinhvien);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(12, 217);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(874, 328);
            this.groupBox1.TabIndex = 20;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Danh sách sinh viên";
            // 
            // toolStripSV
            // 
            this.toolStripSV.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.toolStripSV.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripDropDownButtonThemSV,
            this.toolStripSeparator1,
            this.toolStripButtonXoa,
            this.toolStripSeparator2,
            this.toolStripButtonSua,
            this.toolStripSeparator4,
            this.toolStripButtonLuu,
            this.toolStripSeparator3,
            this.toolStripButtonTimkiem});
            this.toolStripSV.Location = new System.Drawing.Point(0, 0);
            this.toolStripSV.Name = "toolStripSV";
            this.toolStripSV.Size = new System.Drawing.Size(931, 25);
            this.toolStripSV.TabIndex = 23;
            this.toolStripSV.Text = "toolStrip1";
            // 
            // toolStripDropDownButtonThemSV
            // 
            this.toolStripDropDownButtonThemSV.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ToolStripMenuItemThemtay,
            this.ToolStripMenuItemTuExcel});
            this.toolStripDropDownButtonThemSV.Image = global::StudentScoreManagement.Properties.Resources.them;
            this.toolStripDropDownButtonThemSV.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripDropDownButtonThemSV.Name = "toolStripDropDownButtonThemSV";
            this.toolStripDropDownButtonThemSV.Size = new System.Drawing.Size(69, 22);
            this.toolStripDropDownButtonThemSV.Text = "Thêm";
            // 
            // ToolStripMenuItemThemtay
            // 
            this.ToolStripMenuItemThemtay.Image = global::StudentScoreManagement.Properties.Resources.nhaptay;
            this.ToolStripMenuItemThemtay.Name = "ToolStripMenuItemThemtay";
            this.ToolStripMenuItemThemtay.Size = new System.Drawing.Size(129, 22);
            this.ToolStripMenuItemThemtay.Text = "Thêm tay";
            this.ToolStripMenuItemThemtay.Click += new System.EventHandler(this.ToolStripMenuItemThemtay_Click);
            // 
            // ToolStripMenuItemTuExcel
            // 
            this.ToolStripMenuItemTuExcel.Image = global::StudentScoreManagement.Properties.Resources.excel;
            this.ToolStripMenuItemTuExcel.Name = "ToolStripMenuItemTuExcel";
            this.ToolStripMenuItemTuExcel.Size = new System.Drawing.Size(129, 22);
            this.ToolStripMenuItemTuExcel.Text = "Từ Excel";
            this.ToolStripMenuItemTuExcel.Click += new System.EventHandler(this.ToolStripMenuItemTuExcel_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(6, 25);
            // 
            // toolStripButtonXoa
            // 
            this.toolStripButtonXoa.Image = global::StudentScoreManagement.Properties.Resources.xoa;
            this.toolStripButtonXoa.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonXoa.Name = "toolStripButtonXoa";
            this.toolStripButtonXoa.Size = new System.Drawing.Size(51, 22);
            this.toolStripButtonXoa.Text = "Xóa";
            this.toolStripButtonXoa.Click += new System.EventHandler(this.toolStripButtonXoa_Click);
            // 
            // toolStripSeparator2
            // 
            this.toolStripSeparator2.Name = "toolStripSeparator2";
            this.toolStripSeparator2.Size = new System.Drawing.Size(6, 25);
            // 
            // toolStripButtonSua
            // 
            this.toolStripButtonSua.Image = global::StudentScoreManagement.Properties.Resources.sua;
            this.toolStripButtonSua.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonSua.Name = "toolStripButtonSua";
            this.toolStripButtonSua.Size = new System.Drawing.Size(50, 22);
            this.toolStripButtonSua.Text = "Sửa";
            this.toolStripButtonSua.Click += new System.EventHandler(this.toolStripButtonSua_Click);
            // 
            // toolStripSeparator4
            // 
            this.toolStripSeparator4.Name = "toolStripSeparator4";
            this.toolStripSeparator4.Size = new System.Drawing.Size(6, 25);
            // 
            // toolStripButtonLuu
            // 
            this.toolStripButtonLuu.Image = global::StudentScoreManagement.Properties.Resources.luu;
            this.toolStripButtonLuu.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonLuu.Name = "toolStripButtonLuu";
            this.toolStripButtonLuu.Size = new System.Drawing.Size(49, 22);
            this.toolStripButtonLuu.Text = "Lưu";
            this.toolStripButtonLuu.Click += new System.EventHandler(this.toolStripButtonLuu_Click);
            // 
            // toolStripSeparator3
            // 
            this.toolStripSeparator3.Name = "toolStripSeparator3";
            this.toolStripSeparator3.Size = new System.Drawing.Size(6, 25);
            // 
            // toolStripButtonTimkiem
            // 
            this.toolStripButtonTimkiem.Image = global::StudentScoreManagement.Properties.Resources.timkiem;
            this.toolStripButtonTimkiem.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonTimkiem.Name = "toolStripButtonTimkiem";
            this.toolStripButtonTimkiem.Size = new System.Drawing.Size(80, 22);
            this.toolStripButtonTimkiem.Text = "Tìm kiếm";
            this.toolStripButtonTimkiem.Click += new System.EventHandler(this.toolStripButtonTimkiem_Click);
            // 
            // txtHoten
            // 
            this.txtHoten.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtHoten.Location = new System.Drawing.Point(97, 60);
            this.txtHoten.Name = "txtHoten";
            this.txtHoten.Size = new System.Drawing.Size(153, 22);
            this.txtHoten.TabIndex = 11;
            // 
            // cmbMalop
            // 
            this.cmbMalop.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbMalop.FormattingEnabled = true;
            this.cmbMalop.Location = new System.Drawing.Point(360, 86);
            this.cmbMalop.Name = "cmbMalop";
            this.cmbMalop.Size = new System.Drawing.Size(153, 24);
            this.cmbMalop.TabIndex = 12;
            this.cmbMalop.SelectedIndexChanged += new System.EventHandler(this.cmbMalop_SelectedIndexChanged);
            // 
            // txtDiachi
            // 
            this.txtDiachi.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtDiachi.Location = new System.Drawing.Point(360, 59);
            this.txtDiachi.Name = "txtDiachi";
            this.txtDiachi.Size = new System.Drawing.Size(153, 22);
            this.txtDiachi.TabIndex = 8;
            // 
            // cmbGioitinh
            // 
            this.cmbGioitinh.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbGioitinh.FormattingEnabled = true;
            this.cmbGioitinh.Items.AddRange(new object[] {
            "Nam",
            "Nữ"});
            this.cmbGioitinh.Location = new System.Drawing.Point(360, 30);
            this.cmbGioitinh.Name = "cmbGioitinh";
            this.cmbGioitinh.Size = new System.Drawing.Size(153, 24);
            this.cmbGioitinh.TabIndex = 13;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(302, 90);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(52, 16);
            this.label6.TabIndex = 6;
            this.label6.Text = "Mã lớp:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(303, 62);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(51, 16);
            this.label5.TabIndex = 5;
            this.label5.Text = "Địa chỉ:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(296, 35);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(58, 16);
            this.label4.TabIndex = 4;
            this.label4.Text = "Giới tính:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(20, 90);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(71, 16);
            this.label3.TabIndex = 3;
            this.label3.Text = "Ngày sinh:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(41, 62);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(50, 16);
            this.label2.TabIndex = 2;
            this.label2.Text = "Họ tên:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(40, 35);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(51, 16);
            this.label1.TabIndex = 1;
            this.label1.Text = "Mã SV:";
            // 
            // txtMaSV
            // 
            this.txtMaSV.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtMaSV.Location = new System.Drawing.Point(97, 32);
            this.txtMaSV.MaxLength = 5;
            this.txtMaSV.Name = "txtMaSV";
            this.txtMaSV.Size = new System.Drawing.Size(153, 22);
            this.txtMaSV.TabIndex = 0;
            this.txtMaSV.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtMaSV_KeyPress);
            // 
            // groupBoxThongtin
            // 
            this.groupBoxThongtin.Controls.Add(this.dateTimePickerNgaysinh);
            this.groupBoxThongtin.Controls.Add(this.txtMaSV);
            this.groupBoxThongtin.Controls.Add(this.label1);
            this.groupBoxThongtin.Controls.Add(this.label2);
            this.groupBoxThongtin.Controls.Add(this.label3);
            this.groupBoxThongtin.Controls.Add(this.label4);
            this.groupBoxThongtin.Controls.Add(this.label5);
            this.groupBoxThongtin.Controls.Add(this.label6);
            this.groupBoxThongtin.Controls.Add(this.cmbGioitinh);
            this.groupBoxThongtin.Controls.Add(this.txtDiachi);
            this.groupBoxThongtin.Controls.Add(this.cmbMalop);
            this.groupBoxThongtin.Controls.Add(this.txtHoten);
            this.groupBoxThongtin.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBoxThongtin.Location = new System.Drawing.Point(12, 80);
            this.groupBoxThongtin.Name = "groupBoxThongtin";
            this.groupBoxThongtin.Size = new System.Drawing.Size(874, 131);
            this.groupBoxThongtin.TabIndex = 21;
            this.groupBoxThongtin.TabStop = false;
            this.groupBoxThongtin.Text = "Thông tin sinh viên";
            // 
            // dateTimePickerNgaysinh
            // 
            this.dateTimePickerNgaysinh.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dateTimePickerNgaysinh.Location = new System.Drawing.Point(97, 88);
            this.dateTimePickerNgaysinh.Name = "dateTimePickerNgaysinh";
            this.dateTimePickerNgaysinh.Size = new System.Drawing.Size(153, 22);
            this.dateTimePickerNgaysinh.TabIndex = 24;
            // 
            // groupBoxTimkiem
            // 
            this.groupBoxTimkiem.Controls.Add(this.btnThoattimkiem);
            this.groupBoxTimkiem.Controls.Add(this.btnTimkiem);
            this.groupBoxTimkiem.Controls.Add(this.label8);
            this.groupBoxTimkiem.Controls.Add(this.cmbTimkiem);
            this.groupBoxTimkiem.Controls.Add(this.txtThongtintimkiem);
            this.groupBoxTimkiem.Controls.Add(this.label7);
            this.groupBoxTimkiem.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBoxTimkiem.Location = new System.Drawing.Point(12, 80);
            this.groupBoxTimkiem.Name = "groupBoxTimkiem";
            this.groupBoxTimkiem.Size = new System.Drawing.Size(363, 126);
            this.groupBoxTimkiem.TabIndex = 25;
            this.groupBoxTimkiem.TabStop = false;
            this.groupBoxTimkiem.Text = "Nhập thông tin tìm kiếm";
            // 
            // btnThoattimkiem
            // 
            this.btnThoattimkiem.Location = new System.Drawing.Point(217, 87);
            this.btnThoattimkiem.Name = "btnThoattimkiem";
            this.btnThoattimkiem.Size = new System.Drawing.Size(75, 28);
            this.btnThoattimkiem.TabIndex = 28;
            this.btnThoattimkiem.Text = "Thoát";
            this.btnThoattimkiem.UseVisualStyleBackColor = true;
            this.btnThoattimkiem.Click += new System.EventHandler(this.btnThoattimkiem_Click);
            // 
            // btnTimkiem
            // 
            this.btnTimkiem.Location = new System.Drawing.Point(139, 87);
            this.btnTimkiem.Name = "btnTimkiem";
            this.btnTimkiem.Size = new System.Drawing.Size(75, 28);
            this.btnTimkiem.TabIndex = 27;
            this.btnTimkiem.Text = "Tìm kiếm";
            this.btnTimkiem.UseVisualStyleBackColor = true;
            this.btnTimkiem.Click += new System.EventHandler(this.btnTimkiem_Click);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(37, 62);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(96, 16);
            this.label8.TabIndex = 26;
            this.label8.Text = "Nhập thông tin:";
            // 
            // cmbTimkiem
            // 
            this.cmbTimkiem.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbTimkiem.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbTimkiem.FormattingEnabled = true;
            this.cmbTimkiem.Items.AddRange(new object[] {
            "Mã sinh viên",
            "Họ tên",
            "Mã lớp"});
            this.cmbTimkiem.Location = new System.Drawing.Point(139, 29);
            this.cmbTimkiem.Name = "cmbTimkiem";
            this.cmbTimkiem.Size = new System.Drawing.Size(153, 24);
            this.cmbTimkiem.TabIndex = 25;
            // 
            // txtThongtintimkiem
            // 
            this.txtThongtintimkiem.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtThongtintimkiem.Location = new System.Drawing.Point(139, 59);
            this.txtThongtintimkiem.Name = "txtThongtintimkiem";
            this.txtThongtintimkiem.Size = new System.Drawing.Size(153, 22);
            this.txtThongtintimkiem.TabIndex = 0;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(38, 32);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(95, 16);
            this.label7.TabIndex = 1;
            this.label7.Text = "Tìm kiếm theo:";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(325, 35);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(255, 31);
            this.label10.TabIndex = 35;
            this.label10.Text = "Quản Lý Sinh Viên";
            // 
            // Frm_QLsinhvien
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.WhiteSmoke;
            this.ClientSize = new System.Drawing.Size(931, 557);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.groupBoxTimkiem);
            this.Controls.Add(this.toolStripSV);
            this.Controls.Add(this.groupBoxThongtin);
            this.Controls.Add(this.groupBox1);
            this.Name = "Frm_QLsinhvien";
            this.RightToLeftLayout = true;
            this.Text = "Frm_QLsinhvien";
            this.Load += new System.EventHandler(this.Frm_QLsinhvien_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvQLsinhvien)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.toolStripSV.ResumeLayout(false);
            this.toolStripSV.PerformLayout();
            this.groupBoxThongtin.ResumeLayout(false);
            this.groupBoxThongtin.PerformLayout();
            this.groupBoxTimkiem.ResumeLayout(false);
            this.groupBoxTimkiem.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.DataGridView dgvQLsinhvien;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ToolStrip toolStripSV;
        private System.Windows.Forms.ToolStripButton toolStripButtonXoa;
        private System.Windows.Forms.ToolStripButton toolStripButtonSua;
        private System.Windows.Forms.ToolStripButton toolStripButtonLuu;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator4;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator3;
        private System.Windows.Forms.TextBox txtHoten;
        private System.Windows.Forms.ComboBox cmbMalop;
        private System.Windows.Forms.TextBox txtDiachi;
        private System.Windows.Forms.ComboBox cmbGioitinh;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtMaSV;
        private System.Windows.Forms.GroupBox groupBoxThongtin;
        private System.Windows.Forms.ToolStripButton toolStripButtonTimkiem;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column4;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column5;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column6;
        private System.Windows.Forms.DateTimePicker dateTimePickerNgaysinh;
        private System.Windows.Forms.GroupBox groupBoxTimkiem;
        private System.Windows.Forms.Button btnTimkiem;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.ComboBox cmbTimkiem;
        private System.Windows.Forms.TextBox txtThongtintimkiem;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Button btnThoattimkiem;
        private System.Windows.Forms.ToolStripDropDownButton toolStripDropDownButtonThemSV;
        private System.Windows.Forms.ToolStripMenuItem ToolStripMenuItemThemtay;
        private System.Windows.Forms.ToolStripMenuItem ToolStripMenuItemTuExcel;
        private System.Windows.Forms.Label label10;
    }
}