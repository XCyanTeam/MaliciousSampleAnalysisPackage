namespace CSharpDll
{
    partial class MainForm
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainForm));
            this.splitContainerMain = new System.Windows.Forms.SplitContainer();
            this.splitContainerLeft = new System.Windows.Forms.SplitContainer();
            this.treeViewRef = new System.Windows.Forms.TreeView();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.textBoxAssemInfo = new System.Windows.Forms.TextBox();
            this.richTextBoxCode = new System.Windows.Forms.RichTextBox();
            this.splitContainerMain.Panel1.SuspendLayout();
            this.splitContainerMain.Panel2.SuspendLayout();
            this.splitContainerMain.SuspendLayout();
            this.splitContainerLeft.Panel1.SuspendLayout();
            this.splitContainerLeft.Panel2.SuspendLayout();
            this.splitContainerLeft.SuspendLayout();
            this.SuspendLayout();
            // 
            // splitContainerMain
            // 
            this.splitContainerMain.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.splitContainerMain.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainerMain.Location = new System.Drawing.Point(0, 0);
            this.splitContainerMain.Name = "splitContainerMain";
            // 
            // splitContainerMain.Panel1
            // 
            this.splitContainerMain.Panel1.Controls.Add(this.splitContainerLeft);
            // 
            // splitContainerMain.Panel2
            // 
            this.splitContainerMain.Panel2.Controls.Add(this.richTextBoxCode);
            this.splitContainerMain.Size = new System.Drawing.Size(637, 466);
            this.splitContainerMain.SplitterDistance = 309;
            this.splitContainerMain.TabIndex = 1;
            // 
            // splitContainerLeft
            // 
            this.splitContainerLeft.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.splitContainerLeft.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainerLeft.Location = new System.Drawing.Point(0, 0);
            this.splitContainerLeft.Name = "splitContainerLeft";
            this.splitContainerLeft.Orientation = System.Windows.Forms.Orientation.Horizontal;
            // 
            // splitContainerLeft.Panel1
            // 
            this.splitContainerLeft.Panel1.Controls.Add(this.treeViewRef);
            // 
            // splitContainerLeft.Panel2
            // 
            this.splitContainerLeft.Panel2.Controls.Add(this.textBoxAssemInfo);
            this.splitContainerLeft.Size = new System.Drawing.Size(309, 466);
            this.splitContainerLeft.SplitterDistance = 370;
            this.splitContainerLeft.TabIndex = 0;
            // 
            // treeViewRef
            // 
            this.treeViewRef.Dock = System.Windows.Forms.DockStyle.Fill;
            this.treeViewRef.ImageIndex = 0;
            this.treeViewRef.ImageList = this.imageList1;
            this.treeViewRef.Location = new System.Drawing.Point(0, 0);
            this.treeViewRef.Name = "treeViewRef";
            this.treeViewRef.SelectedImageIndex = 0;
            this.treeViewRef.Size = new System.Drawing.Size(307, 368);
            this.treeViewRef.TabIndex = 0;
            this.treeViewRef.AfterSelect += new System.Windows.Forms.TreeViewEventHandler(this.treeViewRef_AfterSelect);
            // 
            // imageList1
            // 
            this.imageList1.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageList1.ImageStream")));
            this.imageList1.TransparentColor = System.Drawing.Color.Transparent;
            this.imageList1.Images.SetKeyName(0, "NameSpace.bmp");
            this.imageList1.Images.SetKeyName(1, "ClassName.bmp");
            this.imageList1.Images.SetKeyName(2, "Enums.bmp");
            this.imageList1.Images.SetKeyName(3, "Method.bmp");
            this.imageList1.Images.SetKeyName(4, "Property.bmp");
            this.imageList1.Images.SetKeyName(5, "subEnum.bmp");
            // 
            // textBoxAssemInfo
            // 
            this.textBoxAssemInfo.BackColor = System.Drawing.SystemColors.Info;
            this.textBoxAssemInfo.Dock = System.Windows.Forms.DockStyle.Fill;
            this.textBoxAssemInfo.Location = new System.Drawing.Point(0, 0);
            this.textBoxAssemInfo.Multiline = true;
            this.textBoxAssemInfo.Name = "textBoxAssemInfo";
            this.textBoxAssemInfo.Size = new System.Drawing.Size(307, 90);
            this.textBoxAssemInfo.TabIndex = 0;
            // 
            // richTextBoxCode
            // 
            this.richTextBoxCode.BackColor = System.Drawing.SystemColors.Info;
            this.richTextBoxCode.Dock = System.Windows.Forms.DockStyle.Fill;
            this.richTextBoxCode.Location = new System.Drawing.Point(0, 0);
            this.richTextBoxCode.Name = "richTextBoxCode";
            this.richTextBoxCode.Size = new System.Drawing.Size(322, 464);
            this.richTextBoxCode.TabIndex = 0;
            this.richTextBoxCode.Text = "";
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(637, 466);
            this.Controls.Add(this.splitContainerMain);
            this.Name = "MainForm";
            this.Text = "CiCi Reflection";
            this.Load += new System.EventHandler(this.MainForm_Load);
            this.splitContainerMain.Panel1.ResumeLayout(false);
            this.splitContainerMain.Panel2.ResumeLayout(false);
            this.splitContainerMain.ResumeLayout(false);
            this.splitContainerLeft.Panel1.ResumeLayout(false);
            this.splitContainerLeft.Panel2.ResumeLayout(false);
            this.splitContainerLeft.Panel2.PerformLayout();
            this.splitContainerLeft.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.SplitContainer splitContainerMain;
        private System.Windows.Forms.SplitContainer splitContainerLeft;
        private System.Windows.Forms.TreeView treeViewRef;
        private System.Windows.Forms.TextBox textBoxAssemInfo;
        private System.Windows.Forms.ImageList imageList1;
        private System.Windows.Forms.RichTextBox richTextBoxCode;


    }
}

