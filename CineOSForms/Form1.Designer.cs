namespace CineOSForms
{
	partial class Form1
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
			this.TabControl = new System.Windows.Forms.TabControl();
			this.CinemaTab = new System.Windows.Forms.TabPage();
			this.CinemasComboBox = new System.Windows.Forms.ComboBox();
			this.splitContainer1 = new System.Windows.Forms.SplitContainer();
			this.AddProjectionButton = new System.Windows.Forms.Button();
			this.SelectedDayLabel = new System.Windows.Forms.Label();
			this.label1 = new System.Windows.Forms.Label();
			this.SelectedDayProjectionDataGridView = new System.Windows.Forms.DataGridView();
			this.UpcomingProjectionsCalendar = new System.Windows.Forms.MonthCalendar();
			this.UpcomingProjectionsLabelInCinema = new System.Windows.Forms.Label();
			this.CinemaRegionLabel = new System.Windows.Forms.Label();
			this.label4 = new System.Windows.Forms.Label();
			this.CinemaTelephoneNumberLabel = new System.Windows.Forms.Label();
			this.CinemaAddressLabel = new System.Windows.Forms.Label();
			this.label3 = new System.Windows.Forms.Label();
			this.CinemaAddressDescriptionLabel = new System.Windows.Forms.Label();
			this.CinemaContactLabel = new System.Windows.Forms.Label();
			this.EmployeesInCinemaDataGridView = new System.Windows.Forms.DataGridView();
			this.ManagerLinkLabel = new System.Windows.Forms.LinkLabel();
			this.ManagerLabel = new System.Windows.Forms.Label();
			this.EmployeesInCinemaLabel = new System.Windows.Forms.Label();
			this.CinemaLabel = new System.Windows.Forms.Label();
			this.tabPage2 = new System.Windows.Forms.TabPage();
			this.TabControl.SuspendLayout();
			this.CinemaTab.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).BeginInit();
			this.splitContainer1.Panel1.SuspendLayout();
			this.splitContainer1.Panel2.SuspendLayout();
			this.splitContainer1.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.SelectedDayProjectionDataGridView)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.EmployeesInCinemaDataGridView)).BeginInit();
			this.SuspendLayout();
			// 
			// TabControl
			// 
			this.TabControl.Controls.Add(this.CinemaTab);
			this.TabControl.Controls.Add(this.tabPage2);
			this.TabControl.Location = new System.Drawing.Point(0, 12);
			this.TabControl.Name = "TabControl";
			this.TabControl.SelectedIndex = 0;
			this.TabControl.Size = new System.Drawing.Size(1231, 823);
			this.TabControl.TabIndex = 0;
			// 
			// CinemaTab
			// 
			this.CinemaTab.BackColor = System.Drawing.Color.Gainsboro;
			this.CinemaTab.Controls.Add(this.CinemasComboBox);
			this.CinemaTab.Controls.Add(this.splitContainer1);
			this.CinemaTab.Controls.Add(this.CinemaLabel);
			this.CinemaTab.Location = new System.Drawing.Point(4, 22);
			this.CinemaTab.Name = "CinemaTab";
			this.CinemaTab.Padding = new System.Windows.Forms.Padding(3);
			this.CinemaTab.Size = new System.Drawing.Size(1223, 797);
			this.CinemaTab.TabIndex = 0;
			this.CinemaTab.Text = "Cinema";
			this.CinemaTab.Click += new System.EventHandler(this.CinemaTab_Click);
			// 
			// CinemasComboBox
			// 
			this.CinemasComboBox.BackColor = System.Drawing.Color.LightGray;
			this.CinemasComboBox.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
			this.CinemasComboBox.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
			this.CinemasComboBox.FormattingEnabled = true;
			this.CinemasComboBox.Location = new System.Drawing.Point(312, 13);
			this.CinemasComboBox.Name = "CinemasComboBox";
			this.CinemasComboBox.Size = new System.Drawing.Size(338, 29);
			this.CinemasComboBox.TabIndex = 2;
			this.CinemasComboBox.SelectedIndexChanged += new System.EventHandler(this.CinemasComboBox_SelectedIndexChanged);
			// 
			// splitContainer1
			// 
			this.splitContainer1.Location = new System.Drawing.Point(11, 51);
			this.splitContainer1.Name = "splitContainer1";
			// 
			// splitContainer1.Panel1
			// 
			this.splitContainer1.Panel1.BackColor = System.Drawing.Color.White;
			this.splitContainer1.Panel1.Controls.Add(this.AddProjectionButton);
			this.splitContainer1.Panel1.Controls.Add(this.SelectedDayLabel);
			this.splitContainer1.Panel1.Controls.Add(this.label1);
			this.splitContainer1.Panel1.Controls.Add(this.SelectedDayProjectionDataGridView);
			this.splitContainer1.Panel1.Controls.Add(this.UpcomingProjectionsCalendar);
			this.splitContainer1.Panel1.Controls.Add(this.UpcomingProjectionsLabelInCinema);
			this.splitContainer1.Panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.splitContainer1_Panel1_Paint);
			// 
			// splitContainer1.Panel2
			// 
			this.splitContainer1.Panel2.BackColor = System.Drawing.Color.White;
			this.splitContainer1.Panel2.Controls.Add(this.CinemaRegionLabel);
			this.splitContainer1.Panel2.Controls.Add(this.label4);
			this.splitContainer1.Panel2.Controls.Add(this.CinemaTelephoneNumberLabel);
			this.splitContainer1.Panel2.Controls.Add(this.CinemaAddressLabel);
			this.splitContainer1.Panel2.Controls.Add(this.label3);
			this.splitContainer1.Panel2.Controls.Add(this.CinemaAddressDescriptionLabel);
			this.splitContainer1.Panel2.Controls.Add(this.CinemaContactLabel);
			this.splitContainer1.Panel2.Controls.Add(this.EmployeesInCinemaDataGridView);
			this.splitContainer1.Panel2.Controls.Add(this.ManagerLinkLabel);
			this.splitContainer1.Panel2.Controls.Add(this.ManagerLabel);
			this.splitContainer1.Panel2.Controls.Add(this.EmployeesInCinemaLabel);
			this.splitContainer1.Size = new System.Drawing.Size(1197, 739);
			this.splitContainer1.SplitterDistance = 567;
			this.splitContainer1.TabIndex = 1;
			// 
			// AddProjectionButton
			// 
			this.AddProjectionButton.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
			this.AddProjectionButton.Location = new System.Drawing.Point(412, 706);
			this.AddProjectionButton.Name = "AddProjectionButton";
			this.AddProjectionButton.Size = new System.Drawing.Size(138, 26);
			this.AddProjectionButton.TabIndex = 7;
			this.AddProjectionButton.Text = "Add projection";
			this.AddProjectionButton.UseVisualStyleBackColor = true;
			// 
			// SelectedDayLabel
			// 
			this.SelectedDayLabel.AutoSize = true;
			this.SelectedDayLabel.Font = new System.Drawing.Font("Segoe UI", 16F);
			this.SelectedDayLabel.Location = new System.Drawing.Point(189, 221);
			this.SelectedDayLabel.Margin = new System.Windows.Forms.Padding(0);
			this.SelectedDayLabel.Name = "SelectedDayLabel";
			this.SelectedDayLabel.Size = new System.Drawing.Size(0, 30);
			this.SelectedDayLabel.TabIndex = 6;
			// 
			// label1
			// 
			this.label1.AutoSize = true;
			this.label1.Font = new System.Drawing.Font("Segoe UI", 15F);
			this.label1.Location = new System.Drawing.Point(11, 224);
			this.label1.Margin = new System.Windows.Forms.Padding(0);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(178, 28);
			this.label1.TabIndex = 5;
			this.label1.Text = "Projections on day:";
			this.label1.Click += new System.EventHandler(this.label1_Click);
			// 
			// SelectedDayProjectionDataGridView
			// 
			this.SelectedDayProjectionDataGridView.AllowUserToAddRows = false;
			this.SelectedDayProjectionDataGridView.AllowUserToDeleteRows = false;
			this.SelectedDayProjectionDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.SelectedDayProjectionDataGridView.Location = new System.Drawing.Point(16, 255);
			this.SelectedDayProjectionDataGridView.Name = "SelectedDayProjectionDataGridView";
			this.SelectedDayProjectionDataGridView.ReadOnly = true;
			this.SelectedDayProjectionDataGridView.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
			this.SelectedDayProjectionDataGridView.Size = new System.Drawing.Size(534, 445);
			this.SelectedDayProjectionDataGridView.TabIndex = 4;
			// 
			// UpcomingProjectionsCalendar
			// 
			this.UpcomingProjectionsCalendar.Location = new System.Drawing.Point(16, 51);
			this.UpcomingProjectionsCalendar.Name = "UpcomingProjectionsCalendar";
			this.UpcomingProjectionsCalendar.TabIndex = 3;
			this.UpcomingProjectionsCalendar.DateSelected += new System.Windows.Forms.DateRangeEventHandler(this.UpcomingProjectionsCalendar_DateSelected);
			// 
			// UpcomingProjectionsLabelInCinema
			// 
			this.UpcomingProjectionsLabelInCinema.AutoSize = true;
			this.UpcomingProjectionsLabelInCinema.Font = new System.Drawing.Font("Segoe UI", 18F);
			this.UpcomingProjectionsLabelInCinema.Location = new System.Drawing.Point(10, 10);
			this.UpcomingProjectionsLabelInCinema.Margin = new System.Windows.Forms.Padding(0);
			this.UpcomingProjectionsLabelInCinema.Name = "UpcomingProjectionsLabelInCinema";
			this.UpcomingProjectionsLabelInCinema.Size = new System.Drawing.Size(249, 32);
			this.UpcomingProjectionsLabelInCinema.TabIndex = 2;
			this.UpcomingProjectionsLabelInCinema.Text = "Upcoming Projections";
			// 
			// CinemaRegionLabel
			// 
			this.CinemaRegionLabel.AutoSize = true;
			this.CinemaRegionLabel.Font = new System.Drawing.Font("Segoe UI", 11F);
			this.CinemaRegionLabel.Location = new System.Drawing.Point(158, 692);
			this.CinemaRegionLabel.Name = "CinemaRegionLabel";
			this.CinemaRegionLabel.Size = new System.Drawing.Size(106, 20);
			this.CinemaRegionLabel.TabIndex = 13;
			this.CinemaRegionLabel.Text = "CinemaRegion";
			this.CinemaRegionLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
			// 
			// label4
			// 
			this.label4.AutoSize = true;
			this.label4.Font = new System.Drawing.Font("Segoe UI", 11F);
			this.label4.Location = new System.Drawing.Point(93, 692);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(59, 20);
			this.label4.TabIndex = 12;
			this.label4.Text = "Region:";
			this.label4.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
			// 
			// CinemaTelephoneNumberLabel
			// 
			this.CinemaTelephoneNumberLabel.AutoSize = true;
			this.CinemaTelephoneNumberLabel.Font = new System.Drawing.Font("Segoe UI", 11F);
			this.CinemaTelephoneNumberLabel.Location = new System.Drawing.Point(158, 659);
			this.CinemaTelephoneNumberLabel.Name = "CinemaTelephoneNumberLabel";
			this.CinemaTelephoneNumberLabel.Size = new System.Drawing.Size(99, 20);
			this.CinemaTelephoneNumberLabel.TabIndex = 11;
			this.CinemaTelephoneNumberLabel.Text = "CinemaTelNo";
			this.CinemaTelephoneNumberLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
			// 
			// CinemaAddressLabel
			// 
			this.CinemaAddressLabel.AutoSize = true;
			this.CinemaAddressLabel.Font = new System.Drawing.Font("Segoe UI", 11F);
			this.CinemaAddressLabel.Location = new System.Drawing.Point(158, 625);
			this.CinemaAddressLabel.Name = "CinemaAddressLabel";
			this.CinemaAddressLabel.Size = new System.Drawing.Size(112, 20);
			this.CinemaAddressLabel.TabIndex = 10;
			this.CinemaAddressLabel.Text = "CinemaAddress";
			this.CinemaAddressLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
			// 
			// label3
			// 
			this.label3.AutoSize = true;
			this.label3.Font = new System.Drawing.Font("Segoe UI", 11F);
			this.label3.Location = new System.Drawing.Point(12, 659);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(140, 20);
			this.label3.TabIndex = 9;
			this.label3.Text = "Telephone Number:";
			this.label3.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
			// 
			// CinemaAddressDescriptionLabel
			// 
			this.CinemaAddressDescriptionLabel.AutoSize = true;
			this.CinemaAddressDescriptionLabel.Font = new System.Drawing.Font("Segoe UI", 11F);
			this.CinemaAddressDescriptionLabel.Location = new System.Drawing.Point(87, 625);
			this.CinemaAddressDescriptionLabel.Name = "CinemaAddressDescriptionLabel";
			this.CinemaAddressDescriptionLabel.Size = new System.Drawing.Size(65, 20);
			this.CinemaAddressDescriptionLabel.TabIndex = 8;
			this.CinemaAddressDescriptionLabel.Text = "Address:";
			this.CinemaAddressDescriptionLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
			// 
			// CinemaContactLabel
			// 
			this.CinemaContactLabel.AutoSize = true;
			this.CinemaContactLabel.Font = new System.Drawing.Font("Segoe UI", 18F);
			this.CinemaContactLabel.Location = new System.Drawing.Point(10, 593);
			this.CinemaContactLabel.Margin = new System.Windows.Forms.Padding(0);
			this.CinemaContactLabel.Name = "CinemaContactLabel";
			this.CinemaContactLabel.Size = new System.Drawing.Size(234, 32);
			this.CinemaContactLabel.TabIndex = 7;
			this.CinemaContactLabel.Text = "Cinema Contact Info";
			// 
			// EmployeesInCinemaDataGridView
			// 
			this.EmployeesInCinemaDataGridView.AllowUserToAddRows = false;
			this.EmployeesInCinemaDataGridView.AllowUserToDeleteRows = false;
			this.EmployeesInCinemaDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.EmployeesInCinemaDataGridView.Location = new System.Drawing.Point(16, 78);
			this.EmployeesInCinemaDataGridView.Name = "EmployeesInCinemaDataGridView";
			this.EmployeesInCinemaDataGridView.ReadOnly = true;
			this.EmployeesInCinemaDataGridView.Size = new System.Drawing.Size(597, 512);
			this.EmployeesInCinemaDataGridView.TabIndex = 6;
			// 
			// ManagerLinkLabel
			// 
			this.ManagerLinkLabel.AutoSize = true;
			this.ManagerLinkLabel.Font = new System.Drawing.Font("Segoe UI", 11F);
			this.ManagerLinkLabel.LinkColor = System.Drawing.Color.DimGray;
			this.ManagerLinkLabel.Location = new System.Drawing.Point(86, 42);
			this.ManagerLinkLabel.Name = "ManagerLinkLabel";
			this.ManagerLinkLabel.Size = new System.Drawing.Size(118, 20);
			this.ManagerLinkLabel.TabIndex = 5;
			this.ManagerLinkLabel.TabStop = true;
			this.ManagerLinkLabel.Text = "CinemaManager";
			// 
			// ManagerLabel
			// 
			this.ManagerLabel.AutoSize = true;
			this.ManagerLabel.Font = new System.Drawing.Font("Segoe UI", 11F);
			this.ManagerLabel.Location = new System.Drawing.Point(12, 42);
			this.ManagerLabel.Name = "ManagerLabel";
			this.ManagerLabel.Size = new System.Drawing.Size(71, 20);
			this.ManagerLabel.TabIndex = 4;
			this.ManagerLabel.Text = "Manager:";
			this.ManagerLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
			// 
			// EmployeesInCinemaLabel
			// 
			this.EmployeesInCinemaLabel.AutoSize = true;
			this.EmployeesInCinemaLabel.Font = new System.Drawing.Font("Segoe UI", 18F);
			this.EmployeesInCinemaLabel.Location = new System.Drawing.Point(10, 10);
			this.EmployeesInCinemaLabel.Margin = new System.Windows.Forms.Padding(0);
			this.EmployeesInCinemaLabel.Name = "EmployeesInCinemaLabel";
			this.EmployeesInCinemaLabel.Size = new System.Drawing.Size(130, 32);
			this.EmployeesInCinemaLabel.TabIndex = 3;
			this.EmployeesInCinemaLabel.Text = "Employees";
			// 
			// CinemaLabel
			// 
			this.CinemaLabel.AutoSize = true;
			this.CinemaLabel.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
			this.CinemaLabel.Font = new System.Drawing.Font("Segoe UI", 24F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
			this.CinemaLabel.Location = new System.Drawing.Point(3, 3);
			this.CinemaLabel.Name = "CinemaLabel";
			this.CinemaLabel.Size = new System.Drawing.Size(315, 45);
			this.CinemaLabel.TabIndex = 0;
			this.CinemaLabel.Text = "MANAGE CINEMAS";
			// 
			// tabPage2
			// 
			this.tabPage2.Location = new System.Drawing.Point(4, 22);
			this.tabPage2.Name = "tabPage2";
			this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
			this.tabPage2.Size = new System.Drawing.Size(1223, 797);
			this.tabPage2.TabIndex = 1;
			this.tabPage2.Text = "tabPage2";
			this.tabPage2.UseVisualStyleBackColor = true;
			// 
			// Form1
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.AutoSize = true;
			this.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
			this.ClientSize = new System.Drawing.Size(1235, 836);
			this.Controls.Add(this.TabControl);
			this.Name = "Form1";
			this.Text = "Form1";
			this.Load += new System.EventHandler(this.Form1_Load);
			this.TabControl.ResumeLayout(false);
			this.CinemaTab.ResumeLayout(false);
			this.CinemaTab.PerformLayout();
			this.splitContainer1.Panel1.ResumeLayout(false);
			this.splitContainer1.Panel1.PerformLayout();
			this.splitContainer1.Panel2.ResumeLayout(false);
			this.splitContainer1.Panel2.PerformLayout();
			((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).EndInit();
			this.splitContainer1.ResumeLayout(false);
			((System.ComponentModel.ISupportInitialize)(this.SelectedDayProjectionDataGridView)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.EmployeesInCinemaDataGridView)).EndInit();
			this.ResumeLayout(false);

		}

		#endregion

		private System.Windows.Forms.TabControl TabControl;
		private System.Windows.Forms.TabPage CinemaTab;
		private System.Windows.Forms.TabPage tabPage2;
		private System.Windows.Forms.SplitContainer splitContainer1;
		private System.Windows.Forms.Label UpcomingProjectionsLabelInCinema;
		private System.Windows.Forms.Label EmployeesInCinemaLabel;
		private System.Windows.Forms.Label CinemaLabel;
		private System.Windows.Forms.LinkLabel ManagerLinkLabel;
		private System.Windows.Forms.Label ManagerLabel;
		public System.Windows.Forms.MonthCalendar UpcomingProjectionsCalendar;
		private System.Windows.Forms.Button AddProjectionButton;
		private System.Windows.Forms.Label SelectedDayLabel;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.DataGridView SelectedDayProjectionDataGridView;
		private System.Windows.Forms.DataGridView EmployeesInCinemaDataGridView;
		private System.Windows.Forms.ComboBox CinemasComboBox;
		private System.Windows.Forms.Label CinemaContactLabel;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.Label CinemaAddressDescriptionLabel;
		private System.Windows.Forms.Label CinemaRegionLabel;
		private System.Windows.Forms.Label label4;
		private System.Windows.Forms.Label CinemaTelephoneNumberLabel;
		private System.Windows.Forms.Label CinemaAddressLabel;
	}
}

