
namespace StudentScoreManagement
{
    partial class Frm_QLmonhoc
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.dgvQLmonhoc = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column6 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBoxTimkiemMH = new System.Windows.Forms.GroupBox();
            this.btnThoattimkiemMH = new System.Windows.Forms.Button();
            this.btnTimkiemMH = new System.Windows.Forms.Button();
            this.label9 = new System.Windows.Forms.Label();
            this.cmbTimkiemMH = new System.Windows.Forms.ComboBox();
            this.txtThongtintimkiemMH = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.groupBoxThongtinMH = new System.Windows.Forms.GroupBox();
            this.cmbMakhoa = new System.Windows.Forms.ComboBox();
            this.txtSotinchi = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.txtMaMH = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.cmbMaGV = new System.Windows.Forms.ComboBox();
            this.txtHocky = new System.Windows.Forms.TextBox();
            this.txtTenMH = new System.Windows.Forms.TextBox();
            this.toolStripMH = new System.Windows.Forms.ToolStrip();
            this.toolStripButtonThemMH = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripButtonXoaMH = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripButtonSuaMH = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator4 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripButtonLuuMH = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator3 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripButtonTimkiemMH = new System.Windows.Forms.ToolStripButton();
            this.label11 = new System.Windows.Forms.Label();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvQLmonhoc)).BeginInit();
            this.groupBoxTimkiemMH.SuspendLayout();
            this.groupBoxThongtinMH.SuspendLayout();
            this.toolStripMH.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.dgvQLmonhoc);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(12, 217);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(874, 328);
            this.groupBox1.TabIndex = 29;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Danh sách môn học";
            // 
            // dgvQLmonhoc
            // 
            this.dgvQLmonhoc.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvQLmonhoc.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column2,
            this.Column3,
            this.Column4,
            this.Column5,
            this.Column6});
            this.dgvQLmonhoc.Location = new System.Drawing.Point(6, 21);
            this.dgvQLmonhoc.Name = "dgvQLmonhoc";
            this.dgvQLmonhoc.ReadOnly = true;
            this.dgvQLmonhoc.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvQLmonhoc.Size = new System.Drawing.Size(862, 301);
            this.dgvQLmonhoc.TabIndex = 14;
            this.dgvQLmonhoc.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvQLmonhoc_CellClick);
            // 
            // Column1
            // 
            this.Column1.DataPropertyName = "MaMon";
            this.Column1.HeaderText = "Mã môn";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            this.Column1.Width = 80;
            // 
            // Column2
            // 
            this.Column2.DataPropertyName = "TenMon";
            this.Column2.HeaderText = "Tên môn";
            this.Column2.Name = "Column2";
            this.Column2.ReadOnly = true;
            this.Column2.Width = 250;
            // 
            // Column3
            // 
            this.Column3.DataPropertyName = "SoTinChi";
            this.Column3.HeaderText = "Số tín chỉ";
            this.Column3.Name = "Column3";
            this.Column3.ReadOnly = true;
            this.Column3.Width = 95;
            // 
            // Column4
            // 
            this.Column4.DataPropertyName = "MaGV";
            this.Column4.HeaderText = "Mã GV";
            this.Column4.Name = "Column4";
            this.Column4.ReadOnly = true;
            this.Column4.Width = 80;
            // 
            // Column5
            // 
            this.Column5.DataPropertyName = "HocKy";
            this.Column5.HeaderText = "Học kỳ";
            this.Column5.Name = "Column5";
            this.Column5.ReadOnly = true;
            this.Column5.Width = 80;
            // 
            // Column6
            // 
            this.Column6.DataPropertyName = "MaKhoa";
            this.Column6.HeaderText = "Mã khoa";
            this.Column6.Name = "Column6";
            this.Column6.ReadOnly = true;
            // 
            // groupBoxTimkiemMH
            // 
            this.groupBoxTimkiemMH.Controls.Add(this.btnThoattimkiemMH);
            this.groupBoxTimkiemMH.Controls.Add(this.btnTimkiemMH);
            this.groupBoxTimkiemMH.Controls.Add(this.label9);
            this.groupBoxTimkiemMH.Controls.Add(this.cmbTimkiemMH);
            this.groupBoxTimkiemMH.Controls.Add(this.txtThongtintimkiemMH);
            this.groupBoxTimkiemMH.Controls.Add(this.label10);
            this.groupBoxTimkiemMH.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBoxTimkiemMH.Location = new System.Drawing.Point(12, 80);
            this.groupBoxTimkiemMH.Name = "groupBoxTimkiemMH";
            this.groupBoxTimkiemMH.Size = new System.Drawing.Size(350, 131);
            this.groupBoxTimkiemMH.TabIndex = 30;
            this.groupBoxTimkiemMH.TabStop = false;
            this.groupBoxTimkiemMH.Text = "Nhập thông tin tìm kiếm";
            // 
            // btnThoattimkiemMH
            // 
            this.btnThoattimkiemMH.Location = new System.Drawing.Point(217, 87);
            this.btnThoattimkiemMH.Name = "btnThoattimkiemMH";
            this.btnThoattimkiemMH.Size = new System.Drawing.Size(75, 28);
            this.btnThoattimkiemMH.TabIndex = 28;
            this.btnThoattimkiemMH.Text = "Thoát";
            this.btnThoattimkiemMH.UseVisualStyleBackColor = true;
            this.btnThoattimkiemMH.Click += new System.EventHandler(this.btnThoattimkiemMH_Click);
            // 
            // btnTimkiemMH
            // 
            this.btnTimkiemMH.Location = new System.Drawing.Point(139, 87);
            this.btnTimkiemMH.Name = "btnTimkiemMH";
            this.btnTimkiemMH.Size = new System.Drawing.Size(75, 28);
            this.btnTimkiemMH.TabIndex = 27;
            this.btnTimkiemMH.Text = "Tìm kiếm";
            this.btnTimkiemMH.UseVisualStyleBackColor = true;
            this.btnTimkiemMH.Click += new System.EventHandler(this.btnTimkiemMH_Click);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(37, 62);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(96, 16);
            this.label9.TabIndex = 26;
            this.label9.Text = "Nhập thông tin:";
            // 
            // cmbTimkiemMH
            // 
            this.cmbTimkiemMH.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbTimkiemMH.FormattingEnabled = true;
            this.cmbTimkiemMH.Items.AddRange(new object[] {
            "Mã môn học",
            "Tên môn học",
            "Mã giáo viên",
            "Học kỳ",
            "Mã khoa"});
            this.cmbTimkiemMH.Location = new System.Drawing.Point(139, 29);
            this.cmbTimkiemMH.Name = "cmbTimkiemMH";
            this.cmbTimkiemMH.Size = new System.Drawing.Size(153, 24);
            this.cmbTimkiemMH.TabIndex = 25;
            // 
            // txtThongtintimkiemMH
            // 
            this.txtThongtintimkiemMH.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtThongtintimkiemMH.Location = new System.Drawing.Point(139, 59);
            this.txtThongtintimkiemMH.Name = "txtThongtintimkiemMH";
            this.txtThongtintimkiemMH.Size = new System.Drawing.Size(153, 22);
            this.txtThongtintimkiemMH.TabIndex = 0;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(38, 32);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(95, 16);
            this.label10.TabIndex = 1;
            this.label10.Text = "Tìm kiếm theo:";
            // 
            // groupBoxThongtinMH
            // 
            this.groupBoxThongtinMH.Controls.Add(this.cmbMakhoa);
            this.groupBoxThongtinMH.Controls.Add(this.txtSotinchi);
            this.groupBoxThongtinMH.Controls.Add(this.label8);
            this.groupBoxThongtinMH.Controls.Add(this.txtMaMH);
            this.groupBoxThongtinMH.Controls.Add(this.label1);
            this.groupBoxThongtinMH.Controls.Add(this.label2);
            this.groupBoxThongtinMH.Controls.Add(this.label3);
            this.groupBoxThongtinMH.Controls.Add(this.label4);
            this.groupBoxThongtinMH.Controls.Add(this.label5);
            this.groupBoxThongtinMH.Controls.Add(this.cmbMaGV);
            this.groupBoxThongtinMH.Controls.Add(this.txtHocky);
            this.groupBoxThongtinMH.Controls.Add(this.txtTenMH);
            this.groupBoxThongtinMH.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBoxThongtinMH.Location = new System.Drawing.Point(12, 80);
            this.groupBoxThongtinMH.Name = "groupBoxThongtinMH";
            this.groupBoxThongtinMH.Size = new System.Drawing.Size(874, 131);
            this.groupBoxThongtinMH.TabIndex = 28;
            this.groupBoxThongtinMH.TabStop = false;
            this.groupBoxThongtinMH.Text = "Thông tin môn học";
            // 
            // cmbMakhoa
            // 
            this.cmbMakhoa.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbMakhoa.FormattingEnabled = true;
            this.cmbMakhoa.Location = new System.Drawing.Point(354, 88);
            this.cmbMakhoa.Name = "cmbMakhoa";
            this.cmbMakhoa.Size = new System.Drawing.Size(153, 24);
            this.cmbMakhoa.TabIndex = 30;
            this.cmbMakhoa.SelectedIndexChanged += new System.EventHandler(this.cmbMakhoa_SelectedIndexChanged);
            // 
            // txtSotinchi
            // 
            this.txtSotinchi.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtSotinchi.Location = new System.Drawing.Point(105, 88);
            this.txtSotinchi.MaxLength = 2;
            this.txtSotinchi.Name = "txtSotinchi";
            this.txtSotinchi.Size = new System.Drawing.Size(153, 22);
            this.txtSotinchi.TabIndex = 29;
            this.txtSotinchi.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtSotinchi_KeyPress);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(285, 91);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(63, 16);
            this.label8.TabIndex = 28;
            this.label8.Text = "Mã khoa:";
            // 
            // txtMaMH
            // 
            this.txtMaMH.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtMaMH.Location = new System.Drawing.Point(105, 32);
            this.txtMaMH.MaxLength = 6;
            this.txtMaMH.Name = "txtMaMH";
            this.txtMaMH.Size = new System.Drawing.Size(153, 22);
            this.txtMaMH.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(40, 35);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(59, 16);
            this.label1.TabIndex = 1;
            this.label1.Text = "Mã môn:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(35, 63);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(64, 16);
            this.label2.TabIndex = 2;
            this.label2.Text = "Tên môn:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(35, 91);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(64, 16);
            this.label3.TabIndex = 3;
            this.label3.Text = "Số tín chỉ:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(296, 35);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(52, 16);
            this.label4.TabIndex = 4;
            this.label4.Text = "Mã GV:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(295, 63);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(53, 16);
            this.label5.TabIndex = 5;
            this.label5.Text = "Học kỳ:";
            // 
            // cmbMaGV
            // 
            this.cmbMaGV.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbMaGV.FormattingEnabled = true;
            this.cmbMaGV.Location = new System.Drawing.Point(354, 30);
            this.cmbMaGV.Name = "cmbMaGV";
            this.cmbMaGV.Size = new System.Drawing.Size(153, 24);
            this.cmbMaGV.TabIndex = 13;
            this.cmbMaGV.SelectedIndexChanged += new System.EventHandler(this.cmbMaGV_SelectedIndexChanged);
            // 
            // txtHocky
            // 
            this.txtHocky.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtHocky.Location = new System.Drawing.Point(354, 60);
            this.txtHocky.MaxLength = 1;
            this.txtHocky.Name = "txtHocky";
            this.txtHocky.Size = new System.Drawing.Size(153, 22);
            this.txtHocky.TabIndex = 8;
            this.txtHocky.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtHocky_KeyPress);
            // 
            // txtTenMH
            // 
            this.txtTenMH.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTenMH.Location = new System.Drawing.Point(105, 60);
            this.txtTenMH.Name = "txtTenMH";
            this.txtTenMH.Size = new System.Drawing.Size(153, 22);
            this.txtTenMH.TabIndex = 11;
            // 
            // toolStripMH
            // 
            this.toolStripMH.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.toolStripMH.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripButtonThemMH,
            this.toolStripSeparator1,
            this.toolStripButtonXoaMH,
            this.toolStripSeparator2,
            this.toolStripButtonSuaMH,
            this.toolStripSeparator4,
            this.toolStripButtonLuuMH,
            this.toolStripSeparator3,
            this.toolStripButtonTimkiemMH});
            this.toolStripMH.Location = new System.Drawing.Point(0, 0);
            this.toolStripMH.Name = "toolStripMH";
            this.toolStripMH.Size = new System.Drawing.Size(931, 25);
            this.toolStripMH.TabIndex = 27;
            this.toolStripMH.Text = "toolStrip1";
            // 
            // toolStripButtonThemMH
            // 
            this.toolStripButtonThemMH.Image = global::StudentScoreManagement.Properties.Resources.them;
            this.toolStripButtonThemMH.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonThemMH.Name = "toolStripButtonThemMH";
            this.toolStripButtonThemMH.Size = new System.Drawing.Size(60, 22);
            this.toolStripButtonThemMH.Text = "Thêm";
            this.toolStripButtonThemMH.Click += new System.EventHandler(this.toolStripButtonThemMH_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(6, 25);
            // 
            // toolStripButtonXoaMH
            // 
            this.toolStripButtonXoaMH.Image = global::StudentScoreManagement.Properties.Resources.xoa;
            this.toolStripButtonXoaMH.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonXoaMH.Name = "toolStripButtonXoaMH";
            this.toolStripButtonXoaMH.Size = new System.Drawing.Size(51, 22);
            this.toolStripButtonXoaMH.Text = "Xóa";
            this.toolStripButtonXoaMH.Click += new System.EventHandler(this.toolStripButtonXoaMH_Click);
            // 
            // toolStripSeparator2
            // 
            this.toolStripSeparator2.Name = "toolStripSeparator2";
            this.toolStripSeparator2.Size = new System.Drawing.Size(6, 25);
            // 
            // toolStripButtonSuaMH
            // 
            this.toolStripButtonSuaMH.Image = global::StudentScoreManagement.Properties.Resources.sua;
            this.toolStripButtonSuaMH.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonSuaMH.Name = "toolStripButtonSuaMH";
            this.toolStripButtonSuaMH.Size = new System.Drawing.Size(50, 22);
            this.toolStripButtonSuaMH.Text = "Sửa";
            this.toolStripButtonSuaMH.Click += new System.EventHandler(this.toolStripButtonSuaMH_Click);
            // 
            // toolStripSeparator4
            // 
            this.toolStripSeparator4.Name = "toolStripSeparator4";
            this.toolStripSeparator4.Size = new System.Drawing.Size(6, 25);
            // 
            // toolStripButtonLuuMH
            // 
            this.toolStripButtonLuuMH.Image = global::StudentScoreManagement.Properties.Resources.luu;
            this.toolStripButtonLuuMH.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonLuuMH.Name = "toolStripButtonLuuMH";
            this.toolStripButtonLuuMH.Size = new System.Drawing.Size(49, 22);
            this.toolStripButtonLuuMH.Text = "Lưu";
            this.toolStripButtonLuuMH.Click += new System.EventHandler(this.toolStripButtonLuuMH_Click);
            // 
            // toolStripSeparator3
            // 
            this.toolStripSeparator3.Name = "toolStripSeparator3";
            this.toolStripSeparator3.Size = new System.Drawing.Size(6, 25);
            // 
            // toolStripButtonTimkiemMH
            // 
            this.toolStripButtonTimkiemMH.Image = global::StudentScoreManagement.Properties.Resources.timkiem;
            this.toolStripButtonTimkiemMH.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonTimkiemMH.Name = "toolStripButtonTimkiemMH";
            this.toolStripButtonTimkiemMH.Size = new System.Drawing.Size(80, 22);
            this.toolStripButtonTimkiemMH.Text = "Tìm kiếm";
            this.toolStripButtonTimkiemMH.Click += new System.EventHandler(this.toolStripButtonTimkiemMH_Click);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(325, 35);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(246, 31);
            this.label11.TabIndex = 36;
            this.label11.Text = "Quản Lý Môn Học";
            // 
            // Frm_QLmonhoc
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.WhiteSmoke;
            this.ClientSize = new System.Drawing.Size(931, 557);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.groupBoxTimkiemMH);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.groupBoxThongtinMH);
            this.Controls.Add(this.toolStripMH);
            this.Name = "Frm_QLmonhoc";
            this.Text = "Frm_QLmonhoc";
            this.Load += new System.EventHandler(this.Frm_QLmonhoc_Load);
            this.groupBox1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvQLmonhoc)).EndInit();
            this.groupBoxTimkiemMH.ResumeLayout(false);
            this.groupBoxTimkiemMH.PerformLayout();
            this.groupBoxThongtinMH.ResumeLayout(false);
            this.groupBoxThongtinMH.PerformLayout();
            this.toolStripMH.ResumeLayout(false);
            this.toolStripMH.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DataGridView dgvQLmonhoc;
        private System.Windows.Forms.GroupBox groupBoxThongtinMH;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtMaMH;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox cmbMaGV;
        private System.Windows.Forms.TextBox txtHocky;
        private System.Windows.Forms.TextBox txtTenMH;
        private System.Windows.Forms.ToolStrip toolStripMH;
        private System.Windows.Forms.ToolStripButton toolStripButtonThemMH;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripButton toolStripButtonXoaMH;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.ToolStripButton toolStripButtonSuaMH;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator4;
        private System.Windows.Forms.ToolStripButton toolStripButtonLuuMH;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator3;
        private System.Windows.Forms.ToolStripButton toolStripButtonTimkiemMH;
        private System.Windows.Forms.ComboBox cmbMakhoa;
        private System.Windows.Forms.TextBox txtSotinchi;
        private System.Windows.Forms.GroupBox groupBoxTimkiemMH;
        private System.Windows.Forms.Button btnThoattimkiemMH;
        private System.Windows.Forms.Button btnTimkiemMH;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.ComboBox cmbTimkiemMH;
        private System.Windows.Forms.TextBox txtThongtintimkiemMH;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column4;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column5;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column6;
    }
}