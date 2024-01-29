# Requested market data requires additional subscription for API
library (IBrokers)
tws <- twsConnect()
aapl.csv <- file("AAPL.csv", open="w")
reqMktData (tws,twsSTK("AAPL"), 
            eventWrapper = eWrapper.MktData.CSV(1),
            file = aapl.csv)
close(aapl.csv)
close(tws)
