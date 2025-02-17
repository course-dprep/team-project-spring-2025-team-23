# This script will be used to populate the \data directory
# with all necessary raw data files.

# Links:

url_1 <- "https://drive.google.com/uc?export=download&id=1MshPpoxwfBoTabDyqMRpPMOFMhuEnGMY"
mkt_share_no_tech <- read.csv(url_1)

url_2 <- "https://drive.google.com/uc?export=download&id=1OGLOgJOIKeRyX-6QVvW1IRzkNAeAGwzU"
cbsa_urban_rural <- read.csv(url_2)

url_3 <- "https://drive.google.com/uc?export=download&id=1cDJjXLIdZxxq3TR1_wqH2TVjdG19LiUx"
mkt_share_w_tech <- read.csv(url_3)


