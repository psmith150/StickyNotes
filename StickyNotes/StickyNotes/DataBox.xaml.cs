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
    /// Interaction logic for DataBox.xaml
    /// </summary>
    public partial class DataBox : UserControl
    {

        AdornerLayer aLayer;
        ResizingAdorner adorner;
        ResourceDictionary myStyles;
        Style cornerThumbStyle;
        Style sideThumbStyle;
        Style cornerThumbStyle_Visible;

        bool _isDown;
        bool _isDragging;
        bool selected = false;
        UIElement selectedElement = null;
        Canvas myCanvas;
        private StickyNoteTab _parentTab;

        Point _startPoint;
        private double _originalLeft;
        private double _originalTop;

        public DataBox(StickyNoteTab parentTab)
        {
            InitializeComponent();
            _parentTab = parentTab;
            myCanvas = parentTab.myCanvas;
            myStyles = new ResourceDictionary();
            myStyles.Source = new Uri("/StickyNotes;component/StyleDictionary.xaml", UriKind.RelativeOrAbsolute);
            cornerThumbStyle = myStyles["CornerThumbStyle"] as Style;
            sideThumbStyle = myStyles["SideThumbStyle"] as Style;
            cornerThumbStyle_Visible = myStyles["CornerThumbStyle_Visible"] as Style;
        }

        private void rtbEditor_SelectionChanged(object sender, RoutedEventArgs e)
        {
            object temp = rtbEditor.Selection.GetPropertyValue(Inline.FontWeightProperty);
            //btnBold.IsChecked = (temp != DependencyProperty.UnsetValue) && (temp.Equals(FontWeights.Bold));
            temp = rtbEditor.Selection.GetPropertyValue(Inline.FontStyleProperty);
            //btnItalic.IsChecked = (temp != DependencyProperty.UnsetValue) && (temp.Equals(FontStyles.Italic));
            temp = rtbEditor.Selection.GetPropertyValue(Inline.TextDecorationsProperty);
            //btnUnderline.IsChecked = (temp != DependencyProperty.UnsetValue) && (temp.Equals(TextDecorations.Underline));

            temp = rtbEditor.Selection.GetPropertyValue(Inline.FontFamilyProperty);
            //cmbFontFamily.SelectedItem = temp;
            temp = rtbEditor.Selection.GetPropertyValue(Inline.FontSizeProperty);
            //cmbFontSize.Text = temp.ToString();
        }

        private void UserControl_Loaded(object sender, RoutedEventArgs e)
        {
            this.MouseLeftButtonDown += new MouseButtonEventHandler(StickyNoteTab_MouseLeftButtonDown);
            this.MouseLeftButtonUp += new MouseButtonEventHandler(DragFinishedMouseHandler);
            this.MouseMove += new MouseEventHandler(StickyNoteTab_MouseMove);
            this.MouseLeave += new MouseEventHandler(StickyNoteTab_MouseLeave);
            //rtbEditor.MouseLeftButtonDown += new MouseButtonEventHandler(Editor_MouseLeftButtonDown);
            rtbEditor.PreviewMouseLeftButtonDown += new MouseButtonEventHandler(Editor_MouseLeftButtonDown);

            aLayer = AdornerLayer.GetAdornerLayer(this);
            adorner = new ResizingAdorner(this, cornerThumbStyle, sideThumbStyle);
            aLayer.Add(adorner);

            //myCanvas.PreviewMouseLeftButtonDown += new MouseButtonEventHandler(myCanvas_PreviewMouseLeftButtonDown);
            //myCanvas.PreviewMouseLeftButtonUp += new MouseButtonEventHandler(DragFinishedMouseHandler);
        }

        void Editor_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            //MessageBox.Show(e.Source.ToString());
            if (e.Source is Image)
            {
                Image currImage = e.Source as Image;
                aLayer = AdornerLayer.GetAdornerLayer(currImage);
                adorner = new ResizingAdorner(currImage, cornerThumbStyle_Visible, sideThumbStyle);
                aLayer.Add(adorner);
                selectedElement = currImage;
                selected = true;
            }
            else if (e.Source is Paragraph)
            {
                selected = false;
                if (selectedElement != null)
                {
                    aLayer.Remove(aLayer.GetAdorners(selectedElement)[0]);
                    selectedElement = null;
                }
            }
        }

        void myCanvas_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            //return;
            // Remove selection on clicking anywhere the window
            if (selected)
            {
                selected = false;
                if (selectedElement != null)
                {
                    // Remove the adorner from the selected element
                    aLayer.Remove(aLayer.GetAdorners(selectedElement)[0]);
                    selectedElement = null;
                }
            }
        }

        // Handler for providing drag operation with selected element
        void StickyNoteTab_MouseMove(object sender, MouseEventArgs e)
        {
            if (_isDown)
            {
                if ((_isDragging == false) && ((Math.Abs(e.GetPosition(myCanvas).X - _startPoint.X) > SystemParameters.MinimumHorizontalDragDistance) ||
                    (Math.Abs(e.GetPosition(myCanvas).Y - _startPoint.Y) > SystemParameters.MinimumVerticalDragDistance)))
                {
                    _isDragging = true;
                    //MessageBox.Show("Gets here1");
                }

                if (_isDragging)
                {
                    //MessageBox.Show("Gets here");
                    Point position = Mouse.GetPosition(myCanvas);
                    Canvas.SetTop(selectedElement, position.Y - (_startPoint.Y - _originalTop));
                    Canvas.SetLeft(selectedElement, position.X - (_startPoint.X - _originalLeft));
                }
            }
        }

        // Handler for clearing element selection, adorner removal
        void StickyNoteTab_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            MessageBox.Show(e.Source.ToString());
        }

        // Handler for drag stopping on leaving the window
        void StickyNoteTab_MouseLeave(object sender, MouseEventArgs e)
        {
            StopDragging();
            e.Handled = true;
        }

        // Handler for drag stopping on user choice
        void DragFinishedMouseHandler(object sender, MouseButtonEventArgs e)
        {
            StopDragging();
            e.Handled = true;
        }

        // Method for stopping dragging
        private void StopDragging()
        {
            if (_isDown)
            {
                _isDown = false;
                _isDragging = false;
            }
            this.ReleaseMouseCapture();
        }

        private void HeaderBar_MouseDown(object sender, MouseButtonEventArgs e)
        {
            _isDown = true;
            _startPoint = e.GetPosition(myCanvas);

            selectedElement = this; // e.Source as UIElement;
                                    //MessageBox.Show(e.Source.ToString());
            _originalLeft = Canvas.GetLeft(selectedElement);
            _originalTop = Canvas.GetTop(selectedElement);

            selected = true;
            e.Handled = true;
            this.CaptureMouse();
        }

        private void DataBox_LostFocus(object sender, RoutedEventArgs e)
        {
            this.ReleaseMouseCapture();
            //aLayer.Remove(adorner);
        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            myCanvas.Children.Remove(this);
        }

        private void OnEditorCommand(object sender, ExecutedRoutedEventArgs e)
        {
            if (e.Command == ApplicationCommands.Paste)
            {
                if (Clipboard.ContainsImage())
                {
                    Image newImage = new Image();
                    newImage.Source = Clipboard.GetImage();
                    double tempWidth = newImage.Width;
                    newImage.Width = 0.4 * rtbEditor.ActualWidth;
                    newImage.Height = newImage.Height * newImage.Width / tempWidth;
                    Paragraph para = rtbEditor.CaretPosition.Paragraph;
                    InlineUIContainer container = new InlineUIContainer(newImage);
                    if (para == null)
                    {
                        para = new Paragraph();
                        rtbEditor.Document.Blocks.Add(para);
                    }
                    para.Inlines.Add(container);
                    e.Handled = true;
                }
            }
        }

        private void UserControl_GotFocus(object sender, RoutedEventArgs e)
        {
            _parentTab.getFocusedEditor(this.rtbEditor);
        }
    }
}
