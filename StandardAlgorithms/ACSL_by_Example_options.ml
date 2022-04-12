module Self = Plugin.Register(struct
    let name = "ACSL-by-Example"
    let shortname = "ACSL-by-Example"
    let help = "Lib from ACSL by Example"
  end)

module Enabled = Self.False(struct
    let option_name = "-ACSL-by-Example"
    let help = "when on (off by default), add ACSL by Example lib."
  end)

