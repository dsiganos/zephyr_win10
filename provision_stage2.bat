echo privision_stage2.bat starting
wget --no-check-certificate -O gcc-arm-none-eabi-8-2018-q4-major-win32.zip https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2018q4/gcc-arm-none-eabi-8-2018-q4-major-win32.zip?revision=ab9cb8f8-6a9d-4a6e-818a-295f5d1ca982?product=GNU%20Arm%20Embedded%20Toolchain,ZIP,,Windows,8-2018-q4-major
7z -O C:\gnu_arm_embedded x gcc-arm-none-eabi-8-2018-q4-major-win32.zip
setx ZEPHYR_TOOLCHAIN_VARIANT gnuarmemb
setx GNUARMEMB_TOOLCHAIN_PATH C:\gnu_arm_embedded
pip2 install west
west init zephyrproject
cd zephyrproject
west update
echo privision_stage2.bat done