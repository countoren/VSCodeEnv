let pkgs = import ((import <nixpkgs> {}).fetchFromGitHub {
                   owner="NixOS";
                   repo="nixpkgs";
                   rev="d6c1901e8a4247c22490a7727e48ee040ce78dc3"; # vscode build fixed for darwin.
                   sha256="11nam0z35nhm6q22xw8s0wy6nkncdb8wksv5y4dqvdmsn0b94dq2";
}) {};
in (import ./. { inherit pkgs; }).vscodeWithConfiguration {}