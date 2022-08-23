using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practico2
{
    public partial class Formulario_web1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void documento_TextChanged(object sender, EventArgs e)
        {

        }

        protected void buscar_Click(object sender, EventArgs e)
        {
            if (this.documento.Text == "")
                this.PersonasDS.SelectCommand = "SELECT * FROM Personas";
            else
                this.PersonasDS.SelectCommand = "SELECT * FROM Personas WHERE Documento = " + this.documento.Text + " ;";
        }

        protected void PersonasDS_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void confirmar_Click(object sender, EventArgs e)
        {
            if ((this.cedula.Text != "") && (this.nombre.Text != "") && (this.apellido.Text != ""))
            {
                PersonasDS.InsertCommandType = SqlDataSourceCommandType.Text;
                PersonasDS.InsertCommand = "Insert into Personas (Nombres,Apellidos,Documento) VALUES (@Nombre,@Apellido, @Documento)";

                PersonasDS.InsertParameters.Add("Nombre", nombre.Text);
                PersonasDS.InsertParameters.Add("Apellido", apellido.Text);
                PersonasDS.InsertParameters.Add("Documento", cedula.Text);
                PersonasDS.Insert();

                nombre.Text = "";
                apellido.Text = "";
                cedula.Text = "";
            }

        }
    }
}