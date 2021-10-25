# Map Generator for Godot
## This tool generates maps similar to one in [Slay the Spire](https://store.steampowered.com/app/646570/Slay_the_Spire/)

Based on https://github.com/yurkth/stsmapgen

### Usage 
Just copy and paste **MapGenerator.gd** into your project folder.

After that just call it from your scripts with:
```
var generator = load("res://MapGenerator.gd")
var map_data = generator.generate(30, 200, 12)
```

### Example:
You can find example of generating map with this tool in **example** folder.