/// @description Insert description here
// You can write your code in this editor

text = ""
height = 270
menu = 3
submenu = 2
dragged = false
showMenu = 0

x += 500

global.animDoll = instance_create_depth(100,100,-5,obj_animPreview)
global.animDoll.host = id
global.animSheet = instance_create_depth(100,100,-5,obj_animationSheet)

ii = instance_create_depth(35,160,-5,obj_animTrack)
ii.host = id