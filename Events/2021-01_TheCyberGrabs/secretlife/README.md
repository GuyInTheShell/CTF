* give a string
  `eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJmbGFnIjoiY3liZXJncmFic3tOMHRfVDAwXzM0c1l9In0.I4zPop1KDT55QOE_QlEi-jh5TXg8nRjbnbDwq2VG1M8`
* Recognize it's a JWT
* Go to jwt.io
  or
  ```python
  jwt.decode('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJmbGFnIjoiY3liZXJncmFic3tOMHRfVDAwXzM0c1l9In0.I4zPop1KDT55QOE_QlEi-jh5TXg8nRjbnbDwq2VG1M8', options={'verify_signature':False})
  ```

Get `{'flag': 'cybergrabs{N0t_T00_34sY}'}`

--> Does not work
