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

namespace StickyNotes
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private List<TabItem> _tabItems;
        private TabItem _tabAdd;
        public MainWindow()
        {
            try
            {
                InitializeComponent();

                // initialize tabItem array
                _tabItems = new List<TabItem>();

                // add a tabItem with + in header 
                _tabAdd = new TabItem();
                _tabAdd.Header = "+";

                _tabItems.Add(_tabAdd);

                // add first tab
                this.AddTabItem();

                // bind tab control
                tabDynamic.DataContext = _tabItems;

                tabDynamic.SelectedIndex = 0;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private TabItem AddTabItem()
        {
            int count = _tabItems.Count;

            // create new tab item
            TabItem tab = new TabItem();
            tab.Header = string.Format("Tab {0}", count);
            tab.Name = string.Format("tab{0}", count);
            tab.HeaderTemplate = tabDynamic.FindResource("TabHeader") as DataTemplate;
            tab.Content = new StickyNoteTab();

            // add controls to tab item, this case I added just a textbox
            //TextBox txt = new TextBox();
            //txt.Name = "txt";
            //tab.Content = txt;

            // insert tab item right before the last (+) tab item
            _tabItems.Insert(count - 1, tab);
            return tab;
        }

        private void tabDynamic_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            TabItem tab = tabDynamic.SelectedItem as TabItem;

            if (tab != null && tab.Header != null)
            {
                if (tab.Header.Equals(_tabAdd.Header))
                {
                    // clear tab control binding
                    tabDynamic.DataContext = null;

                    // add new tab
                    TabItem newTab = this.AddTabItem();

                    // bind tab control
                    tabDynamic.DataContext = _tabItems;

                    // select newly added tab item
                    tabDynamic.SelectedItem = newTab;
                }
                else
                {
                    // your code here...
                }
            }
        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            string tabName = (sender as Button).CommandParameter.ToString();

            var item = tabDynamic.Items.Cast<TabItem>().Where(i => i.Name.Equals(tabName)).SingleOrDefault();

            TabItem tab = item as TabItem;

            if (tab != null)
            {
                if (_tabItems.Count <= 1)
                {
                    MessageBox.Show("Cannot remove last tab.");
                }
                else if (true || MessageBox.Show(string.Format("Are you sure you want to remove the tab '{0}'?", tab.Header.ToString()),
                    "Remove Tab", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
                {
                    // get selected tab
                    TabItem selectedTab = tabDynamic.SelectedItem as TabItem;

                    // clear tab control binding
                    tabDynamic.DataContext = null;

                    _tabItems.Remove(tab);

                    // bind tab control
                    tabDynamic.DataContext = _tabItems;

                    // select previously selected tab. if that is removed then select first tab
                    if (selectedTab == null || selectedTab.Equals(tab))
                    {
                        selectedTab = _tabItems[0];
                    }
                    tabDynamic.SelectedItem = selectedTab;
                }
            }
        }
    }
}
