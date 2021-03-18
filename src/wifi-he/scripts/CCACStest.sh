#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=1  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-82 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
#PPDU_duration : MCS0=MCS8にするにはMCS8を38000に
export maxAmpduSizeBss1=38000
export maxAmpduSizeBss2=65535
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=8 #BSS1 MCS 
export MCS2=0 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=8 #BSS1 Radius
export r2=1 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=1

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
<<COMMENTOUT
############################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=1  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=5

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=1  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=10

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=1  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=15

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=1  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=20

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=1  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=25

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=1  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=30

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
####################################################################################################################################
####################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=2  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=1

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
############################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=2  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=5

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=2  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=10

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=2  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=15

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=2  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=20

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=2  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=25

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=2  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=30

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
####################################################################################################################################
####################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=3  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=1

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
############################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=3  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=5

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=3  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=10

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=3  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=15

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=3  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=20

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=3  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=25

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=3  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=30

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
####################################################################################################################################
####################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=4  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=1

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
############################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=4  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=5

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=4  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=10

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=4  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=15

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=4  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=20

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=4  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=25

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=4  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=30

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
####################################################################################################################################
####################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=5  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=1

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
############################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=5  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=5

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=5  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=10

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=5  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=15

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=5  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=20

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=5  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=25

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=5  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=30

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
####################################################################################################################################
####################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=6  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=1

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
############################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=6  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=5

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=6  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=10

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=6  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=15

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=6  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=20

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=6  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=25

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=6  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=30

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
####################################################################################################################################
####################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=7  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=1

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
############################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=7  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=5

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=7  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=10

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=7  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=15

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=7  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=20

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=7  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=25

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=7  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=30

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
####################################################################################################################################
####################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=8  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=1

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
############################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=8  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=5

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=8  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=10

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=8  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=15

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=8  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=20

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=8  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=25

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=8  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=30

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
####################################################################################################################################
####################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=9  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=1

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
############################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=9  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=5

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=9  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=10

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=9  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=15

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=9  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=20

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=9  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=25

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=9  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=30

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
####################################################################################################################################
####################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=10  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=1

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
############################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=10  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=5

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=10  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=10

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=10  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=15

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=10  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=20

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=10  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=25

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
###################################################################################################################################
#!/bin/bash
source spatial-reuse-functions.sh
cd ../examples

# 2BSS test
# miscellaneous settings for spatial-reuse script / ns-3
export RngRun=10  #random number seed
export duration=10  #Simulation duration in seconds
export enableRts=0   #RTS enabled (1) or disabled (0)
export txStartOffset=50
export enableObssPd=0
export txGain=0
export rxGain=0
export antennas=1
export maxSupportedTxSpatialStreams=1
export maxSupportedRxSpatialStreams=1
export performTgaxTimingChecks=1
export nodePositionsFile=NONE
export enablePcap=0 #Output Packet Capture Files enabled (1) or disabled (0)
export enableAscii=1
export rxSensitivity=-90
export AUTO_DELETE_SPATIAL_REUSE_OUTPUT_FILES=1
export ccaTrSta1=-62 #CCA-ED_Threshold(BSS1_STA)
export ccaTrAp1=-82 
export ccaTrSta2=-62 #CCA-ED_Threshold(BSS2_STA)
export ccaTrAp2=-82
export ccaTrSta3=-82 #CCA-ED_Threshold(BSS3_STA)
export ccaTrAp3=-82 
export ccaTrSta4=-82 #CCA-ED_Threshold(BSS4_STA)
export ccaTrAp4=-82 
export ccaTrSta5=-82 #CCA-ED_Threshold(BSS5_STA)
export ccaTrAp5=-82 
export ccaTrSta6=-82 #CCA-ED_Threshold(BSS6_STA)
export ccaTrAp6=-82  
export enableFrameCapture=true
export obssPdAlgorithm=ConstantObssPdAlgorithm #Add
# only used by 11ax
export obssPdThreshold=-74

# Format= 11ac, 20MHz, 1 stream
export standard=11ac
export bw=20
export scenario=logdistance
export nBss=2

# MSDUsize = 1500 octets
export payloadSizeUplink=1472 
export payloadSizeDownlink=1508

# AMPDUsize = 3142 octets (nMPDU=2)
export maxAmpduSizeBss1=65535
export maxAmpduSizeBss2=38000
export maxAmpduSizeBss3=65535
export maxAmpduSizeBss4=65535
export maxAmpduSizeBss5=65535
export maxAmpduSizeBss6=65535
export maxAmpduSizeBss7=65535

# MCS=7 (rate = 65 Mbit/s, Ndbps = 260)
export useIdealWifiManager=0
export MCS1=0 #BSS1 MCS 
export MCS2=8 #BSS2 MCS
export MCS3=0 #BSS3 MCS 
export MCS4=0 #BSS4 MCS
export MCS5=0 #BSS5 MCS 
export MCS6=0 #BSS6 MCS

#Inter AP distance
export d=10

# Dropping radius r=10m
export r1=1 #BSS1 Radius
export r2=8 #BSS2 Radius
export r3=0.1 #BSS3 Radius
export r4=0.1 #BSS4 Radius
export r5=0.1 #BSS5 Radius
export r6=0.1 #BSS6 Radius

# Transmit Power = 20dBm for AP, 15dBm for STA
export powSta=20
export powAp=20

# CSR = 102m for AP
export txRange=102
export sigma=0.0
export bianchi=1

#Traffic
export downlink=0 #downlink offered load in Mbps
export uplink=400 #uplink offered load in Mbps


#Number of STAs(each BSS)
export n=30

#Run
export test="${nBss}BSS_${n}STA_r1${r1}_r2${r2}_d${d}_cca1${ccaTrSta1}_cca2${ccaTrSta2}_RngRun${RngRun}_Duration${duration}_"
run_one
####################################################################################################################################
####################################################################################################################################
COMMENTOUT
