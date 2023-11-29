# Learning Godot
Project for learning more about Godot 2D (not 3D yet)

- Assets:
  - [2D Dungeon Pack](https://pixel-poem.itch.io/dungeon-assetpuck)
  - [Pixel Crawler](https://anokolisa.itch.io/dungeon-crawler-pixel-art-asset-pack)

- Planned Features (to test & might not be implemented):
  - ✅ Y-Sorting: Top-down 2D, 0° < camera angle < 90°
    - Enable ```Y Sort Enabled``` in ```CanvasItem``` tab and set ```Y Sort Origin``` correspondingly
  - ▢ Proper Lighting: Shadow behind sprite/tile
    - Normal nodes: use 2 Light nodes for light source (1 for light, 1 for shadow)
    - TileMap: impossible, shadow will always be on top of tile, occluder mask config is limited
  - ▢ Navigation: TileMap & Object (avoid external objects when navigating on tiles)
    - TileMap: use NavigationLayer and NavigationAgent for entities
    - Bodies: __manually__ draw NavigationRegion around objects (4.2 has baking)
    - TIleMap & Bodies: impossible, NavigationRegion and TileMap NavigationLayer don't work together
  - ▢ Better Animation:
    - A bit complicated to get into but can be straightforward if you know the general process
    - Since any frame is a collection of node state/data changes so it can do a lot of things
  - ▢ Object (non-TileMap) interactions: open/close chests
    - Use Area2D around the object
    - Maybe add a bool/state -> handle open/close event?
  - ▢ TileMap interactions: open/close doors

- If this ever becomes a game, I'd probably make black & white sprites (simple & I can't really draw)
