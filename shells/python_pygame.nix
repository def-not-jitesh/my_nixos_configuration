with import <nixpkgs> {};

mkShell {
  buildInputs = [
    python310
    python310Packages.pygame       
    SDL2                           
    SDL2_image                     
    SDL2_ttf                       
    SDL2_mixer                     
    libpng                        
    libjpeg                        
    freetype                        
  ];

}
