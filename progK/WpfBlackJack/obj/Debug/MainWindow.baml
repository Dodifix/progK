   M S B A M L   `   `   `  ����G  CWpfBlackJack, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:WpfBlackJackWpfBlackJack  5   	       WpfBlackJack.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:WpfBlackJack     5   	     � Title$  
MainWindow��5   	   $	��510��6   $	��800��6)   
���   ���5	      �� 5
   
    �� EndPoint$ 0.5,1&�6    �� 
StartPoint$ 0.5,0&�6/   .��5      �  � Color$ Black��6    � Offset$ 0Q�6)   � 5      $ 	#FFC4E4F5��6   $ 0.583Q�6-   � 5      $ 	#FF347EA6��6   $ 0.007Q�6-   5      .��5      � $��6,0,-6,0q�6    � ColumnDefinitions 5   
   �� 5      $	��91* �6   �� 5      $
��548* �6   �� 5      $
��141* �6   �� 5      $	��12* �6   .+�5   
   �� -   5         ��Name$ my_hand��5      $��My hand��6!   $
��Left=�63   $��190.58,420,0,0q�6N   $	��Top=�6f    J� RenderTransformOrigin$ 
0.5,-0.077&�6~   $��21(�6�   ���	#FF093E13$��Showcard Gothic)�6�   $��1��6�   �� 5   
   -   5        $ 
other_hand��5      $��
Other hand��6$   $
��Left=�69   $��
191,67,0,0q�6T   $	��Top=�6h   $ 1.224,0.404&�6�   $��21(�6�   4  .System.Windows.Automation.AutomationProperties   Name$ 
other_hand��6�   ���	#FF093E13$��Showcard Gothic)�6�   $��1��6  &   System.Windows.Media.TextOptions	   TextFormattingMode$	 Display=�6  �� 5   
   -   5        
 ��Name$	
 bet��5      $��B E T��6   $
��Left=�6.   $��546.58,227,0,0q�6I   $	��Top=�6a   $	��100��6y   $��22(�6�   $	 bet��6�   {�.  ���	#FF000200���	#FF358735$��Showcard Gothic)�6  
�������$��2��69  $��1��6M  �� 5   
   -   5        $

 deal��5      $��D E A L��6   $
��Left=�61   $��546.58,284,0,0q�6L   $	��Top=�6d   $	��100��6|   $��22(�6�   {�.  $
 deal��6�   ���	#FF358735���	#FF0C0000$��Showcard Gothic)�6  $��2��6+  $��1��6?  �� 5   
   $��
High Score��6   $
��Left=�6%   $��532.58,10,0,0q�6@   $	��Top=�6W   $��18(�6o   $
��Bold"�6}   $��2��6�   $��1��6�   �� 5   
   -   5        $ 
high_score��5      $��_ _ _ _ _ _ _ _ _ ��6$   $
��Left=�6A   $��506.58,69,0,0q�6\   $	��Top=�6s   $��69��6�   $	��140��6�   $��22(�6�   $ 
high_score��6�   $��2��6�   $��1��6�   �� 5   
   -   5        $ stops_at��5      $��STOPS AT 16��6"   $
��Left=�68   $��170.58,108,0,0q�6S   $	��Top=�6k   $��1��6�   �� 5   
   -   5        $ 
black_jack��5      $��
BLACK JACK��6$   $
��Left=�69   $��
34,321,0,0q�6T   $	��Top=�6h   $ 
black_jack��6�   $��72(�6�   $��Showcard Gothic)�6�   $��1��6�   �� 5   
   -   5        $ start_label��5      $��	S T A R T��6%   $
��Left=�69   $��89.58,207,0,0q�6T   $	��Top=�6k   $��72(�6�   $ start_label��6�   $��Showcard Gothic)�6�   $	��103��6  $	��284��6  ���	#FF160BFF   TextHintingMode$ Animated=�6L  $��1��6s  ��6  Z� 6s  �� 5    
   -	   5        $ you_lost��5       $��YOU LOST��6"   $
��Left=�65   $��116.58,143,0,0q�6P   $	��Top=�6h   $��36(�6�   $ you_lost��6�   $��Showcard Gothic)�6�   $��1��6�   ��5!      �� 5"       j� TileMode$
 Tile=�6   5$      �� 5%   
   -
   5        $
 retry��5%      $��	R E T R Y��6    $
��Left=�64   $��
23,368,0,0q�6O   $	��Top=�6c   $��76��6{   $��18(�6�   $ retry��6�   ���	#FF570B0B���	#FFDCC800$��Showcard Gothic)�6�   $��2��6  �� 5&   
   -   5        $

 exit��5&      $��E X I T��6   $
��Left=�61   $��
23,424,0,0q�6L   $	��Top=�6`   $��76��6x   $��18(�6�    �� 	IsDefault . ���	#FF5D0B0B���	#FFE6BABA$��Showcard Gothic)�6�   $��2��6   �� 5'   
   -   5         ��Name$ 	sad_emoji��5'      $��117,207,241,96q�6#   $��sad.png��6;   $
��Fill=�6L   $��1��6[   �� 5(   
   -   5        $ happy_emoji��5(      $��92,109,216,130q�6%   $-��'smiling-face-with-sunglasses-google.png��6=   $
��Fill=�6n   $��1��6}   5+      5,      