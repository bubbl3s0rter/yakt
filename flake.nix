{
  description = "Solo dev project — nix develop to enter";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            # ── Core tools (always) ──────────────────────────────────────────
            git
            ripgrep        # rg: fast code search
            jq             # JSON processing
            gnumake        # make

            # ── Python ───────────────────────────────────────────────────────
            # Uncomment for Python projects (use uv, never pip/python directly)
            # python311
            # uv

            # ── Node.js ──────────────────────────────────────────────────────
            # Uncomment for TypeScript/JS projects
            # nodejs_20

            # ── Rust ─────────────────────────────────────────────────────────
            # Uncomment for Rust projects
            # rustc
            # cargo
            # rust-analyzer
          ];

          shellHook = ''
            echo "dev shell ready — 'make help' for tasks"
          '';
        };
      });
}
