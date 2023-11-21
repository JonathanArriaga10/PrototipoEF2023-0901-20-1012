using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaControlador;

namespace CapaVista
{
    public partial class FormularioPrincipal : Form
    {
        Controlador cn = new Controlador();
        string tabla = "tbl_estados";
        public FormularioPrincipal()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Help.ShowHelp(this, "ayudassss/AyudaLogistica.chm", "MDI_Inventario.html");
            //Help.ShowHelp(this, "AYUDA/AyudaExamen.chm", "Manual usuario.html");
            //Help.ShowHelp(this, "AYUDA LA SECUELA/ayudase.chm", "Laboratorio 5.html");
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            actualizardatagriew();
        }

        public void actualizardatagriew()
        {
            DataTable dt = cn.llenarTbl(tabla);
            dataGridView1.DataSource = dt;

        }

    }
}
