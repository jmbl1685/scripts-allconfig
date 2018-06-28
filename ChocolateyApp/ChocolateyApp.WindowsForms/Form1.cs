using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ChocolateyApp.WindowsForms
{
    public partial class Form1 : Form
    {

        public Form1()
        {
            InitializeComponent();
            CenterToScreen();
        }

        public void ExecuteAsAdmin(string fileName)
        {
            Process proc = new Process();
            proc.StartInfo.FileName = fileName;
            proc.StartInfo.UseShellExecute = true;
            proc.StartInfo.Verb = "runas";
            proc.Start();
        }

        private void btn_Install_Click(object sender, EventArgs e)
        {         
            string comando = textBox1.Text;
            var path = Path.GetTempPath();
            File.WriteAllText($"{path}chocolateyApp.bat", comando);
            var x = File.Open($"{path}chocolateyApp.bat", FileMode.Open);
            x.Close();

            ExecuteAsAdmin($"{path}chocolateyApp.bat");
            //System.Environment.Exit(1);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            List<string> resultado = new List<string>();

            foreach (Control control in Controls)
            {
                if (control is GroupBox)
                {
                    var checkboxs = control.Controls;
              
                    foreach (var item in checkboxs)
                    {
                        CheckBox checkbox = item as CheckBox;
                        if (checkbox.Checked)
                            resultado.Add(checkbox.AccessibleName);
                    }

                    
                }
            }

            textBox1.Text = $"choco install {string.Join(" ", resultado.ToArray())} --force -y";
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string comando = Resource.CHOCOLATEY;
            var path = Path.GetTempPath();
            File.WriteAllText($"{path}chocolateyInstall.bat", comando);
            var x = File.Open($"{path}chocolateyInstall.bat", FileMode.Open);
            x.Close();

            ExecuteAsAdmin($"{path}chocolateyInstall.bat");
        }
    }
}
