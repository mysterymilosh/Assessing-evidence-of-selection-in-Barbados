#insert the name your plink format map below 
plink_map <- read.csv("PLACEHOLDER.map", header = FALSE, sep = "")
hapmap_map <- data.frame( chromosome = plink_map$V1, position = plink_map$V4, rate = rep(0, length(plink_map$V1)), Map = plink_map$V3)


headers <- c("Chromosome","Position(bp)","Rate(cM/Mb)", "Map(cM)")
write.table(t(headers), 
            file = "PLACEHOLDER.txt",  # Insert output file name here
            sep = "\t",             
            row.names = FALSE,      
            col.names = FALSE,        
            quote = FALSE)
write.table(hapmap_map, 
            file = "PLACEHOLDER.txt",  # Insert output file name here
            sep = "\t",             
            row.names = FALSE,      
            col.names = FALSE,        
            quote = FALSE,
            append = TRUE) 

