{ stdenv, fetchFromGitHub, cmake, python, zlib }:

stdenv.mkDerivation rec {
  name = "seasocks-${version}";
  version = "1.4.2";

  src = fetchFromGitHub {
    owner = "mattgodbolt";
    repo = "seasocks";
    rev = "v${version}";
    sha256 = "1vzdhp61bq2bddz7kkpygdq5adxdspjw1q6a03j6qyyimapblrg8";
  };

  buildInputs = [ cmake zlib python ];

  meta = with stdenv.lib; {
    homepage = https://github.com/mattgodbolt/seasocks;
    description = "Seasocks websocket library for c++";
    license = licenses.bsd2;
    platforms = platforms.unix;
    maintainers = with maintainers; [ fredeb ];
  };
}
