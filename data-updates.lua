local choice = settings.startup["comfortable-night-vision-lut"].value

local luts = {
  sunset  = "__core__/graphics/color_luts/lut-sunset.png",
  dawn    = "__core__/graphics/color_luts/lut-dawn.png",
  neutral = "__core__/graphics/color_luts/identity-lut.png",
  vanilla = "__core__/graphics/color_luts/nightvision.png"
}

local selected_lut = luts[choice] or luts.sunset

if data.raw["night-vision-equipment"] and data.raw["night-vision-equipment"]["night-vision-equipment"] then
  data.raw["night-vision-equipment"]["night-vision-equipment"].color_lookup = {{0.5, selected_lut}}
end
