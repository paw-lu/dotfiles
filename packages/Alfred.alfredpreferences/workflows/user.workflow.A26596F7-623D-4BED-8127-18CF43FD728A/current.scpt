FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	 &   Retrieving current volume level    
 �   @   R e t r i e v i n g   c u r r e n t   v o l u m e   l e v e l      l    � ����  O     �    k    �       r    	    2    ��
�� 
cwin  o      ���� 0 allwins allWins      r   
     J   
 ����    o      ���� 0 alltabs allTabs      X    + ��   r    &    b    $   !   o     ���� 0 alltabs allTabs ! n     # " # " 2   ! #��
�� 
CrTb # o     !���� 0 currwin currWin  o      ���� 0 alltabs allTabs�� 0 currwin currWin  o    ���� 0 allwins allWins   $ % $ X   , \ &�� ' & Q   < W ( )�� ( Z  ? N * +���� * E   ? D , - , l  ? B .���� . n   ? B / 0 / 1   @ B��
�� 
pnam 0 o   ? @���� 0 currtab currTab��  ��   - m   B C 1 1 � 2 2  Y o u t u b e   M u s i c + r   G J 3 4 3 o   G H���� 0 currtab currTab 4 o      ���� 0 musictab musicTab��  ��   ) R      ������
�� .ascrerr ****      � ****��  ��  ��  �� 0 currtab currTab ' o   / 0���� 0 alltabs allTabs %  5�� 5 O   ] � 6 7 6 k   a � 8 8  9 : 9 r   a l ; < ; I  a h���� =
�� .CrSuExJanull���     obj ��   = �� >��
�� 
JvSc > m   c d ? ? � @ @ � ( d o c u m e n t . q u e r y S e l e c t o r ( ' [ c l a s s ^ = " t i t l e   s t y l e - s c o p e   y t m u s i c - p l a y e r - b a r " ] ' ) ) . g e t A t t r i b u t e ( ' t i t l e ' ) ;��   < o      ���� 0 	songtitle 	songTitle :  A B A r   m z C D C I  m v���� E
�� .CrSuExJanull���     obj ��   E �� F��
�� 
JvSc F m   o r G G � H H � ( d o c u m e n t . q u e r y S e l e c t o r ( ' [ c l a s s ^ = " b y l i n e   s t y l e - s c o p e   y t m u s i c - p l a y e r - b a r " ] ' ) ) . g e t A t t r i b u t e ( ' t i t l e ' ) ;��   D o      ���� 0 
songartist 
songArtist B  I J I r   { � K L K I  { ����� M
�� .CrSuExJanull���     obj ��   M �� N��
�� 
JvSc N m   } � O O � P P � ( d o c u m e n t . q u e r y S e l e c t o r ( ' [ i d = " l i k e - b u t t o n - r e n d e r e r " ] ' ) ) . q u e r y S e l e c t o r ( ' [ a r i a - l a b e l = " L i k e " ] ' ) . g e t A t t r i b u t e ( ' a r i a - p r e s s e d ' ) ;��   L o      ���� 0 like   J  Q�� Q r   � � R S R I  � ����� T
�� .CrSuExJanull���     obj ��   T �� U��
�� 
JvSc U m   � � V V � W W � ( d o c u m e n t . q u e r y S e l e c t o r ( ' [ i d = " l i k e - b u t t o n - r e n d e r e r " ] ' ) ) . q u e r y S e l e c t o r ( ' [ a r i a - l a b e l = " L i k e " ] ' ) . g e t A t t r i b u t e ( ' a r i a - p r e s s e d ' ) ;��   S o      ���� 0 dislike  ��   7 o   ] ^���� 0 musictab musicTab��    m      X X�                                                                                  rimZ  alis    >  Macintosh HD                   BD ����Google Chrome.app                                              ����            ����  
 cu             Applications  !/:Applications:Google Chrome.app/   $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��  ��  ��     Y Z Y l     ��������  ��  ��   Z  [ \ [ l     �� ] ^��   ] $  Determine Like/Dislike status    ^ � _ _ <   D e t e r m i n e   L i k e / D i s l i k e   s t a t u s \  ` a ` l  � � b���� b Z   � � c�� d e c =  � � f g f o   � ����� 0 musictab musicTab g m   � ���
�� 
null��   d  h i h =  � � j k j o   � ����� 0 like   k m   � � l l � m m  t r u e i  n o n r   � � p q p m   � � r r � s s 
 + + + + + q o      ���� 
0 status   o  t u t =  � � v w v o   � ����� 0 dislike   w m   � � x x � y y  t r u e u  z�� z r   � � { | { m   � � } } � ~ ~ 
 - - - - - | o      ���� 
0 status  ��   e r   � �  �  m   � � � � � � �   � o      ���� 
0 status  ��  ��   a  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   import JSON library    � � � � (   i m p o r t   J S O N   l i b r a r y �  � � � l  � � ����� � O   � � � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
file � m   � � � � � � �  j s o n . s c p t � n   � � � � � m   � ���
�� 
cfol � l  � � ����� � I  � ��� ���
�� .earsffdralis        afdr �  f   � ���  ��  ��   � o      ���� 0 	json_path   � m   � � � ��                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l  �  ����� � r   �  � � � I  � ��� ���
�� .sysoloadscpt        file � l  � � ����� � c   � � � � � o   � ����� 0 	json_path   � m   � ���
�� 
alis��  ��  ��   � o      ���� 0 json  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Create and add items    � � � � *   C r e a t e   a n d   a d d   i t e m s �  � � � l  ����� � r   � � � J  ����   � o      ���� 0 theitems theItems��  ��   �  � � � l  ����� � Z   � ��� � � =  � � � o  	���� 0 musictab musicTab � m  	��
�� 
null � k  H � �  � � � r  + � � � c  ' � � � l # ����� � I #���� �
�� .sysorandnmbr    ��� nmbr��   � �� � �
�� 
from � m  ����� � �� ���
�� 
to   � m  ����'��  ��  ��   � m  #&��
�� 
ctxt � o      ���� 0 rn   �  ��� � r  ,H � � � n ,C � � � I  /C�� �����  0 createdictwith createDictWith �  ��� � J  /? � �  � � � J  /7 � �  � � � m  /2 � � � � � 
 t i t l e �  ��� � m  25 � � � � � < Y o u t u b e   M u s i c   t a b   n o t   f o u n d . . .��   �  ��� � J  7= � �  � � � m  7: � � � � �  u i d �  ��� � m  :;���� ��  ��  ��  ��   � o  ,/���� 0 json   � n       � � �  ;  FG � o  CF���� 0 theitems theItems��  ��   � r  K � � � n Kz � � � I  Nz�� �����  0 createdictwith createDictWith �  ��� � J  Nv � �  � � � J  Nf � �  � � � m  NQ � � � � � 
 t i t l e �  �� � b  Qd � � � b  Q` � � � b  Q\ � � � b  QX � � � o  QT�~�~ 0 
songartist 
songArtist � m  TW � � � � �  :   � o  X[�}�} 0 	songtitle 	songTitle � m  \_ � � � � �    � o  `c�|�| 
0 status  �   �  � � � J  fn � �  � � � m  fi � � �    s u b t i t l e � �{ m  il � & P l a y   o r   p a u s e   s o n g !�{   � �z J  nt  m  nq �		  u i d 
�y
 m  qr�x�x �y  �z  ��  ��   � o  KN�w�w 0 json   � n        ;  }~ o  z}�v�v 0 theitems theItems��  ��   �  l     �u�t�s�u  �t  �s    l     �r�r   2 , Create root items object and encode to JSON    � X   C r e a t e   r o o t   i t e m s   o b j e c t   a n d   e n c o d e   t o   J S O N  l ���q�p r  �� n �� I  ���o�n�m�o 0 
createdict 
createDict�n  �m   o  ���l�l 0 json   o      �k�k 0 itemdict itemDict�q  �p    l ���j�i n �� I  ���h �g�h 	0 setkv    !"! m  ��## �$$ 
 i t e m s" %�f% o  ���e�e 0 theitems theItems�f  �g   o  ���d�d 0 itemdict itemDict�j  �i   &�c& l ��'�b�a' L  ��(( n ��)*) I  ���`+�_�` 
0 encode  + ,�^, o  ���]�] 0 itemdict itemDict�^  �_  * o  ���\�\ 0 json  �b  �a  �c       �[-.�[  - �Z
�Z .aevtoappnull  �   � ****. �Y/�X�W01�V
�Y .aevtoappnull  �   � ****/ k    �22  33  `44  �55  �66  �77  �88 99 :: &�U�U  �X  �W  0 �T�S�T 0 currwin currWin�S 0 currtab currTab1 ? X�R�Q�P�O�N�M�L�K 1�J�I�H�G ?�F�E G�D O�C V�B�A l r�@ x } � ��?�>�= ��<�;�:�9�8�7�6�5�4�3�2�1�0 � � ��/ � � � ��.�-#�,�+
�R 
cwin�Q 0 allwins allWins�P 0 alltabs allTabs
�O 
kocl
�N 
cobj
�M .corecnte****       ****
�L 
CrTb
�K 
pnam�J 0 musictab musicTab�I  �H  
�G 
JvSc
�F .CrSuExJanull���     obj �E 0 	songtitle 	songTitle�D 0 
songartist 
songArtist�C 0 like  �B 0 dislike  
�A 
null�@ 
0 status  
�? .earsffdralis        afdr
�> 
cfol
�= 
file�< 0 	json_path  
�; 
alis
�: .sysoloadscpt        file�9 0 json  �8 0 theitems theItems
�7 
from�6�
�5 
to  �4'�3 
�2 .sysorandnmbr    ��� nmbr
�1 
ctxt�0 0 rn  �/  0 createdictwith createDictWith�. 0 
createdict 
createDict�- 0 itemdict itemDict�, 	0 setkv  �+ 
0 encode  �V�� �*�-E�OjvE�O �[��l kh  à�-%E�[OY��O /�[��l kh  ��,� �E�Y hW X  h[OY��O� 7*��l E` O*�a l E` O*�a l E` O*�a l E` UUO�a   hY 1_ a   a E` Y _ a   a E` Y 	a E` Oa  )j a  ,a !a "/E` #UO_ #a $&j %E` &OjvE` 'O�a   =*a (a )a *a +a , -a .&E` /O_ &a 0a 1lva 2klvlvk+ 3_ '6FY 6_ &a 4_ a 5%_ %a 6%_ %lva 7a 8lva 9klvmvk+ 3_ '6FO_ &j+ :E` ;O_ ;a <_ 'l+ =O_ &_ ;k+ > ascr  ��ޭ