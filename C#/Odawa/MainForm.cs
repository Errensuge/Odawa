﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Odawa.BU;

namespace Odawa
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
        }

        //initialisation des datagrids au chargement du Mainform
        private void Form1_Load(object sender, EventArgs e)
        {
            dataGridViewAdministrateurs.DataSource = AdministrateurManager.GetTable();
            dataGridViewAdministrateurs.Columns["username"].Visible = false;
            dataGridViewAdministrateurs.Columns["password"].Visible = false;
            dataGridViewAdministrateurs.Columns["email"].Visible = false;

            dataGridViewRestaurateurs.DataSource = RestaurateurManager.GetTable();
            dataGridViewRestaurateurs.Columns["username"].Visible = false;
            dataGridViewRestaurateurs.Columns["password"].Visible = false;
            dataGridViewRestaurateurs.Columns["email"].Visible = false;

            dataGridViewUtilisateurs.DataSource = UtilisateurManager.GetTable();
            dataGridViewUtilisateurs.Columns["username"].Visible = false;
            dataGridViewUtilisateurs.Columns["password"].Visible = false;
            dataGridViewUtilisateurs.Columns["email"].Visible = false;

            dataGridViewRestaurants.DataSource = RestaurantManager.GetTable();
            dataGridViewRestaurants.Columns["adresse"].Visible = false;
            dataGridViewRestaurants.Columns["numero"].Visible = false;
            dataGridViewRestaurants.Columns["description"].Visible = false;
            dataGridViewRestaurants.Columns["horaire"].Visible = false;
            dataGridViewRestaurants.Columns["budget"].Visible = false;
            dataGridViewRestaurants.Columns["idTypeCuisine"].Visible = false;
            dataGridViewRestaurants.Columns["idRestaurateur"].Visible = false;

            dataGridViewTypesCuisine.DataSource = TypeCuisineManager.GetTable();
        }

        private void buttonAddAdmin_Click(object sender, EventArgs e)
        {

        }

        private void buttonModAdmin_Click(object sender, EventArgs e)
        {

        }

        private void buttonDelAdmin_Click(object sender, EventArgs e)
        {
            string message = "Voulez-vous vraiment supprimer cet administrateur?";
            string caption = "Suppression";
            MessageBoxButtons buttons = MessageBoxButtons.YesNo;
            MessageBoxIcon icon = MessageBoxIcon.Warning;
            DialogResult result;
            result = MessageBox.Show(message, caption, buttons, icon);
            if (result == System.Windows.Forms.DialogResult.Yes)
            {
                int id = (int)dataGridViewAdministrateurs.SelectedRows[0].Cells[0].Value;
                AdministrateurManager.Delete(id);
                message = "Administrateur supprimé!";
                buttons = MessageBoxButtons.OK;
                icon = MessageBoxIcon.Information;
                MessageBox.Show(message, caption, buttons, icon);
            }
        }

        private void buttonAddRestaurateur_Click(object sender, EventArgs e)
        {

        }

        private void buttonModRestaurateur_Click(object sender, EventArgs e)
        {

        }

        private void buttonDelRestaurateur_Click(object sender, EventArgs e)
        {
            string message = "Voulez-vous vraiment supprimer ce restaurateur?";
            string caption = "Suppression";
            MessageBoxButtons buttons = MessageBoxButtons.YesNo;
            MessageBoxIcon icon = MessageBoxIcon.Warning;
            DialogResult result;
            result = MessageBox.Show(message, caption, buttons, icon);
            if (result == System.Windows.Forms.DialogResult.Yes)
            {
                int id = (int)dataGridViewRestaurateurs.SelectedRows[0].Cells[0].Value;
                RestaurateurManager.Delete(id);
                message = "Restaurateur supprimé!";
                buttons = MessageBoxButtons.OK;
                icon = MessageBoxIcon.Information;
                MessageBox.Show(message, caption, buttons, icon);
            }
        }

        private void buttonAddUser_Click(object sender, EventArgs e)
        {

        }

        private void buttonModUser_Click(object sender, EventArgs e)
        {

        }

        private void buttonDelUser_Click(object sender, EventArgs e)
        {
            string message = "Voulez-vous vraiment supprimer cet utilisateur?";
            string caption = "Suppression";
            MessageBoxButtons buttons = MessageBoxButtons.YesNo;
            MessageBoxIcon icon = MessageBoxIcon.Warning;
            DialogResult result;
            result = MessageBox.Show(message, caption, buttons, icon);
            if (result == System.Windows.Forms.DialogResult.Yes)
            {
                int id = (int)dataGridViewUtilisateurs.SelectedRows[0].Cells[0].Value;
                UtilisateurManager.Delete(id);
                message = "Utilisateur supprimé!";
                buttons = MessageBoxButtons.OK;
                icon = MessageBoxIcon.Information;
                MessageBox.Show(message, caption, buttons, icon);
            }
        }

        private void buttonAddResto_Click(object sender, EventArgs e)
        {

        }

        private void buttonModResto_Click(object sender, EventArgs e)
        {

        }

        private void buttonDelResto_Click(object sender, EventArgs e)
        {
            string message = "Voulez-vous vraiment supprimer ce restaurant?";
            string caption = "Suppression";
            MessageBoxButtons buttons = MessageBoxButtons.YesNo;
            MessageBoxIcon icon = MessageBoxIcon.Warning;
            DialogResult result;
            result = MessageBox.Show(message, caption, buttons, icon);
            if (result == System.Windows.Forms.DialogResult.Yes)
            {
                int id = (int)dataGridViewRestaurants.SelectedRows[0].Cells[0].Value;
                RestaurantManager.Delete(id);
                message = "Restaurant supprimé!";
                buttons = MessageBoxButtons.OK;
                icon = MessageBoxIcon.Information;
                MessageBox.Show(message, caption, buttons, icon);
            }
        }

        private void buttonAddType_Click(object sender, EventArgs e)
        {

        }

        private void buttonModType_Click(object sender, EventArgs e)
        {

        }

        private void buttonDelType_Click(object sender, EventArgs e)
        {
            string message = "Voulez-vous vraiment supprimer ce type de cuisine?";
            string caption = "Suppression";
            MessageBoxButtons buttons = MessageBoxButtons.YesNo;
            MessageBoxIcon icon = MessageBoxIcon.Warning;
            DialogResult result;
            result = MessageBox.Show(message, caption, buttons, icon);
            if (result == System.Windows.Forms.DialogResult.Yes)
            {
                int id = (int)dataGridViewTypesCuisine.SelectedRows[0].Cells[0].Value;
                TypeCuisineManager.Delete(id);
                message = "Type de cuisine supprimé!";
                buttons = MessageBoxButtons.OK;
                icon = MessageBoxIcon.Information;
                MessageBox.Show(message, caption, buttons, icon);
            }
        }
    }
}
