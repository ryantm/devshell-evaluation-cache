{
  outputs = { nixpkgs }:
  let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in
  {
    devShells.default = nixpkgs.legacyPackages.x86_64-linux.mkShell {
      packages = [
        pkgs.hello
      ];
    };
  };
u}
