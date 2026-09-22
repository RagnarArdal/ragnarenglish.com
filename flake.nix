{
  description = "dev shell";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }@inputs: let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };

  in {
    devShells.${system} = {
      default = pkgs.mkShell {
        packages = [
          pkgs.nodejs
        ];

        shellHook = ''
          export PATH="$PWD/node_modules/.bin:$PATH"
          echo "dev shell ready"
          echo "Node: $(node --version)"
        '';
      };
    };
  };
}
