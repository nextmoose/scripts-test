  {
    inputs =
      {
        flake-utils.url = "github:numtide/flake-utils?rev=5aed5285a952e0b949eb3ba02c12fa4fcfef535f" ;
        nixpkgs.url = "github:nixos/nixpkgs?rev=57eac89459226f3ec743ffa6bbbc1042f5836843" ;
      } ;
    outputs =
      { flake-utils , self , nixpkgs } :
        flake-utils.lib.eachDefaultSystem
          (
            system :
              {
                lib =
                  {
                    foobar = tester : tester ( implementation : implementation "d1b60e0a-dfee-47a7-b4f5-1d8d88f1cd05" ) true ( builtins.readFile ./scripts/foobar.sh ) ) ;
                  } ;
              }
          ) ;
  }
