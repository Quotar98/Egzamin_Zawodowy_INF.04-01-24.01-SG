using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Desktopowa
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        private void NumerTextBox_LostFocus(object sender, RoutedEventArgs e)
        {
            string numer = NumerTextBox.Text;

            if (string.IsNullOrWhiteSpace(numer))
                return;

            string zdjeciePath = $"{numer}-zdjecie.jpg";
            string odciskPath = $"{numer}-odcisk.jpg";

            if (numer == "000" || numer == "111" || numer == "333")
            {
                ZdjecieImage.Source = new BitmapImage(new Uri(zdjeciePath, UriKind.Relative)); 
                OdciskImage.Source = new BitmapImage(new Uri(odciskPath, UriKind.Relative));
            }
            else 
            {
                ZdjecieImage.Source = null;
                OdciskImage.Source = null;
            }
        }

            private void Button_Click(object sender, RoutedEventArgs e)
        {
            string imie = ImieTextBox.Text;
            string nazwisko = NazwiskoTextBox.Text;

            if(string.IsNullOrWhiteSpace(imie) || string.IsNullOrWhiteSpace(nazwisko)){
                MessageBox.Show("Wprowadź dane", "Błąd", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            string kolorOczu = "";
            if (NiebieskieRadioButton.IsChecked == true)
                kolorOczu = "niebieskie";
            else if (ZieloneRadioButton.IsChecked == true)
                kolorOczu = "zielone";
            else if (PiwneRadioButton.IsChecked == true)
                kolorOczu = "piwne";

            string message = $"{imie} {nazwisko} kolor oczu {kolorOczu}";
            MessageBox.Show(message, "Dane paszportowe", MessageBoxButton.OK, MessageBoxImage.Information);
        }

    }
}
