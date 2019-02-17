model <- c("Xiaomi Mi Mix 3",
           "Samsung Galaxy A9",
           "Xiaomi MI 8 Lite",
           "Honor 8X",
           "Huawei P20",
           "Huawei P20 Lite",
           "Samsung Galaxy A7",
           "Honor 9 Lite",
           "Huawei P20 Pro",
           "Xiaomi Redmi 6")
pamiec_RAM <- c("6GB",
                "6GB",
                "4GB",
                "4GB",
                "4GB",
                "4GB",
                "4GB",
                "3GB",
                "6GB",
                "3GB")
model <- c("Xiaomi Mi Mix 3",
           "Samsung Galaxy A9",
           "Xiaomi MI 8 Lite",
           "Honor 8X",
           "Huawei P20",
           "Huawei P20 Lite",
           "Samsung Galaxy A7",
           "Honor 9 Lite",
           "Huawei P20 Pro",
           "Xiaomi Redmi 6")
pamiec_RAM <- c("6GB",
                "6GB",
                "4GB",
                "4GB",
                "4GB",
                "4GB",
                "4GB",
                "3GB",
                "6GB",
                "3GB")

pamiec_wbudowana <- c("128GB",
                      "128GB",
                      "64GB",
                      "128GB",
                      "64GB",
                      "64GB",
                      "64GB",
                      "32GB",
                      "128GB",
                      "32GB")
aparat_foto <- c(
                 "12 Mpix + 12 Mpix",
                 "24 Mpix + 8 Mpix + 10 Mpix + 5 Mpix",
                 "12 Mpix + 5 Mpix",
                 "20 Mpix + 2 Mpix",
                 "20 Mpix + 12 Mpix",
                 "16 Mpix + 2 Mpix",
                 "24 Mpix + 5 Mpix + 8 Mpix",
                 "13 Mpix + 2 Mpix",
                 "40 Mpix + 20 Mpix + 8 Mpix",
                 "12 Mpix + 5 Mpix")
cena <- c(2699,
          1990,
          1099,
          1299,
          1799,
          1099,
          1399,
          749,
          2699,
          599)
liczba_opinii <- c(0,
                   7,
                   29,
                   396,
                   11,
                   179,
                   18,
                   53,
                   72,
                   25)
smartfony <- data.frame(model, pamiec_RAM, pamiec_wbudowana, aparat_foto, cena, liczba_opinii, stringsAsFactors = FALSE)
smartfony

nowy_smartfon <- data.frame(model = "Motorola Moto G6 Play",
                            pamiec_RAM = "3GB",
                            pamiec_wbudowana = "32GB",
                            aparat_foto = "13 Mpix",
                            cena = 669,
                            liczba_opinii = 304)

smartfony <- rbind(smartfony, nowy_smartfon)
mean(smartfony$cena)

ocena <- c(0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5)
smartfony <- cbind(smartfony, ocena)
smartfony
tapply(smartfony$cena, smartfony$ocena, mean)


setwd("C:\\Users\\noof94\\OneDrive - Akademia Techniczno-Humanistyczna\\R\\Zadanie 1")
write.csv(smartfony, file = "smartfony.csv")
