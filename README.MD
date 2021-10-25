# Map Generator for Godot
### This tool generates maps similar to one in [Slay the Spire](https://store.steampowered.com/app/646570/Slay_the_Spire/)

Video tutorial about this tool: [YouTube](https://youtu.be/dyfU-5Nbn_4)   
Based on https://github.com/yurkth/stsmapgen

## Theory (well, my take on it)
1. Generate points on a grid randomly
2. Connect all the points without intersecting edges
3. Find path between to points on graph using BFS (or A*)
4. Remove points from path to generate different path
5. Repeat steps 3 and 4 a few times

## Usage 
Just copy and paste **MapGenerator.gd** into your project folder.

After that just call it from your scripts with:
```
var generator = load("res://MapGenerator.gd")
var map_data = generator.generate(30, 200, 12)
```

## Example:
You can find example of generating map with this tool in **example** folder.
