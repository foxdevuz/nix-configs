{ pkgs, ... }:
{
  home.packages = with pkgs; [
    php84
    php84Extensions.curl
    php84Extensions.mbstring
    php84Extensions.xml
    php84Extensions.zip
    php84Extensions.pdo
    php84Extensions.pdo_mysql
    composer
  ];
}