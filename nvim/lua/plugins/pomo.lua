return {
  "epwalsh/pomo.nvim",
  version = "*",
  lazy = true,
  cmd = { "TimerStart", "TimerRepeat", "TimerSession" },
  dependencies = {
    "rcarriga/nvim-notify",
  },
  opts = {
    -- How often the notifiers are updated
    update_interval = 1000,

    notifiers = {
      {
        name = "Default",
        opts = {
          sticky = true,
          title_icon = "⏱️",
          text_icon = "⏱️",
        },
      },
    },

    -- Optional: Configure timer sessions (pomodoro presets)
    sessions = {
      pomodoro = {
        { name = "Work", duration = "25m" },
        { name = "Short Break", duration = "5m" },
        { name = "Work", duration = "25m" },
        { name = "Short Break", duration = "5m" },
        { name = "Work", duration = "25m" },
        { name = "Long Break", duration = "15m" },
      },
    },
  },
}
