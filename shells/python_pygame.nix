with import <nixpkgs> {};

mkShell {
  buildInputs = [
    python310
    python310Packages.pygame       # Pygame itself
    SDL2                           # Core SDL3 library
    SDL2_image                     # SDL3_image for PNG/JPG
    SDL2_ttf                       # SDL3_ttf for fonts
    SDL2_mixer                     # SDL3_mixer for audio
    libpng                          # PNG support
    libjpeg                         # JPEG support
    freetype                        # Font support
  ];

  shellHook = ''
    # Make sure SDL uses X11 (common on NixOS)
    export SDL_VIDEODRIVER=x11
    export DISPLAY=:0

    echo "Pygame shell ready! Test with:"
    echo "python -c 'import pygame; print(pygame.image.get_extended())'"
  '';
}
