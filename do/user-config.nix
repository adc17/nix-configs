{
  packageOverrides = pkgs: with pkgs; {
    adcPackages = pkgs.buildEnv {
      name = "adc-packages";
      paths = [
        clojure
        fd
        fzf
        gcc
        git
        htop
      	openjdk
        python2
        python3
        ripgrep
        ruby
        rustup
        stack
        tmux
        tree
        universal-ctags
        unzip
        wget
        leiningen
        (callPackage (import ./packages/neovim.nix) {})
      ];
    };
  };
}
