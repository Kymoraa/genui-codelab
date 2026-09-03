{ pkgs, ... }: {
  channel = "stable-24.11";

  packages = [
    pkgs.firebase-tools
  ];

  idx = {
    extensions = [
      "Dart-Code.flutter"
      "Dart-Code.dart-code"
    ];

    workspace = {
      onCreate = {
        update-flutter = "flutter upgrade --force";
      };
    };

    previews = {
      enable = true;
      previews = {
        web = {
          command = ["flutter" "run" "--machine" "-d" "web-server" "--web-hostname" "0.0.0.0" "--web-port" "$PORT"];
          manager = "flutter";
        };
      };
    };
  };
}
