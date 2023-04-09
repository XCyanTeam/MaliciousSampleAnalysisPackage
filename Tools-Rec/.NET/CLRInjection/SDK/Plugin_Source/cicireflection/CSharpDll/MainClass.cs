using System;
using System.Collections.Generic;
using System.Text;

namespace CSharpDll
{
    public class MainClass
    {
        public static void InjectMain()    
        {
            AssemblyListForm form = new AssemblyListForm();
            form.Show();
        }

        public static string InjectAbout()
        {
            return "这是一个可以查看程序集中的类、方法、属性等内容的插件";
        }      
    }
}
