use Mix.Config

@version = 0.0.1

pkg = :nerves_system_rpi2_kiosk

config pkg, :nerves_env,
  type:  :system,
  version: @version,
  compiler: :nerves_package,
  #artifact_url: [
  #  
  #],
  platform: Nerves.System.BR,
  platform_config: [
    defconfig: "nerves_defconfig"
  ],
  checksum: [
    "nerves_defconfig",
    "rootfs-additions",
    "linux-4.4.defconfig",
    "fwup.conf",
    "cmdline.txt",
    "config.txt",
    "post-createfs.sh",
    "VERSION"
  ]
