! Pythia settings

! 1) Settings used in the main program
Random:setSeed               = on                ! allow you to pick seed
Random:seed                  = 0                 ! seed number (0 is a random seed that depends on the time Pythia is called)

! 2) Settings related to output in init(), next() and stat()
Init:showChangedSettings     = on                ! list changed settings
Init:showChangedParticleData = on                ! list changed particle data
Next:numberCount             = 5000               ! print message every n events
Next:numberShowInfo          = 2                 ! print event information n times
Next:numberShowProcess       = 2                 ! print process record n times
Next:numberShowEvent         = 2                 ! print event record n times

! 3) Settings for the event generation process in the Pythia8 library
PartonLevel:MPI              = off               ! multiparton interactions
PartonLevel:ISR              = on                ! initial-state radiation
PartonLevel:FSR              = on                ! final-state radiation
HadronLevel:Hadronize        = on                ! hadronization

PhaseSpace:pTHatMin          = 700               ! min pT



! 4) Hidden valley settings

! Fragmentation and showering information
HiddenValley:fragment        = on                ! fragmentation for hidden valley particles
HiddenValley:FSR             = on                ! final state radiation for hidden valley particles (initial state radiation obviously doesn't exist)

! Spin information
HiddenValley:spinFv          = 2                 ! spin of mediator
!HiddenValley:spinqv          = 1                 ! spin of dark quark (Note: if FV is a boson than qv is automatically assigned a spin of 1/2)

! Running information
HiddenValley:alphaOrder      = 1                 ! whether to (1) run alphaHV or (0) not
HiddenValley:nFlav           = 3                 ! number of dark flavors
HiddenValley:Ngauge          = 3                 ! number of dark QCD colours
HiddenValley:Lambda          = 10.0              ! dark confinement scale (should be larger than the dark quark mass, e.g. 1.1 * 4900101:m0)
HiddenValley:pTminFSR        = 11.0	             ! pT cutoff for dark shower
HiddenValley:separateFlav    = on                ! Consider different flavours

! New parameters
HiddenValley:aLund           = 0.1               !(default = 0.3; minimum = 0.0; maximum = 2.0)
HiddenValley:bmqv2           = 1.9               !(default = 0.8; minimum = 0.2; maximum = 2.0)
HiddenValley:rFactqv         = 1.0               !(default = 1.0; minimum = 0.0; maximum = 2.0)


! Vector meson information
HiddenValley:probVector      =  0.75             ! probability to create vector mesons (the default value of 0.75 is what is expected from a naive spin count)

! Mass of Z'
4900023:m0                   =  5500              ! Mass of Z'
4900023:mMax                 =  7500              ! Max mass of Z'
4900023:mMin                 =  3500              ! Min mass of Z'
4900023:mWidth               =  10                  ! Decay mWidth of Z'

! Branching ratio Z'
4900023:0:bRatio             = 0.01              ! down
4900023:1:bRatio             = 0.01              ! up
4900023:2:bRatio             = 0.00              ! strange
4900023:3:bRatio             = 0.00              ! charm
4900023:4:bRatio             = 0.0               ! bottom
4900023:5:bRatio             = 0.0               ! top
4900023:6:bRatio             = 0.0               ! electron
4900023:7:bRatio             = 0.0               ! ve
4900023:8:bRatio             = 0.0               ! muon
4900023:9:bRatio             = 0.0               ! vmu
4900023:10:bRatio            = 0.0               ! tau
4900023:11:bRatio            = 0.0               ! vtau
4900023:12:bRatio            = 1.00              ! n1
4900023:13:bRatio            = 1.00              ! n2
4900023:14:bRatio            = 1.00              ! n3
4900023:15:bRatio            = 0.00              ! n4
4900023:16:bRatio            = 0.00              ! n5
4900023:17:bRatio            = 0.00              ! n6
4900023:18:bRatio            = 0.00              ! n7
4900023:19:bRatio            = 0.00              ! n8

! Mass information
4900101:m0                   = 10.3306
4900102:m0                   = 10.3306
4900103:m0                   = 10.3306

4900111:m0                   = 10.0
4900211:m0                   = 10.0
4900311:m0                   = 10.0
4900221:m0                   = 10.0
4900321:m0                   = 10.0
4900331:m0                   = 10.0

4900113:m0                   = 26.944
4900213:m0                   = 26.944
4900313:m0                   = 26.944
4900223:m0                   = 26.944
4900323:m0                   = 26.944
4900333:m0                   = 26.944

!Stability information
4900111:mayDecay             = on   
4900211:mayDecay             = on
4900311:mayDecay             = on
4900221:mayDecay             = on
4900321:mayDecay             = on
4900331:mayDecay             = on

4900113:mayDecay             = on
4900223:mayDecay             = on
4900333:mayDecay             = on
4900213:mayDecay             = on
4900313:mayDecay             = on
4900323:mayDecay             = on

! Decay length information (mm/c)
4900111:tau0                 = 0.001
4900211:tau0                 = 0.001
4900311:tau0                 = 0.001
4900221:tau0                 = 0.001
4900321:tau0                 = 0.001
4900331:tau0                 = 0.001

4900113:tau0                 = 0.001
4900213:tau0                 = 0.001
4900313:tau0                 = 0.001
4900223:tau0                 = 0.001
4900323:tau0                 = 0.001
4900333:tau0                 = 0.001

! Branching ratio information
! id:addChannel = onMode bRatio meMode product1 product2 ...
! Note: sum of branching ratCios automatically rescaled to 1.

4900111:oneChannel = 1 1.00 102  1  -1 
4900211:oneChannel = 1 1.00 102  1  -1 
4900311:oneChannel = 1 1.00 102  1  -1 
4900221:oneChannel = 1 1.00 102  1  -1 
4900321:oneChannel = 1 1.00 102  1  -1 
4900331:oneChannel = 1 1.00 102  1  -1

!4900111:addchannel = 1 1.00 102  2  -2
!4900111:addchannel = 1 1.00 102  3  -3
!4900211:addchannel = 1 1.00 102  2  -2
!4900211:addchannel = 1 1.00 102  3  -3
!4900311:addchannel = 1 1.00 102  2  -2
!4900311:addchannel = 1 1.00 102  3  -3
!4900221:addchannel = 1 1.00 102  2  -2
!4900221:addchannel = 1 1.00 102  3  -3
!4900321:addchannel = 1 1.00 102  2  -2
!4900321:addchannel = 1 1.00 102  3  -3
!4900331:addchannel = 1 1.00 102  2  -2
!4900331:addchannel = 1 1.00 102  3  -3




!4900113:oneChannel = 1 1.00 102  4900211  4900211
!4900213:oneChannel = 1 1.00 102  4900211  4900211 
!4900313:oneChannel = 1 1.00 102  4900211  4900211
!4900223:oneChannel = 1 1.00 102  4900211  4900211 
!4900323:oneChannel = 1 1.00 102  4900211  4900211 
!4900333:oneChannel = 1 1.00 102  4900211  4900211 


4900113:addchannel = 1 0.66 102  4900211 -4900211
4900113:addchannel = 1 0.17 102  4900311 -4900311
4900113:addchannel = 1 0.17 102  4900321 -4900321

!4900113:addchannel = 1 1.00 102   -2 2
!4900113:addchannel = 1 1.00 102   -1 1


4900213:addchannel = 1 0.67 102  4900111  4900211
4900213:addchannel = 1 0.33 102  -4900321  4900311

!4900213:addchannel = 1 1.00 102   -2 2
!4900213:addchannel = 1 1.00 102   -1 1


4900313:addchannel = 1 0.17 102  4900111 4900311
4900313:addchannel = 1 0.33 102  4900211 4900321
4900313:addchannel = 1 0.50 102  4900311 4900221

!4900313:addchannel = 1 1.00 102   -2 2
!4900313:addchannel = 1 1.00 102   -1 1


4900323:addchannel = 1 0.17 102  4900111 4900321
4900323:addchannel = 1 0.33 102  -4900211 4900311
4900323:addchannel = 1 0.50 102  4900321 4900221

!4900323:addchannel = 1 1.00 102   -2 2
!4900323:addchannel = 1 1.00 102   -1 1


4900223:addchannel = 1 0.50 102  4900311 -4900311
4900223:addchannel = 1 0.50 102  4900321 -4900321

!4900223:addchannel = 1 1.00 102   -2 2
!4900223:addchannel = 1 1.00 102   -1 1


4900333:addchannel = 1 0.50 102  4900311 -4900311
4900333:addchannel = 1 0.50 102  4900321 -4900321

!4900333:addchannel = 1 1.00 102   -2 2
!4900333:addchannel = 1 1.00 102   -1 1

