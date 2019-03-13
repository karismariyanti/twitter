# Streaming R : Mengammbil Data dari Twitter Secara Real-Time

# Panggil library terlebih dulu
library(rtweet)

# Ganti dengan namaakun yang akan dicari, contoh "fahrihamzah"
Keyword <- "Keyword"

#Autentifikasi
token <- create_token(
  app = "Nama Aplikasi",
  consumer_key = "Masukan Twitter Consumer Key",
  consumer_secret = "Masukan Twitter Consumer Secret",
  access_token = "Masukan Twitter Access Token",
  access_secret = "Masukan Twitter Access Secred")

# Streaming
stream_tweets(Keyword, timeout = 60 * 60 * 24 * 7, file_name = "crawling.json",parse = FALSE)

## Menjadikan Dalam Bentuk Data Frame
crawling <- parse_stream("crawling.json")

