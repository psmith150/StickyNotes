   M S B A M L   `   `   `  ���� F  BStickyNotes, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:StickyNotesStickyNotes  O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem C&clr-namespace:StickyNotes.CustomWindowStickyNotes.CustomWindow  \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   
ButtonSize  ButtonGridWidth  WindowColor  �� Color  WindowBackColor  WindowForeColor  WindowForeHighlightColor  WindowButtonColor  WindowButtonOverColor  WindowButtonPressedColor4    .StickyNotes.CustomWindow.WindowMinimizeCommand 	 MinimizeCommand4   .StickyNotes.CustomWindow.WindowMaximizeCommand 
 MaximizeCommand1   +StickyNotes.CustomWindow.WindowCloseCommand  CloseCommand �� 
TargetType  WindowButton �� Property �� Value �� 
TargetType �� Triggers P� Property P� Value  
WindowIcon  WindowTemplate � RowDefinitions	 � ColumnDefinitions9   3StickyNotes.CustomWindow.ControlDoubleClickBehavior
   ExecuteCommand   ExecuteCommandParameter �� RelativeSource �� Mode �� AncestorType �� Path5   /StickyNotes.CustomWindow.ShowSystemMenuBehavior   TargetWindow   LeftButtonShowAt �� ElementName � Title   RightButtonShow1   +StickyNotes.CustomWindow.WindowDragBehavior   LeftMouseButtonDrag �� Orientation ��Name ��Name n�Name � Cursor J� Opacity3   -StickyNotes.CustomWindow.WindowResizeBehavior   	TopResize   TopLeftResize   BottomResize   TopRightResize    RightResize!   BottomRightResize"   
LeftResize#   BottomLeftResize$ ]� 
Conditions% �� Property& �� Value' �� 
TargetName  CustomWindowStyle  RedWindowStyle  StickyNoteWindowStyle�� D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     #localclr-namespace:StickyNotes  .sys&clr-namespace:System;assembly=mscorlib  1custom&clr-namespace:StickyNotes.CustomWindow  %�  &	        &	      &	      &	 '     &	 9     &	 J     &	 [     &	 r     &	 �     &		 �     &	
 �     &	 �     &	 �     7   7   7  7  7  7  7  7  7  7  &	     &	 H    7  7  7  7  7 
 7  7 	 7  7 
 7  7  &	 �
    7  &	 �    7  &	 �    7  X�15Q��45 ��� $	  Red���� $  Orange���� $  Black���� $  Black���� $  Transparent���� $  DarkGoldenrod���� $  DarkRed��       �� " ��.���  � ��8   ��  � ��8  ��  � ��8  ��  � ��8  ��  � �� �� " ��.R��� #��z��._��� $��Center=�$��Center=� P�  � {� .  . ��� 8   � ���� 8   � ��P�  �@J�IsMouseOver . . ��� 8   � ���� 8   � ��P�  � �� . . ��� 8   � ���� 8 	  � ���� " ��.���  � ��$ 25����  � ��$ 25���� " �.R�� 8��  .+��  �� $
��Auto ��� $��* �.+�� $��0��$��5,0,5,0q�	 �� $
��auto ��� $��* ��� $��45 �.+��� $��0��8
  $��0q� ��  �� $ FindAncestor=�" �.���� $
��Left=�8�� $��16������  �� $ FindAncestor=�" �$
 Icon� ��  �� $ FindAncestor=�" � �� $ WindowContent���� $��1��$
��Left=�#��z $��3,0,0,0q�$��Center=�$��Center=�$��Stretch=�$��Stretch=�8�� $��15(�8
   .  ��  �� $ FindAncestor=�" � ��  �� $ FindAncestor=�" � ��  �� $ FindAncestor=�" ��� $��2��$ 
Horizontal=�.+��� $��Right=�8�� 8�� ����  �� $ FindAncestor=�" �.��_�� $��Right=�8�� 8�� ����  �� $ FindAncestor=�" �.��+�� $��Right=�8��	 8��
 ����  �� $ FindAncestor=�" �.��X�� $��1��#��z��#��z��#��z��._�� .+��� .u��� $ WindowContent���� $ WindowResizeGrip��$��Right=���.  $y�	Collapsed=�$��Bottom=�n� $ ThumbTop��$��6��$
��14,0q�$	��Top=�$ SizeNS��$ 0Q� ��  �� $ FindAncestor=�" �n� $ ThumbTopLeft��$��6��$��6��$	��Top=�$
��Left=�$ SizeNWSE��$ 0Q� ��  �� $ FindAncestor=�" �n� $ ThumbBottom��$��6��$
��14,0q�$��Bottom=�$ SizeNS��$ 0Q� ��  �� $ FindAncestor=�" �n� $ ThumbTopRight��$��6��$��6��$	��Top=�$��Right=�$ SizeNESW��$ 0Q� ��  �� $ FindAncestor=�" �n� $ 
ThumbRight��$��Right=�$
��0,14q�$��6��$ SizeWE��$ 0Q�  ��  �� $ FindAncestor=�" �n� $ ThumbBottomRight��$��6��$��6��$��Bottom=�$��Right=�$ SizeNWSE��$ 0Q�! ��  �� $ FindAncestor=�" �n� $ 	ThumbLeft��$
��Left=�$
��0,14q�$��6��$ SizeWE��$ 0Q�" ��  �� $ FindAncestor=�" �n� $ ThumbBottomLeft��$��6��$��6��$��Bottom=�$
��Left=�$ SizeNESW��$ 0Q�# ��  �� $ FindAncestor=�" � ]� $ �� % �@�
ResizeMode$& CanResizeWithGrip=��� % �@�WindowState$& Normal=�./��� $' WindowResizeGrip�� � y�$ Visible=��� " �.���  �@�WindowStyle$
 None=���  �@�AllowsTransparency . ��  � ��$	 200����  � ��$ 46����  � ��
 � �����  � ��
 � � ���  � ��$ 7q���  � ��
 �  ����  � ��8   �� " �.���  �@�WindowStyle$
 None=���  �@�AllowsTransparency . ��  � ��$	 100����  � ��$ 46����  � ��
 �������  � ��
 �  ����  � ��$ 7q���  � ��
 �������  � ��8   �� " �.���  �@�WindowStyle$
 None=���  �@�AllowsTransparency . ��  � ��$	 100����  � ��$ 46����  � ��
 � �����  � ��
 � �����  � ��$ 0q���  � ��
 � �����  � ��8   