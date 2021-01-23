# What is secret message?

Value: 120

## Step 1

I thanks everyone for helping me last time but again I lost something and you can help me I know.
This I my friend secret message on the pastebin as I said it is secret I aslo protected it by using
password. And I remember that password is my account number. But I only have my credit card number
and it is also damaged you have to build it to use it. Only I know is that credit card is only
divisble by 53451

CREDIT CARD NUMBER : `543******5251849`

Secret Message : [https://pastebin.com/QRfdzyqD](https://pastebin.com/QRfdzyqD)

Note : just put what you get in cybergrabs{1337_S7r1nG}

Author: l3v1ath4n

### Solution

* try all the possible number and check if they are divisible by 53451
* Account number is in the middle, after the 6 digits IIN, and does not include the last digit
  (Luhn)
  [https://en.wikipedia.org/wiki/Payment_card_number#:~:text=Payment%20card%20numbers%20are%20composed,calculated%20using%20the%20Luhn%20algorithm](https://en.wikipedia.org/wiki/Payment_card_number#:~:text=Payment%20card%20numbers%20are%20composed,calculated%20using%20the%20Luhn%20algorithm)
```python
mask = '543******5251849'
for i in range(1000000):
    a = int(f'543{i:06}5251849')
    if a % 53451 == 0:
        print(str(a)[6:-1])
```

* Try the results one by one in pastebin (I think it's 673525184 that worked)

## Step 2

My one friend created one crypto technique in the memory of Lucid Cucumber 4. He challenge me to get
the message by decoding it as you all know how bad I am bad at crypto and I know you are Born to be
best crypto analyst of the era and you can decode it for me.

He gave me some stuff with cipher text also may it help you :)

It give me one key "igqehmd48pvxrl7k36y95j2sfnbo#wc_ztauT" and something Noncense "fizz2swizz".

CIPHER : "t4tmrvs9_k6vang76jj_rudxovvn6ar_zi4i8o3yqqql6eyannn_"

If you reached here I can bet you will decode it TRY HARDER !!!!!!!!!

### Solution

key = 'igqehmd48pvxrl7k36y95j2sfnbo#wc_ztauT'
nonce = 'fizz2swizz'
cipher = 't4tmrvs9_k6vang76jj_rudxovvn6ar_zi4i8o3yqqql6eyannn_'
