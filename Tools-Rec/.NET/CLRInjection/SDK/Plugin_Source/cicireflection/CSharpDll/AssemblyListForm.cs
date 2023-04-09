using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Reflection;

namespace CSharpDll
{
    public partial class AssemblyListForm : Form
    {
        public AssemblyListForm()
        {
            InitializeComponent();
        }

        private void AssemblyListForm_Load(object sender, EventArgs e)
        {
            Assembly[] assemblies = AppDomain.CurrentDomain.GetAssemblies();
            foreach (Assembly assembly in assemblies)
            {
                ListViewItem item = new ListViewItem();
                item.Text = assembly.FullName;
                if (item.Text.IndexOf("System") == -1 && item.Text.IndexOf("mscorlib") == -1 && item.Text.IndexOf("LoadCSDll") == -1 && item.Text.IndexOf("CSharpDll") == -1 && item.Text.IndexOf("msvcm80") == -1)
                {
                    item.ForeColor = Color.Red;
                }
                item.Tag = assembly;
                listViewAssemblies.Items.Add(item);
            }
        }

        private void buttonOK_Click(object sender, EventArgs e)
        {
            OpenAssemblyForm();
        }

        private void OpenAssemblyForm()
        {
            if (listViewAssemblies.SelectedItems.Count == 0)
            {
                return;
            }

            MainForm form = new MainForm();
            form.Assembly = (Assembly)listViewAssemblies.SelectedItems[0].Tag;
            form.ShowDialog();
        }

        private void listViewAssemblies_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            OpenAssemblyForm();
        }
    }
}