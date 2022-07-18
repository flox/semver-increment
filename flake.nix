{

  inputs.nixpkgs.url = "github:nixos/nixpkgs";
  outputs = { self, nixpkgs }:
    let lib = nixpkgs.lib;
    in
    {

      apps = lib.genAttrs
        [ "aarch64-darwin" "aarch64-linux" "x86_64-darwin" "x86_64-linux" ]
        (system: {

          updateNodePackages = {
            type = "app";
            program = (nixpkgs.legacyPackages.${system}.writeShellScript "updateNodePackages" ''
              
              ${nixpkgs.legacyPackages.${system}.nodePackages.node2nix}/bin/node2nix --nodejs-16 -d
            '').outPath;
          };
        });


      devShells = lib.genAttrs
        [ "aarch64-darwin" "aarch64-linux" "x86_64-darwin" "x86_64-linux" ]
        (system: {

          default = (import ./default.nix {
            inherit system;
            pkgs = nixpkgs.legacyPackages.${system};
          }).shell.overrideAttrs ( old: {
            shellHook = old.shellHook + ''
            rm -rf node_modules
            ln -sf "$NODE_PATH" ./node_modules
            '';
          });

        });
    };
}
