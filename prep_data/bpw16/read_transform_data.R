  read_gkz_info <- function(filepath) {
    library(xlsx)
    gkz_content <- read.xlsx(filepath, sheetIndex = 1, header = FALSE, startRow = 5) # it doesn't work with read.xlsx2
    gkz <- gkz_content[,1] # remove "Quelle" ..." row
    gkz <- as.integer(as.character(gkz))
    gkz <- gkz[!is.na(gkz)]
    gkz <- paste0("G", gkz)
    return(gkz)
  }
  
  prep_bpw16 <- function(filepath, gkz) {
    library(xlsx)
    filecontent <- read.xlsx2(filepath, sheetIndex = 1, header = FALSE, stringsAsFactors=FALSE) # it has a header but unfortunately 2 rows
    
    # split into header and content
    keep <- (1:ncol(filecontent))[-seq(8, ncol(filecontent), 2)]
    filecontent <- filecontent[,keep]
    header <- filecontent[1:2,]
    filecontent <- filecontent[-(1:2),]
    
    # process header - difference between files is number of candidates
    #ncand <- (ncol(header)-7+1)/2
    candidate_header <- tolower(header[1, 7:ncol(header)])
    candidate_header <- gsub(" ", "", candidate_header)
    #candidate_header[seq(2, ncol(candidate_header), 2)] <- paste0(candidate_header[1, seq(1, ncol(candidate_header), 2)], "_Perc")
    
    col_names <- c(c("gkz", "gebietsname", "wahlberechtigte", "abgegebene", "ungueltige", "gueltige"), candidate_header)
    colnames(filecontent) <- col_names
    
    filecontent[,"wahlberechtigte"] <- as.numeric(filecontent[,"wahlberechtigte"])
    filecontent[,"abgegebene"] <- as.numeric(filecontent[,"abgegebene"])
    filecontent[,"ungueltige"] <- as.numeric(filecontent[,"ungueltige"])
    for (cand in candidate_header) {
      print(cand)
      filecontent[, cand] <- as.numeric(filecontent[,cand])
    }
    
    filecontent <- filecontent[!(substr(filecontent[,1], start = 5, 6) %in% c("00")) &
                               !(substr(filecontent[,1], start = 3, 6) %in% c("0099")), ]  
  
    return(filecontent)
  }
  
  #file_gkz <- "data_raw/bpw16/gemliste_knz.xls"
  #gkz <- read_gkz_info(file_gkz)
  
  file_bpw_wg1 <- "data_raw/bpw16/Endgueltiges_Gesamtergebnis_BPW16_1WG.xlsx"
  file_bpw_wg2 <- "data_raw/bpw16/Endgueltiges_Gesamtergebnis_BPW16_2WG.xlsx"
  
  bpw_wg1 <- prep_bpw16(file_bpw_wg1, gkz)
  
  print(head(bpw_wg1))
  
  bpw_wg2 <- prep_bpw16(file_bpw_wg2, gkz)
  
  print(head(bpw_wg2))
  
  # check those value (compared to the line "G00000")
  
  sum(as.integer(bpw_wg1[,3])) == 6382507
  sum(as.integer(bpw_wg1[,4])) == 4371825
  
  save(bpw_wg1, file="data/bpw_wg1.rda")
  save(bpw_wg2, file="data/bpw_wg2.rda")
  
