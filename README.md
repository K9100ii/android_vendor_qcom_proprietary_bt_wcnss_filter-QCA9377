# Minimal wcnss_filter source code for QCA9377

This is minimal source code for a wcnss_filter binary for Android, used for Bluetooth for Qualcomms QCA9377 chipset, specifcally for use on Exynos 7870 (and similar) devices.

It's based off of the wcnss_filter source code that has been available at https://github.com/codewalkerster/android_vendor_qualcomm_proprietary_bt on the one and only s905_6.0.1_master branch for years. Some changes have been applied on top from some newer wcnss_filter source code, although I no longer know exactly which since I brought these sources up a very long time ago.

As it was claimed to be proprietary, it hasn't been included in any device trees and is simply in this seperate repository, like the original sources are.

Compared to an old prebuilt version of a wcnss_filter binary through the strings within it for the QCA9377 from one of Samsung's stock firmwares, these sources are missing some code for debugging and (QCA9377) SoC crash/failure detection, but I've supposed it can just be gone without. I've tried adding it before from some sources, but found it to be too involved, and so gave up.
