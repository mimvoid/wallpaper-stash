{ stdenvNoCC
, lib
, fetchFromGitHub
}:

stdenvNoCC.mkDerivation {
  pname = "oswald";
  version = "unstable-2024-07-19";

  src = fetchFromGitHub {
    owner = "googlefonts";
    repo = "OswaldFont";
    rev = "89795261ac9eeb9aa8cd99f43982c4e4b0e53261";
    hash = "sha256-yoUduWHuuKDQaJnQ+CgeMw1vp2lgn/OVPokSDzEU7yk=";
  };

  installPhase = ''
    runHook preInstall

    install -Dm444 -t $out/share/fonts/opentype fonts/otf/*.otf
    install -Dm444 fonts/ttf/*.ttf -t $out/share/fonts/truetype
    install -Dm444 fonts/variable/*.ttf -t $out/share/fonts/variable

    runHook postInstall
  '';

  meta = with lib; {
    description = "A reworking of the classic gothic typeface style";
    longDescription = ''
      Oswald is a reworking of the classic gothic typeface style historically represented by designs such as 'Alternate Gothic'. The characters of Oswald have been re-drawn and reformed to better fit the pixel grid of standard digital screens.
    '';
    homepage = "https://github.com/googlefonts/OswaldFont";
    license = licenses.ofl;
    platforms = platforms.all;
    maintainers = with maintainers; [];
  };
}
