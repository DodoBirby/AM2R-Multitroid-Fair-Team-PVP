draw_set_font(global.fontGUI2)
draw_set_color(c_white)
draw_set_alpha(1)
draw_text((x + xoff), ((y + yoff) + sep), (("Items: " + items) + " %"))
draw_text((x + xoff), ((y + yoff) + (sep * 2)), ("Time: " + timetext))