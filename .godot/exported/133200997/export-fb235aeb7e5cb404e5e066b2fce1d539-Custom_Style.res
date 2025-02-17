RSRC                 	   Resource            ��������   DialogicStyle                                                   resource_local_to_scene    resource_name    script/source 	   _bundled    script    scene 
   overrides    name 	   inherits    base_scene    base_overrides    layers    metadata/_latest_layer 
      Script 2   res://addons/dialogic/Resources/dialogic_style.gd ��������   Script 8   res://addons/dialogic/Resources/dialogic_style_layer.gd ��������   PackedScene h   res://Assets/addons/dialogic/Modules/DefaultLayoutParts/Layer_FullBackground/full_background_layer.tscn �Rz���[   PackedScene b   res://Assets/addons/dialogic/Modules/DefaultLayoutParts/Layer_VN_Portraits/vn_portrait_layer.tscn �o;<aZ   PackedScene b   res://Assets/addons/dialogic/Modules/DefaultLayoutParts/Layer_Input/full_advance_input_layer.tscn  ����O   PackedScene ?   res://Dialogic/VisualNovelTextbox/custom_vn_textbox_layer.tscn y���{ĆK   PackedScene a   res://Assets/addons/dialogic/Modules/DefaultLayoutParts/Layer_Glossary/glossary_popup_layer.tscn �Q�x�t   PackedScene ;   res://Dialogic/CenteredChoices/custom_vn_choice_layer.tscn (ښT��I   PackedScene ^   res://Assets/addons/dialogic/Modules/DefaultLayoutParts/Layer_TextInput/text_input_layer.tscn p���b�V   PackedScene Y   res://Assets/addons/dialogic/Modules/DefaultLayoutParts/Layer_History/history_layer.tscn z�DhL�U       local://GDScript_t5ij6          local://PackedScene_gyk2y 3	         local://Resource_di7bs �
         local://Resource_rt1f8 �
         local://Resource_u2fu1          local://Resource_u8o2k Z         local://Resource_pr5jx _         local://Resource_s04xu �         local://Resource_cs77u �         local://Resource_p573f �         local://Resource_j6xuc       	   GDScript            @tool
extends DialogicLayoutBase

## The default layout base scene.

@export var canvas_layer: int = 1
@export var follow_viewport: bool = false

@export_subgroup("Global")
@export var global_bg_color: Color = Color(0, 0, 0, 0.9)
@export var global_font_color: Color = Color("white")
@export_file('*.ttf', '*.tres') var global_font: String = ""
@export var global_font_size: int = 18


func _apply_export_overrides() -> void:
	# apply layer
	set(&'layer', canvas_layer)
	set(&'follow_viewport_enabled', follow_viewport)


    PackedScene          	         names "         DefaultLayoutBase    CanvasLayer    script    	   variants                       node_count             nodes     	   ��������       ����                    conn_count              conns               node_paths              editable_instances              version             	   Resource                                      	   Resource                                      	   Resource                                      	   Resource                                  	         box_color_custom        Color(1, 0.615686, 0.752941, 1)    	   box_size       Vector2(1800, 300)       name_label_box_offset       Vector2(0, -20)       name_label_custom_font_size       30.0        name_label_use_global_font_size       false       normal_font    -   "res://Assets/EduAUVICWANTHand-SemiBold.ttf"    
   text_size       32.0       text_use_global_font       false       text_use_global_size       false 	   Resource                                      	   Resource                                           font_custom    -   "res://Assets/EduAUVICWANTHand-SemiBold.ttf"       font_size_custom       30.0       font_size_use_global       false       font_use_global       false 	   Resource                                      	   Resource                         	             	   Resource                          Custom_Style       	            
                                                                                        	            RSRC