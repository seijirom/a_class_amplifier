def rc_ext_settings
  same_circuits 'pmos_amp1', '.TOP'
  align
  same_device_classes 'RES', 'RES'
  tolerance 'RES', 'R', relative: 0.05
  tolerance 'CAP', 'C', relative: 0.05
  same_device_classes 'PMOS', 'YSS_PMOS'
  netlist.flatten_circuit 'PMOS*'
  netlist.combine_devices
  schematic.combine_devices
end
