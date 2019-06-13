# [嵌入式](https://github.com/sochub/links)

[![sites](SoC/SoC.png)](http://www.qitas.cn) 

#### 硬件开发工具：[EDA](https://github.com/sochub/EDA)
#### 软件开发工具：[SDK](https://github.com/sochub/SDK)

- [嵌入式](#嵌入式)
  - [软件开发](#软件开发)
  - [基础知识](#common)
  - [MCU 开发](#mcu-programming)
    - [ARM裸驱](#裸驱)
    - [MSP430](#msp430)
    - [MSP432](#msp432)
    - [STM32F](#stm32)
    - [ESP8266](#esp8266)
  - [RTOS](#rtos)
  - [Linux](#linux-programming)
  - [other OS](#os)
  - [Bootloader](#bootloader)
  - [Compiler](#compiler)
  - [Makefile](#makefile)
  - [Peripheral](#peripheral)
    - [MPU](#memory-protection-unit)
    - [USB](#usb)
  - [Embedded GUI](#embedded-gui-development)
  - [Machine Learning & AI on MCU](#machine-learning--ai-on-mcu)
  - [Others](#others)
- [Tech blogs](#tech-blogs)
  - [more links](#more-links)
  - [BOOKs](#books)


## 软件开发

* [嵌入式软件](https://github.com/Embedded-Systems-Guide/embedded-software-skills)
* [底层代码开发](https://github.com/gurugio/lowlevelprogramming-university)
* [编程能力图谱](http://sijinjoseph.com/programmer-competency-matrix/)

## Common

* [Integer size in C on 32-bit and 64-bit system](https://usrmisc.wordpress.com/2012/12/27/integer-sizes-in-c-on-32-bit-and-64-bit-linux/)
* [TeraTerm - TTL command reference](http://ttssh2.osdn.jp/manual/en/macro/command/index.html)
* [TeraTerm Scripts](http://processors.wiki.ti.com/index.php/Teraterm_Scripts)
* [Linker Command File Primer](http://processors.wiki.ti.com/index.php/Linker_Command_File_Primer)
* [The C build process](https://blog.feabhas.com/2012/06/the-c-build-process/)
* [Building Bare-Metal ARM Systems with GNU](https://www.embedded.com/design/mcus-processors-and-socs/4026111/Building-Bare-Metal-ARM-Systems-with-GNU-Part-9)
* [ELF – Executable and Linkable Format](https://2wisebit.wordpress.com/2018/06/08/elf-executable-and-linkable-format/)
* [Toolchains](https://web.eecs.umich.edu/~prabal/teaching/resources/eecs373/toolchain-notes.pdf)
* [What is an application binary interface (ABI)?](https://stackoverflow.com/questions/2171177/what-is-an-application-binary-interface-abi)
* [ARM Cortex M4 Blink Example (Linker Script)](http://robotics.mcmanis.com/src/arm-blink/linker-script.html)
* [A Sample Linker Script](http://hertaville.com/a-sample-linker-script.html)
* [Linking and Loading](http://www.iecc.com/linker/linker01.html)
* [Embedded Software _ Getting started](http://www2.thu.edu.tw/~emtools/DOE_project/NCCU/embedded%20system/ESD_06_GettingStarted.pdf)
* [How to convert from an armlink scatter file to a GNU ld linker script](https://www.mayrhofer.eu.org/node/24)
* [Using the GNU Linker](https://www.math.utah.edu/docs/info/ld_3.html)

## MCU programming

### 裸驱

* [Simplest bare metal program for ARM](https://balau82.wordpress.com/2010/02/14/simplest-bare-metal-program-for-arm/) ([table of content](https://balau82.wordpress.com/arm-emulation/))

### MSP430

* [MSP430-GCC](http://www.simplyembedded.org/tutorials/setting-up-a-virtual-machine/)
* [CS4101: Introduction to Embedded Systems](http://www.cs.nthu.edu.tw/~king/courses/cs4101/2016/cs4101.html) -  The course is designed around labs, using TI MSP430 LaunchPad and Arduino Uno to discuss concepts such as basic I/O, timing and clocking, interupt handling, serial communication, embedded operating systems, synchronization, etc.
* [msp430-template](https://github.com/uctools/msp430-template) - A template for MSP430 firmware.
* [MSP430 reference](https://students.cs.byu.edu/~clement/cs224/references/my_references.php)


### MSP432

* [Real-Time Bluetooth Networks - UTAustinX](https://github.com/monpeco/real_time_bn) - Learn the design fundamentals of a real-time operating system (RTOS) and how to build a Bluetooth network in this hands-on project-based course.

### STM32

* [Tests to program STM32 Nucleo in C with GCC ARM embedded toolchain and libopencm3](https://github.com/balau/nucleo_tests)
* [A demo project of FreeRTOS running on a STM32F4 Discovery board.](https://github.com/wangyeee/STM32F4-FreeRTOS)
* [DFU Bootloader for STM32 chips](https://github.com/devanlai/dapboot)
* [Customizable Bootloader for STM32 microcontrollers.](https://github.com/akospasztor/stm32-bootloader)
* [Lightweight USB device Stack for STM32 microcontrollers](https://github.com/dmitrystu/libusb_stm32)
* [STM32 programming with Embedded GNU Compiler](https://github.com/rowol/stm32_discovery_arm_gcc)
* [A tiny portable 3D graphics lib for micro controllers (Oled display)](https://github.com/avem-labs/ol3d)
* [Getting started with the STM32F4-Discovery board using the EmBitz IDE](https://github.com/RoanFourie/STM32F4-DISCO-EMBITZ-Blinky)
* [libopencm3 and FreeRTOS projects using the STM32F103C8T6 MCU](https://github.com/ve3wwg/stm32f103c8t6)
* [A template for builting STM23F0 ARM projects with GCC](https://github.com/szczys/stm32f0-discovery-basic-template)
* [Open source flash program for STM32 using the ST serial bootloader](https://sourceforge.net/projects/stm32flash/)
* [stm32-hid-bootloader](https://github.com/bootsector/stm32-hid-bootloader) - Driverless USB HID bootloader and flashing tool for STM32F10X devices
* [stm32l1xx-template](https://github.com/uctools/stm32l1xx-template) - A template for building firmware for the STM32L1xx.
* [STM32F103C8 Examples](https://github.com/avislab/STM32F103)
* [stm32f103](https://github.com/trebisky/stm32f103) - Bare metal programming on a generic STM32F103c8 board
* [stm32_samples](https://github.com/dwelch67/stm32_samples)
* [stm32f4de example code](https://github.com/dwelch67/stm32f4d)
* [STM32F7 Series](https://www.st.com/en/microcontrollers/stm32f7-series.html?querycriteria=productId=SS1858)
* [STM32 eLinux](https://elinux.org/STM32)
* [STM32F7 os.mbed](https://os.mbed.com/platforms/ST-Discovery-F746NG/)

### ESP8266

* [An open source bootloader for the ESP8266](https://github.com/raburton/rboot)
* [An esp8266 rom creation tool](https://github.com/raburton/esptool2)
* [Wi-FI ESP8266 learning journey](https://github.com/xuhongv/StudyInEsp8266)
* [Wi-FI ESP32 learning journey](https://github.com/xuhongv/StudyInEsp32)

## Beaglebone

* [BeagleBone Black I2C References](https://datko.net/2013/11/03/bbb_i2c/)
* [Learning BeagleBone Python Programming](https://hub.packtpub.com/learning-beaglebone-python-programming/)
* [Simple implementation of an OS for the BeagleBoard C4 with ARMv7 A8 processor.](https://github.com/Oxydation/MinionOS)
* [Various projects that utilize low level hardware instructions to interface with leds, speaker output and joystick input.](https://github.com/travelln/beaglebone-projects)
* [Windows Embedded Compact BSP for TI's Beaglebone](https://github.com/dvescovi1/WECBeagleBone)
* [BBB-BareMetal](https://github.com/allexoll/BBB-BareMetal)- Works on the beaglebone black (bare metal)
* [Running a Baremetal Beaglebone Black](https://www.twosixlabs.com/running-a-baremetal-beaglebone-black-part-1/) & [Part 2](https://www.twosixlabs.com/running-a-baremetal-beaglebone-black-part-2/)
* [Bare Metal on the BeagleBone (Black and Green)](https://www.cs.sfu.ca/CourseCentral/433/bfraser/other/BareMetalGuide.pdf) & [link1](https://www.cs.sfu.ca/CourseCentral/433/bfraser/other/) + [Link2](https://www.cs.sfu.ca/CourseCentral/433/bfraser/weekly.html)
* [A tutorial on bare-metal [OS] development on the Texas Instruments BeagleBoard.](https://wiki.osdev.org/ARM_Beagleboard)
* [bare metal c project for beaglebone, ti sitara am335x](https://github.com/0xCA5A/kickstart/tree/master/beaglebone/bare_metal_hello_world)
* [Bare Metal Applications on OSD335x using U-Boot](https://octavosystems.com/app_notes/bare-metal-on-osd335x-using-u-boot/#_Toc382081430)
* [bbb-asm-demo](https://github.com/mvduin/bbb-asm-demo) - Extremely tiny baremetal application for BeagleBone Black
* [Beaglebone - Getting started with JTAG and CCS](https://beagleboard.org/static/beaglebone/latest/Docs/ccs-jtag-simple.htm)
* [BeagleBoardJTAG](https://elinux.org/BeagleBoardJTAG)
* [beaglebone_samples](https://github.com/dwelch67/beaglebone_samples)
* [FreeRTOS for BeagleBone Black](https://github.com/henfos/BBBFreeRTOS)

## Linux Programming

* [Linux inside](https://github.com/0xAX/linux-insides) - A little bit about a linux kernel
* [Writing device drivers in Linux](http://freesoftwaremagazine.com/articles/drivers_linux/)
* [YOLINUX Tutorials](http://www.yolinux.com/TUTORIALS/)
* [Linux driver programming](https://sites.google.com/site/embedded247/ddcourse)
* [Free training materials and conference presentations](https://bootlin.com/docs/)
* [eBook: Linux Drivers](https://sysplay.github.io/books/LinuxDrivers/book/index.html) or [Slides: Linux Drivers](https://sysplay.in/index.php?pagefile=linux_drivers)
* [c-periphery](https://github.com/vsergeev/c-periphery) - A C library for peripheral I/O (GPIO, SPI, I2C, MMIO, Serial) in Linux.
* Community: [OpenEmbedded](http://www.openembedded.org/wiki/Main_Page),
* [Linux driver practices ](https://github.com/starnight/DriverPractice)


## RTOS

* [List of open source real-time operating systems](https://www.osrtos.com/)
* [ROS](http://www.ros.org/)
* [FreeRTOS](freertos.org)
* [FreeRTOS - Explaination](http://www.aosabook.org/en/freertos.html)
* [FreeRTOS API Reference Documentation](http://web.ist.utl.pt/~ist11993/FRTOS-API/index.html)
* [How to Write a Small RTOS](https://larrylisky.com/2012/07/14/how-to-create-a-small-rtos/)
* [RTOS From Scrach](https://github.com/RTOS-From-Scratch)
* [mini-arm-os & qemu with a stm32](https://github.com/embedded2015/mini-arm-os) or [here](https://github.com/jserv/mini-arm-os) - Build a minimal multi-tasking OS kernel for ARM Cortex-M series from scratch
* [Writing a simple operating system from scratch](https://www.cs.bham.ac.uk/~exr/lectures/opsys/10_11/lectures/os-dev.pdf)
* [Free real-time operating system (RTOS) designed for deeply embedded applications](https://github.com/stateos/StateOS)
* [MPSoC FreeRTOS Development](http://www.wiki.xilinx.com/MPSoC+FreeRTOS+Development)
* [Atomthreads: Open Source RTOS](https://atomthreads.com/)
* [High performance motor control](https://github.com/madcowswe/ODrive)
* [MINIX3: Open source RTOS](http://www.minix3.org/)
* [30 Days make OS](https://github.com/yourtion/30dayMakeOS) --> [YOS](https://github.com/yourtion/YOS) @[Yannik](https://yannik520.github.io/)
* Community: [OSDEV.org](https://wiki.osdev.org/Main_Page), [reddit/osdev](https://www.reddit.com/r/osdev/)
* [Real-time System Group](https://www.cs.york.ac.uk/rts/)
* [object-oriented C++ RTOS for microcontrollers](https://github.com/DISTORTEC/distortos)
* [RT-Thread is an open source IoT operating system from China.](https://github.com/RT-Thread/rt-thread)
* [How to create an OS from scratch](https://github.com/cfenollosa/os-tutorial)
* [Sample Source: TetrOS is a small feature rich Tetris clone which is written in Assembly.](https://github.com/daniel-e/tetros)
* [Sample Source: RTOS for microcontrollers](https://github.com/jimtremblay/nOS)
* [Sample Source: A Powerful embedded RTOS for ARM Cortex M microcontrollers](https://github.com/StratifyLabs/StratifyOS)
* [Sample Source: An embedded operating system for ARM Cortex-M based microcontrollers](https://github.com/onkwon/yaos)
* [Sample Source: rnk is a RTOS targeting ARM architecture.](https://github.com/raphui/rnk)
* [Sample Source: RTOS-From-Scratch](https://github.com/RTOS-From-Scratch/RTOS-From-Scratch)
* [Sample Source: Embeded OS for PIC32MX270F256B](https://github.com/envzhu/kozos-pic)
* [How I ended up writing a new real-time kernel](https://dmitryfrank.com/articles/how_i_ended_up_writing_my_own_kernel)
* [Sample Source: TNeo - a well-formed and carefully tested preemptive real-time kernel for 16- and 32-bits MCUs](https://github.com/dimonomid/tneo)
* [yaos is an embedded operating system for Internet of Things(IoT) devices, specifically for a single-core processor without MMU virtualization.](https://github.com/onkwon/yaos)
* [RT-Thread for Raspberry Pi 2B ](https://github.com/BernardXiong/raspi2)
* [tock](https://github.com/tock/tock) - A secure embedded operating system for Cortex-M based microcontrollers.
* [AliOS-Things](https://github.com/alibaba/AliOS-Things) - AliOS Things released by Alibaba is an open-source implementation of operating system (OS) for Internet of Things (IoT).
* [CoRTOS](https://forum.43oh.com/topic/13151-cortos-an-open-source-minimalist-rtos/) & [CoRTOS Simple Cooperative RTOS](https://sourceforge.net/projects/cortos-simple/) - An open source minimalist RTOS.
* [µOS++ Reference](http://micro-os-plus.github.io/develop/references/)
* [TNKernel](http://www.tnkernel.com/index.html) - a compact and very fast real-time kernel for the embedded 32/16/8 bits microprocessors.
* [Femto OS](http://www.femtoos.org/news.html) - a very concise portable real time - preemptive operating system (RTOS) for embedded microcontrollers with minimal ram and flash, say 2KB .. 16KB flash and 128 .. 1024 bytes ram.

## OS

* [ucLinux](http://www.uclinux.org/): The Embedded Linux/Microcontroller project is a port of Linux to systems without a Memory Management Unit (MMU).
* [Tizen](https://www.elinux.org/Tizen)
* [Bootstrap yourself to write an OS from scratch. A book for self-learner.](https://github.com/tuhdo/os01)
* [Kernel 101 – Let’s write a Kernel](https://arjunsreedharan.org/post/82710718100/kernel-101-lets-write-a-kernel)
* [The little book about OS development](https://littleosbook.github.io/)
* [TetrOS](https://github.com/daniel-e/tetros) - Tetris that fits into the boot sector.
* [Writing a Simple Operating System from Scratch](https://www.cs.bham.ac.uk/~exr/lectures/opsys/10_11/lectures/os-dev.pdf)
* [JamesM's kernel development tutorials](http://www.jamesmolloy.co.uk/tutorial_html/)
* [Bare Bones](https://wiki.osdev.org/Bare_Bones) - a simple kernel for 32-bit x86 and boot it.
* [Operating System Development Series](http://www.brokenthorn.com/Resources/OSDevIndex.html)
* [7 Steps to Writing a Simple Cooperative Scheduler](https://www.edn.com/electronics-blogs/embedded-basics/4434440/1/7-Steps-to-%20Writing-a-Simple-Cooperative-Scheduler)
* [A simple OS kernel for research, teaching, and fun](https://github.com/dthain/basekernel)
* [Operating Systems C Term 2018](https://github.com/Mcdonoughd/CS3013)

## Compiler

* [ARM Compiler - armasm User Guide](https://static.docs.arm.com/dui0801/i/DUI0801I_armasm_user_guide.pdf)

## Bootloader

* [Writing a boot loader in Assembly and C](https://www.codeproject.com/Articles/664165/Writing-a-boot-loader-in-Assembly-and-C-Part)
* [Writing a Bootloader Part 3](http://3zanders.co.uk/2017/10/18/writing-a-bootloader3/)
* [A bootloader for ARM Cortex-M based microcontrollers](https://github.com/onkwon/yaboot)
* [ARMv7M ELF loader ](https://github.com/martinribelotta/elfloader)
* [Writing a Bootloader Part 1](http://3zanders.co.uk/2017/10/13/writing-a-bootloader/)
* [can-bootloader](https://github.com/cvra/can-bootloader) - The bootloader used to flash our CAN-connected boards
* [Bootloaders 101](https://www.embedded.com/design/prototyping-and-development/4410233/1/Bootloaders-101--making-your-embedded-design-future-proof)
* Understand boot process: [link1](https://www.beningo.com/understanding-the-microcontroller-boot-process/), [link2](https://www.beningo.com/understanding-the-microcontroller-boot-process/), [link3](https://www.eevblog.com/forum/microcontrollers/copy-data-from-rom-to-ram-and-execute/)
* Keywords: *hello world bootloader*, *writing a bootloader from scratch*, *how to write a bootloader in assembly*, ...

## Makefile

* [Managing projects with GNU Make](http://uploads.mitechie.com/books/Managing_Projects_with_GNU_Make_Third_Edition.pdf)
* [GCC and Make](https://www3.ntu.edu.sg/home/ehchua/programming/cpp/gcc_make.html)

## Peripheral

### Memory Protection Unit

* [Building Hardware Components for Memory Protection of Applications on a Tiny Processor](https://carrv.github.io/2017/papers/oh-mpu-carrv2017.pdf)
* [KeyStone Architecture: Memory Protection Unit (MPU)](http://www.ti.com/lit/ug/sprugw5a/sprugw5a.pdf)

### USB

* [tinyusb](https://github.com/hathach/tinyusb) - A silly USB stack for Embedded System.

## Embedded GUI Development

* [Embedded Wizard](https://www.embedded-wizard.de/) - Sophisticated GUI for Your Embedded Platform
* [lvgl](https://littlevgl.com) - Graphics library to create an embedded GUI with easy-to-use graphical elements, beautiful visual effects and low memory footprint. It offers anti-aliasing, opacity, and animations using only one frame buffer.

## Machine Learning & AI on MCU

* [nnom](https://github.com/majianjia/nnom) - A higher-level Neural Network library for microcontrollers.
* [nn4mp](https://github.com/correlllab/nn4mp)
* [Embedded Learning Library (ELL)](https://github.com/Microsoft/ELL) - Microsoft's library to deploy intelligent machine-learned models onto resource constrained platforms and small single-board computers.
* [Qualcomm Neural Processing SDK for AI](https://developer.qualcomm.com/software/qualcomm-neural-processing-sdk) - Libraries to developers run NN models on Snapdragon mobile platforms taking advantage of the CPU, GPU and/or DSP.
* [CMSIS NN](https://arm-software.github.io/CMSIS_5/NN/html/index.html) - A collection of efficient neural network kernels developed to maximize the performance and minimize the memory footprint of neural networks on Cortex-M processor cores.
* [ARM Compute Library](https://developer.arm.com/technologies/compute-library) - Set of optimized functions for image processing, computer vision, and machine learning.
* [uTensor](https://github.com/uTensor/uTensor) - AI inference library based on mbed (an RTOS for ARM chipsets) and TensorFlow.
* [EmbededAI](https://github.com/boralt/EmbeddedAI) - A library that provides elements of AI to C++ applications.
* [kann](https://github.com/attractivechaos/kann) - A lightweight C library for artificial neural networks

## Others

* [A practical approach to Kalman filter and how to implement it](http://blog.tkjelectronics.dk/2012/09/a-practical-approach-to-kalman-filter-and-how-to-implement-it/)
* [Embedded System programming](http://www.5square.in/): Diving into Syllabus for investigation.
* [ELC 2018 Presentations](https://elinux.org/ELC_2018_Presentations)
* [ARM Edition](https://sparkylinux.org/wiki/doku.php/sparky_arm): Sparky ARM Edition is a Sparky version created for a single board mini computer RaspberryPi.
* [The gem5 Simulator](https://developer.arm.com/research/research-enablement/system-modeling) is a well-known sophisticated simulator used for computer system research at both architecture and micro-architecture levels. Main page is [here](http://gem5.org/Main_Page).
* [LineageOS Android Distribution](https://github.com/LineageOS)
* [The NoCAN platform](http://omzlo.com/articles/the-nocan-platform)
* [Realtime OS on Embedded Systems](http://socialledge.com/sjsu/index.php/Realtime_OS_on_Embedded_Systems)
* [These projects were produced in the five weeks of ECE 4760 each year.](https://people.ece.cornell.edu/land/courses/ece4760/FinalProjects/)
* [Advanced fault backtrace library for ARM Cortex-M series MCU](https://github.com/armink/CmBacktrace)
* [mcu-starter-projects](https://github.com/ataradov/mcu-starter-projects) - Simple starter projects for bare-metal MCU development.
* [DirtyJTAG](https://github.com/jeanthom/DirtyJTAG) - JTAG adapter firmware for STM32F1
* [Generic_MCU_Software_Infrastructure](https://github.com/GorgonMeducer/Generic_MCU_Software_Infrastructure) - Provide necessary software infrastructure, service, macros to support some high level abstruct concept or paradigm, such as OOPC, FSM, delegate (event-driven) and etc.
* [apollo](https://github.com/ApolloAuto/apollo) - An open autonomous driving platform.
* * [A Development Environment for ARM TrustZone with GlobalPlatform Support](https://www.eit.lth.se/sprapport.php?uid=793)

# Tech blogs

* [What a C programmer should know about memory](http://marek.vavrusa.com/memory/)
* [What Every Programmer Should Know About Memory](https://people.freebsd.org/~lstewart/articles/cpumemory.pdf)
* [What Every C Programmer Should Know About Undefined Behavior ](http://blog.llvm.org/2011/05/what-every-c-programmer-should-know.html) [part 2](http://blog.llvm.org/2011/05/what-every-c-programmer-should-know_14.html) [part 3](http://blog.llvm.org/2011/05/what-every-c-programmer-should-know_21.html)
* [A Guide to Undefined Behavior in C and C++](https://blog.regehr.org/archives/213)
* [Software Engineering Takeaways](https://blog.regehr.org/archives/1594)

## more links

* [awesome-c](https://github.com/uhub/awesome-c) - A curated list of awesome C frameworks, libraries and software.
* [A curated list of project-based tutorials in C](https://github.com/rby90/Project-Based-Tutorials-in-C)
* [Curated list of project-based tutorials](https://github.com/tuvtran/project-based-learning)
* [Curated list of awesome lists](https://github.com/sindresorhus/awesome)
* [A curated list of awesome Raspberry Pi tools, projects, images and resources](https://github.com/thibmaek/awesome-raspberry-pi)
* [Curated List of Self-Driving Cars and Autonomous Vehicles Resources](https://github.com/takeitallsource/awesome-autonomous-vehicles)
* [awesome-embedded-systems](https://github.com/embedded-boston/awesome-embedded-systems)
* [awesome-cheat-sheets](https://github.com/mintisan/awesome-cheat-sheets) - Awesome Cheat Sheets for Developer Utility, like Git, Vim, Tmux, Sublime Text, Markdown, Shell.
* [awesome-embedded-rust](https://github.com/rust-embedded/awesome-embedded-rust) - Curated list of resources for Embedded and Low-level development in the Rust programming languague.

## BOOKs（PDF）

* [Mastering the Raspberry Pi](http://mensshed-llandudno.co.uk/wp-content/uploads/Mastering%20the%20Raspberry%20Pi.pdf)
* [Modern C](http://icube-icps.unistra.fr/img_auth.php/d/db/ModernC.pdf)

##  [SoC资源平台](https://github.com/sochub)