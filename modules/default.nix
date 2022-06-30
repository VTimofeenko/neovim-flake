{ config
, lib
, pkgs
, ...
}: {
  imports = [
    ./comments
    ./orgmode
    ./completion
    ./theme
    ./core
    ./basic
    ./statusline
    ./tabline
    ./filetree
    ./visuals
    ./lsp
    ./treesitter
    ./autopairs
    ./snippets
    ./keys
    ./markdown
    ./telescope
    ./git
  ];
}
