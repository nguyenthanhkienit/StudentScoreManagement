
namespace StudentScoreManagement
{
    partial class Frm_QLkhoa
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
            this.toolStripK = new System.Windows.Forms.ToolStrip();
            this.toolStripButtonThemK = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripButtonXoaK = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripButtonSuaK = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator4 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripButtonLuuK = new System.Windows.Forms.ToolStripButton();
            this.groupBoxThongtin = new System.Windows.Forms.GroupBox();
            this.dateTimePickerNgaytao = new System.Windows.Forms.DateTimePicker();
            this.txtMaK = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txtTenK = new System.Windows.Forms.TextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.dgvQLkhoa = new System.Windows.Forms.DataGridView();
            this.label11 = new System.Windows.Forms.Label();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.toolStripK.SuspendLayout();
            this.groupBoxThongtin.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvQLkhoa)).BeginInit();
            this.SuspendLayout();
            // 
            // toolStripK
            // 
            this.toolStripK.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.toolStripK.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripButtonThemK,
            this.toolStripSeparator1,
            this.toolStripButtonXoaK,
            this.toolStripSeparator2,
            this.toolStripButtonSuaK,
            this.toolStripSeparator4,
            this.toolStripButtonLuuK});
            this.toolStripK.Location = new System.Drawing.Point(0, 0);
            this.toolStripK.Name = "toolStripK";
            this.toolStripK.Size = new System.Drawing.Size(931, 25);
            this.toolStripK.TabIndex = 24;
            this.toolStripK.Text = "toolStrip1";
            // 
            // toolStripButtonThemK
            // 
            this.toolStripButtonThemK.Image = global::StudentScoreManagement.Properties.Resources.them;
            this.toolStripButtonThemK.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonThemK.Name = "toolStripButtonThemK";
            this.toolStripButtonThemK.Size = new System.Drawing.Size(60, 22);
            this.toolStripButtonThemK.Text = "Thêm";
            this.toolStripButtonThemK.Click += new System.EventHandler(this.toolStripButtonThemK_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(6, 25);
            // 
            // toolStripButtonXoaK
            // 
            this.toolStripButtonXoaK.Image = global::StudentScoreManagement.Properties.Resources.xoa;
            this.toolStripButtonXoaK.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonXoaK.Name = "toolStripButtonXoaK";
            this.toolStripButtonXoaK.Size = new System.Drawing.Size(51, 22);
            this.toolStripButtonXoaK.Text = "Xóa";
            this.toolStripButtonXoaK.Click += new System.EventHandler(this.toolStripButtonXoaK_Click);
            // 
            // toolStripSeparator2
            // 
            this.toolStripSeparator2.Name = "toolStripSeparator2";
            this.toolStripSeparator2.Size = new System.Drawing.Size(6, 25);
            // 
            // toolStripButtonSuaK
            // 
            this.toolStripButtonSuaK.Image = global::StudentScoreManagement.Properties.Resources.sua;
            this.toolStripButtonSuaK.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonSuaK.Name = "toolStripButtonSuaK";
            this.toolStripButtonSuaK.Size = new System.Drawing.Size(50, 22);
            this.toolStripButtonSuaK.Text = "Sửa";
            this.toolStripButtonSuaK.Click += new System.EventHandler(this.toolStripButtonSuaK_Click);
            // 
            // toolStripSeparator4
            // 
            this.toolStripSeparator4.Name = "toolStripSeparator4";
            this.toolStripSeparator4.Size = new System.Drawing.Size(6, 25);
            // 
            // toolStripButtonLuuK
            // 
            this.toolStripButtonLuuK.Image = global::StudentScoreManagement.Properties.Resources.luu;
            this.toolStripButtonLuuK.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonLuuK.Name = "toolStripButtonLuuK";
            this.toolStripButtonLuuK.Size = new System.Drawing.Size(49, 22);
            this.toolStripButtonLuuK.Text = "Lưu";
            this.toolStripButtonLuuK.Click += new System.EventHandler(this.toolStripButtonLuuK_Click);
            // 
            // groupBoxThongtin
            // 
            this.groupBoxThongtin.Controls.Add(this.dateTimePickerNgaytao);
            this.groupBoxThongtin.Controls.Add(this.txtMaK);
            this.groupBoxThongtin.Controls.Add(this.label1);
            this.groupBoxThongtin.Controls.Add(this.label2);
            this.groupBoxThongtin.Controls.Add(this.label3);
            this.groupBoxThongtin.Controls.Add(this.txtTenK);
            this.groupBoxThongtin.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBoxThongtin.Location = new System.Drawing.Point(12, 80);
            this.groupBoxThongtin.Name = "groupBoxThongtin";
            this.groupBoxThongtin.Size = new System.Drawing.Size(874, 131);
            this.groupBoxThongtin.TabIndex = 26;
            this.groupBoxThongtin.TabStop = false;
            this.groupBoxThongtin.Text = "Thông tin khoa";
            // 
            // dateTimePickerNgaytao
            // 
            this.dateTimePickerNgaytao.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dateTimePickerNgaytao.Location = new System.Drawing.Point(109, 87);
            this.dateTimePickerNgaytao.Name = "dateTimePickerNgaytao";
            this.dateTimePickerNgaytao.Size = new System.Drawing.Size(153, 22);
            this.dateTimePickerNgaytao.TabIndex = 24;
            // 
            // txtMaK
            // 
            this.txtMaK.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtMaK.Location = new System.Drawing.Point(109, 31);
            this.txtMaK.MaxLength = 3;
            this.txtMaK.Name = "txtMaK";
            this.txtMaK.Size = new System.Drawing.Size(153, 22);
            this.txtMaK.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(40, 35);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(63, 16);
            this.label1.TabIndex = 1;
            this.label1.Text = "Mã khoa:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(35, 62);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(68, 16);
            this.label2.TabIndex = 2;
            this.label2.Text = "Tên khoa:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(37, 91);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(66, 16);
            this.label3.TabIndex = 3;
            this.label3.Text = "Ngày tạo:";
            // 
            // txtTenK
            // 
            this.txtTenK.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTenK.Location = new System.Drawing.Point(109, 59);
            this.txtTenK.Name = "txtTenK";
            this.txtTenK.Size = new System.Drawing.Size(153, 22);
            this.txtTenK.TabIndex = 11;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.dgvQLkhoa);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(12, 217);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(874, 328);
            this.groupBox1.TabIndex = 25;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Danh sách khoa";
            // 
            // dgvQLkhoa
            // 
            this.dgvQLkhoa.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvQLkhoa.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column2,
            this.Column3});
            this.dgvQLkhoa.Location = new System.Drawing.Point(6, 21);
            this.dgvQLkhoa.Name = "dgvQLkhoa";
            this.dgvQLkhoa.ReadOnly = true;
            this.dgvQLkhoa.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvQLkhoa.Size = new System.Drawing.Size(862, 301);
            this.dgvQLkhoa.TabIndex = 14;
            this.dgvQLkhoa.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvQLkhoa_CellClick);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(353, 35);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(198, 31);
            this.label11.TabIndex = 36;
            this.label11.Text = "Quản Lý Khoa";
            // 
            // Column1
            // 
            this.Column1.DataPropertyName = "MaKhoa";
            this.Column1.HeaderText = "Mã khoa";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            // 
            // Column2
            // 
            this.Column2.DataPropertyName = "TenKhoa";
            this.Column2.HeaderText = "Tên khoa";
            this.Column2.Name = "Column2";
            this.Column2.ReadOnly = true;
            this.Column2.Width = 250;
            // 
            // Column3
            // 
            this.Column3.DataPropertyName = "NgayTao";
            this.Column3.HeaderText = "Ngày tạo";
            this.Column3.Name = "Column3";
            this.Column3.ReadOnly = true;
            // 
            // Frm_QLkhoa
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.WhiteSmoke;
            this.ClientSize = new System.Drawing.Size(931, 557);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.groupBoxThongtin);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.toolStripK);
            this.Name = "Frm_QLkhoa";
            this.Text = "Frm_QLkhoa";
            this.Load += new System.EventHandler(this.Frm_QLkhoa_Load);
            this.toolStripK.ResumeLayout(false);
            this.toolStripK.PerformLayout();
            this.groupBoxThongtin.ResumeLayout(false);
            this.groupBoxThongtin.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvQLkhoa)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ToolStrip toolStripK;
        private System.Windows.Forms.ToolStripButton toolStripButtonThemK;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripButton toolStripButtonXoaK;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.ToolStripButton toolStripButtonSuaK;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator4;
        private System.Windows.Forms.ToolStripButton toolStripButtonLuuK;
        private System.Windows.Forms.GroupBox groupBoxThongtin;
        private System.Windows.Forms.DateTimePicker dateTimePickerNgaytao;
        private System.Windows.Forms.TextBox txtMaK;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtTenK;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DataGridView dgvQLkhoa;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
    }
}