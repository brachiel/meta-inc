with import <nixpkgs> {};
stdenv.mkDerivation rec {
    name = "env";
    env = buildEnv { name = name; paths = buildInputs; };
    buildInputs = [
        #haskellPackages.purescript
        nodejs-8_x
        #nodePackages_6_x.pulp
        #nodePackages_6_x.bower
        #nodePackages_8_x.bower
    ];

    shellHook = ''
    export PATH=$PATH:./node_modules/.bin
    '';
}
