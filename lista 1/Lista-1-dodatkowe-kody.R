##### LISTA 1 #####
### Plik zawiera kody nieuwzględnione w sprawozdaniu, a także kody, które w sprawozdaniu są, ale są konieczne do poprawnego działania poniższego pliku

### Biblioteki ###
library(rstudioapi) # do ustawienia working directory

### Ustawienie wd na obecny ###
current_path=rstudioapi::getActiveDocumentContext()$path 
setwd(dirname(current_path))

### Wczytanie danych i ustawienia początkowe ###
# Wczytanie pliku z danymi
churn <- read.csv(file="WA_Fn-UseC_-Telco-Customer-Churn.csv", stringsAsFactors=TRUE)
attach(churn)

# Sprawdzenie, czy dane wczytały się jako poprawne typy
is.factor(customerID)
is.factor(gender)
is.factor(SeniorCitizen)
is.factor(Partner)
is.factor(Dependents)
is.numeric(tenure)
is.factor(PhoneService)
is.factor(MultipleLines)
is.factor(InternetService)
is.factor(OnlineSecurity)
is.factor(OnlineBackup)
is.factor(DeviceProtection)
is.factor(TechSupport)
is.factor(StreamingTV)
is.factor(StreamingMovies)
is.factor(Contract)
is.factor(PaperlessBilling)
is.factor(PaymentMethod)
is.numeric(MonthlyCharges)
is.numeric(TotalCharges)
is.factor(Churn)

# SeniorCitizen nie jest factor (a powinien być, bo 0 i 1 to oznaczenie fałszu i prawdy w tym przypadku)
# Konwersja SeniorCitizen na Factor

churn$SeniorCitizen <- as.factor(churn$SeniorCitizen)
is.factor(churn$SeniorCitizen)

# Jest zmienna customerID, która pełni funkcję identyfikatora, będzie nieprzydatna, więc ją usuwamy.
churn<-churn[,-1]

detach(churn)
attach(churn)
is.factor(SeniorCitizen)
str(churn)

# Sprawdzenie informacji na temat danych
dim(churn)

# Analiza wartości danych dla cech jakościowych (sprawdzenie, czy występuje nietypowe kodowanie wartości brakujących)
table(gender)
table(SeniorCitizen)
table(Partner)
table(Dependents)
table(tenure)
table(PhoneService)
table(MultipleLines)
table(InternetService)
table(OnlineSecurity)
table(OnlineBackup)
table(DeviceProtection)
table(TechSupport)
table(StreamingTV)
table(StreamingMovies)
table(Contract)
table(PaperlessBilling)
table(PaymentMethod)
table(MonthlyCharges)
table(TotalCharges)
table(Churn)

### Pozostałe kody, głównie wykresy, znajdują się w sprawozdaniu.