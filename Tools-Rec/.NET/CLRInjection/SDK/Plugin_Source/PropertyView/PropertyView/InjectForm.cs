using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PropertyView
{
    public partial class InjectForm : Form
    {
        public InjectForm()
        {
            InitializeComponent();
        }

        private void InitTree()
        {
            treeView1.Nodes.Clear();
            treeView1.BeginUpdate();
            foreach (Form f in Application.OpenForms)
            {
                if (f.Text == "通用托管程序注入工具@_@" || f.Text == this.Text)
                {
                    continue;
                }
                TreeNode node = new TreeNode();
                node.Text = f.Text;
                node.Tag = f;
                treeView1.Nodes.Add(node);
                InitSubControl(f,node);
            }
            treeView1.EndUpdate();
        }

        private void InitSubControl(Control con,TreeNode node)
        {
            foreach(Control subCon in con.Controls)
            {
                TreeNode subNode = new TreeNode();
                subNode.Text = subCon.Text;
                subNode.Tag = subCon;
                node.Nodes.Add(subNode);
                InitSubControl(subCon, subNode);
            }
        }

        private void toolStripButtonRefresh_Click(object sender, EventArgs e)
        {
            InitTree();
        }

        private void InjectForm_Load(object sender, EventArgs e)
        {
            InitTree();
        }

        private void treeView1_AfterSelect(object sender, TreeViewEventArgs e)
        {
            if(e.Node != null)
            {
                propertyGrid1.SelectedObject = e.Node.Tag;
            }
        }
    }
}
