using System;
using System.Collections.Generic;
using System.Text;
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
    public class CiCiReflect
    {
        public static ArrayList GetAllNameSpace(Assembly assembly)
        {
            ArrayList namePaceArry = new ArrayList();
            foreach(Type type in assembly.GetTypes())
            {
                if (!namePaceArry.Contains(type.Namespace) && type.Namespace != null)
                {
                    namePaceArry.Add(type.Namespace);
                }
            }
            return namePaceArry;
        }

        public static MethodInfo [] GetMethod(Assembly assembly, string fullName)
        {
            //BindingFlags flags = (BindingFlags.NonPublic | BindingFlags.Public | BindingFlags.Static | BindingFlags.Instance | BindingFlags.DeclaredOnly);
            Type type = assembly.GetType(fullName);  
            return type.GetMethods();
           
        }

        public static PropertyInfo[] GetPropertys(Assembly assembly, string fullName)
        {
            Type type = assembly.GetType(fullName);
            return type.GetProperties();
        }

        public static ArrayList GetClassNames(Assembly assembly, string nameSpace)
        {
            Type[] types = assembly.GetTypes();
            ArrayList classArray = new ArrayList();
            foreach (Type type in types)
            {
                if (type.FullName == nameSpace + "." + type.Name && type.BaseType.Name != "Enum")
                {
                    classArray.Add(type.Name);
                }
            }
            return classArray;
        }

        public static ArrayList GetEnums(Assembly assembly, string nameSpace)
        {
            Type[] types = assembly.GetTypes();
            ArrayList classArray = new ArrayList();
            foreach (Type type in types)
            {
                if (type.FullName == nameSpace + "." + type.Name && type.BaseType.Name == "Enum")
                {
                    classArray.Add(type.Name);
                }
            }
            return classArray;
        }

        public static FieldInfo [] GetSubEnums(Assembly assembly, string fullName)
        {
            return assembly.GetType(fullName).GetFields();
        }

        public static string GetSubEnumsData(Assembly assembly, string fullName,string name)
        {
            FieldInfo info = assembly.GetType(fullName).GetField(name); 
            return info.GetRawConstantValue().ToString();

        }

        public static string GetMethodData(Assembly assembly, string fullName,string name, Type [] types)
        {
            Type type = assembly.GetType(fullName);
            MethodInfo info = type.GetMethod(name, types);
            //int length = 0;
            string data = String.Empty;
            if (info.GetMethodBody() != null)
            {
                byte[] il = info.GetMethodBody().GetILAsByteArray();
                if (il != null)
                {
                    int inslength;
                    for (int currentpos = 0;currentpos < il.Length;currentpos += inslength)
                    {
                        inslength = 0;
                        data += String.Format("{0:X8}: {1}", currentpos,Disassembler.Decode(il, currentpos, out inslength)) + "\r\n";
                    }
                }
                return data;
            }
            return "此函数不做反编译处理";
        }
    }
}
