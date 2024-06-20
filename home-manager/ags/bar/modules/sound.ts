const audio = await Service.import("audio");

const translate_values = {
  101: "overamplified",
  67: "high",
  34: "medium",
  1: "low",
  0: "muted",
}

function getIcon() {
  const icon_value = audio.speaker.is_muted ? 0 : [101, 67, 34, 1, 0].find(
    threshold => threshold <= audio.speaker.volume * 100)

  return `audio-volume-${translate_values[icon_value]}-symbolic`
}

const icon = Widget.Button({
  child: Widget.Icon({
    icon: Utils.watch(getIcon(), audio.speaker, getIcon),
  }),

  // Mutes or unmutes
  on_clicked: () => audio.speaker.is_muted = !audio.speaker.is_muted,
})

// FIX: slider doesn't show, with or without revealer
// It loads since the cursor changes, but it's just not visible?

const slider = Widget.Slider({
  class_name: "volume-slider",
  cursor: "pointer",
  hexpand: true,
  vpack: "center",
  draw_value: false,
  value: audio.speaker.bind('volume'),
  on_change: ({ value }) => audio.speaker.volume = value,
  setup: self => self.hook(audio.speaker, () => {
    self.value = audio.speaker.volume
  }),
})

const slider_box = Widget.Revealer({
  child: slider,

  cursor: "pointer",
  revealChild: false,
  transitionDuration: 250,
  transition: 'slide_left',
})



const eventbox = Widget.EventBox({
  on_hover: () => {
    slider_box.reveal_child = true;
    Utils.timeout(duration, () => open = true);
  },
  on_hover_lost: () => {
    slider_box.reveal_child = false;
    open = false;
  },

  // FIXME: This does not show the right value
  tooltip_text: `Volume: ${Math.floor(audio.speaker.volume * 100)}%`,
  
  child: Widget.Box({
    children: [icon, slider_box],
  }), 
})

export default () => Widget.Box({
  class_name: "volume",
  child: eventbox,
})
