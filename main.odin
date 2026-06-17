package main

import "core:fmt"
import rl "vendor:raylib" 

SCREEN_HEIGHT :: 1080
SCREEN_WIDTH :: 1920
// need to add fullscreen abilities so not just a fixed size

color :: rl.WHITE //gona make them mutable 
size :: 5

main :: proc() {

  rl.InitWindow(SCREEN_WIDTH, SCREEN_HEIGHT, "Flash Animate")
  rl.SetTargetFPS(120)

  for !rl.WindowShouldClose(){

    
    mousePos :rl.Vector2= rl.GetMousePosition()

    rl.BeginDrawing()
    rl.ClearBackground(rl.BLACK)
    if rl.IsKeyPressed(.P){
      //when the key is pressed it takes it into "drawing mode" where basically the drawn circles are white and continues by continues i mean that it keeps generating circles via the mouse position contstantly.

      rl.DrawCircleV(mousePos, size, color)
      
    
    }
    rl.EndDrawing()
  
  }
rl.CloseWindow()
  
}

