# Y-SORTING

- Needs: Sprite, Layer(s)

- Normal Nodes:
  - Origin: (0, 0) if the node is standalone, change origin by changing the sprite (and other visual children) offset value
  - Enable Y-Sort of parent/root node (CharacterBody, StaticBody...) -> Y-Sort all children

- TileMaps:
  - Origin: Depending on the tile and layer
  - Layers: 
    - Can have multiple layers to stack tiles
    - Each layer has its own option to Y-Sort all nodes that are in that layer
    - Y-Sorted layers should be on a different ```Z-Index``` than non Y-Sorted layers
    - Select ```TileMap``` (__node__) > ```Inspector``` > ```Layers``` > ```Y-Sort Origin```: all tile of the same layer
    - Select ```TileMap``` (__node__) > ```TileSet``` > ```Paint``` > ```Y-Sort Origin```: individual tile
  - Animated Tiles: TileSet > Select > Animation: Only select the __first__ frame (frames must be in a __row__) in the sprite sheet as a tile, the rest are auto-selected by ```Columns``` property