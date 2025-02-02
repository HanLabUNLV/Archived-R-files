#REC score genes with new data NEGATIVES of Regular
#read in files
setwd("F:/Bioinformatics Lab/Cancer Data/REC Score Analysis/Regular/BLCA")
BLCA<- read.table("NEG coef of BLCA.txt", header=TRUE, row.names=1)
setwd("F:/Bioinformatics Lab/Cancer Data/REC Score Analysis/Regular/BRCA")
BRCA<- read.table("NEG coef of BRCA.txt", header=TRUE, row.names=1)
setwd("F:/Bioinformatics Lab/Cancer Data/REC Score Analysis/Regular/COAD")
COAD<- read.table("NEG coef of COAD.txt", header=TRUE, row.names=1)
setwd("F:/Bioinformatics Lab/Cancer Data/REC Score Analysis/Regular/HNSC")
HNSC<- read.table("NEG coef of HNSC.txt", header=TRUE, row.names=1)
setwd("F:/Bioinformatics Lab/Cancer Data/REC Score Analysis/Regular/KICH")
KICH<- read.table("NEG coef of KICH.txt", header=TRUE, row.names=1)
setwd("F:/Bioinformatics Lab/Cancer Data/REC Score Analysis/Regular/KIRC")
KIRC<- read.table("NEG coef of KIRC.txt", header=TRUE, row.names=1)
setwd("F:/Bioinformatics Lab/Cancer Data/REC Score Analysis/Regular/KIRP")
KIRP<- read.table("NEG coef of KIRP.txt", header=TRUE, row.names=1)
setwd("F:/Bioinformatics Lab/Cancer Data/REC Score Analysis/Regular/LIHC")
LIHC<- read.table("NEG coef of LIHC.txt", header=TRUE, row.names=1)
setwd("F:/Bioinformatics Lab/Cancer Data/REC Score Analysis/Regular/LUAD")
LUAD<- read.table("NEG coef of LUAD.txt", header=TRUE, row.names=1)
setwd("F:/Bioinformatics Lab/Cancer Data/REC Score Analysis/Regular/LUSC")
LUSC<- read.table("NEG coef of LUSC.txt", header=TRUE, row.names=1)
setwd("F:/Bioinformatics Lab/Cancer Data/REC Score Analysis/Regular/PRAD")
PRAD<- read.table("NEG coef of PRAD.txt", header=TRUE, row.names=1)
setwd("F:/Bioinformatics Lab/Cancer Data/REC Score Analysis/Regular/THCA")
THCA<- read.table("NEG coef of THCA.txt", header=TRUE, row.names=1)
setwd("F:/Bioinformatics Lab/Cancer Data/REC Score Analysis/Regular/UCEC")
UCEC<- read.table("NEG coef of UCEC.txt", header=TRUE, row.names=1)

#create ranks
L=NULL
#BLCA
BLCAorder <- BLCA[order(-BLCA[,c("generatio_pval")]),, drop=FALSE]
tBLCA<- t(BLCAorder)
BLCAp<- tBLCA[-c(1),]
BLCANA<- BLCAp[!is.na(BLCAp)]
BLCANA1<- data.frame(BLCANA)
BLCANA<- data.frame((rank(BLCANA1, na.last = TRUE, ties.method=c("min"))))
rownames(BLCANA)=rownames(BLCANA1)
BLCAr<- nrow(BLCANA)
L<- cbind(BLCAr, L)

#BRCA
BRCAorder <- BRCA[order(-BRCA[,c("generatio_pval")]),, drop=FALSE]
tBRCA<- t(BRCAorder)
BRCAp<- tBRCA[-c(1),]
BRCANA<- BRCAp[!is.na(BRCAp)]
BRCANA1<- data.frame(BRCANA)
BRCANA<- data.frame((rank(BRCANA1, na.last = TRUE, ties.method=c("min"))))
rownames(BRCANA)=rownames(BRCANA1)
BRCAr<- nrow(BRCANA)
L<- cbind(BRCAr, L)

#COAD
COADorder <- COAD[order(-COAD[,c("generatio_pval")]),, drop=FALSE]
tCOAD<- t(COADorder)
COADp<- tCOAD[-c(1),]
COADNA<- COADp[!is.na(COADp)]
COADNA1<- data.frame(COADNA)
COADNA<- data.frame((rank(COADNA1, na.last = TRUE, ties.method=c("min"))))
rownames(COADNA)=rownames(COADNA1)
COADr<- nrow(COADNA)
L<- cbind(COADr, L)

#HNSC
HNSCorder <- HNSC[order(-HNSC[,c("generatio_pval")]),, drop=FALSE]
tHNSC<- t(HNSCorder)
HNSCp<- tHNSC[-c(1),]
HNSCNA<- HNSCp[!is.na(HNSCp)]
HNSCNA1<- data.frame(HNSCNA)
HNSCNA<- data.frame((rank(HNSCNA1, na.last = TRUE, ties.method=c("min"))))
rownames(HNSCNA)=rownames(HNSCNA1)
HNSCr<- nrow(HNSCNA)
L<- cbind(HNSCr, L)

#KICH
KICHorder <- KICH[order(-KICH[,c("generatio_pval")]),, drop=FALSE]
tKICH<- t(KICHorder)
KICHp<- tKICH[-c(1),]
KICHNA<- KICHp[!is.na(KICHp)]
KICHNA1<- data.frame(KICHNA)
KICHNA<- data.frame((rank(KICHNA1, na.last = TRUE, ties.method=c("min"))))
rownames(KICHNA)=rownames(KICHNA1)
KICHr<- nrow(KICHNA)
L<- cbind(KICHr, L)

#KIRC
KIRCorder <- KIRC[order(-KIRC[,c("generatio_pval")]),, drop=FALSE]
tKIRC<- t(KIRCorder)
KIRCp<- tKIRC[-c(1),]
KIRCNA<- KIRCp[!is.na(KIRCp)]
KIRCNA1<- data.frame(KIRCNA)
KIRCNA<- data.frame((rank(KIRCNA1, na.last = TRUE, ties.method=c("min"))))
rownames(KIRCNA)=rownames(KIRCNA1)
KIRCr<- nrow(KIRCNA)
L<- cbind(KIRCr, L)

#KIRP
KIRPorder <- KIRP[order(-KIRP[,c("generatio_pval")]),, drop=FALSE]
tKIRP<- t(KIRPorder)
KIRPp<- tKIRP[-c(1),]
KIRPNA<- KIRPp[!is.na(KIRPp)]
KIRPNA1<- data.frame(KIRPNA)
KIRPNA<- data.frame((rank(KIRPNA1, na.last = TRUE, ties.method=c("min"))))
rownames(KIRPNA)=rownames(KIRPNA1)
KIRPr<- nrow(KIRPNA)
L<- cbind(KIRPr, L)

#LIHC
LIHCorder <- LIHC[order(-LIHC[,c("generatio_pval")]),, drop=FALSE]
tLIHC<- t(LIHCorder)
LIHCp<- tLIHC[-c(1),]
LIHCNA<- LIHCp[!is.na(LIHCp)]
LIHCNA1<- data.frame(LIHCNA)
LIHCNA<- data.frame((rank(LIHCNA1, na.last = TRUE, ties.method=c("min"))))
rownames(LIHCNA)=rownames(LIHCNA1)
LIHCr<- nrow(LIHCNA)
L<- cbind(LIHCr, L)

#LUAD
LUADorder <- LUAD[order(-LUAD[,c("generatio_pval")]),, drop=FALSE]
tLUAD<- t(LUADorder)
LUADp<- tLUAD[-c(1),]
LUADNA<- LUADp[!is.na(LUADp)]
LUADNA1<- data.frame(LUADNA)
LUADNA<- data.frame((rank(LUADNA1, na.last = TRUE, ties.method=c("min"))))
rownames(LUADNA)=rownames(LUADNA1)
LUADr<- nrow(LUADNA)
L<- cbind(LUADr, L)

#LUSC
LUSCorder <- LUSC[order(-LUSC[,c("generatio_pval")]),, drop=FALSE]
tLUSC<- t(LUSCorder)
LUSCp<- tLUSC[-c(1),]
LUSCNA<- LUSCp[!is.na(LUSCp)]
LUSCNA1<- data.frame(LUSCNA)
LUSCNA<- data.frame((rank(LUSCNA1, na.last = TRUE, ties.method=c("min"))))
rownames(LUSCNA)=rownames(LUSCNA1)
LUSCr<- nrow(LUSCNA)
L<- cbind(LUSCr, L)

#PRAD
PRADorder <- PRAD[order(-PRAD[,c("generatio_pval")]),, drop=FALSE]
tPRAD<- t(PRADorder)
PRADp<- tPRAD[-c(1),]
PRADNA<- PRADp[!is.na(PRADp)]
PRADNA1<- data.frame(PRADNA)
PRADNA<- data.frame((rank(PRADNA1, na.last = TRUE, ties.method=c("min"))))
rownames(PRADNA)=rownames(PRADNA1)
PRADr<- nrow(PRADNA)
L<- cbind(PRADr, L)

#THCA
THCAorder <- THCA[order(-THCA[,c("generatio_pval")]),, drop=FALSE]
tTHCA<- t(THCAorder)
THCAp<- tTHCA[-c(1),]
THCANA<- THCAp[!is.na(THCAp)]
THCANA1<- data.frame(THCANA)
THCANA<- data.frame((rank(THCANA1, na.last = TRUE, ties.method=c("min"))))
rownames(THCANA)=rownames(THCANA1)
THCAr<- nrow(THCANA)
L<- cbind(THCAr, L)

#UCEC
UCECorder <- UCEC[order(-UCEC[,c("generatio_pval")]),, drop=FALSE]
tUCEC<- t(UCECorder)
UCECp<- tUCEC[-c(1),]
UCECNA<- UCECp[!is.na(UCECp)]
UCECNA1<- data.frame(UCECNA)
UCECNA<- data.frame((rank(UCECNA1, na.last = TRUE, ties.method=c("min"))))
rownames(UCECNA)=rownames(UCEC1)
UCECr<- nrow(UCECNA)
L<- cbind(UCECr, L)

#Gene cutting
genecut<- function(x)
{
	gene=NULL
	BLCA<- BLCANA[c(x),]
	BRCA<- cbind(BRCANA[c(x),], BLCA)
	COAD<- cbind(COADNA[c(x),], BRCA)
	HNSC<- cbind(HNSCNA[c(x),], COAD)
	KICH<- cbind(KICHNA[c(x),], HNSC)
	KIRC<- cbind(KIRCNA[c(x),], KICH)
	KIRP<- cbind(KIRPNA[c(x),], KIRC)
	LIHC<- cbind(LIHCNA[c(x),], KIRP)
	LUAD<- cbind(LUADNA[c(x),], LIHC)
	LUSC<- cbind(LUSCNA[c(x),], LUAD)
	PRAD<- cbind(PRADNA[c(x),], LUSC)
	THCA<- cbind(THCANA[c(x),], PRAD)
	UCEC<- cbind(UCECNA[c(x),], THCA)
	return(UCEC)
}

	
#rank function
	rrfunction<- function(x)
{
	(x/abs(L))-(1/(2*abs(L)))
}

#inverted rank
invrrfunction<- function(x)
{
	abs(L)-x+1
}

#find Hknot
Hknottest<- function(x)
{
	y<-t(x)
	y<-na.omit(y)
	-2*(sum(log(y)))
}

#HKNOTS
Hknots=NULL
Hknotsinv=NULL
testpos<- function(y)
{
	w <- genecut(y)
	colnames(w)<- c("UCEC", "THCA", "PRAD", "LUSC", "LUAD", "LIHC", "KIRP", "KIRC", "KICH", "HNSC", "COAD", "BRCA", "BLCA")
	#rank miRNA 
	rrw <- rrfunction(w)
	Hknotresult <- Hknottest(rrw)
	return(Hknotresult)
}

testneg<- function(y)
{
	w <- genecut(y)
	colnames(w)<- c("UCEC", "THCA", "PRAD", "LUSC", "LUAD", "LIHC", "KIRP", "KIRC", "KICH", "HNSC", "COAD", "BRCA", "BLCA")
	invrrw<- rrfunction(invrrfunction(w))
	Hknotinvresult<- Hknottest(invrrw)
	return(Hknotinvresult)
}

#create the name files
setwd("F:/Bioinformatics Lab/Cancer Data/REC Score Analysis")
genes<- read.table("Allgenes.txt")
rownames(genes)=genes[,1]
Hknot=NULL
for (i in rownames(genes))
{
	k=NULL
	k<-testpos(i)
	Hknot<- cbind(Hknot, k)
	
}
colnames(Hknot)=rownames(genes)

invrHknot=NULL
for (i in rownames(genes))
{
	k=NULL
	k<-testneg(i)
	invrHknot<- cbind(invrHknot, k)
	
}
colnames(invrHknot)=rownames(genes)

tailedH<-rbind(Hknot, invrHknot)
rownames(tailedH)=c("Hknot", "invrHknot")

#chi square find df
df=NULL
for (i in rownames(genes))
{
	slice<- genecut(i)
	colnames(slice)<- c("UCEC", "THCA", "PRAD", "LUSC", "LUAD", "LIHC", "KIRP", "KIRC", "KICH", "HNSC", "COAD", "BRCA", "BLCA")
	tslice<- t(slice)
	NAslice<- na.omit(tslice)
	y<- nrow(NAslice)
	df<- cbind(df, y)
	}
colnames(df)=rownames(genes)

#chi square tails
pneg<-1-pchisq(Hknot,(2*df))
pplus<-1-pchisq(invrHknot,(2*df))
chi<- rbind(pneg, pplus)
rownames(chi)= c("pneg", "pplus")
#recscores
#recscores
#THIS WAS WHERE I HAD TO SWITCH THE COLUMNS
REC=NULL
for (i in colnames(chi))
{
	y=NULL
	y<- if(chi[1, i] < chi[2, i]) 
	{
		log((2*(chi[1, i])), base=10)
	} 		else{
				-log((2*(chi[2, i])), base=10)
			}
	REC<- cbind(REC, y)
}

colnames(REC)=rownames(genes)
REC2<- cbind(colnames(REC), t(REC))
finalREC<-data.frame(ifelse(chi[1,] == chi[2,], 0, REC[1,]))
finalREC2<- cbind(rownames(finalREC), finalREC)

#Final results
results<- rbind(t(finalREC), chi, df, tailedH)
rownames(results)=c("REC", "leftchi", "rightchi", "no Na cancers", "leftHknot", "rightHknot")
tresults<- t(results)
setwd("F:/Bioinformatics Lab/Cancer Data/REC Score Analysis/Regular")
orderedREC<- tresults[order(tresults[,c("REC")]),, drop=FALSE]
write.table(orderedREC, "Ordered Gene REC Scores Negative Regular.txt", sep="\t", quote=FALSE)

#Find the ranks in each cancer

#Gene cutting
genecut<- function(x)
{
	gene=NULL
	BLCA<- BLCANA[c(x),]
	BRCA<- cbind(BRCANA[c(x),], BLCA)
	COAD<- cbind(COADNA[c(x),], BRCA)
	HNSC<- cbind(HNSCNA[c(x),], COAD)
	KICH<- cbind(KICHNA[c(x),], HNSC)
	KIRC<- cbind(KIRCNA[c(x),], KICH)
	KIRP<- cbind(KIRPNA[c(x),], KIRC)
	LIHC<- cbind(LIHCNA[c(x),], KIRP)
	LUAD<- cbind(LUADNA[c(x),], LIHC)
	LUSC<- cbind(LUSCNA[c(x),], LUAD)
	PRAD<- cbind(PRADNA[c(x),], LUSC)
	THCA<- cbind(THCANA[c(x),], PRAD)
	UCEC<- cbind(UCECNA[c(x),], THCA)
	return(UCEC)
}
 totalranks=NULL
 for (i in rownames(genes))
 {
	ranks=NULL
	ranks<- genecut(i)
	colnames(ranks)<- c("UCEC", "THCA", "PRAD", "LUSC", "LUAD", "LIHC", "KIRP", "KIRC", "KICH", "HNSC", "COAD", "BRCA", "BLCA")
	rownames(ranks)<- c(i)
	totalranks<- rbind(totalranks, ranks)
 }
 
setwd("F:/Bioinformatics Lab/Cancer Data/REC Score Analysis/Regular")
write.table(totalranks, "ranks in each cancer of each gene FIX Regular Neg.txt", sep="\t", quote=FALSE)
