{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "zsh-autosuggestions" "zsh-syntax-highlighting" ];
      theme = "powerlevel10k/powerlevel10k";
    };

    shellAliases = {
      # Laravel / PHP
      cpsrn = "composer run dev";
      pa = "php artisan";
      serve = "php artisan serve";
      makeprovider = "php artisan make:provider";
      makerequest = "php artisan make:request";
      makecontroller = "php artisan make:controller";
      makemodel = "php artisan make:model";
      mfresh = "php artisan migrate:fresh --seed";
      migrate = "php artisan migrate";
      ngrun = "php artisan nutgram:run";
      makeconversation = "php artisan nutgram:make:conversation";
      ngvare = "php artisan nutgram:make:middleware";

      # Git
      ghp = "git pull";
      changebranch = "git checkout";

      # Docker
      docdown = "docker compose down";
      docup = "docker compose up";

      # Cloud / DevOps
      gcp = "gcloud";
      kcl = "kubectl";
      vpnon = "sudo tailscale up";
      vpndown = "sudo tailscale down";

      # System
      cls = "clear";
      paci = "sudo pacman -S";
      yai = "yay -S";
      full_upd = "sudo pacman -Syyu && yay -Syyu";
      brd = "brotli -d";
    };

    sessionVariables = {
      LANG = "en_US.UTF-8";
      LC_ALL = "en_US.UTF-8";
    };

    initExtraFirst = ''
      # Powerlevel10k Instant Prompt
      if [[ -r "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh" ]]; then
        source "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh"
      fi
    '';

    initExtra = ''
      # Paths
      PATH="$HOME/.npm-packages/bin:$PATH"

      # Load P10K config if it exists
      [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
    '';
  };
}
