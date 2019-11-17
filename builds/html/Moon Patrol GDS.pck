GDPC                                                                                <   res://.import/car.png-37a7241fd6aafe6d958e69d48716c39f.stex �      #      �8��f�
-�_i�U<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex8      �      �]��~��������b   res://InfiniteGround.tscn         L       ���u�J�6{��   res://Player.gd.remap   ��      !       ��0�F �qq��dX��   res://Player.gdc`      c      �����~��1�wA	��   res://Player.tscn   �
      �      � z�A͍���ř5-   res://World.gd.remap��              ���z�����R�U�   res://World.gdc �      �       H�TMFV_��|{GA�L�   res://World.tscn@      x      ���T����9:~�$   res://assets/texture/car.png.import �4      �      '�?��VՉA�����   res://default_env.tres  `7      �       um�`�N��<*ỳ�8   res://icon.png  ��      n      u�|^�&��٦�?W�S-   res://icon.png.import   �U      �      �����%��(#AB�   res://levels/Level1.tscn X      b�      zS� �N�₅Q�P�̭   res://project.binaryP     2      �Ն�
��M�Wfz,.        [gd_scene load_steps=2 format=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( -1.77379e+009, 10 )

[node name="InfiniteGround" type="StaticBody2D"]
position = Vector2( -5000, 1080 )
collision_layer = 2
collision_mask = 0

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
    GDSC         /   �      ������������τ�   ��������Ķ��   ��������򶶶   ��������򶶶   ������������򶶶   �������   ���������䶶   ����䶶�   ����������������   �������񶶶�   �������϶���   ����������������Ҷ��   �����϶�   �������Ŷ���   ����׶��   ����������Ķ   ζ��   �������������Ӷ�   ����¶��   ����������������Ҷ��   ϶��   �      �           
      �                   (                ui_right      ui_left       ui_up                                                       	   #   
   .      3      :      ;      E      F      K      L      M      S      U      V      ]      i      o      y      {      |      }      ~      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   3Y2�  YYY:�  Y:�  �  Y:�  �  �  Y:�  �  Y:�  �  Y:�  �  P�  R�  QY:�  �  Y:�	  �  SYY;�
  �  P�  R�  QYY;�  �  YYY0�  PQV�  -YY0�  P�  QV�  &�  PQ�
  T�  	�  V�  �
  T�  �  �  �
  �  P�
  R�  QS�  .�  �  �  �  &�  T�  P�	  QV�  �
  T�  �  �  '�  T�  P�
  QV�  �
  T�  �	  �  (V�  �
  T�  �  S�  �  �
  T�  �/  P�
  T�  R�  R�  Q�  �  &�  T�  P�  Q�  PQV�  �
  T�  �  S�  �  �
  T�  �  S�  �  �
  �  P�
  R�  QS�  �  -Y`             [gd_scene load_steps=5 format=2]

[ext_resource path="res://Player.gd" type="Script" id=1]
[ext_resource path="res://assets/texture/car.png" type="Texture" id=2]

[sub_resource type="SpriteFrames" id=1]
animations = [ {
"frames": [ ExtResource( 2 ) ],
"loop": true,
"name": "default",
"speed": 5.0
} ]

[sub_resource type="CapsuleShape2D" id=2]
radius = 38.6249
height = 113.557

[node name="Player" type="KinematicBody2D"]
collision_mask = 2
script = ExtResource( 1 )

[node name="AnimatedSprite" type="AnimatedSprite" parent="."]
frames = SubResource( 1 )

[node name="Camera2D" type="Camera2D" parent="."]
position = Vector2( -111.008, -1.80499 )
anchor_mode = 0
current = true
limit_left = -1000000
limit_top = 0
limit_right = 1000000
limit_bottom = 1000
limit_smoothed = true
smoothing_enabled = true
smoothing_speed = 7.0

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
rotation = 1.5708
shape = SubResource( 2 )
      GDSC                   ���ӄ�   �����϶�                                                    	      
                           3YYYYYYY0�  PQV�  -YYYYY`    [gd_scene load_steps=5 format=2]

[ext_resource path="res://World.gd" type="Script" id=1]
[ext_resource path="res://Player.tscn" type="PackedScene" id=2]
[ext_resource path="res://levels/Level1.tscn" type="PackedScene" id=3]
[ext_resource path="res://InfiniteGround.tscn" type="PackedScene" id=4]

[node name="World" type="Node2D"]
script = ExtResource( 1 )

[node name="Player" parent="." instance=ExtResource( 2 )]
position = Vector2( 40.0844, 1028.83 )

[node name="Levels" type="Node" parent="."]

[node name="Level1" parent="Levels" instance=ExtResource( 3 )]

[node name="InfiniteGround" parent="." instance=ExtResource( 4 )]
        GDST�   K           �"  PNG �PNG

   IHDR   �   K   �+=7    IDATx��]K�eG�������W�<�$�i5�QDAP�L� ��Qg�$wvA�P��A	d �AC�g�h�tL�鄴�W��������������j�N���9�vժU�����K������&�֊ӧO N�<	 ظq#j�8{�,j�ظqc���?N��п�����o| �z��g���;w ����!�?�~����+V�  �R���V\�t	�V���K���v��g?����J�� �={��Ƌ��?�"��V�R@+�gW�8�<�"��]"��w�م	��+D���>�o� �~��ݾ�̄E��tӲ��&�Qk�~��0�t: L&�Z�4�1�L���4����}�_�=�=c>Z�O&�R����e�D�U�� 'k���c��Cu�٠3%0\���F����l��#9=o�!�`ף�i:-W.WJ�7}D-���������<L���Gu����y ��+k�pZ(m��{��2o��Ο?���E }G�L�����J)X�jJ)�t� `qq�B��֐!���u�H?�яf�p��ky��3����K���{�ŪU�aQi�g��Q���:�VXD�"g�W���-�Xs���f�
�B\���?�a�<�r(�L�L&�>Q>����jny�&�ɨ�[����[�t�����r�Q0�ױ[�(�S��4ӈ�'�~{�!}&y�}�݇뮻���� zdY�r%J)X�f ����|�v��:��F{bd��q�4������9ꊑ�������^x�h]�x�+G)�S�:uꢳ��L&��I�4�[��y�Ǎt��2F ���Q&����<�)�ج�D�)$B䱎�o�XgάZ��JiŊ�{�������Z���_��C9��2�u�1W&
s3�:/YE��;+\���ݻ ?��LyT���ϣ��s�Ρ���/�֊3g� �g9^y� ������kע֊�k��gw�o��=�4�5�\ ��{^��	��t�
�k���:�~%��#G����R�}��.?~S����1�� q�ߵkW:(���?=��̺� k������Jc�������;�h>�<��4������Sb����<-�4����+Ӆ~�!{d����\�r&l׮]�4��=������3]�^r�I�{/������ö́U ����o���1N�<�RJ�싋��o����6m�P���!�Ν; ǎc9
 ��mo�YXX��hr0�� �U�Vu�sW���j��u4�ţ%8v�X�����lX����_�� ��ŋ��z�ɺ���pY�l���J+}��Q^���e�݉,2�Z�L��{��*��\T��|�#3&;�eң�8���N��_/E|2��Ww'B�1�nY����\�����n�W��U[D��j���yS��2���_��Ý��1 �>&�#�m������vs�Dx"�h˖-�oZJ�,���_��+�}�
0l��\sj��*��NqQ���2�;d��˦�NWtN�!�+͇��T����ݻ3?.m������aw�}�L�����Ͷڱ�t��U��d�w�|H>��Ma�ù�0ͫ��-�m�����7ӵ���H�2�����Z��Q�BF2y92P��N`ؑ"��P�2y��|�՜F��{z�<}�)��ǹs簴�t	 �?>��b:���ҭ�>}z�窫������ѣ(���g��^z	��N��ׯ'�yWz�xnr2�� ���}w�"w)Ǐ�[�� �i>Z�L&�N/_���0գ�}��1��Է��w�ez*���U���gʕ�?�v����ֲ���1��?�x����>3Z��E�,��͛g�֭[�k�JC�HV�W�v:�G<<~$��G$od��)0��'㑵M�ʦ|
��G�R5â݅�ޓ3g��|��q �R6n�X�~6�<2�/�2�����D>nB�����lG)'O�D��7o�q�ԅQ��󸜌���^?�:�r�l:�\���EK�1չs�m�qݺ6��6���?>�eny!Z����G>w�٘O���03�_�z��T_��]C�E����%{m���|���<�*�(�L�Q�V���▻ŗ�Բ$�F������+5�HFo#�ZӒE�^��Ƿ��홴^��a���l���P2j���ʻ�~%2��;���H��--���u�|�÷��/�@��D��|j����:��`}0<�T̋��D�p%^�LQ�J��[��}�s���:`��3D��C'/����+E�t_�і����6�V�Vx�b�g-��e�rj�Hw��V�<��;�rfn����O���:@D�5RY;领	���|g&�{�����( 9r�\�pa��F��Ύh|/��­F���ʔ���l³����oii�����|LAD|�:g�B�s�9B�9���N�8�R
n���A\����ut��|��t��{_�p��-��1�w�����U�=2��Դ��5�N�O����4Q'j������yG��4��3�3�|����er����l�4Y]e�(s�'h^�Y�����&����W"M)E�ĄhN��A_^�K.�d�8r/|��F)�d���Lϓ^\�$rq���@�?�xN�G���~Ei"��)��������-[ v������ �g�k�}��~�� Н���P��I-��P�k4@��?�裏�ww���3�����tNQCo�����e�Z����˞�����y��q�<߬�-+�m�+����1f�<�X��d���*6�H��)��_��L�f�4����ym�����gϞ=�����G>�Z~������hʱ ��C�[0��IK�����˷�1?"��� O?�4�����s�Rp��) �B���j1k��O�׮]�R
6l� `��z�N����pZ��g[Q_�֊�}�c]=�R:9�"�pZVM��؞��Kv�`���I�r9�6[G~��3��sf�բyQ�q[�]6�p��Q����;�<>z��eeԸ�,^�,�[\�'����4QXLY��G��?:@ͥ
�ר2|�$;gq�����t`��J ���̇��QYQ��xD���:�"��	�Z+6l�0���|�����K_}�Ճ�Tx��H�w�^����;QJ��sO��g��[T��?�9j�ݙ\_ S/ޱ�{xX����K�|α�]w�5�1��l5��Z�j�K��\r�oP�ݻw�8
(E;贁z�p�R�|���͋�W��-R���q�2�k�4�#�����'߱�d�;�E2j�%�۲�e���p���ǀ���/O_N}.0�;*����(�t>ٺu�=TWd����?�R
n��f ��L*Ig[�Bu6H�Y�@޸����r���� ��[�v�P�|,�:�\۶mC���o{��П+����_Qk�7� ��e��}���G��W���zذaj��؄�=w�>������A9u]b2�`��� 0���"�S��Mн뮻Pk�k�q~�_����C|�۵k�r��}ӎ�-j��^���P�F���"cU�����j���ҴMG~����JdT}F������Z���pd��r�"j��{�'��?&�I��E�|���R7+����̙3�2�".��gd�8Vp�+�k���(�M��z���֊k��v ��.�'"����F �����J������Zkw��-+-��O~>?N��X��ɤ�̬G���c�,"��|��(�����l	���p���W녈��M5����u�� �����֊W_}u��}'7���?�~Q�Gz��4�Q7%-����Z�z�Q>-��U3�!�[�Īgw""��U�M}Ee���~�<Y�y��=���g��裏v>�����?��O����K���9(o;�YXX�P	@�����s�r���Wt}��HNr��>r�����ߚ5kPJ��O~� �?�A ˈXJ��c ��2�☆��IR���1�x����>o�>u�T��oy�[�p���k�E)�������������R>Q�W�l��<��#��b۶m�(�S���g6�<��3K���������M�i:O�����-����n�2U��ߢ,���WB�x�U�,.+���7�?�,��0����7����x���`�������D����W�+*��?���L}�\%r�|_�w�.��ُ_|��q�(����+��݁'�h�h�<8����w @w�-��cZ>ZN����7�F����}%��58[DKF$g9���7wrP~��ډ8��[-ܒ�B�������^��c�l>��O-�yb��v����@#�c�����#?��L�w��sϿ������y���EV&�w4/���̑��������ǋ~k��JzI��]S�ZY|Y��{�Bo魵���s�
�S֕�=;2o�Bԟt���ᖖ�wѰ|<�JǕe�|�{��!��/��a ���Yz��� x���`y��:����Dߚ��7�,,,,--1���Y�����PJ��C�PJ��Y�l%X�ѻv�u�z���O�N�s0������o���r���	/Q�p�����Ǎ,��W>�_����#�9�xE���O�P���P�~�G�H�y�#����f�g��ӵ�E����������'��|�3�Џ�qy���9��{��0{���� ����`ީ9��VJ�Li˧�*�10<�*�yE��J�W8: �����7m� �Z>����������M7�4ȏH}�����D�A5M���F�Yhy�R����SO=�����}��v�;��z��L��k�ʺ��%u�+
�=�q�[���'^$sV�݇�7�y��z�p��`ٳ�ܑ�����,�h��-k0O{�'����`V�:t[�nE��ފ�{�����_�̼3{0}c�y��B�ѳ� o�S��_5��?���oVs_�c�}���rW���v��9-���[,^d�z%»��Y2}`Z��ݟk֬	-�����a��{���k�ҳ�;v�@��������ɟy� �+�:g��O�!ߋ�����1��4"�HYX?C��o�^�(���uF�e�iY�O�գ�f�N�p����^Ҵ:��h!���cV����wT?�6(���R
n�� =��������o~3��LWtKY����ڭ�e��ݯ]J?o�y�,Cvv5R�6H�_ޱc� �}��;U�{�����D����vY�7��;��/̠���|��\�:��v98[�0��8����N��s���D�f�)�Ν;QJ��3��rҲ����#(��1S����5Ǭ���/� `!Y��ޓ#?-CZ��-����Ϟ��x�*pT�Y�,_-��\�?r���u�*��(<*G��NW��1kY�H�H��vЪ��/}��WJ�V(����	W"{��Շ۲eK����E2"(癉P�Q�[�*Ư��\���2b0�V���o�̯��&4��=z��n~����r�-�o����s�6�Q~�5�� �]��w����g����������[Z�Q��̽>lo��{�m�� ͱ#��[o��z�
 L>"��<�ו�g�p�GV!�!����]�1��BD>o�+�1�#�fց|���5ҙ7�^�L'�q>�;*S�&��-���#K�4P>�m۶�w۱�q�G$�^���'�teO"P�%��Ԕ��qI����,#?�s�fT0��cǎ��|e�r(�*Q"-}p���{cx��Գ�>�Zk�G��q��aӦM3�S�s۴�6����'��>y���p�,�Z_��؇�=p/�Ƚ�3<k�g#=O��nV�i�W���-���2Z������/=� zE(Q����z��G�̸���d��$"o�ju汖Q����9f�#� ��R?�L&L��Ug]J)�կ~�%R��� ��cw�8�`��*���b ��D��p�P���Hs�M7�\�s9u�I��9�~��+B�����t��Do?1E���5���]��s9h� ��{(e��-˯r���������qZ|Z�Уx�� �=�j]>�tl7���+�c��.�mɑ����JT^:y>^Ir8߈�X<E�1#K���#���:�#ޮ�H�-����3���g�[e���!����z��֘% M�q�G�݁^Ы�����S����S�Nz6��7���8z{�#B�\�%9[���mΎd��FO
iC#����R�Ϯ�R�u��A|���[$�W�[���2����z��'���I�z���؈�1���o��g��� _���CXZZ��9��Y��e�:x�a��WL�z��3��|2��;�7V���v�[���WZ�1D�x��*���41â��W]g뵠|���~̳� ��,� �L���n��{Mz�r�����O���!��^y��R:��Wfy�=���tx�ɇ�R$f}mޢ��+~Sg��^y��	�OfuZ��H�@u �����7���N���7�9"���\˧�*Ѳ��L��9�Z��+h�t���r=�䓝���G穧�B)�{�oy��Q�Fʟׯ�N�2����\֨]�+E���x���H��ѕZH���I;ݼ�y8��e]�g�Qx^�/����\������2u����'�-�J�ݍ�'$R6���ӓ<�O3r�����?+�4D.����}��ݺu3��I�Wg�#�}�EIy��2���&���.�Vj��|�ʥ�~7��u2�t��zV~�?�+z�x6��ٳ(�`����Sk�7���Z��=�2E=13�ca�gcH��ƚ�xc|�<\^��ڍ��B���L��TO�z��� ���5+�����f"���y�;)�e� ��}�j��7�(�R ���1)v�U6���"�}2\��t���������^{Eh�\�J��ά��a��gg9���td�[�E˭����;�iuVI����|��o�#߽�zSY�7�Ek;b;����1	��!���~O����W]���QoT�,��� �P'�,��#J��?j��Le��y��\.~gKe�,yf!�|�;�lQ���"�-�t;wDt����y䑎W����Bew_1kLD�̬�:\!%M&���ZuE3��ҥK�;��Kd�/�g��+�~ۀ�� ����ȿ����7�D�&�p������^�i����7i����{�!O�,J���~v�x���5�|ٖ�C#@��@|��;��]?ј$�̧����bF��V��N�y+h�֭�W�}��p.92�꣑h9�@��ܻ��:��>�rM_J����QJ�B�2h~�K�+�n��~���l���{���W�:g������.՛�" �}�J
8���]��֭Ko�&��v�y�&5%=N��Z>�<H��;�\�2D�,~��f~r6f�����3����*E�ĺ��!-��)�-�A�jfY�պ|S�ó�����gI��}�z�.���̕["���?O�2�|�,�Q��*}P��*ʩ�U��M�b��iT>`�,ik�����(7����������|�����nvK�I�(�'��<�_�u��Ah�O�8"����z�t�4�DN"f�<]��|�-��?����n�2uRy3��.xg�&��Gy{��.�,��)ӵב[~|�˥�#/�߃y���W�Zi��ͨ�v�+���*"��^��=�z��X 8{�l�����kp/-}XW��M���#�>}����:O�Qg��p�8��wt:���[J����I=��lG���u֝�5�,������F�iZ��J�B����V��0��ȿ���K��ZZZ��x��q�����UVG���������H���������e�k�=��Ĥa X\\����m�@|�����;9�k��s���_�6bG=_��=�*M��j����Z�����V">��Q�D��ղ��W�_��s�+ p�ĉZk�,�ު���ۓ{ ~7&ow�]�-��O��T����	��7l�_^E2��~w?
g���oC���}�V^�'��%��<h�����9B�=�L���Ǭ�NQ�(�wDQ�U��e��:-��:u��b�$�� �Ν�,,}h�o9A�  �IDAT|��Rf��0Ƨo���1����ēM�T ��ѣU�����,��x~��rr��yd��;E�]�6����"�T���p�n��2E���:u����	9�EB�v��5�z=q�Č�)�y:$ �:Q!��* ���1�?R�*���H^']�r5]d&�E�Y8����Ր[u�i籎Q^�;B[�[�L���Q�Q������^�u�����ѻ�����Uw���
`p�R���$��{W�3�<y�J*�}q����֐�DrL�7�p,���t�G���e������f�طo_$����c�x�J��~�ܹ3��,..V�E���P3>���2�z��t:��7�g�=ҩ��Ne���+y��G5Ӗ/�H�r�Zg�j!?)h�3eR9�"�R=x#�vDQ�-�"k�R:EX�[4�p�>�V/Kf���x�gzmY��őϕ�~��I�2rw����Ē��V�u����u�������'��̭t���0�M�}BǏ���wv�C�$w��_���|n9xO��Wem�Vf%<,#�}Gq2 �ַ�u��-�ɓ'���ПTs>$?��z��,#~K���4�3��G ��L�^x�Ft�|�(_�HI�0ӵ|�(���19[.л:��eh��\��z��ʯթ��XX���[��?��#�z��zj8����QG�"�    IEND�B`�             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/car.png-37a7241fd6aafe6d958e69d48716c39f.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/texture/car.png"
dest_files=[ "res://.import/car.png-37a7241fd6aafe6d958e69d48716c39f.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
    [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST�   �           e  PNG �PNG

   IHDR   �   �   �>a�  (IDATx��wt\ՙ�o���X�U,[��&W\0؆`c��1�YجCZ�ɦ.�:Ξl6&!$'��l�m��%�Ir���fԦ���4��di�4������޽��;����~����s�]f=��$��t��89w�D�V8��*�L�B:�i@QFM 6Z��)�D�	��s[�Iw����ڛ�2��Ir��`(%�JΝ�I&��MT�c���x����F��r�&̻Q��:�P���4��G�<Jh1������d�=�+��N ��@Ti{�d����XF풡��o�CO�KOK07V%� H�7A"E&W �+$R�A�^�(�GED����a�`�Y����6V;Zo�{� L[�u�����m�a �3� ��P�"S��T�(��n5c5u#:��/5�M��m:��DD5��~ɕ(c�!���d
2������y)]�M�
,L Rk�T�R�_��3�\��
�"=-���n�;���Nnsu��,��/�+Q�cG��QB�B�L��wV|�%s�$vAb?ã�/H$�7?��2&A"�<��v�$1*�*F%[�yU���6�W��B�ݚkT�{4*�J����UA"����@dJ�D�y*�!:�K"�z%�+F�dQF���u��"QH�3<OJt�\)���B*-� �ޓ>R�f"�� يb��H���dَ� �މ���+�Ad/����Bμ��,�Y����H%��]<��7il��AHO���C�II���9RV���r�O��b��1�0m�=����˥�8
&�g��),�Y��)�P��s�������-�)Az��W�y�Ԥ�׬6;'Μ�PiK�RY]pF����x�)@jR7-�Ǫ���9�b=(}Q�ӿ}ݯ�<��}��f�Oi�����a���-���3ҌY�Y��}��ƒyӑH�^l5P\���Z������F�e3��o�̅��55/�W�{A��}�T��	Z��&11ep�8����c�x}ǧ��WV�0�_"�0-/��mXK���׌V�.�Q\��X����u�@E�NNE�o5mzѧg>v�jw��@E%5� �����$�(������$NJF�p�$	���l~�U��/[9}�7�-�������B9~�W�(���|�̴d�9Q�����e�?.g��f.�tc��9��ͭ�2���%q�|�Z�|�5s��a�
 �N�gv���l�Jc�9���́�����͈F!#=A�6��%'rӒy�UVS߬�6���8�[�u7/A�tM_�N>9�ĻGk�����No���zV�����r��iDq�� ������:�i�gXl>=�ħg��N�p�U��0-�T�J��p�d�O�"z�g�l����~��?.�Y��l��
���:L��9�.�v�iL����o��zV��������G��x�!�����k�m�˼���a��Ai=w^��7׮����m�q��]{��V}��i�>(����X߳��u�D"ZL�N�Jxc��X��d"�J(���_���!��N����YV��:D��'�?f��(7R�u[�}�q��=�9�H[w���,���
�-@�G�J���Gj�n�8�F+z��N��x��D��D����w�7t�,�g"��V�n����2��ַ�X����'<��Y�H$�?-m}Ӫ)qc�Qų��u�D"ZZ�;��'ǌ�,�g"��V�f�Jr���U�,ks�� a�H�֮X��fR]���c������^5��o��J�qr�j<����VҬk�y6p�,�7�	�����2��} �c���6k�J)�w��3'z�?v���n�ə�Ib5*�w5k�_����'����}S���?n����L�"�}�W��e���;���rx��Ư��u�����>��!q0����$�x�>͞2���qɬ�a�Yi�_����7מ?a<��]�Mv��l��l��*�r�_�k���DQv"J�״������s�:��i3Ӓ�ѷ��w0~\Ҁ{�%'2!3�O���l��AaQ�G;�/v���<�:�iqHA���`������j�^5��?�6ڄ�,�+Zxzk��#�#5Z�9�Dz���d�o�斥�k����k����`rn�[�N�]'������\
11+�\�ᲊ���_B�	�����ᾕf[�����0>QͿ_;�����hlՓ����,v~�Q9*�6ݎ���ʓ7�3? �"Mm���h���+o��/.R��j�s]k�����Û���pPe	�'`޴|�{�H{<v�oe�G�jX������\�1)5�=^�ը�¯ӛ��;%����޳?\j3�չV��&��#����;��<��ۋk�|�W��7.��$ �̙Ɖ�hh	ܿ l���T~��ChT.��o��g�ʰ҃m����FڍVfd& ����Z�O�-��+��O��d��3M�ő����b�O{��JZ��Y�oc��d�bH$�^5������Y���(�\&�7?}�����m���i��9U*��}���8%'.���?�b��o�3�X�N>?�L�RFs���m+������v���m,+�F!C��3k�Dv}~��0�x��U\�p& V������Z7L6�+Z8Z����Ε�(��*�+Zuc��Aim˧�#��h�Q�,)���� ��E�
Y�2���{�S��5D�(�p������w��e�f}ߠ@�T���sw��oe��epv����V�5����C�n�<(x���Hu�U;L66T>��,Jp�������[e�&���7uπ 7sw߲�}���Ϲ%|t�l���s��oY��
��X��/r����t|r�i�QB�'��(�r�H%�͟1L�����j��7_���H��7����� ���Ţ_Y����Ā�?f�$��(�}��詀������g�J�'V��q3��(�R�XQ�6}v��g/|��F�|�]��	��D5�X�������-�uO%w���w��_P
�������s���EQ���
QBCQVw��ro~�=ڂ�9z&p��9TꚒ�?�u�jy���ҏx���:IϤۡ�rv}�iB����D��@J���VN!j*t�S+����k�����/��{�DZ�lz��k΢�dV��&W_Y='�Ey.K�(����7hч�_"dn�_?Û��uk�$����:(e��,�}���{9�g�/��-��7vq�נTȑK%H$���y�I\���x��B��ꠡ���m����d4�I%̟�ĢI�d$�Q+����&�:�ʱ*g`V�D@.u�H���x?�E������\"?g|���:/�o-�#S;pò�ٮI��3��?Ͼ���\:9���摖00����Dn��A����{��U�%�_��&*���;��>|?y-s��!��?)$ ����53�'i	*~r�t�>T��
������U��'�Z5��`ÒIu��R)s�N
K=ö2(;��E�{��EQ�����Dbb"���y������������Nd�\�nss3�����j�����9Xl�8X�׳���E�,���}��W��v�~�������v��^nX���p݂��u���>"e���Ⱥ9��O�|-[����>���ĝw��uw!�����-���j=g"c�C�t�7,��K��l�{O}��_z�K� �՗x���ؼ�y�������qJV��d��LR�\z���͛���g��>�N�㥗^����>fs�r0Ap�5R�H�W13�ۚ����SVV6d��;v�m�6 
�☐�CkQV"/mX�#7����a3�|�fNH�� -�m[��s��!ӗ��y)*�:�i�-OD(��\�5q.\dϞ=>�}��װZ�=������K'y�qQɥ|s�ooe�3�V+����Oy����ŋ��g�:�� "`\�w|�����ptuuQr���>��U��0�u��������|�~E�_�w��X�
�Qx�E���^��J���a��oC��g��[�~���y�����,W�7��솥7�?$[�3�~�ֿN��<ZD�\h��:�\P�W��ɓ��b&e��>����2y�w���y��8~I�Lj鲥����oqaa!y�y�N�V�?*��*�"/?��B�V���Ʋti����������	5� V����k��qqq<�����S*<��� �_R���y��0X�_���?���(}��{������s�W\�����P �������.榛V���!��]��ϳ�=Kaa!����W�ፃմv[(,,���%!a����r9�?�7��쪱���AF"%��ŵV�����W�:�is͚�Y�p;��Aii]]]$%%�p�V�^Ell,&��M�O�=�t�ll�~�_���ܹsy}���ܱ�C���鈋�c��"V߾���>���:G���Q ��VO����kf��###�|`���&6�w��V�:�A��vn(*��x��b6�>���X�߳�����l���M�OR�,�C��( ��y�G�mV&�f�'S;p�Kc��]%��8^з�L}'W�8�/U�x���dr۬�'�L���y��]%u���t6� ���^\���Z2�j��4$�(����~�ҟ�ZIJ��=�_����?l[���?����#5d'i�JҠ�(�,���n93�D�xR�7��Gl���c���Pݿ&�9�D���H;G��F�
0�p�Y<Q�N�� �F�m�.Ao�����,�����X|�v���KI�Q���^�+����2��z��	����p{F�ݥ�.��0��X�����x��;�f���v	5�%؀�Ƃ[x�����BF���Of���v�U�F���P0 8v�Hƚ�l[�j��&�������T�L�a��3�����ts�����hux}=?��&?�� ��v�#�
���w�Z?��=��w�WA���� �8U�Ż}NV��HOPs��,�������]�/*[(�i�2��Qx,�G(ݰ*�p-��栾�䎏��av+@�2�@9ɁG�
�<��d#�.���߳E��Q�B� N�BJh�<��ˤj���ʞx�����ƿUC��ݛ5f���\�L��x��W<B�XP�n�ɽg@�R�޺�W��޽�8��o�U�H�S�ee��P�v�$��Īdt�)��~��n��#�xU_=��#`(B>����Y
$VPw?g��?�/���k�ο��D��q*��w����w���5�-@o� p��;���k�f�R�躭�v;ơ�$�&�h�䂭7X1Z���z�VCy��A4rb�2b2�bLN���' #�o���#���!W�S�.�p��[�(+���p�;��m�ҭ�_�;h�N���N��%�nK�r�l^?|0�:���3pݔq�תIP������Q�����ڙm�D4)�X�x���!RF����9��v �s|[�ן�3�)C/�W�}�ĄJLJf�������.➿�S�H!��VT�w��I���`_�������R�����~��*��V.�8~I�o�G������4Y��UT\����l�����ܹµq��(��ov�����S�F!%F)#Q� ^-'F)%V)G� F�qM�sM%���će��ò��j���m�a�8�4�h7Z1X�,���O�5S�5�������#��{�`���.���>����W#W�0;Gˉ W���V-#���h��o���y2'Gˢ�UQy�}ayNX�����+�, O�8�k=~��Qɥ<~c_D��_���y�<�6��_�e+ݮohz����yJX�YWA�7O!�'�XG���}u[����:��߿����T�Z�9� <����B��"��0��%,���r�Rj������_����)9zQG���42���7r�̾ �����7v�"������.� '#������8�e&p�K���m�r6��ᶂ|��XЛAƈ+ ��c���@�Dװ&=A͊�4t���B�PsMA
Ϭ��5���C<�Ƿ�x8FE�N�}GOb�;�jF� ��KYV8���1\h6���l,��������w�D�IE�����a1��@�-���I1����]�E�
���JZr���)����:|�� �L�
i	*�ʢ/��V=���[
`Ch0轇�#�  �O��V]�����)�:��{�낞8�4��hY='��y�^�aQ���!���{tï�� �L���#��Ƃ�.5w��W�����1�yAZ�
Ǳ�0u���J����vQ~�v���!����3
����z֔A��[�-W�8^��ĥ�	����3A���$�?����W'�򷝟q�d`K҃!"����T�ݴ����%!��ѦN3�]T4vr��@S���N�^R�$�ūHKP11%����LN�2�o{����8����������"���T���n�f.K�M�yo\��JC���N3Mf:L��ۍ6�N�Վ����ݞE	9R��U��!�$j\�	j9	j�T�ū�+||�����c���@1G�*�;F�ۘP O$	S'e�p��0=*Ed�Kh��8UY͑�,)��ڰ��a�)@�R	��ҙ��Ô�Y�d����DFjR��,v�;4��il�Q��B��ZN��ą�F����� c.B��ᤲ����z��8/�Z�2d�����@bO_")!�D�F�B�R"�J�ƻ�m�;�q8��f�&�����e�U�AMc-zZt4��òHc4s
p9DQ��YG}s���^IH /[㕢�Q2�l�%@�w����E	�Ad�,�9G�%<"�F��a�ڙ�a9��(#K�Z��2�T*�ڌ�n��i�(��_�R��}	�p�E����6���n5������0����{^���	GetE�L=����v��U4�*6����t`1F�֦Q��b������[EæV��v��w�)�VVSdll%p��n��:=����ui��� {&���X���XD�:���;݊����#K�'`jo0whӎ n���j�aoC��E����n���j�j�Fh�l2���%kҴiHc�������J��@_�;Q�a�x�${�v!���QB�(��N'N��ň����l���]�[�����'�fB�U7�Sh�� ��ٚ�qہ�a�A�����޲&I�S��W�/���Wa	�?@tW���	�%.Y���3ZY�;��#���s��v���xLE�xv��ύ�J����������$����JHɝ�L&U9��p8�U
�0�tӀ�/%���@l���SR��S*a���0�V� =�+a{�3j�4����`ۉ��	    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[gd_scene load_steps=2 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]

[node name="Level1" type="Node2D"]

[node name="ParallaxBackground" type="ParallaxBackground" parent="."]
editor/display_folded = true

[node name="ParallaxLayer" type="ParallaxLayer" parent="ParallaxBackground"]
editor/display_folded = true

[node name="icon" type="Sprite" parent="ParallaxBackground/ParallaxLayer"]
position = Vector2( 560, 960 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon15" type="Sprite" parent="ParallaxBackground/ParallaxLayer"]
position = Vector2( 4619.58, 1127.02 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon9" type="Sprite" parent="ParallaxBackground/ParallaxLayer"]
position = Vector2( 2547.18, 792.982 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon19" type="Sprite" parent="ParallaxBackground/ParallaxLayer"]
position = Vector2( 6606.76, 959.999 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon2" type="Sprite" parent="ParallaxBackground/ParallaxLayer"]
position = Vector2( 884.016, 843.087 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon18" type="Sprite" parent="ParallaxBackground/ParallaxLayer"]
position = Vector2( 4943.6, 1010.1 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon10" type="Sprite" parent="ParallaxBackground/ParallaxLayer"]
position = Vector2( 2871.19, 676.069 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon17" type="Sprite" parent="ParallaxBackground/ParallaxLayer"]
position = Vector2( 6930.78, 843.087 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon3" type="Sprite" parent="ParallaxBackground/ParallaxLayer"]
position = Vector2( 1375.05, 980.042 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon14" type="Sprite" parent="ParallaxBackground/ParallaxLayer"]
position = Vector2( 5434.63, 1147.06 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon8" type="Sprite" parent="ParallaxBackground/ParallaxLayer"]
position = Vector2( 3362.23, 813.024 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon20" type="Sprite" parent="ParallaxBackground/ParallaxLayer"]
position = Vector2( 7421.81, 980.042 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon4" type="Sprite" parent="ParallaxBackground/ParallaxLayer"]
position = Vector2( 1810.97, 709.473 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon13" type="Sprite" parent="ParallaxBackground/ParallaxLayer"]
position = Vector2( 5870.55, 876.49 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon7" type="Sprite" parent="ParallaxBackground/ParallaxLayer"]
position = Vector2( 3798.14, 542.454 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon16" type="Sprite" parent="ParallaxBackground/ParallaxLayer"]
position = Vector2( 7857.73, 709.472 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon5" type="Sprite" parent="ParallaxBackground/ParallaxLayer"]
position = Vector2( 2390.52, 949.979 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon11" type="Sprite" parent="ParallaxBackground/ParallaxLayer"]
position = Vector2( 6450.1, 1117 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon6" type="Sprite" parent="ParallaxBackground/ParallaxLayer"]
position = Vector2( 4377.7, 782.961 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon12" type="Sprite" parent="ParallaxBackground/ParallaxLayer"]
position = Vector2( 8437.28, 949.978 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="ParallaxLayer11" type="ParallaxLayer" parent="ParallaxBackground"]
editor/display_folded = true
position = Vector2( 17450.9, -117.571 )

[node name="icon" type="Sprite" parent="ParallaxBackground/ParallaxLayer11"]
position = Vector2( 560, 960 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon15" type="Sprite" parent="ParallaxBackground/ParallaxLayer11"]
position = Vector2( 4619.58, 1127.02 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon9" type="Sprite" parent="ParallaxBackground/ParallaxLayer11"]
position = Vector2( 2547.18, 792.982 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon19" type="Sprite" parent="ParallaxBackground/ParallaxLayer11"]
position = Vector2( 6606.76, 959.999 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon2" type="Sprite" parent="ParallaxBackground/ParallaxLayer11"]
position = Vector2( 884.016, 843.087 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon18" type="Sprite" parent="ParallaxBackground/ParallaxLayer11"]
position = Vector2( 4943.6, 1010.1 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon10" type="Sprite" parent="ParallaxBackground/ParallaxLayer11"]
position = Vector2( 2871.19, 676.069 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon17" type="Sprite" parent="ParallaxBackground/ParallaxLayer11"]
position = Vector2( 6930.78, 843.087 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon3" type="Sprite" parent="ParallaxBackground/ParallaxLayer11"]
position = Vector2( 1375.05, 980.042 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon14" type="Sprite" parent="ParallaxBackground/ParallaxLayer11"]
position = Vector2( 5434.63, 1147.06 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon8" type="Sprite" parent="ParallaxBackground/ParallaxLayer11"]
position = Vector2( 3362.23, 813.024 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon20" type="Sprite" parent="ParallaxBackground/ParallaxLayer11"]
position = Vector2( 7421.81, 980.042 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon4" type="Sprite" parent="ParallaxBackground/ParallaxLayer11"]
position = Vector2( 1810.97, 709.473 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon13" type="Sprite" parent="ParallaxBackground/ParallaxLayer11"]
position = Vector2( 5870.55, 876.49 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon7" type="Sprite" parent="ParallaxBackground/ParallaxLayer11"]
position = Vector2( 3798.14, 542.454 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon16" type="Sprite" parent="ParallaxBackground/ParallaxLayer11"]
position = Vector2( 7857.73, 709.472 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon5" type="Sprite" parent="ParallaxBackground/ParallaxLayer11"]
position = Vector2( 2390.52, 949.979 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon11" type="Sprite" parent="ParallaxBackground/ParallaxLayer11"]
position = Vector2( 6450.1, 1117 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon6" type="Sprite" parent="ParallaxBackground/ParallaxLayer11"]
position = Vector2( 4377.7, 782.961 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon12" type="Sprite" parent="ParallaxBackground/ParallaxLayer11"]
position = Vector2( 8437.28, 949.978 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="ParallaxLayer9" type="ParallaxLayer" parent="ParallaxBackground"]
editor/display_folded = true
position = Vector2( 8952.18, 16.7959 )

[node name="icon" type="Sprite" parent="ParallaxBackground/ParallaxLayer9"]
position = Vector2( 560, 960 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon15" type="Sprite" parent="ParallaxBackground/ParallaxLayer9"]
position = Vector2( 4619.58, 1127.02 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon9" type="Sprite" parent="ParallaxBackground/ParallaxLayer9"]
position = Vector2( 2547.18, 792.982 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon19" type="Sprite" parent="ParallaxBackground/ParallaxLayer9"]
position = Vector2( 6606.76, 959.999 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon2" type="Sprite" parent="ParallaxBackground/ParallaxLayer9"]
position = Vector2( 884.016, 843.087 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon18" type="Sprite" parent="ParallaxBackground/ParallaxLayer9"]
position = Vector2( 4943.6, 1010.1 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon10" type="Sprite" parent="ParallaxBackground/ParallaxLayer9"]
position = Vector2( 2871.19, 676.069 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon17" type="Sprite" parent="ParallaxBackground/ParallaxLayer9"]
position = Vector2( 6930.78, 843.087 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon3" type="Sprite" parent="ParallaxBackground/ParallaxLayer9"]
position = Vector2( 1375.05, 980.042 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon14" type="Sprite" parent="ParallaxBackground/ParallaxLayer9"]
position = Vector2( 5434.63, 1147.06 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon8" type="Sprite" parent="ParallaxBackground/ParallaxLayer9"]
position = Vector2( 3362.23, 813.024 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon20" type="Sprite" parent="ParallaxBackground/ParallaxLayer9"]
position = Vector2( 7421.81, 980.042 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon4" type="Sprite" parent="ParallaxBackground/ParallaxLayer9"]
position = Vector2( 1810.97, 709.473 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon13" type="Sprite" parent="ParallaxBackground/ParallaxLayer9"]
position = Vector2( 5870.55, 876.49 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon7" type="Sprite" parent="ParallaxBackground/ParallaxLayer9"]
position = Vector2( 3798.14, 542.454 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon16" type="Sprite" parent="ParallaxBackground/ParallaxLayer9"]
position = Vector2( 7857.73, 709.472 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon5" type="Sprite" parent="ParallaxBackground/ParallaxLayer9"]
position = Vector2( 2390.52, 949.979 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon11" type="Sprite" parent="ParallaxBackground/ParallaxLayer9"]
position = Vector2( 6450.1, 1117 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon6" type="Sprite" parent="ParallaxBackground/ParallaxLayer9"]
position = Vector2( 4377.7, 782.961 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon12" type="Sprite" parent="ParallaxBackground/ParallaxLayer9"]
position = Vector2( 8437.28, 949.978 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="ParallaxLayer10" type="ParallaxLayer" parent="ParallaxBackground"]
editor/display_folded = true
position = Vector2( 26403.1, -100.775 )

[node name="icon" type="Sprite" parent="ParallaxBackground/ParallaxLayer10"]
position = Vector2( 560, 960 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon15" type="Sprite" parent="ParallaxBackground/ParallaxLayer10"]
position = Vector2( 4619.58, 1127.02 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon9" type="Sprite" parent="ParallaxBackground/ParallaxLayer10"]
position = Vector2( 2547.18, 792.982 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon19" type="Sprite" parent="ParallaxBackground/ParallaxLayer10"]
position = Vector2( 6606.76, 959.999 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon2" type="Sprite" parent="ParallaxBackground/ParallaxLayer10"]
position = Vector2( 884.016, 843.087 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon18" type="Sprite" parent="ParallaxBackground/ParallaxLayer10"]
position = Vector2( 4943.6, 1010.1 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon10" type="Sprite" parent="ParallaxBackground/ParallaxLayer10"]
position = Vector2( 2871.19, 676.069 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon17" type="Sprite" parent="ParallaxBackground/ParallaxLayer10"]
position = Vector2( 6930.78, 843.087 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon3" type="Sprite" parent="ParallaxBackground/ParallaxLayer10"]
position = Vector2( 1375.05, 980.042 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon14" type="Sprite" parent="ParallaxBackground/ParallaxLayer10"]
position = Vector2( 5434.63, 1147.06 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon8" type="Sprite" parent="ParallaxBackground/ParallaxLayer10"]
position = Vector2( 3362.23, 813.024 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon20" type="Sprite" parent="ParallaxBackground/ParallaxLayer10"]
position = Vector2( 7421.81, 980.042 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon4" type="Sprite" parent="ParallaxBackground/ParallaxLayer10"]
position = Vector2( 1810.97, 709.473 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon13" type="Sprite" parent="ParallaxBackground/ParallaxLayer10"]
position = Vector2( 5870.55, 876.49 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon7" type="Sprite" parent="ParallaxBackground/ParallaxLayer10"]
position = Vector2( 3798.14, 542.454 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon16" type="Sprite" parent="ParallaxBackground/ParallaxLayer10"]
position = Vector2( 7857.73, 709.472 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon5" type="Sprite" parent="ParallaxBackground/ParallaxLayer10"]
position = Vector2( 2390.52, 949.979 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon11" type="Sprite" parent="ParallaxBackground/ParallaxLayer10"]
position = Vector2( 6450.1, 1117 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon6" type="Sprite" parent="ParallaxBackground/ParallaxLayer10"]
position = Vector2( 4377.7, 782.961 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon12" type="Sprite" parent="ParallaxBackground/ParallaxLayer10"]
position = Vector2( 8437.28, 949.978 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="ParallaxLayer2" type="ParallaxLayer" parent="ParallaxBackground"]
editor/display_folded = true
position = Vector2( -34.921, -42.0304 )
scale = Vector2( 0.8, 0.8 )
z_index = -1
motion_scale = Vector2( 0.5, 0.5 )

[node name="icon" type="Sprite" parent="ParallaxBackground/ParallaxLayer2"]
position = Vector2( 560, 960 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon15" type="Sprite" parent="ParallaxBackground/ParallaxLayer2"]
position = Vector2( 4619.58, 1127.02 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon9" type="Sprite" parent="ParallaxBackground/ParallaxLayer2"]
position = Vector2( 2547.18, 792.982 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon19" type="Sprite" parent="ParallaxBackground/ParallaxLayer2"]
position = Vector2( 6606.76, 959.999 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon2" type="Sprite" parent="ParallaxBackground/ParallaxLayer2"]
position = Vector2( 884.016, 843.087 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon18" type="Sprite" parent="ParallaxBackground/ParallaxLayer2"]
position = Vector2( 4943.6, 1010.1 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon10" type="Sprite" parent="ParallaxBackground/ParallaxLayer2"]
position = Vector2( 2871.19, 676.069 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon17" type="Sprite" parent="ParallaxBackground/ParallaxLayer2"]
position = Vector2( 6930.78, 843.087 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon3" type="Sprite" parent="ParallaxBackground/ParallaxLayer2"]
position = Vector2( 1375.05, 980.042 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon14" type="Sprite" parent="ParallaxBackground/ParallaxLayer2"]
position = Vector2( 5434.63, 1147.06 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon8" type="Sprite" parent="ParallaxBackground/ParallaxLayer2"]
position = Vector2( 3362.23, 813.024 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon20" type="Sprite" parent="ParallaxBackground/ParallaxLayer2"]
position = Vector2( 7421.81, 980.042 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon4" type="Sprite" parent="ParallaxBackground/ParallaxLayer2"]
position = Vector2( 1810.97, 709.473 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon13" type="Sprite" parent="ParallaxBackground/ParallaxLayer2"]
position = Vector2( 5870.55, 876.49 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon7" type="Sprite" parent="ParallaxBackground/ParallaxLayer2"]
position = Vector2( 3798.14, 542.454 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon16" type="Sprite" parent="ParallaxBackground/ParallaxLayer2"]
position = Vector2( 7857.73, 709.472 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon5" type="Sprite" parent="ParallaxBackground/ParallaxLayer2"]
position = Vector2( 2390.52, 949.979 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon11" type="Sprite" parent="ParallaxBackground/ParallaxLayer2"]
position = Vector2( 6450.1, 1117 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon6" type="Sprite" parent="ParallaxBackground/ParallaxLayer2"]
position = Vector2( 4377.7, 782.961 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon12" type="Sprite" parent="ParallaxBackground/ParallaxLayer2"]
position = Vector2( 8437.28, 949.978 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="ParallaxLayer8" type="ParallaxLayer" parent="ParallaxBackground"]
editor/display_folded = true
position = Vector2( 21633.5, -12.3918 )
scale = Vector2( 0.8, 0.8 )
z_index = -1
motion_scale = Vector2( 0.5, 0.5 )

[node name="icon" type="Sprite" parent="ParallaxBackground/ParallaxLayer8"]
position = Vector2( 560, 960 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon15" type="Sprite" parent="ParallaxBackground/ParallaxLayer8"]
position = Vector2( 4619.58, 1127.02 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon9" type="Sprite" parent="ParallaxBackground/ParallaxLayer8"]
position = Vector2( 2547.18, 792.982 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon19" type="Sprite" parent="ParallaxBackground/ParallaxLayer8"]
position = Vector2( 6606.76, 959.999 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon2" type="Sprite" parent="ParallaxBackground/ParallaxLayer8"]
position = Vector2( 884.016, 843.087 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon18" type="Sprite" parent="ParallaxBackground/ParallaxLayer8"]
position = Vector2( 4943.6, 1010.1 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon10" type="Sprite" parent="ParallaxBackground/ParallaxLayer8"]
position = Vector2( 2871.19, 676.069 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon17" type="Sprite" parent="ParallaxBackground/ParallaxLayer8"]
position = Vector2( 6930.78, 843.087 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon3" type="Sprite" parent="ParallaxBackground/ParallaxLayer8"]
position = Vector2( 1375.05, 980.042 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon14" type="Sprite" parent="ParallaxBackground/ParallaxLayer8"]
position = Vector2( 5434.63, 1147.06 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon8" type="Sprite" parent="ParallaxBackground/ParallaxLayer8"]
position = Vector2( 3362.23, 813.024 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon20" type="Sprite" parent="ParallaxBackground/ParallaxLayer8"]
position = Vector2( 7421.81, 980.042 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon4" type="Sprite" parent="ParallaxBackground/ParallaxLayer8"]
position = Vector2( 1810.97, 709.473 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon13" type="Sprite" parent="ParallaxBackground/ParallaxLayer8"]
position = Vector2( 5870.55, 876.49 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon7" type="Sprite" parent="ParallaxBackground/ParallaxLayer8"]
position = Vector2( 3798.14, 542.454 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon16" type="Sprite" parent="ParallaxBackground/ParallaxLayer8"]
position = Vector2( 7857.73, 709.472 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon5" type="Sprite" parent="ParallaxBackground/ParallaxLayer8"]
position = Vector2( 2390.52, 949.979 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon11" type="Sprite" parent="ParallaxBackground/ParallaxLayer8"]
position = Vector2( 6450.1, 1117 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon6" type="Sprite" parent="ParallaxBackground/ParallaxLayer8"]
position = Vector2( 4377.7, 782.961 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon12" type="Sprite" parent="ParallaxBackground/ParallaxLayer8"]
position = Vector2( 8437.28, 949.978 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="ParallaxLayer4" type="ParallaxLayer" parent="ParallaxBackground"]
editor/display_folded = true
position = Vector2( 8191.12, -102.368 )
scale = Vector2( 0.8, 0.8 )
z_index = -1
motion_scale = Vector2( 0.5, 0.5 )

[node name="icon" type="Sprite" parent="ParallaxBackground/ParallaxLayer4"]
position = Vector2( 560, 960 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon15" type="Sprite" parent="ParallaxBackground/ParallaxLayer4"]
position = Vector2( 4619.58, 1127.02 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon9" type="Sprite" parent="ParallaxBackground/ParallaxLayer4"]
position = Vector2( 2547.18, 792.982 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon19" type="Sprite" parent="ParallaxBackground/ParallaxLayer4"]
position = Vector2( 6606.76, 959.999 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon2" type="Sprite" parent="ParallaxBackground/ParallaxLayer4"]
position = Vector2( 884.016, 843.087 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon18" type="Sprite" parent="ParallaxBackground/ParallaxLayer4"]
position = Vector2( 4943.6, 1010.1 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon10" type="Sprite" parent="ParallaxBackground/ParallaxLayer4"]
position = Vector2( 2871.19, 676.069 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon17" type="Sprite" parent="ParallaxBackground/ParallaxLayer4"]
position = Vector2( 6930.78, 843.087 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon3" type="Sprite" parent="ParallaxBackground/ParallaxLayer4"]
position = Vector2( 1375.05, 980.042 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon14" type="Sprite" parent="ParallaxBackground/ParallaxLayer4"]
position = Vector2( 5434.63, 1147.06 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon8" type="Sprite" parent="ParallaxBackground/ParallaxLayer4"]
position = Vector2( 3362.23, 813.024 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon20" type="Sprite" parent="ParallaxBackground/ParallaxLayer4"]
position = Vector2( 7421.81, 980.042 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon4" type="Sprite" parent="ParallaxBackground/ParallaxLayer4"]
position = Vector2( 1810.97, 709.473 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon13" type="Sprite" parent="ParallaxBackground/ParallaxLayer4"]
position = Vector2( 5870.55, 876.49 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon7" type="Sprite" parent="ParallaxBackground/ParallaxLayer4"]
position = Vector2( 3798.14, 542.454 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon16" type="Sprite" parent="ParallaxBackground/ParallaxLayer4"]
position = Vector2( 7857.73, 709.472 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon5" type="Sprite" parent="ParallaxBackground/ParallaxLayer4"]
position = Vector2( 2390.52, 949.979 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon11" type="Sprite" parent="ParallaxBackground/ParallaxLayer4"]
position = Vector2( 6450.1, 1117 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon6" type="Sprite" parent="ParallaxBackground/ParallaxLayer4"]
position = Vector2( 4377.7, 782.961 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon12" type="Sprite" parent="ParallaxBackground/ParallaxLayer4"]
position = Vector2( 8437.28, 949.978 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="ParallaxLayer6" type="ParallaxLayer" parent="ParallaxBackground"]
editor/display_folded = true
position = Vector2( 29859.5, -72.7294 )
scale = Vector2( 0.8, 0.8 )
z_index = -1
motion_scale = Vector2( 0.5, 0.5 )

[node name="icon" type="Sprite" parent="ParallaxBackground/ParallaxLayer6"]
position = Vector2( 560, 960 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon15" type="Sprite" parent="ParallaxBackground/ParallaxLayer6"]
position = Vector2( 4619.58, 1127.02 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon9" type="Sprite" parent="ParallaxBackground/ParallaxLayer6"]
position = Vector2( 2547.18, 792.982 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon19" type="Sprite" parent="ParallaxBackground/ParallaxLayer6"]
position = Vector2( 6606.76, 959.999 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon2" type="Sprite" parent="ParallaxBackground/ParallaxLayer6"]
position = Vector2( 884.016, 843.087 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon18" type="Sprite" parent="ParallaxBackground/ParallaxLayer6"]
position = Vector2( 4943.6, 1010.1 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon10" type="Sprite" parent="ParallaxBackground/ParallaxLayer6"]
position = Vector2( 2871.19, 676.069 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon17" type="Sprite" parent="ParallaxBackground/ParallaxLayer6"]
position = Vector2( 6930.78, 843.087 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon3" type="Sprite" parent="ParallaxBackground/ParallaxLayer6"]
position = Vector2( 1375.05, 980.042 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon14" type="Sprite" parent="ParallaxBackground/ParallaxLayer6"]
position = Vector2( 5434.63, 1147.06 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon8" type="Sprite" parent="ParallaxBackground/ParallaxLayer6"]
position = Vector2( 3362.23, 813.024 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon20" type="Sprite" parent="ParallaxBackground/ParallaxLayer6"]
position = Vector2( 7421.81, 980.042 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon4" type="Sprite" parent="ParallaxBackground/ParallaxLayer6"]
position = Vector2( 1810.97, 709.473 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon13" type="Sprite" parent="ParallaxBackground/ParallaxLayer6"]
position = Vector2( 5870.55, 876.49 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon7" type="Sprite" parent="ParallaxBackground/ParallaxLayer6"]
position = Vector2( 3798.14, 542.454 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon16" type="Sprite" parent="ParallaxBackground/ParallaxLayer6"]
position = Vector2( 7857.73, 709.472 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon5" type="Sprite" parent="ParallaxBackground/ParallaxLayer6"]
position = Vector2( 2390.52, 949.979 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon11" type="Sprite" parent="ParallaxBackground/ParallaxLayer6"]
position = Vector2( 6450.1, 1117 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon6" type="Sprite" parent="ParallaxBackground/ParallaxLayer6"]
position = Vector2( 4377.7, 782.961 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon12" type="Sprite" parent="ParallaxBackground/ParallaxLayer6"]
position = Vector2( 8437.28, 949.978 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="ParallaxLayer5" type="ParallaxLayer" parent="ParallaxBackground"]
editor/display_folded = true
position = Vector2( 14788, -152.649 )
scale = Vector2( 0.8, 0.8 )
z_index = -1
motion_scale = Vector2( 0.5, 0.5 )

[node name="icon" type="Sprite" parent="ParallaxBackground/ParallaxLayer5"]
position = Vector2( 560, 960 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon15" type="Sprite" parent="ParallaxBackground/ParallaxLayer5"]
position = Vector2( 4619.58, 1127.02 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon9" type="Sprite" parent="ParallaxBackground/ParallaxLayer5"]
position = Vector2( 2547.18, 792.982 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon19" type="Sprite" parent="ParallaxBackground/ParallaxLayer5"]
position = Vector2( 6606.76, 959.999 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon2" type="Sprite" parent="ParallaxBackground/ParallaxLayer5"]
position = Vector2( 884.016, 843.087 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon18" type="Sprite" parent="ParallaxBackground/ParallaxLayer5"]
position = Vector2( 4943.6, 1010.1 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon10" type="Sprite" parent="ParallaxBackground/ParallaxLayer5"]
position = Vector2( 2871.19, 676.069 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon17" type="Sprite" parent="ParallaxBackground/ParallaxLayer5"]
position = Vector2( 6930.78, 843.087 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon3" type="Sprite" parent="ParallaxBackground/ParallaxLayer5"]
position = Vector2( 1375.05, 980.042 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon14" type="Sprite" parent="ParallaxBackground/ParallaxLayer5"]
position = Vector2( 5434.63, 1147.06 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon8" type="Sprite" parent="ParallaxBackground/ParallaxLayer5"]
position = Vector2( 3362.23, 813.024 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon20" type="Sprite" parent="ParallaxBackground/ParallaxLayer5"]
position = Vector2( 7421.81, 980.042 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon4" type="Sprite" parent="ParallaxBackground/ParallaxLayer5"]
position = Vector2( 1810.97, 709.473 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon13" type="Sprite" parent="ParallaxBackground/ParallaxLayer5"]
position = Vector2( 5870.55, 876.49 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon7" type="Sprite" parent="ParallaxBackground/ParallaxLayer5"]
position = Vector2( 3798.14, 542.454 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon16" type="Sprite" parent="ParallaxBackground/ParallaxLayer5"]
position = Vector2( 7857.73, 709.472 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon5" type="Sprite" parent="ParallaxBackground/ParallaxLayer5"]
position = Vector2( 2390.52, 949.979 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon11" type="Sprite" parent="ParallaxBackground/ParallaxLayer5"]
position = Vector2( 6450.1, 1117 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon6" type="Sprite" parent="ParallaxBackground/ParallaxLayer5"]
position = Vector2( 4377.7, 782.961 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon12" type="Sprite" parent="ParallaxBackground/ParallaxLayer5"]
position = Vector2( 8437.28, 949.978 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="ParallaxLayer7" type="ParallaxLayer" parent="ParallaxBackground"]
editor/display_folded = true
position = Vector2( 36456.4, -123.011 )
scale = Vector2( 0.8, 0.8 )
z_index = -1
motion_scale = Vector2( 0.5, 0.5 )

[node name="icon" type="Sprite" parent="ParallaxBackground/ParallaxLayer7"]
position = Vector2( 560, 960 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon15" type="Sprite" parent="ParallaxBackground/ParallaxLayer7"]
position = Vector2( 4619.58, 1127.02 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon9" type="Sprite" parent="ParallaxBackground/ParallaxLayer7"]
position = Vector2( 2547.18, 792.982 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon19" type="Sprite" parent="ParallaxBackground/ParallaxLayer7"]
position = Vector2( 6606.76, 959.999 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon2" type="Sprite" parent="ParallaxBackground/ParallaxLayer7"]
position = Vector2( 884.016, 843.087 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon18" type="Sprite" parent="ParallaxBackground/ParallaxLayer7"]
position = Vector2( 4943.6, 1010.1 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon10" type="Sprite" parent="ParallaxBackground/ParallaxLayer7"]
position = Vector2( 2871.19, 676.069 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon17" type="Sprite" parent="ParallaxBackground/ParallaxLayer7"]
position = Vector2( 6930.78, 843.087 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon3" type="Sprite" parent="ParallaxBackground/ParallaxLayer7"]
position = Vector2( 1375.05, 980.042 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon14" type="Sprite" parent="ParallaxBackground/ParallaxLayer7"]
position = Vector2( 5434.63, 1147.06 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon8" type="Sprite" parent="ParallaxBackground/ParallaxLayer7"]
position = Vector2( 3362.23, 813.024 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon20" type="Sprite" parent="ParallaxBackground/ParallaxLayer7"]
position = Vector2( 7421.81, 980.042 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon4" type="Sprite" parent="ParallaxBackground/ParallaxLayer7"]
position = Vector2( 1810.97, 709.473 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon13" type="Sprite" parent="ParallaxBackground/ParallaxLayer7"]
position = Vector2( 5870.55, 876.49 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon7" type="Sprite" parent="ParallaxBackground/ParallaxLayer7"]
position = Vector2( 3798.14, 542.454 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon16" type="Sprite" parent="ParallaxBackground/ParallaxLayer7"]
position = Vector2( 7857.73, 709.472 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon5" type="Sprite" parent="ParallaxBackground/ParallaxLayer7"]
position = Vector2( 2390.52, 949.979 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon11" type="Sprite" parent="ParallaxBackground/ParallaxLayer7"]
position = Vector2( 6450.1, 1117 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon6" type="Sprite" parent="ParallaxBackground/ParallaxLayer7"]
position = Vector2( 4377.7, 782.961 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon12" type="Sprite" parent="ParallaxBackground/ParallaxLayer7"]
position = Vector2( 8437.28, 949.978 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="ParallaxLayer3" type="ParallaxLayer" parent="ParallaxBackground"]
editor/display_folded = true
position = Vector2( 51.1785, -314.679 )
scale = Vector2( 0.5, 0.5 )
z_index = -2
motion_scale = Vector2( 0.1, 0.1 )
motion_offset = Vector2( 0, -100 )

[node name="icon" type="Sprite" parent="ParallaxBackground/ParallaxLayer3"]
position = Vector2( 560, 960 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon15" type="Sprite" parent="ParallaxBackground/ParallaxLayer3"]
position = Vector2( 4619.58, 1127.02 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon9" type="Sprite" parent="ParallaxBackground/ParallaxLayer3"]
position = Vector2( 2547.18, 792.982 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon19" type="Sprite" parent="ParallaxBackground/ParallaxLayer3"]
position = Vector2( 6606.76, 959.999 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon2" type="Sprite" parent="ParallaxBackground/ParallaxLayer3"]
position = Vector2( 884.016, 843.087 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon18" type="Sprite" parent="ParallaxBackground/ParallaxLayer3"]
position = Vector2( 4943.6, 1010.1 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon10" type="Sprite" parent="ParallaxBackground/ParallaxLayer3"]
position = Vector2( 2871.19, 676.069 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon17" type="Sprite" parent="ParallaxBackground/ParallaxLayer3"]
position = Vector2( 6930.78, 843.087 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon3" type="Sprite" parent="ParallaxBackground/ParallaxLayer3"]
position = Vector2( 1375.05, 980.042 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon14" type="Sprite" parent="ParallaxBackground/ParallaxLayer3"]
position = Vector2( 5434.63, 1147.06 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon8" type="Sprite" parent="ParallaxBackground/ParallaxLayer3"]
position = Vector2( 3362.23, 813.024 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon20" type="Sprite" parent="ParallaxBackground/ParallaxLayer3"]
position = Vector2( 7421.81, 980.042 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon4" type="Sprite" parent="ParallaxBackground/ParallaxLayer3"]
position = Vector2( 1810.97, 709.473 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon13" type="Sprite" parent="ParallaxBackground/ParallaxLayer3"]
position = Vector2( 5870.55, 876.49 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon7" type="Sprite" parent="ParallaxBackground/ParallaxLayer3"]
position = Vector2( 3798.14, 542.454 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon16" type="Sprite" parent="ParallaxBackground/ParallaxLayer3"]
position = Vector2( 7857.73, 709.472 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon5" type="Sprite" parent="ParallaxBackground/ParallaxLayer3"]
position = Vector2( 2390.52, 949.979 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon11" type="Sprite" parent="ParallaxBackground/ParallaxLayer3"]
position = Vector2( 6450.1, 1117 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon6" type="Sprite" parent="ParallaxBackground/ParallaxLayer3"]
position = Vector2( 4377.7, 782.961 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )

[node name="icon12" type="Sprite" parent="ParallaxBackground/ParallaxLayer3"]
position = Vector2( 8437.28, 949.978 )
texture = ExtResource( 1 )
offset = Vector2( -60.1945, -5.75037 )
              [remap]

path="res://Player.gdc"
               [remap]

path="res://World.gdc"
�PNG

   IHDR   �   �   �>a�  5IDATx��yt׽ǿ3�eɒ�ɻ��`�m�@��@!B^��I�薭�$�{�^�Ҕ�����6I{�$�IC�&iؓ4a	�V��ƀm��E����G3���lY�e[�-��9��xfW�7w��Ev1D��49}�`7���HX%�8�#b� B����sH�A�}Ԣ�jۯN���"O�xenfb��]\.g+b�=]0�4��@��U��v�īc
@vٝbIb�s �$ Q$J#�X �%�@�����̾� �9����)�TD��1&�J������:��y\� �4��e�!�# J�$\� �A� �q�"1"˲`����N�u0����1��M��܅���r*Ve�)� ���'H|�\�0u�fh�
�b�px_�5iU��*�w����^�J$MT�� 
�spy��
�\^dK#l�.xX��ó7��D���Ľ��V ^b
2�JE [�S�b��X7?� ��������҅�x�N�:氘@�x�� ��=?�' _$��B�;|�\���,���� '.}6┿�s��×	��H�����\� 4eXv��kvH��)KT
��m��"I��o%|�go.r�%*��4%u5 �U���F�� \��q?%����&�=���[���w�2,�!��\���Q��
�m��pJH���ǣ��q1�mY6��⑈ '�H1&m�B��L�ߪ�h�x�T$�<T����yEXXRI�_g��|��ڠ����mC�\
���b]#��4����(��7�ūd�O�)R�Ju�c��YX<��g��7Z��=����ѫLR�x���HN���F�i\�֌�8WsMm�A�a�1i�<��� $'�p��
l�cr3Fi�}��Ux�o���w>�����J�ڥ���ӕPk�=g���0�(o�
�W�I�����PժAU�4�����������nv�����,���� ,��w\���s0#ɷe������z�u�jZ��h�����e��7��0w�53����T�jP٪��Dy\?Ө��� ;ވ�v���3w<��5`:ӨFM�Ӏ��U�jFB�	(�M�♉��+�$�ra	V.,Amc+~��}����M��%�p?�E��点x�E�2�u�e���Z��e+�|ڀS��pSm��>�
�Ym�������\k�@{�z�g.+/���k  �����`�=�X�n��8ӤƁ�.t�!�s�*�T(�D9�^^���6t�iB�%��i �=��u�!8�/�ǯ����th|�7��Kk�ǵ��0? �ض�8S}�M)�	A �oY���]Z˸ϰ����k*d%����,�*V��!!�u�r\���Wy���^��=3���o]�6�����=�
��
rұ��x̴KˊQ�� �P�~�5�guh�x��<��%׹Ynu�F�����n�N���N��l�G��x`��!��yt$)��K��;���~������n��������^�h$��b�	y�wV�*;��,<���\���ό���8��2���{Y�Vj��SOT�67���0R8Z��w�c��0�p�e�آ[ ������B�R��b����LAk�0h�� �xr1r1q޿��ͽ��u�F�Z ���� ��v�,�����/���^�h$�?ꁑe�$��1Tq/�{����~ݠ��ĸ�# �eu�C4���XI�L[E���Ey�1 �Cb󚥸s�<�u��te=����W�s��[�:N�L�������Z�it~�.-���s���������3`�Q>~a#b�@������1�+��q���	�{��P�H�B<��FlZ}�����*����	�T��fcU񈪚p��Y����f߃��l<��T���8_�؊�?�'�)q(xk#�"���0�̟5�ZzJ"6�Z��L%Z:a0������ϻ���%���7X�x�h#��m�\�ŗ7�ѫ��$K��e�����R�h�W�e"~�ݯ���#=%aԽ��r�d(q�\MX���� <��zܿz����ϛѩ� _)I yYiؼf)����6�X0{~�](d#,��xv_�vG�@�7�&�W!U.Dv��7�Ɖpϊ�h��C�j �7�������3G.w�&5�s�1#S	��u�!��[ ��	���E���#�f�*;�� �t��~��(�|Fo��D�Ko����'8�4��v�p{a2���qC�,�B5�Cj��#��}x�t뜽������e��z�?�RY"�	�(��O�!��s����I#�%�`�q�Q��-�L�s͗%b������\���s ��q�F?*r/� H�#a�z���z����=�n�!/E��1 `YY1._��u���d�%��g�X�l��>#~��v#���^��Lan�<�S`�ڴ��5�7D��i0Z�8qM�|�irg�m4�r�^:ք~��:� �5`�D$��A�$V,���.�a��Z|�� �������rg�hÏޯ��elu*��׀���H�
p�]����:l��My��v���>H\�Z���u���a<E7�`q�e +�R �s!��P:k�����0���ܹx �b��?k������t��Z5cZ��J�,p�U�Ӎj�fl�0Sj;�X='�@�""!�j~�� ������֯t�v�M*�89b����jvo�g%���|ߐ@$��'�����k���ꮐ�7���p���s��'��� �%����됖윫�-v���a��Y��`������UZrٺ.�{- �)�z�
��_N�p,F��[����������C�A�ʅ%��~U�ǯ��.D��8~U��V�Z �$�r��	r�M�/�����ю�o���� |~����%i(͖]��Q�-�ڒ4���K�A�+h��ނ���p~jM!nƘ������G������7��_H��߼�&�O�\�o.��v1��Ks]K���y����� ���̓��M�(�P!Fx(ɔ���L��7b D�ÐW������%I� ��ň�"���x?Z_rh��|m��M5��(������ �$�����ߌ(F@ �Y;IC���A#~��;a�wX@��c�+o���,�K�Ʋ�	r��eX��Դ�,�_��6����K��,���kx��S��﬜	7��Χ.���s���)��Ӳ��j���G��]� ���� ��?�@Enn�KB�B1�ŠGg����Ԣ�il2p9$�H����H�� �s`�tk-8�܏�VGpZ�$��8_$e�+o΢�W �4�ap�Z;�Ӄ��myI���<d(F�V7/˹��[���f|�0�v�+
���yP�FGX/͒cݼ4ti-x�T3�i��h���������� �}4A(��.7�E!���g�Ms}6�;J�?�w�3J���G���O7�����d(Dxn�\l_>3��1��A���g�<���So[����sF�gY����X,���HI�*�T�	�v�O��o��M�ݾ�>�t:�D"dff�j����a�3x�\[@�
U�?Q�>;-/��"�i��>�}�͈%lNN6z�!�Z�
 �eQ6��4���)b���-ǖEٮ��ǎc�޽hkkw�KHH�l�W�|\�������n��ZOt�:D�0}����X�V����W_�h| hkk���/`Ϟ]羽"��,`��l���� ]�ݟ�gϋؽ��� �F�W_}?��a��������BT�2^�yY���=�{uuu��;|�0��� (PJ���AkI��n_�'V��Uxu�"���O����� ��~>tx����u�
8����ؖ'*�"��'���;v̯�o��&(���b��N��b�G!��o���~EQx�7��s��1���x�g��T����9sƵ�8�5�k����[�k�1Ѭc��g����`����eY����}���=*@����t~��Ǚ^�=���S��gtZF���u�*�B �^A�y���=��ݰ��ȇd~/��ռ��]�"*���q\XPP��B�~�-j�)Cg������B�:y�y��
�n�z�I�X���!/?vƁK����}�թ����CQ��9�+V���[��ۃ��&�D� P��:]�R��?����>�zz' �Ún�l�]'���F�������wB��*��O<�T�:>X�	��EVT  �w����p1w߽;v� ��ۺH&���v����F[�˫����6�m(**��vC&������a�����`W�z�1i8���(���8p��Z�+��M�a��E8t�jk�`0����ŋa���H$�Pv�2�+z��ر���f�|���㭽o���8�4�R)��+���6"-m�|�8TG�$�T�5  ��&<��*<�i.���b����G�Gg���W�������W���x4�x��*<w�\��%���6l{pۘ�;4f�:p���;D��  �Ԛ���.���l����h��^�Gj�q��+�o��Aܖ�4�\�����ț��,���#U6z1�Kk����8R���>�٨  ��:q��
��H�@k�Щ1�k�7<ф$����ߤ2��'��օ������b���LC!�Cc��Cc�p˙�&*��.�%�?��`Ó{+]˿�G�s��z�$��vNQ3�15�`�Ҳx<b�����ܕ���\���f�Ok���?r^c�`�3dڭ���AB�����_�q~��,�$��e	���D{f�v
��)�z�WvN�
_$��py&��"g�J��=�t0�v]��B��"�m�'C.�G���hS��W�
�,�t���C��7������8#�?���qx>W��W�\n����:�)�����������K  $W��� ���U�i����}��$K��� Ra�Ż�,3���T���e��O�
x��&5�:t��@�q�?|7�H�ҍ� L�cY��uW|| ��[] h";1��Y἗{�^�����w�Q�5����í�� �,�x�\��wPewܕH�*;P���Pi�ܵY�/��?�xp9#��{����'tL0�-�=��k�v1X=G�R!/`���������?�(LV�% 2!� P��	3Z���G�ar����B�npd�L� ��������6�]������d�OH���7a����7z{0+p�������w7�� 	��h�L����<����e�):(l�����]�����;���<�	���s� �P)���' M>��чߒ8�P���9�eK2e8�X �q�jg\�[_�-�g�A�&����FېpX�?|(�.��e3pǬ�+D����,p���C"�"N�������AD4)q�Y���>N��� T����6� ����Wϛ^��I�;zƋx~}b�% �f&b��Ġ�իnq�߰���8)�#�c���V�.�ىq�/�����Z���1Q!�A���`�� 4&
�&T�k�� ��e�]�����֠�3a��6
~~	�qnyE&�:��]��O���)S�� N��\�G���8�8>�nׄCׄ<��,���'�|\׃�\�b�v�l�v��L6&3���f�fp����"�|x�"lT��"�z��Sؼ�6���0?[��!z)f��zC���~���I{�;e�
,2\eY�~�yD�{�֮>?�|�	 O�U��c|�<v�5���h��7O�D� �����M����fED�u�A�s�,�E�L��7�G�y���Fo���u���
���W��� �J��B 狤������>̍����+rF�*J�G�T�K-D��mZ�%	켫��	��֡x�ȩqrΤl�΅�Fd�%#?��#����8C��-آ�Cv���xxn�\� >>]�f��t �ӕ�HI��h�sZ�*a͜4��-�Α"�,+H��K=��8���nP{OĔ�����KW`�,�[ �  �q��(3��p�τ� 4eәL�;�*�CKg�fH,��O���{("�_`� ū�xR�"<�kc���?{�kP&��2�\���ڡ
r�t���	�ua6֖�y�K����՟��� 6���s:9�  �O}c6ܹ������8�<���]!/Ee�
l,���D��0˲8��y����0�#/�Q! �̞��'�����7h��j�j蛶��(�XY��E�>c��m��?���N�#CT	�0�����m��|���m�jՠ�M����I	�8>�g�Q��@yn�k�wX�������ß���\�C!*`��dl�{9��^�t���jЊ�^{��o�Jo�j�:i���\�x!�2!f$š05���q���&|�E%����虺M.�Z ��r8XXR����cy����՘(��,PZ��[ѣ��v4י�p8X�);���,�db8�� U��$	��N[���4�J��x�����f���ǧg�p��	43��o�B �!I�gfbq�,,,)����ѹ/�������4�\M����\>�� x�ᐘ�����l̚���d�%' -9��8;����j�z�hh�������&J6�o�vBƁ��n4�u��y� ���p	CVj�d��%dpHb�b� 	E��mK;h�8`�Za���8.L���~��j����QkУ�F�Ic*�v0,ˢ�O��ȇ��� x�oɎ1mk$�y&��oX���Ѷ}$�^�D����Ĉ>ڶ�����L5yF�1&ﶥL��p=6���ѹ�#t�ۖCr>$��� \Jb����nm���Gh���	0T�GI���J��?ܯ�-�Ȅ��15���Mݠi�}��Զ_E?k����;l����4F��̃px���~ִK�~�in�9��/���)(Ktll#x(�����^6Ԟ�   8��e�g�b�:�pmq��`4�<ADb�ň ,�y��{<�V�z��m�f�vK�]�*[,W^�"H|�\~t�wc|h�
�b;Z�2kU�Z+��x8�1�>E6�3F@�`$�˂���F�CrCA��X��p��Рmf��F�,n� ^%0��w]?{��FL�F��T��Ģ�,�<� ���?�$Qeҩ7i�;�-lG��R��"Y�^�XʇS��#�DX �1t���Ā��?̸�7O�rFVR�_p��� ��5#�h�y����UK���;~}����R����5�����s "`��	�Tc��R4[�!��u�Q��Ϫm�8���r|Uj�;�    IEND�B`�  ECFG      _global_script_classes�                     class      	   ThePlayer         language      GDScript      path      res://Player.gd       base      KinematicBody2D    _global_script_class_icons$            	   ThePlayer             application/config/name         Moon Patrol GDS    application/run/main_scene         res://World.tscn   application/config/icon         res://icon.png     display/window/size/width      �     display/window/size/height      8     display/window/size/fullscreen            display/window/stretch/mode         viewport   display/window/stretch/aspect         keep   layer_names/2d_physics/layer_1         Player     layer_names/2d_physics/layer_2         Ground     layer_names/2d_physics/layer_3         Obstacle   layer_names/2d_physics/layer_4         Enemy      layer_names/2d_physics/layer_5         EnemyBullet    layer_names/2d_physics/layer_6         PlayerBullet)   rendering/environment/default_environment          res://default_env.tres                GDPC