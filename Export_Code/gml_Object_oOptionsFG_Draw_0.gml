draw_set_alpha(1)
draw_set_color(c_black)
draw_rectangle((view_xview[0] + 0), (view_yview[0] + 230), (view_xview[0] + 322), (view_yview[0] + 245), false)
draw_set_color(c_white)
draw_set_font(global.fontMenuSmall)
draw_set_halign(fa_center)
draw_text((view_xview[0] + 160), (view_yview[0] + 228), global.tiptext)
draw_set_halign(fa_left)