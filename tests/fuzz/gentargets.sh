#/bin/sh
# generates all fuzz targets for different architectures from the template in fuzz_emu_x86_32.c

sed 's/UC_MODE_32/UC_MODE_64/' fuzz_emu_x86_32.c > fuzz_emu_x86_64.c
sed 's/UC_MODE_32/UC_MODE_16/' fuzz_emu_x86_32.c > fuzz_emu_x86_16.c

sed 's/UC_ARCH_X86/UC_ARCH_ARM64/' fuzz_emu_x86_32.c | sed 's/UC_MODE_32/UC_MODE_ARM/' > fuzz_emu_arm64_arm.c
sed 's/UC_ARCH_X86/UC_ARCH_ARM64/' fuzz_emu_x86_32.c | sed 's/UC_MODE_32/UC_MODE_ARM + UC_MODE_BIG_ENDIAN/' > fuzz_emu_arm64_armbe.c

sed 's/UC_ARCH_X86/UC_ARCH_ARM/' fuzz_emu_x86_32.c | sed 's/UC_MODE_32/UC_MODE_ARM/' > fuzz_emu_arm_arm.c
sed 's/UC_ARCH_X86/UC_ARCH_ARM/' fuzz_emu_x86_32.c | sed 's/UC_MODE_32/UC_MODE_THUMB/' > fuzz_emu_arm_thumb.c
sed 's/UC_ARCH_X86/UC_ARCH_ARM/' fuzz_emu_x86_32.c | sed 's/UC_MODE_32/UC_MODE_ARM + UC_MODE_BIG_ENDIAN/' > fuzz_emu_arm_armbe.c
#sed 's/UC_ARCH_X86/UC_ARCH_ARM/' fuzz_emu_x86_32.c | sed 's/UC_MODE_32/UC_MODE_THUMB + UC_MODE_BIG_ENDIAN/' > fuzz_emu_arm_thumbbe.c
