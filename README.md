# Usage
This is a short utility to extract most significant RGB colors from an image.
Once installed it may be use this way :
``` bash
.\palettize-extract 8 my-image.png palette.bmp
```
It will create a 8x1 pixel image named palette.bmp wich contains the 8 dominant colors of my-image.png
You can also do :
``` bash
.\palettize-extract my-image.png
```
With just an image for argument it will extract 8 colors in a file named palette.bmp

# Installation
With Stack :
``` bash
stack build
stack install // will copy the binary in stack binary path. (Normally somewhere like ~/.local/bin)
```
