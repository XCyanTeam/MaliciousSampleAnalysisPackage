using System;
using System.Collections.Generic;
using System.Text;

namespace PropertyView
{
    public class MainClass
    {
        public static void InjectMain()
        {
            InjectForm form = new InjectForm();
            form.Show();
        }

        public static string InjectAbout()
        {
            return "这是一个可以动态查看和修改程序集窗体以及控件属性的插件。";
        }
    }
}
