{config, pkgs, ...}

{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "abdullajonov.uz";
        email = "abdullajonovboburjon05@gmail.com";
      };
      init.defaultBranch = "main";
      pull.rebase = false;
      push.autoSetupRemote = true;
    };

    # global ignores
    ignores = [
      ".vscode/"
      ".idea/"
      "*.suo"
      "*.swp"
      "*~"
      ".env"
      ".env.*"
      "!.env.example"
      "node_modules/"
      "vendor/"
      "dist/"
      "build/"
      "*.log"
      ".phpunit.result.cache"
      "*.phar"
      ".direnv/"
      "result"
    ];
  };
}