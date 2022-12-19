let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.4-20221214/packages.dhall
        sha256:e462fb4d932e4bbc522cb563a71d312d6514f97050125d1a3f95cc3a2df3bffb

let overrides = {=}

let additions =
      { custom-prelude =
        { dependencies = [ "debug", "either", "maybe", "prelude", "strings" ]
        , repo = "https://github.com/Unisay/purescript-custom-prelude.git"
        , version = "v1.3.0"
        }
      }

in  upstream // overrides // additions
