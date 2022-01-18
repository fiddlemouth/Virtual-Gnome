extends Node2D

class_name Tool

var activated := false
var unlocked := true

export (NodePath) var gnomePath
onready var gnome = get_node(gnomePath) 

func activate():
	if unlocked:
		activated = true

func deactivate():
	activated = false

func unlock():
	unlocked = true
