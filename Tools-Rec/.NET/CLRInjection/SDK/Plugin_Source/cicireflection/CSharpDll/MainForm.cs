using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Reflection;
using System.Collections;

/*
 * http://www.chengchen.net
 * http://hi.baidu.com/tease/
 * by 程晨
 * 2008-06-01
 */
namespace CSharpDll
{
    //在TreeNode中存储ArryList其中第一个为类型的判断，其他的扩展数据
    public partial class MainForm : Form
    {
        private Assembly m_Assembly;

        public Assembly Assembly
        {
            get { return m_Assembly; }
            set { m_Assembly = value; }
        }
        
        
        public MainForm()
        {
            InitializeComponent();
        }

        /// <summary>
        /// 获得所有的方法
        /// </summary>
        /// <param name="nameSpace">命名空间名</param>
        private void InitMethods(string fullName)
        {
            MethodInfo[] infos = CiCiReflect.GetMethod(m_Assembly, fullName);
            foreach(MethodInfo info in infos)
            {
                TreeNode node = new TreeNode();
                ParameterInfo[] parameterInfos = info.GetParameters();
                string parame = String.Empty;
                foreach (ParameterInfo p in parameterInfos)
                {
                    parame += p.ToString() +",";
                }
                parame = parame.TrimEnd(new char[] { ',' });

                ArrayList arry = new ArrayList();
                arry.Add(ReflectTypes.METHOD);
                arry.Add(parameterInfos);

                node.Text = info.Name + "("+ parame + ") : " + info.ReturnType.Name;
                node.Tag = arry;
                node.ImageIndex = 3;
                node.SelectedImageIndex = 3;
                node.ToolTipText = info.Name;
                treeViewRef.SelectedNode.Nodes.Add(node);
            }
        }

        private void InitPropertys(string fullName)
        {
            PropertyInfo[] infos = CiCiReflect.GetPropertys(m_Assembly, fullName);
            foreach (PropertyInfo info in infos)
            {
                TreeNode node = new TreeNode();
                ArrayList arry = new ArrayList();
                arry.Add(ReflectTypes.PROPERTY);

                node.Text = info.Name;
                node.Tag = arry;
                node.ImageIndex = 4;
                node.SelectedImageIndex = 4;
                treeViewRef.SelectedNode.Nodes.Add(node);
            }
        }

        private void InitClassNames(string nameSpace)
        {
            ArrayList classArray = CiCiReflect.GetClassNames(m_Assembly, nameSpace);
            {
                foreach (string className in classArray)
                {
                    TreeNode node = new TreeNode();

                    ArrayList arry = new ArrayList();
                    arry.Add(ReflectTypes.CLASS);
                    
                    node.Text = className;
                    node.Tag = arry;
                    node.ToolTipText = nameSpace + "." + className;
                    node.ImageIndex = 1;
                    node.SelectedImageIndex = 1;
                    treeViewRef.SelectedNode.Nodes.Add(node);
                }
            }
        }

        private void InitEnums(string nameSpace)
        {
            ArrayList enumArray = CiCiReflect.GetEnums(m_Assembly, nameSpace);
            {
                foreach (string enumName in enumArray)
                {
                    TreeNode node = new TreeNode();
                    
                    ArrayList arry = new ArrayList();
                    arry.Add(ReflectTypes.ENUM);
                    
                    node.Text = enumName;
                    node.Tag = arry;
                    node.ToolTipText = nameSpace + "." + enumName;
                    node.ImageIndex = 2;
                    node.SelectedImageIndex = 2;
                    treeViewRef.SelectedNode.Nodes.Add(node);
                }
            }
        }

        private void InitSubEnums(string fullName)
        {
            FieldInfo [] infos = CiCiReflect.GetSubEnums(m_Assembly, fullName);
            foreach (FieldInfo info in infos)
            {
                if (info.Name == "value__")
                {
                    continue;
                }
                TreeNode node = new TreeNode();

                ArrayList arry = new ArrayList();
                arry.Add(ReflectTypes.SUBENUM);
                arry.Add(info.Name);

                node.Text = info.Name;
                node.Tag = arry;
                node.ToolTipText = fullName;
                node.ImageIndex = 5;
                node.SelectedImageIndex = 5;
                treeViewRef.SelectedNode.Nodes.Add(node);
            }
        }

        private void ShowSubEnums(string fullName,string name)
        {
            richTextBoxCode.Text = CiCiReflect.GetSubEnumsData(m_Assembly, fullName, name);
        }

        private void ShowMethodData(string fullName, ParameterInfo[] parameterInfos)
        {
            Type[] types = new Type[parameterInfos.Length];
            int n=0;
            foreach (ParameterInfo info in parameterInfos)
            {
                types.SetValue(info.ParameterType, n);
                n++;
            }
            richTextBoxCode.Text = CiCiReflect.GetMethodData(m_Assembly, treeViewRef.SelectedNode.Parent.ToolTipText, treeViewRef.SelectedNode.ToolTipText, types);
        }

        private void treeViewRef_AfterSelect(object sender, TreeViewEventArgs e)
        {
            TreeNode node = treeViewRef.SelectedNode;
            treeViewRef.SelectedNode.Nodes.Clear();
            if (node.Tag != null)
            {
                ArrayList array = (ArrayList)node.Tag;

                switch ((ReflectTypes)array[0])
                {
                    case ReflectTypes.NAMESPACE:
                        InitClassNames(node.Text);
                        InitEnums(node.Text);
                        break;
                    case ReflectTypes.CLASS:
                        InitMethods(node.ToolTipText);
                        InitPropertys(node.ToolTipText);
                        break;
                    case ReflectTypes.ENUM:
                        InitSubEnums(node.ToolTipText);
                        break;
                    case ReflectTypes.SUBENUM:
                        ShowSubEnums(node.ToolTipText,(string)array[1]);
                        break;
                    case ReflectTypes.METHOD:
                        ShowMethodData(node.ToolTipText, (ParameterInfo[])array[1]);
                        break;
                }
                node.Expand();
            }
        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void MainForm_Load(object sender, EventArgs e)
        {
            try
            {
                textBoxAssemInfo.Text = m_Assembly.FullName;
                treeViewRef.Nodes.Clear();
                ArrayList nameArray = CiCiReflect.GetAllNameSpace(m_Assembly);

                foreach (string nameSpc in nameArray)
                {
                    TreeNode node = new TreeNode();

                    ArrayList arry = new ArrayList();
                    arry.Add(ReflectTypes.NAMESPACE);

                    node.Text = nameSpc;
                    node.Tag = arry;
                    node.ImageIndex = 0;
                    node.SelectedImageIndex = 0;
                    treeViewRef.Nodes.Add(node);
                }
            }
            catch
            {
                MessageBox.Show("这不是一个有效的DONET程序", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}