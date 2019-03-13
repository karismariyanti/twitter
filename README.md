# Kumpulan R-Script Untuk Mengambil Data di Twitter

Proses ini membutuhkan Twiter API App, Bila belum memiliki Twitter App. Silahkan membuat terlebih dulu di [Twitter Developer](https://developer.twitter.com/en/apps). 
Untuk tutorial pembuatan Twitter API App dapat dilihat di [Sini](https://docs.inboundnow.com/guide/create-twitter-application/). 
Seluruh R-Script ini menggunakan library rtweet, dokumentasi lengkap dapat dilihat di [rtweet](https://github.com/mkearney/rtweet).

## Sebelum Memulai

Install library rtweet, untuk menginstall library rtweet:
```
install.package('rtweet')
```
Setting Auth (Diisi Dengan yang ada di Twitter App):
```
token <- create_token(
  app = "Nama Aplikasi",
  consumer_key = "3eQe8zMFZMMR0V*****",
  consumer_secret = "iBAW9bi7ztCQtFi1VPtHVYowJ353mwGg0wZdw******",
  access_token = "984196360864870400-aJUbste0G7qYqbRVM8z*********",
  access_secret = "L4ITUFQ5eNTPg5DGVPz0HjpMSYEdJgL********")
```

## Working With The Code

#### 1. Mengambil Tweet berdasarkan Keyword (Keyword.r)
R-Script ini digunakan untuk mengambil tweet berdasarkan keyword, cukup mengganti Keyword yang akan dicari, jumlah tweet, dan apakah tweet yang diambil mengandung retweet atau tidak. 

#### 2. Mengambil Tweet dari Timeline Akun (Usertimeline.r)
R-Script ini digunakan untuk mencari tweet di timenline suatu Akun, cukup menuliskan dengan nama akun yang akan dicari, dan jumlah tweetnya. 

#### 3. Streaming Tweet
R-Script ini bertujuan mengabil data secara real-time dari twitter. 

#### 4. Mengambil Data Follower/Following Suatu Akun
R-Script ini bertujuan untuk mengambil data follower/Following dari suatu akun. 

#### 5. Mengambil Data Trend
R-Script ini bertujuan untuk mengambil data trend di suatu area. 


## Handling Error



## Learn More
* [Apriandito's Medium](https://medium.com/@apriandito)

