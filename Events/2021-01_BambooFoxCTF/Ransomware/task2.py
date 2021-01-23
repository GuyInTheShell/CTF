# uncompyle6 version 3.7.4
# Python bytecode 3.8 (3413)
# Decompiled from: Python 2.7.18 (default, Jan 16 2021, 08:01:04) 
# [GCC Apple LLVM 12.0.0 (clang-1200.0.32.28)]
# Warning: this version of Python has problems handling the Python 3 byte type in constants properly.

# Embedded file name: task.py
# Compiled at: 2021-01-14 15:13:24
# Size of source mod 2**32: 420 bytes
(lambda data, key, iv: if len(data) != 0:
(lambda key, iv, data, AES: open('flag.enc', 'wb').write(AES.new(key, AES.MODE_CBC, iv).encrypt(lambda x: x + '\x00' * (16 - len(x) % 16)(data))))(data[key:key + 16], data[iv:iv + 16], open('flag.png', 'rb').read(), __import__('Crypto.Cipher.AES').Cipher.AES) # Avoid dead code: lambda fn: __import__('os').remove(fn)('task.py'))(__import__('requests').get('https://ctf.bamboofox.tw/rules').text.encode(), 99, 153)