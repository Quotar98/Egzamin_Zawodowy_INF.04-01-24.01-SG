   M S B A M L   `   `   `  ����E  ADesktopowa, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Desktopowa
Desktopowa  5   	       Desktopowa.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Desktopowa     5   	     � Title$7  1Wprowadzenie danych do paszportu. Wykonał: 12345��5   	   $	��450��6B   $	��800��6O   
�����_�.��5	      � $��10q�6    � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��Numer��6   $��0��6    $��0��6-   $��Center=�6=   �� 5   
   -   5        $��NumerTextBox��5      $��0��6&   $��1��63   
�������6V   �� 5   
   $��Imię��6   $��1��6   $��0��6,   $��Center=�6<   �� 5   
   -   5        $��ImieTextBox��5      $��1��6%   $��1��62   
�������6B   �� 5   
   $��Nazwisko��6   $��2��6#   $��0��60   $��Center=�6@   �� 5    
   -   5        $��NazwiskoTextBox��5       $��2��6)   $��1��66   
�������6F   �� 5"   
   $��
Kolor oczu��6   $��3��6'   $��0��64   $��2��6D   .��5#      �� .+�5$      	� -   5        $��NiebieskieRadioButton��5$      $��
niebieskie��6;    d� 	IsChecked$
 TrueY�6P   	� 5%      -   5        $��ZieloneRadioButton��5%      $��zielone��68   	� 5&      -   5        $��PiwneRadioButton��5&      $��piwne��66   5'      5(      �� 5*   
   -   5        $��OK��5*      $��5��6   $��2��6+   $��2��6;   
�������$��40��6w   �� 5,   
   -   5        $��ZdjecieImage��5,   )   $��000-zdjecie.jpg��6   $��0��6=   $��5��6J   $��2��6[   $	��180��6k   $	��180��6x   $��10q�6�   �� 5-   
   -	   5        $��OdciskImage��5-   (   $��000-odcisk.jpg��6   $��0��6;   $��5��6H   $��3��6Y   $	��180��6i   $	��180��6v   $��10q�6�   5.      5/      