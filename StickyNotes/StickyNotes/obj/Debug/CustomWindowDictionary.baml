   M S B A M L   `   `   `  ����F  BStickyNotes, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:StickyNotesStickyNotes  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5      C&clr-namespace:StickyNotes.CustomWindowStickyNotes.CustomWindow  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   
ButtonSize  ButtonGridWidth  WindowColor  �� Color  WindowBackColor  WindowForeColor  WindowForeHighlightColor  WindowButtonColor  WindowButtonOverColor  WindowButtonPressedColor4    .StickyNotes.CustomWindow.WindowMinimizeCommand 	 MinimizeCommand4   .StickyNotes.CustomWindow.WindowMaximizeCommand 
 MaximizeCommand1   +StickyNotes.CustomWindow.WindowCloseCommand  CloseCommand �� 
TargetType  WindowButton �� Property �� Value �� 
TargetType �� Triggers P� Property P� Value  
WindowIcon  WindowTemplate � RowDefinitions	 � ColumnDefinitions9   3StickyNotes.CustomWindow.ControlDoubleClickBehavior
   ExecuteCommand   ExecuteCommandParameter �� RelativeSource �� Mode �� AncestorType �� Path5   /StickyNotes.CustomWindow.ShowSystemMenuBehavior   TargetWindow   LeftButtonShowAt �� ElementName � Title   RightButtonShow1   +StickyNotes.CustomWindow.WindowDragBehavior   LeftMouseButtonDrag �� Orientation ��Name ��Name n�Name � Cursor J� Opacity3   -StickyNotes.CustomWindow.WindowResizeBehavior   	TopResize   TopLeftResize   BottomResize   TopRightResize    RightResize!   BottomRightResize"   
LeftResize#   BottomLeftResize$ ]� 
Conditions% �� Property& �� Value' �� 
TargetName  CustomWindowStyle  RedWindowStyle  StickyNoteWindowStyle�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      #localclr-namespace:StickyNotes  5      .sys&clr-namespace:System;assembly=mscorlib  5      1custom&clr-namespace:StickyNotes.CustomWindow  5      %�  &	        &	      &	 4     &	 Q     &	 q     &	 �     &	 �     &	 �     &	 �     &		     &	
 /    &	 B    &	 U    7   7   7  7  7  7  7  7  7  7  &	 �    &	 a    7  7  7  7  7 
 7  7 	 7  7 
 7  7  &	 5    7  &	 �    7  &	 G    7  X�5      15Q�6(   �5      45 �6-   �� 5
      $	  Red��6*   �� 5      $  Orange��6.   �� 5      $  Black��6.   �� 5      $  Black��67   �� 5      $  Transparent��60   �� 5      $  DarkGoldenrod��64   �� 5      $  DarkRed��67      5      6=     5      6=     5      67   �� 5       " ��6   .�5!   
   ��  � ��8   6#   �� 5"   
    � ��8  6"   �� 5#   
    � ��8  6'   �� 5$   
    � ��8  6'   �� 5%   
    � �� 5&      �� 5'      " ��6"   .R�5(      �� #��z��6   ._�5)      �� $��Center=�6+   $��Center=�6H   5*       5+      P� 5,       � {� .  . �5-      �� 8   � ��6;   �� 5.      8   � ��6;   5/      P� 50       �@J�IsMouseOver . . �51      �� 8   � ��6;   �� 52      8   � ��6;   53      P� 54       � �� . . �55      �� 8   � ��6;   �� 56      8 	  � ��6;   57      59      5;      5<      �� 5>      " ��6   .�5?   
   ��  � ��$ 25��6#   �� 5@   
    � ��$ 25��6"   5A      �� 5C      " �6-   .R�5D   
   � 8��  .+�5E      �  5F      �� 5G      $
��Auto �6$   �� 5H      $��* �6$   .+�5J      � $��0��6   $��5,0,5,0q�6$   	 5K      �� 5L      $
��auto �6+   �� 5M      $��* �6+   �� 5N      $��45 �6+   .+�5P      �� $��0��6   8
  $��0q�5R   �    6!   ��  �� $ FindAncestor=�" �.��5S      ]� .+�5T      �� $
��Left=�6$   8�� $��16��5U   !   ��5T   ^   ��  �� $ FindAncestor=�" �$
 Icon� 5V   !   ��  �� $ FindAncestor=�" � 5W   !   �� $ WindowContent���� 5X      
TestButton64   5Y      5Z      �� 5[      $��1��6   $
��Left=�6,   #��z 6B   $��3,0,0,0q�6m   $��Center=�5\   !   $��Center=�5]   !   $��Stretch=�5^   !   $��Stretch=�5_   !   8�� $��15(�5a   !   8
   .  5b   !   ��  �� $ FindAncestor=�" � 5d   !   ��  �� $ FindAncestor=�" � 5e   !   ��  �� $ FindAncestor=�" �5g      �� 5h      $��2��6!   $ 
Horizontal=�61   .+�5i      �� $��Right=�6!   8�� 8�� ��6�   ��  �� $ FindAncestor=�" �.��6�   _6�   �� 5j      $��Right=�6!   8�� 8�� ��6�   ��  �� $ FindAncestor=�" �.��6�   +6�   �� 5k      $��Right=�6!   8��	 8��
 ��6�   ��  �� $ FindAncestor=�" �.��6�   X6�   5l      5m      �� 5n      $��1��6   #��z��6&   #��z��6R   #��z��6�   ._�5o      � .+�5p      �� .u�5q      �� $ WindowContent��6/   5r      �� 5s      $ WindowResizeGrip��6&   $��Right=�6@   ��.  $y�	Collapsed=�6n   $��Bottom=�6�   5t      5u      5v      n� 5w      $ ThumbTop��6   $��6��6&   $
��14,0q�61   $	��Top=�6?   $ SizeNS��6W   $ 0Q�6h    6t   ��  �� $ FindAncestor=�" �n� 5x      $ ThumbTopLeft��6   $��6��6*   $��6��65   $	��Top=�6?   $
��Left=�6W   $ SizeNWSE��6r   $ 0Q�6�    6�   ��  �� $ FindAncestor=�" �n� 5y      $ ThumbBottom��6   $��6��6)   $
��14,0q�64   $��Bottom=�6B   $ SizeNS��6]   $ 0Q�6m    6y   ��  �� $ FindAncestor=�" �n� 5z      $ ThumbTopRight��6   $��6��6+   $��6��66   $	��Top=�6@   $��Right=�6X   $ SizeNESW��6t   $ 0Q�6�    6�   ��  �� $ FindAncestor=�" �n� 5{      $ 
ThumbRight��6   $��Right=�6(   $
��0,14q�6D   $��6��6R   $ SizeWE��6\   $ 0Q�6m     6y   ��  �� $ FindAncestor=�" �n� 5|      $ ThumbBottomRight��6   $��6��6.   $��6��69   $��Bottom=�6C   $��Right=�6^   $ SizeNWSE��6z   $ 0Q�6�   ! 6�   ��  �� $ FindAncestor=�" �n� 5}      $ 	ThumbLeft��6   $
��Left=�6'   $
��0,14q�6B   $��6��6P   $ SizeWE��6Z   $ 0Q�6k   " 6w   ��  �� $ FindAncestor=�" �n� 5~      $ ThumbBottomLeft��6   $��6��6-   $��6��68   $��Bottom=�6B   $
��Left=�6]   $ SizeNESW��6x   $ 0Q�6�   # 6�   ��  �� $ FindAncestor=�" �5       5�   
   ]� 5�      $ 5�      �� 5�      % �@�
ResizeMode$& CanResizeWithGrip=�66   �� 5�      % �@�WindowState$& Normal=�67   ./�5�      �� $' WindowResizeGrip��6/    � y�$ Visible=�6M   5�      5�      �� 5�      " �6&   .�5�   
   ��  �@�WindowStyle$
 None=�6(   �� 5�   
    �@�AllowsTransparency . 6/   �� 5�   
    � ��$	 200��6%   �� 5�   
    � ��$ 46��6&   �� 5�   
    � ��
 � ���6'   �� 5�   
    � ��
 � � �6(   �� 5�   
    � ��$ 7q�6,   �� 5�   
    � ��
 �  ��6'   �� 5�   
    � ��8   6%   5�      �� 5�      " �6#   .�5�   
   ��  �@�WindowStyle$
 None=�6(   �� 5�   
    �@�AllowsTransparency . 6/   �� 5�   
    � ��$	 100��6%   �� 5�   
    � ��$ 46��6&   �� 5�   
    � ��
 �����6'   �� 5�   
    � ��
 �  ��6(   �� 5�   
    � ��$ 7q�6,   �� 5�   
    � ��
 �����6'   �� 5�   
    � ��8   6%   5�      �� 5�      " �6*   .�5�   
   ��  �@�WindowStyle$
 None=�6(   �� 5�   
    �@�AllowsTransparency . 6/   �� 5�   
    � ��$	 100��6%   �� 5�   
    � ��$ 46��6&   �� 5�   
    � ��
 � ���6'   �� 5�   
    � ��
 � ���6(   �� 5�   
    � ��$ 0q�6,   �� 5�   
    � ��
 � ���6'   �� 5�   
    � ��8   6%   5�      5�      