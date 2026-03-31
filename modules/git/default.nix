{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;

    userName = "abdullajonov.uz";
    userEmail = "abdullajonovboburjon05@gmail.com";

    includes = [
      {
        condition = "gitdir:/srv/http/WORK/";
        contents.user = {
          name = "abdullajonov.uz";
          email = "boburjon.abdullajonov@uzinfocom.uz";
        };
      }
    ];
  };
}
