# gpg_build
A script to compile the latest GnuPG in an Ubuntu/Debian environment.
This also works on a Raspberry Pi with the Raspbian OS.

1. Copy the .sh script to the Desktop
2. Open a console
3. cd ~/Desktop
4. sh gpgxxxx.sh

Test the compile

$ gpg --version
gpg (GnuPG) 2.2.13
libgcrypt 1.8.4
Copyright (C) 2019 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Home: /home/X/.gnupg
Supported algorithms:
Pubkey: RSA, ELG, DSA, ECDH, ECDSA, EDDSA
Cipher: IDEA, 3DES, CAST5, BLOWFISH, AES, AES192, AES256, TWOFISH,
        CAMELLIA128, CAMELLIA192, CAMELLIA256
Hash: SHA1, RIPEMD160, SHA256, SHA384, SHA512, SHA224
Compression: Uncompressed, ZIP, ZLIB, BZIP2

$ gpg -K

/home/X/.gnupg/pubring.kbx
--------------------------
sec   rsa4096 2017-07-07 [SCEA] [expires: 2037-07-05]
      9A76364025EFC1453963F096F875D41B6E0DE51C
uid           [ultimate] geodesic (space alien) <pi@astronutj7ttnacx.onion>

sec   rsa4096 2017-07-17 [SCEA]
      A1756D836AB64EBF80EBAD06A66EA80AC0A1E5CE
uid           [ultimate] coalesce (ssh pw: raspberry) <pi@astronutj7ttnacx.onion>

If you get a message that gpg-agent is not the latest version then:

1. $ sudo mv /usr/bin/gpg-agent /usr/bin/gpg-agentX
2. $ gpgconf --kill all

On a Raspberry Pi (or any 32 bit machine)

1. $ sudo nano /etc/ld.so.conf
2. as first line:
3. include /etc/ld.so.conf.d/libc.conf
4. save (ctrl-X) and then:
5. $ sudo ldconfig
