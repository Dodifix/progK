using System;
using System.IO;
using System.Windows;
using System.Windows.Input;

namespace WpfBlackJack
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Random rnd = new Random();

        int high;

        public MainWindow()
        {            
            StreamReader sr = new StreamReader("high.txt");
            high = int.Parse(sr.ReadLine());
            sr.Close();
            InitializeComponent();
            deal.IsEnabled = false;
            high_score.Content = high;
            high_score.Visibility = Visibility.Hidden;
            you_lost.Visibility = Visibility.Hidden;
            sad_emoji.Visibility = Visibility.Hidden;
            black_jack.Visibility = Visibility.Hidden;
            stops_at.Visibility = Visibility.Hidden;
            happy_emoji.Visibility = Visibility.Hidden;
           
        }

        private int Deal()
        {
            return rnd.Next(2, 12);

        }

        private void Button_Click(object sender, RoutedEventArgs e) //bet gomb lenyomasasra
        {
            int temp;
            int score = int.Parse(my_hand.Content.ToString());
            temp = Deal();
            score += temp;

            if (temp == 11 && score > 21)
                score -= 10;

            if (score >= 21)
            {
                bet.IsEnabled = false;
            }


            my_hand.Content = score;
        }

        private void Button_Click_1(object sender, RoutedEventArgs e) //deal gomb lenyomasara
        {
            bet.IsEnabled = false;
            deal.IsEnabled = false;

            high_score.Visibility = Visibility.Visible;

            other_hand.Visibility = Visibility.Visible;

            int temp;
            int score = int.Parse(other_hand.Content.ToString());
            while (score < 16)
            {
                temp = Deal();
                score += temp;

                if (temp == 11 && score > 21)
                    score -= 10;

                other_hand.Content = score;
            }

            int my_score = int.Parse(my_hand.Content.ToString());
            int other_score = int.Parse(other_hand.Content.ToString());

            if (my_score == 21 && other_score != 21 || my_score > 21 && my_score < other_score || my_score < 21 && my_score > other_score || my_score < 21 && other_score > 21)
            {
                high++;
                black_jack.Content = "YOU WON ";
                black_jack.Visibility = Visibility.Visible;
                happy_emoji.Visibility = Visibility.Visible;
            }
            else if (my_score == other_score)
            {
                black_jack.Content = "DRAW";
                black_jack.Visibility = Visibility.Visible;
                
            }
            else
            {
                you_lost.Visibility = Visibility.Visible;
                sad_emoji.Visibility = Visibility.Visible;
            }
            high_score.Content = high;
            StreamWriter sw = new StreamWriter("high.txt");
            sw.WriteLine(high);
            sw.Close();
        }

        private void Label_MouseLeftButtonDown(object sender, MouseButtonEventArgs e) //start felirat lenyomasara
        {
            bet.IsEnabled = true;
            deal.IsEnabled = true;
            start_label.Visibility = Visibility.Hidden;
            start_label.IsEnabled = false;
            other_hand.Visibility = Visibility.Hidden;
            high_score.Visibility = Visibility.Visible;

            int temp = rnd.Next(4, 22);//ellenseg szama
            other_hand.Content = temp;
            if (temp == 21)
            {
                you_lost.Visibility = Visibility.Visible;
                sad_emoji.Visibility = Visibility.Visible;
                other_hand.Visibility = Visibility.Visible;
                bet.IsEnabled = false;
                deal.IsEnabled = false;
            }
            else
            {
                temp = rnd.Next(4, 22);//en szamom
                my_hand.Content = temp;
                if (temp == 21)
                {
                    black_jack.Visibility = Visibility.Visible;
                    happy_emoji.Visibility = Visibility.Visible;

                    bet.IsEnabled = false;
                    deal.IsEnabled = false;
                    StreamWriter sw = new StreamWriter("high.txt");
                    sw.WriteLine(high + 1);
                    sw.Close();
                    StreamReader sr = new StreamReader("high.txt");
                    high = int.Parse(sr.ReadLine());
                    sr.Close();
                    high_score.Content = high;
                }
            }
        }

        private void Retry_Click(object sender, RoutedEventArgs e)
        {
            System.Diagnostics.Process.Start(Application.ResourceAssembly.Location);
            Application.Current.Shutdown();
        }

        private void Exit_Click(object sender, RoutedEventArgs e)
        {
            StreamWriter sw = new StreamWriter("high.txt", false);
            sw.WriteLine("0");
            sw.Close();
            App.Current.MainWindow.Close();
        }
    }
}