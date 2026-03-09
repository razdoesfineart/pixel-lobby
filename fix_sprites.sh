#!/bin/bash
cd assets
for f in sprite_1.png sprite_2.png sprite_3.png sprite_4.png sprite_5.png sprite_6.png sprite_8.png; do
  base64 -d "$f" > "${f}.tmp" && mv "${f}.tmp" "$f"
done
base64 -d sprite_7.webp > sprite_7.webp.tmp && mv sprite_7.webp.tmp sprite_7.webp
