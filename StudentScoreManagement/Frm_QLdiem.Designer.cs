
namespace StudentScoreManagement
{
    partial class Frm_QLdiem
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
            this.dgvQLdiem = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column8 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column6 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column7 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.toolStripD = new System.Windows.Forms.ToolStrip();
            this.toolStripDropDownButtonND = new System.Windows.Forms.ToolStripDropDownButton();
            this.ToolStripMenuItemNhaptay = new System.Windows.Forms.ToolStripMenuItem();
            this.ToolStripMenuItemTuExcel = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripButtonXoa = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripButtonSua = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator4 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripButtonLuuD = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator3 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripButtonTimkiemD = new System.Windows.Forms.ToolStripButton();
            this.toolStripButtonTongketD = new System.Windows.Forms.ToolStripButton();
            this.groupBoxThongtinD = new System.Windows.Forms.GroupBox();
            this.txtMalop = new System.Windows.Forms.TextBox();
            this.txtDiemgiuaky = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.txtDiemTB = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.cmbMamon = new System.Windows.Forms.ComboBox();
            this.label7 = new System.Windows.Forms.Label();
            this.txtGhichu = new System.Windows.Forms.TextBox();
            this.txtMaSV = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.txtDiemcuoiky = new System.Windows.Forms.TextBox();
            this.txtHoten = new System.Windows.Forms.TextBox();
            this.groupBoxTimkiemD = new System.Windows.Forms.GroupBox();
            this.btnThoattimkiemD = new System.Windows.Forms.Button();
            this.btnTimkiemD = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.cmbTimkiemD = new System.Windows.Forms.ComboBox();
            this.txtThongtintimkiemD = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.groupBoxCapnhatDTK = new System.Windows.Forms.GroupBox();
            this.label13 = new System.Windows.Forms.Label();
            this.txtHockyDTK = new System.Windows.Forms.TextBox();
            this.btnThoatDTK = new System.Windows.Forms.Button();
            this.btnXembangdiem = new System.Windows.Forms.Button();
            this.btnCapnhat = new System.Windows.Forms.Button();
            this.btnKiemtra = new System.Windows.Forms.Button();
            this.label12 = new System.Windows.Forms.Label();
            this.txtThongtincapnhat = new System.Windows.Forms.TextBox();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvQLdiem)).BeginInit();
            this.toolStripD.SuspendLayout();
            this.groupBoxThongtinD.SuspendLayout();
            this.groupBoxTimkiemD.SuspendLayout();
            this.groupBoxCapnhatDTK.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.dgvQLdiem);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(12, 217);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(874, 328);
            this.groupBox1.TabIndex = 29;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Danh sách điểm sinh viên";
            // 
            // dgvQLdiem
            // 
            this.dgvQLdiem.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvQLdiem.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column2,
            this.Column3,
            this.Column8,
            this.Column4,
            this.Column5,
            this.Column6,
            this.Column7});
            this.dgvQLdiem.Location = new System.Drawing.Point(6, 21);
            this.dgvQLdiem.Name = "dgvQLdiem";
            this.dgvQLdiem.Size = new System.Drawing.Size(862, 301);
            this.dgvQLdiem.TabIndex = 14;
            this.dgvQLdiem.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvQLdiem_CellClick);
            // 
            // Column1
            // 
            this.Column1.DataPropertyName = "MaSV";
            this.Column1.HeaderText = "Mã SV";
            this.Column1.Name = "Column1";
            this.Column1.Width = 80;
            // 
            // Column2
            // 
            this.Column2.DataPropertyName = "TenSV";
            this.Column2.HeaderText = "Họ tên";
            this.Column2.Name = "Column2";
            this.Column2.Width = 130;
            // 
            // Column3
            // 
            this.Column3.DataPropertyName = "MaLop";
            this.Column3.HeaderText = "Mã lớp";
            this.Column3.Name = "Column3";
            this.Column3.Width = 80;
            // 
            // Column8
            // 
            this.Column8.DataPropertyName = "MaMon";
            this.Column8.HeaderText = "Mã Môn";
            this.Column8.Name = "Column8";
            // 
            // Column4
            // 
            this.Column4.DataPropertyName = "DiemGiuaKy";
            this.Column4.HeaderText = "Điểm GK";
            this.Column4.Name = "Column4";
            this.Column4.Width = 90;
            // 
            // Column5
            // 
            this.Column5.DataPropertyName = "DiemCuoiKy";
            this.Column5.HeaderText = "Điểm CK";
            this.Column5.Name = "Column5";
            this.Column5.Width = 90;
            // 
            // Column6
            // 
            this.Column6.DataPropertyName = "DiemTB";
            this.Column6.HeaderText = "Điểm TB";
            this.Column6.Name = "Column6";
            this.Column6.Width = 90;
            // 
            // Column7
            // 
            this.Column7.DataPropertyName = "GhiChu";
            this.Column7.HeaderText = "Ghi chú";
            this.Column7.Name = "Column7";
            this.Column7.Width = 130;
            // 
            // toolStripD
            // 
            this.toolStripD.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.toolStripD.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripDropDownButtonND,
            this.toolStripSeparator1,
            this.toolStripButtonXoa,
            this.toolStripSeparator2,
            this.toolStripButtonSua,
            this.toolStripSeparator4,
            this.toolStripButtonLuuD,
            this.toolStripSeparator3,
            this.toolStripButtonTimkiemD,
            this.toolStripButtonTongketD});
            this.toolStripD.Location = new System.Drawing.Point(0, 0);
            this.toolStripD.Name = "toolStripD";
            this.toolStripD.Size = new System.Drawing.Size(931, 25);
            this.toolStripD.TabIndex = 30;
            this.toolStripD.Text = "toolStrip1";
            // 
            // toolStripDropDownButtonND
            // 
            this.toolStripDropDownButtonND.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ToolStripMenuItemNhaptay,
            this.ToolStripMenuItemTuExcel});
            this.toolStripDropDownButtonND.Image = global::StudentScoreManagement.Properties.Resources.them;
            this.toolStripDropDownButtonND.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripDropDownButtonND.Name = "toolStripDropDownButtonND";
            this.toolStripDropDownButtonND.Size = new System.Drawing.Size(102, 22);
            this.toolStripDropDownButtonND.Text = "Nhập điểm";
            // 
            // ToolStripMenuItemNhaptay
            // 
            this.ToolStripMenuItemNhaptay.Image = global::StudentScoreManagement.Properties.Resources.nhaptay;
            this.ToolStripMenuItemNhaptay.Name = "ToolStripMenuItemNhaptay";
            this.ToolStripMenuItemNhaptay.Size = new System.Drawing.Size(129, 22);
            this.ToolStripMenuItemNhaptay.Text = "Nhập tay";
            this.ToolStripMenuItemNhaptay.Click += new System.EventHandler(this.ToolStripMenuItemNhaptay_Click);
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
            // toolStripButtonLuuD
            // 
            this.toolStripButtonLuuD.Image = global::StudentScoreManagement.Properties.Resources.luu;
            this.toolStripButtonLuuD.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonLuuD.Name = "toolStripButtonLuuD";
            this.toolStripButtonLuuD.Size = new System.Drawing.Size(49, 22);
            this.toolStripButtonLuuD.Text = "Lưu";
            this.toolStripButtonLuuD.Click += new System.EventHandler(this.toolStripButtonLuuD_Click);
            // 
            // toolStripSeparator3
            // 
            this.toolStripSeparator3.Name = "toolStripSeparator3";
            this.toolStripSeparator3.Size = new System.Drawing.Size(6, 25);
            // 
            // toolStripButtonTimkiemD
            // 
            this.toolStripButtonTimkiemD.Image = global::StudentScoreManagement.Properties.Resources.timkiem;
            this.toolStripButtonTimkiemD.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonTimkiemD.Name = "toolStripButtonTimkiemD";
            this.toolStripButtonTimkiemD.Size = new System.Drawing.Size(80, 22);
            this.toolStripButtonTimkiemD.Text = "Tìm kiếm";
            this.toolStripButtonTimkiemD.Click += new System.EventHandler(this.toolStripButtonTimkiemD_Click);
            // 
            // toolStripButtonTongketD
            // 
            this.toolStripButtonTongketD.Image = global::StudentScoreManagement.Properties.Resources.diemtongket;
            this.toolStripButtonTongketD.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonTongketD.Name = "toolStripButtonTongketD";
            this.toolStripButtonTongketD.Size = new System.Drawing.Size(112, 22);
            this.toolStripButtonTongketD.Text = "Tổng kết điểm";
            this.toolStripButtonTongketD.Click += new System.EventHandler(this.toolStripButtonTongketD_Click);
            // 
            // groupBoxThongtinD
            // 
            this.groupBoxThongtinD.Controls.Add(this.txtMalop);
            this.groupBoxThongtinD.Controls.Add(this.txtDiemgiuaky);
            this.groupBoxThongtinD.Controls.Add(this.label11);
            this.groupBoxThongtinD.Controls.Add(this.txtDiemTB);
            this.groupBoxThongtinD.Controls.Add(this.label8);
            this.groupBoxThongtinD.Controls.Add(this.cmbMamon);
            this.groupBoxThongtinD.Controls.Add(this.label7);
            this.groupBoxThongtinD.Controls.Add(this.txtGhichu);
            this.groupBoxThongtinD.Controls.Add(this.txtMaSV);
            this.groupBoxThongtinD.Controls.Add(this.label1);
            this.groupBoxThongtinD.Controls.Add(this.label2);
            this.groupBoxThongtinD.Controls.Add(this.label4);
            this.groupBoxThongtinD.Controls.Add(this.label5);
            this.groupBoxThongtinD.Controls.Add(this.label6);
            this.groupBoxThongtinD.Controls.Add(this.txtDiemcuoiky);
            this.groupBoxThongtinD.Controls.Add(this.txtHoten);
            this.groupBoxThongtinD.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBoxThongtinD.Location = new System.Drawing.Point(12, 80);
            this.groupBoxThongtinD.Name = "groupBoxThongtinD";
            this.groupBoxThongtinD.Size = new System.Drawing.Size(874, 131);
            this.groupBoxThongtinD.TabIndex = 31;
            this.groupBoxThongtinD.TabStop = false;
            this.groupBoxThongtinD.Text = "Thông tin điểm sinh viên";
            // 
            // txtMalop
            // 
            this.txtMalop.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtMalop.Location = new System.Drawing.Point(97, 88);
            this.txtMalop.Name = "txtMalop";
            this.txtMalop.Size = new System.Drawing.Size(153, 22);
            this.txtMalop.TabIndex = 33;
            // 
            // txtDiemgiuaky
            // 
            this.txtDiemgiuaky.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtDiemgiuaky.Location = new System.Drawing.Point(390, 32);
            this.txtDiemgiuaky.MaxLength = 4;
            this.txtDiemgiuaky.Name = "txtDiemgiuaky";
            this.txtDiemgiuaky.Size = new System.Drawing.Size(62, 22);
            this.txtDiemgiuaky.TabIndex = 31;
            this.txtDiemgiuaky.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtDiemgiuaky_KeyPress);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(699, 35);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(63, 16);
            this.label11.TabIndex = 29;
            this.label11.Text = "Điểm TB:";
            // 
            // txtDiemTB
            // 
            this.txtDiemTB.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtDiemTB.Location = new System.Drawing.Point(768, 32);
            this.txtDiemTB.MaxLength = 4;
            this.txtDiemTB.Name = "txtDiemTB";
            this.txtDiemTB.Size = new System.Drawing.Size(62, 22);
            this.txtDiemTB.TabIndex = 30;
            this.txtDiemTB.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtDiemTB_KeyPress);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(325, 63);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(59, 16);
            this.label8.TabIndex = 27;
            this.label8.Text = "Mã môn:";
            // 
            // cmbMamon
            // 
            this.cmbMamon.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbMamon.FormattingEnabled = true;
            this.cmbMamon.Location = new System.Drawing.Point(390, 60);
            this.cmbMamon.Name = "cmbMamon";
            this.cmbMamon.Size = new System.Drawing.Size(440, 24);
            this.cmbMamon.TabIndex = 28;
            this.cmbMamon.SelectedIndexChanged += new System.EventHandler(this.cmbMamon_SelectedIndexChanged);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(329, 91);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(55, 16);
            this.label7.TabIndex = 25;
            this.label7.Text = "Ghi chú:";
            // 
            // txtGhichu
            // 
            this.txtGhichu.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtGhichu.Location = new System.Drawing.Point(390, 88);
            this.txtGhichu.Name = "txtGhichu";
            this.txtGhichu.Size = new System.Drawing.Size(440, 22);
            this.txtGhichu.TabIndex = 26;
            // 
            // txtMaSV
            // 
            this.txtMaSV.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtMaSV.Location = new System.Drawing.Point(97, 32);
            this.txtMaSV.MaxLength = 5;
            this.txtMaSV.Name = "txtMaSV";
            this.txtMaSV.Size = new System.Drawing.Size(153, 22);
            this.txtMaSV.TabIndex = 0;
            this.txtMaSV.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtMaSV_KeyDown);
            this.txtMaSV.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtMaSV_KeyPress);
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
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(41, 63);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(50, 16);
            this.label2.TabIndex = 2;
            this.label2.Text = "Họ tên:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(296, 35);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(88, 16);
            this.label4.TabIndex = 4;
            this.label4.Text = "Điểm giữa kỳ:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(498, 35);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(87, 16);
            this.label5.TabIndex = 5;
            this.label5.Text = "Điểm cuối kỳ:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(39, 91);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(52, 16);
            this.label6.TabIndex = 6;
            this.label6.Text = "Mã lớp:";
            // 
            // txtDiemcuoiky
            // 
            this.txtDiemcuoiky.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtDiemcuoiky.Location = new System.Drawing.Point(591, 32);
            this.txtDiemcuoiky.MaxLength = 4;
            this.txtDiemcuoiky.Name = "txtDiemcuoiky";
            this.txtDiemcuoiky.Size = new System.Drawing.Size(62, 22);
            this.txtDiemcuoiky.TabIndex = 8;
            this.txtDiemcuoiky.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtDiemcuoiky_KeyPress);
            // 
            // txtHoten
            // 
            this.txtHoten.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtHoten.Location = new System.Drawing.Point(97, 60);
            this.txtHoten.Name = "txtHoten";
            this.txtHoten.Size = new System.Drawing.Size(153, 22);
            this.txtHoten.TabIndex = 11;
            // 
            // groupBoxTimkiemD
            // 
            this.groupBoxTimkiemD.Controls.Add(this.btnThoattimkiemD);
            this.groupBoxTimkiemD.Controls.Add(this.btnTimkiemD);
            this.groupBoxTimkiemD.Controls.Add(this.label3);
            this.groupBoxTimkiemD.Controls.Add(this.cmbTimkiemD);
            this.groupBoxTimkiemD.Controls.Add(this.txtThongtintimkiemD);
            this.groupBoxTimkiemD.Controls.Add(this.label9);
            this.groupBoxTimkiemD.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBoxTimkiemD.Location = new System.Drawing.Point(12, 80);
            this.groupBoxTimkiemD.Name = "groupBoxTimkiemD";
            this.groupBoxTimkiemD.Size = new System.Drawing.Size(350, 131);
            this.groupBoxTimkiemD.TabIndex = 32;
            this.groupBoxTimkiemD.TabStop = false;
            this.groupBoxTimkiemD.Text = "Nhập thông tin tìm kiếm";
            // 
            // btnThoattimkiemD
            // 
            this.btnThoattimkiemD.Location = new System.Drawing.Point(217, 90);
            this.btnThoattimkiemD.Name = "btnThoattimkiemD";
            this.btnThoattimkiemD.Size = new System.Drawing.Size(75, 28);
            this.btnThoattimkiemD.TabIndex = 28;
            this.btnThoattimkiemD.Text = "Thoát";
            this.btnThoattimkiemD.UseVisualStyleBackColor = true;
            this.btnThoattimkiemD.Click += new System.EventHandler(this.btnThoattimkiemD_Click);
            // 
            // btnTimkiemD
            // 
            this.btnTimkiemD.Location = new System.Drawing.Point(139, 90);
            this.btnTimkiemD.Name = "btnTimkiemD";
            this.btnTimkiemD.Size = new System.Drawing.Size(75, 28);
            this.btnTimkiemD.TabIndex = 27;
            this.btnTimkiemD.Text = "Tìm kiếm";
            this.btnTimkiemD.UseVisualStyleBackColor = true;
            this.btnTimkiemD.Click += new System.EventHandler(this.btnTimkiemD_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(37, 65);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(96, 16);
            this.label3.TabIndex = 26;
            this.label3.Text = "Nhập thông tin:";
            // 
            // cmbTimkiemD
            // 
            this.cmbTimkiemD.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbTimkiemD.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbTimkiemD.FormattingEnabled = true;
            this.cmbTimkiemD.Items.AddRange(new object[] {
            "Mã sinh viên",
            "Họ tên",
            "Mã lớp",
            "Mã môn"});
            this.cmbTimkiemD.Location = new System.Drawing.Point(139, 32);
            this.cmbTimkiemD.Name = "cmbTimkiemD";
            this.cmbTimkiemD.Size = new System.Drawing.Size(153, 24);
            this.cmbTimkiemD.TabIndex = 25;
            // 
            // txtThongtintimkiemD
            // 
            this.txtThongtintimkiemD.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtThongtintimkiemD.Location = new System.Drawing.Point(139, 62);
            this.txtThongtintimkiemD.Name = "txtThongtintimkiemD";
            this.txtThongtintimkiemD.Size = new System.Drawing.Size(153, 22);
            this.txtThongtintimkiemD.TabIndex = 0;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(40, 35);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(95, 16);
            this.label9.TabIndex = 1;
            this.label9.Text = "Tìm kiếm theo:";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(288, 35);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(330, 31);
            this.label10.TabIndex = 34;
            this.label10.Text = "Quản Lý Điểm Sinh Viên";
            // 
            // groupBoxCapnhatDTK
            // 
            this.groupBoxCapnhatDTK.Controls.Add(this.label13);
            this.groupBoxCapnhatDTK.Controls.Add(this.txtHockyDTK);
            this.groupBoxCapnhatDTK.Controls.Add(this.btnThoatDTK);
            this.groupBoxCapnhatDTK.Controls.Add(this.btnXembangdiem);
            this.groupBoxCapnhatDTK.Controls.Add(this.btnCapnhat);
            this.groupBoxCapnhatDTK.Controls.Add(this.btnKiemtra);
            this.groupBoxCapnhatDTK.Controls.Add(this.label12);
            this.groupBoxCapnhatDTK.Controls.Add(this.txtThongtincapnhat);
            this.groupBoxCapnhatDTK.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBoxCapnhatDTK.Location = new System.Drawing.Point(12, 80);
            this.groupBoxCapnhatDTK.Name = "groupBoxCapnhatDTK";
            this.groupBoxCapnhatDTK.Size = new System.Drawing.Size(495, 131);
            this.groupBoxCapnhatDTK.TabIndex = 35;
            this.groupBoxCapnhatDTK.TabStop = false;
            this.groupBoxCapnhatDTK.Text = "Thông tin cập nhật";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label13.Location = new System.Drawing.Point(151, 63);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(53, 16);
            this.label13.TabIndex = 37;
            this.label13.Text = "Học kỳ:";
            // 
            // txtHockyDTK
            // 
            this.txtHockyDTK.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtHockyDTK.Location = new System.Drawing.Point(210, 60);
            this.txtHockyDTK.MaxLength = 1;
            this.txtHockyDTK.Name = "txtHockyDTK";
            this.txtHockyDTK.Size = new System.Drawing.Size(156, 22);
            this.txtHockyDTK.TabIndex = 36;
            this.txtHockyDTK.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtHockyDTK_KeyPress);
            // 
            // btnThoatDTK
            // 
            this.btnThoatDTK.Location = new System.Drawing.Point(372, 88);
            this.btnThoatDTK.Name = "btnThoatDTK";
            this.btnThoatDTK.Size = new System.Drawing.Size(75, 28);
            this.btnThoatDTK.TabIndex = 35;
            this.btnThoatDTK.Text = "Thoát";
            this.btnThoatDTK.UseVisualStyleBackColor = true;
            this.btnThoatDTK.Click += new System.EventHandler(this.btnThoatDTK_Click);
            // 
            // btnXembangdiem
            // 
            this.btnXembangdiem.Location = new System.Drawing.Point(242, 88);
            this.btnXembangdiem.Name = "btnXembangdiem";
            this.btnXembangdiem.Size = new System.Drawing.Size(124, 28);
            this.btnXembangdiem.TabIndex = 34;
            this.btnXembangdiem.Text = "Xuất bảng điểm";
            this.btnXembangdiem.UseVisualStyleBackColor = true;
            this.btnXembangdiem.Click += new System.EventHandler(this.btnXembangdiem_Click);
            // 
            // btnCapnhat
            // 
            this.btnCapnhat.Location = new System.Drawing.Point(161, 88);
            this.btnCapnhat.Name = "btnCapnhat";
            this.btnCapnhat.Size = new System.Drawing.Size(75, 28);
            this.btnCapnhat.TabIndex = 33;
            this.btnCapnhat.Text = "Cập nhật";
            this.btnCapnhat.UseVisualStyleBackColor = true;
            this.btnCapnhat.Click += new System.EventHandler(this.btnCapnhat_Click);
            // 
            // btnKiemtra
            // 
            this.btnKiemtra.Location = new System.Drawing.Point(80, 88);
            this.btnKiemtra.Name = "btnKiemtra";
            this.btnKiemtra.Size = new System.Drawing.Size(75, 28);
            this.btnKiemtra.TabIndex = 32;
            this.btnKiemtra.Text = "Kiểm tra";
            this.btnKiemtra.UseVisualStyleBackColor = true;
            this.btnKiemtra.Click += new System.EventHandler(this.btnKiemtra_Click);
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.Location = new System.Drawing.Point(40, 35);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(164, 16);
            this.label12.TabIndex = 29;
            this.label12.Text = "Nhập mã lớp hoặc mã SV:";
            // 
            // txtThongtincapnhat
            // 
            this.txtThongtincapnhat.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtThongtincapnhat.Location = new System.Drawing.Point(210, 32);
            this.txtThongtincapnhat.MaxLength = 7;
            this.txtThongtincapnhat.Name = "txtThongtincapnhat";
            this.txtThongtincapnhat.Size = new System.Drawing.Size(156, 22);
            this.txtThongtincapnhat.TabIndex = 31;
            // 
            // Frm_QLdiem
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.WhiteSmoke;
            this.ClientSize = new System.Drawing.Size(931, 557);
            this.Controls.Add(this.groupBoxCapnhatDTK);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.groupBoxTimkiemD);
            this.Controls.Add(this.groupBoxThongtinD);
            this.Controls.Add(this.toolStripD);
            this.Controls.Add(this.groupBox1);
            this.Name = "Frm_QLdiem";
            this.Text = "Frm_QLdiem";
            this.Load += new System.EventHandler(this.Frm_QLdiem_Load);
            this.groupBox1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvQLdiem)).EndInit();
            this.toolStripD.ResumeLayout(false);
            this.toolStripD.PerformLayout();
            this.groupBoxThongtinD.ResumeLayout(false);
            this.groupBoxThongtinD.PerformLayout();
            this.groupBoxTimkiemD.ResumeLayout(false);
            this.groupBoxTimkiemD.PerformLayout();
            this.groupBoxCapnhatDTK.ResumeLayout(false);
            this.groupBoxCapnhatDTK.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DataGridView dgvQLdiem;
        private System.Windows.Forms.ToolStrip toolStripD;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripButton toolStripButtonXoa;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.ToolStripButton toolStripButtonSua;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator4;
        private System.Windows.Forms.ToolStripButton toolStripButtonLuuD;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator3;
        private System.Windows.Forms.ToolStripButton toolStripButtonTimkiemD;
        private System.Windows.Forms.GroupBox groupBoxThongtinD;
        private System.Windows.Forms.TextBox txtMaSV;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtDiemcuoiky;
        private System.Windows.Forms.TextBox txtHoten;
        private System.Windows.Forms.ToolStripDropDownButton toolStripDropDownButtonND;
        private System.Windows.Forms.ToolStripMenuItem ToolStripMenuItemNhaptay;
        private System.Windows.Forms.ToolStripMenuItem ToolStripMenuItemTuExcel;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtGhichu;
        private System.Windows.Forms.TextBox txtDiemgiuaky;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox txtDiemTB;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.ComboBox cmbMamon;
        private System.Windows.Forms.TextBox txtMalop;
        private System.Windows.Forms.GroupBox groupBoxTimkiemD;
        private System.Windows.Forms.Button btnThoattimkiemD;
        private System.Windows.Forms.Button btnTimkiemD;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cmbTimkiemD;
        private System.Windows.Forms.TextBox txtThongtintimkiemD;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column8;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column4;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column5;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column6;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column7;
        private System.Windows.Forms.ToolStripButton toolStripButtonTongketD;
        private System.Windows.Forms.GroupBox groupBoxCapnhatDTK;
        private System.Windows.Forms.Button btnXembangdiem;
        private System.Windows.Forms.Button btnCapnhat;
        private System.Windows.Forms.Button btnKiemtra;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox txtThongtincapnhat;
        private System.Windows.Forms.Button btnThoatDTK;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.TextBox txtHockyDTK;
    }
}