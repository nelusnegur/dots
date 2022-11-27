return {
  -- see https://github.com/rust-lang/rust-analyzer/blob/master/docs/user/generated_config.adoc
  settings = {
    ["rust-analyzer"] = {
      lens = {
        enable = true,
      },
      inlayHints = {
        lifetimeElisionHints = {
          enable = "always",
          useParameterNames = false
        },
        expressionAdjustmentHints = {
          enable = "always" -- available options: always, never, reborrow
        },
        bindingModeHints = {
          enable = false,
        },
        chainingHints = {
          enable = false,
        },
        closingBraceHints = {
          enable = false,
          minLines = 25
        },
        closureReturnTypeHints = {
          enable = "never",
          maxLength = 25
        },
        parameterHints = {
          enable = false
        },
        renderColons = true,
        typeHints = {
          enable = false,
          hideClosureInitialization = false,
          hideNamedConstructor = false
        },
      },
      checkOnSave = {
        command = "clippy",
      },
    },
  },
}
