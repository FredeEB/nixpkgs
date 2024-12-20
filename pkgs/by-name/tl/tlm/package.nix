{
  pkgs,
  lib,
  fetchFromGitHub,
  buildGoModule,
  ollamaVariant ? pkgs.ollama,
}:

buildGoModule {
  name = "tlm";
  src = fetchFromGitHub {
    owner = "yusufcanb";
    repo = "tlm";
    rev = "011058488d1b1763a28845c586bcf1140acd319d";
    hash = "sha256-UKvgwn8yvjcREWhmwLIN8Vpbn8Ud/7wu+IluAXTVZRY=";
  };
  buildInputs = [ ollamaVariant ];
  vendorHash = "sha256-hd/xj/PX0p7Ol0zan420QQzXbZLoDZRI1VQmcraeOTc=";
  doCheck = false;

  meta = {
    description = "Local CLI Copilot, powered by CodeLLaMa. 💻🦙 ";
    homepage = "https://github.com/yusufcanb/tlm";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ fredeb ];
  };
}
