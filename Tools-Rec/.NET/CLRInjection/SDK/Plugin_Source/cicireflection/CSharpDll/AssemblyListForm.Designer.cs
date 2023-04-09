namespace CSharpDll
{
    partial class AssemblyListForm
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.listViewAssemblies = new System.Windows.Forms.ListView();
            this.columnHeader1 = new System.Windows.Forms.ColumnHeader();
            this.label1 = new System.Windows.Forms.Label();
            this.buttonOK = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // listViewAssemblies
            // 
            this.listViewAssemblies.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader1});
            this.listViewAssemblies.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.listViewAssemblies.FullRowSelect = true;
            this.listViewAssemblies.GridLines = true;
            this.listViewAssemblies.HideSelection = false;
            this.listViewAssemblies.Location = new System.Drawing.Point(12, 32);
            this.listViewAssemblies.MultiSelect = false;
            this.listViewAssemblies.Name = "listViewAssemblies";
            this.listViewAssemblies.Size = new System.Drawing.Size(702, 385);
            this.listViewAssemblies.TabIndex = 0;
            this.listViewAssemblies.UseCompatibleStateImageBehavior = false;
            this.listViewAssemblies.View = System.Windows.Forms.View.Details;
            this.listViewAssemblies.MouseDoubleClick += new System.Windows.Forms.MouseEventHandler(this.listViewAssemblies_MouseDoubleClick);
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "程序集合";
            this.columnHeader1.Width = 697;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 7);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(173, 12);
            this.label1.TabIndex = 1;
            this.label1.Text = "请选择一个您需要查看的程序集";
            // 
            // buttonOK
            // 
            this.buttonOK.Location = new System.Drawing.Point(303, 423);
            this.buttonOK.Name = "buttonOK";
            this.buttonOK.Size = new System.Drawing.Size(75, 23);
            this.buttonOK.TabIndex = 2;
            this.buttonOK.Text = "确定";
            this.buttonOK.UseVisualStyleBackColor = true;
            this.buttonOK.Click += new System.EventHandler(this.buttonOK_Click);
            // 
            // AssemblyListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(726, 449);
            this.Controls.Add(this.buttonOK);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.listViewAssemblies);
            this.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "AssemblyListForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "www.chengchen.net";
            this.Load += new System.EventHandler(this.AssemblyListForm_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ListView listViewAssemblies;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ColumnHeader columnHeader1;
        private System.Windows.Forms.Button buttonOK;
    }
}