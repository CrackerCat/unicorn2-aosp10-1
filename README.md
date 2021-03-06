Unicorn2 Engine on Android 10
==============

[![Fuzzing Status](https://oss-fuzz-build-logs.storage.googleapis.com/badges/unicorn.svg)](https://bugs.chromium.org/p/oss-fuzz/issues/list?sort=-opened&can=1&q=proj:unicorn)

<p align="center">
<img width="250" src="Documentation/resource/unicorn-logo.png">
</p>

Unicorn2 is a lightweight, multi-platform, multi-architecture CPU emulator framework, based on [QEMU](http://qemu.org).  
Unicorn2 offers some unparalleled features:  
- Multi-architecture: ARM, ARM64 (ARMv8), X86 (16, 32, 64-bit)
- Clean/simple/lightweight/intuitive architecture-neutral API
- Implemented in pure C language, with bindings for Crystal, Clojure, Perl, Python, Java, Go, and Lua.
- Native support for *nix (with Linux, Android, *BSD & Solaris confirmed)
- High performance via Just-In-Time compilation
- Support for fine-grained instrumentation at various levels
- Thread-safety by design
- Distributed under free software license GPLv2

Further information is available at http://www.unicorn-engine.org  

License
-------

This project is released under the [GPL license](COPYING).


Compilation & Docs
------------------
**This framework no support any windows!!!  only support linux**  
**此框架不支持任何windows只支持linux！！！(已经剔除相关代码)**

See [Documentation/COMPILE.md](Documentation/COMPILE.md) file for how to compile and install Unicorn2.  
More documentation is available in [Documentation/COMPILE.md](Documentation/COMPILE.md).  

Contact
-------

[Contact us](http://www.unicorn-engine.org/contact/) via mailing list, email or twitter for any questions.

Contribute
----------
If you want to contribute, please pick up something from our [Github issues](https://github.com/RickyCong/unicorn2-aosp10/issues).  
We also maintain a list of more challenged problems in [milestones](https://github.com/unicorn-engine/unicorn/milestones) for our regular release.  
[CREDITS.TXT](CREDITS.TXT) records important contributors of our project.  
