extends Node2D

const plane_len = 30
const node_count = plane_len * plane_len / 12
const path_count = 12

const map_scale = 20.0

var events = {}
var event_scene = preload("res://Event.tscn")

func _ready():
	var generator = preload("res://MapGenerator.gd").new()
	var map_data = generator.generate(plane_len, node_count, path_count)
	
	for k in map_data.nodes.keys():
		var point = map_data.nodes[k]
		var event = event_scene.instance()
		event.position = point * map_scale + Vector2(200, 0)
		add_child(event)
		events[k] = event
	
	for path in map_data.paths:
		for i in range(path.size() - 1):
			var index1 = path[i]
			var index2 = path[i + 1]
			
			events[index1].add_child_event(events[index2])
