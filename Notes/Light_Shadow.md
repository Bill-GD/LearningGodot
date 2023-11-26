# LIGHTS & SHADOWS (Godot 4.1)
Notes for getting the shadow behind the sprite

- Pros & Cons:
  - Pros: Shadows are rendered behind sprite (as it should be)
  - Cons:
    - Currently inapplicable to TileMap
    - Requires __2__ Light Nodes per Entity
    - Shadows are rendered behind sprite in __ALL__ cases, (the node in front should have its shadow cast onto the node behind it). Although this is fine when cast onto TileMap if the tile occluder only covers a portion of the tile

- Masks: Choose 2 layers (maybe name them as well) as _light_ and _shadow_ masks. 
- Light Source: uses 2 PointLight2D Nodes
  - 1st PointLight2D (shadow) node: Set ```item_cull_mask``` of both ```Range``` __AND__ ```Shadow``` tab to the _shadow_ mask
  - 2nd PointLight2D (light) node: Set ```item_cull_mask``` of ```Range``` tab to the _light_ mask and __DISABLE__ shadow
- Entity (player, other parts of light source):
  - Sprite: set ```Light Mask``` in ```Visibility``` tab to the _light_ mask __only__
  - Occluder (if any): set ```Occluder Light Mask``` to the _shadow_ mask
