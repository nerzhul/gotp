{pkgs ? import <nixpkgs> {}}:

pkgs.stdenv.mkDerivation rec {
  pname = "gotp";
  version = "dev";
  src = ./.;

  nativeBuildInputs = [ pkgs.cmake pkgs.pkg-config ];
  buildInputs = [ pkgs.gtkmm4 pkgs.gtk4 pkgs.pcre2 pkgs.fribidi pkgs.libthai 
    pkgs.util-linux pkgs.libselinux pkgs.libsepol pkgs.pcre
    pkgs.libdatrie
    pkgs.xorg.libXdmcp
  ];

  meta = with pkgs.lib; {
    description = "An experimental application to play with TOTP";
    longDescription = ''
      Later ? :p
    '';
    homepage = "https://github.com/nerzhul/gotp/";
    license = licenses.gpl3Plus;
    maintainers = with maintainers; [ nerzhul ];
    platforms = platforms.linux;
  };
}