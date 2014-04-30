####Scrapes Zip Plus 4#
require(RCurl)
require(stringr)
x<-R.148.tCondo200 #File with addresses
j<-nrow(R.148.tCondo200) 
#x$zip4test=0000
for (i in 1:j ) {   
        x[i,14] = {                        
                str<-x[i,13]
                #zip4<-getURLContent(x[i,377],
                #                    timeout=1000, ssl.verifypeer = FALSE)
                zip4<-getURL(x[i,13],
                             timeout=4000,
                             async = length(url) > 10)
                
                z<-zip4
                bb<-gsub("^.*zip4","", z) 
                bb<-substring(bb, 3,6)
                bb<-as.numeric(bb)
                
        }
        Sys.sleep(5)
}

x[,14]

#########
sum(is.na(x[,14]))

table(x[,14])

#######End
