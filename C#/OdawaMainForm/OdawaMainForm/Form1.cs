﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace OdawaMainForm
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            PopulateAndBind();
        }

        private void PopulateAndBind()
        {
            this.restaurantsTableAdapter.Fill(this.odawaDataSet.restaurants);
            this.restaurateursTableAdapter.Fill(this.odawaDataSet.restaurateurs);
        }
    }
}
