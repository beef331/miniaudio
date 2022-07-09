from macros import hint

when not declared(madevicenotificationtype):
  type
    madevicenotificationtype* {.size: sizeof(cuint).} = enum
      madevicenotificationtypestarted = 0, madevicenotificationtypestopped = 1,
      madevicenotificationtypererouted = 2,
      madevicenotificationtypeinterruptionbegan = 3,
      madevicenotificationtypeinterruptionended = 4
else:
  static :
    hint("Declaration of " & "ma_device_notification_type" &
        " already exists, not redeclaring")
when not declared(mastandardsamplerate):
  type
    mastandardsamplerate* {.size: sizeof(cuint).} = enum
      mastandardsampleratecount = 14, mastandardsamplerate8000 = 8000,
      mastandardsamplerate11025 = 11250, mastandardsamplerate16000 = 16000,
      mastandardsamplerate22050 = 22050, mastandardsamplerate24000 = 24000,
      mastandardsamplerate32000 = 32000, mastandardsamplerate44100 = 44100,
      mastandardsamplerate48000 = 48000, mastandardsamplerate88200 = 88200,
      mastandardsamplerate96000 = 96000, mastandardsamplerate176400 = 176400,
      mastandardsamplerate192000 = 192000, mastandardsamplerate352800 = 352800,
      mastandardsamplerate384000 = 384000
else:
  static :
    hint("Declaration of " & "ma_standard_sample_rate" &
        " already exists, not redeclaring")
const
  mastandardsampleratemin* = mastandardsamplerate8000
const
  mastandardsampleratemax* = mastandardsamplerate384000
when not declared(internalmachannelposition):
  type
    internalmachannelposition* {.size: sizeof(cuint).} = enum
      Machannelnone = 0, Machannelmono = 1, Machannelfrontleft = 2,
      Machannelfrontright = 3, Machannelfrontcenter = 4, Machannellfe = 5,
      Machannelbackleft = 6, Machannelbackright = 7,
      Machannelfrontleftcenter = 8, Machannelfrontrightcenter = 9,
      Machannelbackcenter = 10, Machannelsideleft = 11, Machannelsideright = 12,
      Machanneltopcenter = 13, Machanneltopfrontleft = 14,
      Machanneltopfrontcenter = 15, Machanneltopfrontright = 16,
      Machanneltopbackleft = 17, Machanneltopbackcenter = 18,
      Machanneltopbackright = 19, Machannelaux0 = 20, Machannelaux1 = 21,
      Machannelaux2 = 22, Machannelaux3 = 23, Machannelaux4 = 24,
      Machannelaux5 = 25, Machannelaux6 = 26, Machannelaux7 = 27,
      Machannelaux8 = 28, Machannelaux9 = 29, Machannelaux10 = 30,
      Machannelaux11 = 31, Machannelaux12 = 32, Machannelaux13 = 33,
      Machannelaux14 = 34, Machannelaux15 = 35, Machannelaux16 = 36,
      Machannelaux17 = 37, Machannelaux18 = 38, Machannelaux19 = 39,
      Machannelaux20 = 40, Machannelaux21 = 41, Machannelaux22 = 42,
      Machannelaux23 = 43, Machannelaux24 = 44, Machannelaux25 = 45,
      Machannelaux26 = 46, Machannelaux27 = 47, Machannelaux28 = 48,
      Machannelaux29 = 49, Machannelaux30 = 50, Machannelaux31 = 51,
      Machannelpositioncount = 52
else:
  static :
    hint("Declaration of " & "_ma_channel_position" &
        " already exists, not redeclaring")
const
  Machannelleft* = Machannelfrontleft
const
  Machannelright* = Machannelfrontright
when not declared(maiossessioncategory):
  type
    maiossessioncategory* {.size: sizeof(cuint).} = enum
      maiossessioncategorydefault = 0, maiossessioncategorynone = 1,
      maiossessioncategoryambient = 2, maiossessioncategorysoloambient = 3,
      maiossessioncategoryplayback = 4, maiossessioncategoryrecord = 5,
      maiossessioncategoryplayandrecord = 6, maiossessioncategorymultiroute = 7
else:
  static :
    hint("Declaration of " & "ma_ios_session_category" &
        " already exists, not redeclaring")
when not declared(maattenuationmodel):
  type
    maattenuationmodel* {.size: sizeof(cuint).} = enum
      maattenuationmodelnone = 0, maattenuationmodelinverse = 1,
      maattenuationmodellinear = 2, maattenuationmodelexponential = 3
else:
  static :
    hint("Declaration of " & "ma_attenuation_model" &
        " already exists, not redeclaring")
when not declared(machannelconversionpath):
  type
    machannelconversionpath* {.size: sizeof(cuint).} = enum
      machannelconversionpathunknown = 0,
      machannelconversionpathpassthrough = 1,
      machannelconversionpathmonoout = 2, machannelconversionpathmonoin = 3,
      machannelconversionpathshuffle = 4, machannelconversionpathweights = 5
else:
  static :
    hint("Declaration of " & "ma_channel_conversion_path" &
        " already exists, not redeclaring")
when not declared(masharemode):
  type
    masharemode* {.size: sizeof(cuint).} = enum
      masharemodeshared = 0, masharemodeexclusive = 1
else:
  static :
    hint("Declaration of " & "ma_share_mode" &
        " already exists, not redeclaring")
when not declared(majobtype):
  type
    majobtype* {.size: sizeof(cuint).} = enum
      Majobtypequit = 0, Majobtypecustom = 1,
      Majobtyperesourcemanagerloaddatabuffernode = 2,
      Majobtyperesourcemanagerfreedatabuffernode = 3,
      Majobtyperesourcemanagerpagedatabuffernode = 4,
      Majobtyperesourcemanagerloaddatabuffer = 5,
      Majobtyperesourcemanagerfreedatabuffer = 6,
      Majobtyperesourcemanagerloaddatastream = 7,
      Majobtyperesourcemanagerfreedatastream = 8,
      Majobtyperesourcemanagerpagedatastream = 9,
      Majobtyperesourcemanagerseekdatastream = 10,
      Majobtypedeviceaaudioreroute = 11, Majobtypecount = 12
else:
  static :
    hint("Declaration of " & "ma_job_type" & " already exists, not redeclaring")
when not declared(maperformanceprofile):
  type
    maperformanceprofile* {.size: sizeof(cuint).} = enum
      maperformanceprofilelowlatency = 0, maperformanceprofileconservative = 1
else:
  static :
    hint("Declaration of " & "ma_performance_profile" &
        " already exists, not redeclaring")
when not declared(maencodingformat):
  type
    maencodingformat* {.size: sizeof(cuint).} = enum
      maencodingformatunknown = 0, maencodingformatwav = 1,
      maencodingformatflac = 2, maencodingformatmp3 = 3,
      maencodingformatvorbis = 4
else:
  static :
    hint("Declaration of " & "ma_encoding_format" &
        " already exists, not redeclaring")
when not declared(maloglevel):
  type
    maloglevel* {.size: sizeof(cuint).} = enum
      Maloglevelerror = 1, Maloglevelwarning = 2, Maloglevelinfo = 3,
      Malogleveldebug = 4
else:
  static :
    hint("Declaration of " & "ma_log_level" & " already exists, not redeclaring")
when not declared(maresult):
  type
    maresult* {.size: sizeof(cint).} = enum
      Mafailedtostopbackenddevice = -303, Mafailedtostartbackenddevice = -302,
      Mafailedtoopenbackenddevice = -301, Mafailedtoinitbackend = -300,
      Madevicenotstopped = -203, Madevicenotstarted = -202,
      Madevicealreadyinitialized = -201, Madevicenotinitialized = -200,
      Maloop = -107, Mainvaliddeviceconfig = -106, Maapinotfound = -105,
      Manodevice = -104, Manobackend = -103, Masharemodenotsupported = -102,
      Madevicetypenotsupported = -101, Maformatnotsupported = -100,
      Mamemoryalreadymapped = -52, Macancelled = -51, Mainprogress = -50,
      Manohost = -49, Maconnectionrefused = -48, Manotconnected = -47,
      Maalreadyconnected = -46, Maconnectionreset = -45,
      Masocketnotsupported = -44, Maaddressfamilynotsupported = -43,
      Maprotocolfamilynotsupported = -42, Maprotocolnotsupported = -41,
      Maprotocolunavailable = -40, Mabadprotocol = -39, Manoaddress = -38,
      Manotsocket = -37, Manotunique = -36, Manonetwork = -35, Matimeout = -34,
      Mainvaliddata = -33, Manodataavailable = -32, Mabadmessage = -31,
      Manomessage = -30, Manotimplemented = -29, Matoomanylinks = -28,
      Madeadlock = -27, Mabadpipe = -26, Mabadseek = -25, Mabadaddress = -24,
      Maalreadyinuse = -23, Maunavailable = -22, Mainterrupt = -21,
      Maioerror = -20, Mabusy = -19, Manospace = -18, Maatend = -17,
      Madirectorynotempty = -16, Maisdirectory = -15, Manotdirectory = -14,
      Manametoolong = -13, Mapathtoolong = -12, Matoobig = -11,
      Mainvalidfile = -10, Matoomanyopenfiles = -9, Maalreadyexists = -8,
      Madoesnotexist = -7, Maaccessdenied = -6, Maoutofrange = -5,
      Maoutofmemory = -4, Mainvalidoperation = -3, Mainvalidargs = -2,
      Maerror = -1, Masuccess = 0
else:
  static :
    hint("Declaration of " & "ma_result" & " already exists, not redeclaring")
when not declared(maopenslstreamtype):
  type
    maopenslstreamtype* {.size: sizeof(cuint).} = enum
      maopenslstreamtypedefault = 0, maopenslstreamtypevoice = 1,
      maopenslstreamtypesystem = 2, maopenslstreamtypering = 3,
      maopenslstreamtypemedia = 4, maopenslstreamtypealarm = 5,
      maopenslstreamtypenotification = 6
else:
  static :
    hint("Declaration of " & "ma_opensl_stream_type" &
        " already exists, not redeclaring")
when not declared(manodestate):
  type
    manodestate* {.size: sizeof(cuint).} = enum
      manodestatestarted = 0, manodestatestopped = 1
else:
  static :
    hint("Declaration of " & "ma_node_state" &
        " already exists, not redeclaring")
when not declared(mastandardchannelmap):
  type
    mastandardchannelmap* {.size: sizeof(cuint).} = enum
      mastandardchannelmapmicrosoft = 0, mastandardchannelmapalsa = 1,
      mastandardchannelmaprfc3551 = 2, mastandardchannelmapflac = 3,
      mastandardchannelmapvorbis = 4, mastandardchannelmapsound4 = 5,
      mastandardchannelmapsndio = 6
else:
  static :
    hint("Declaration of " & "ma_standard_channel_map" &
        " already exists, not redeclaring")
const
  mastandardchannelmapwebaudio* = mastandardchannelmapflac
const
  mastandardchannelmapdefault* = mastandardchannelmapmicrosoft
when not declared(madevicetype):
  type
    madevicetype* {.size: sizeof(cuint).} = enum
      madevicetypeplayback = 1, madevicetypecapture = 2, madevicetypeduplex = 3,
      madevicetypeloopback = 4
else:
  static :
    hint("Declaration of " & "ma_device_type" &
        " already exists, not redeclaring")
when not declared(maenginenodetype):
  type
    maenginenodetype* {.size: sizeof(cuint).} = enum
      maenginenodetypesound = 0, maenginenodetypegroup = 1
else:
  static :
    hint("Declaration of " & "ma_engine_node_type" &
        " already exists, not redeclaring")
when not declared(mamonoexpansionmode):
  type
    mamonoexpansionmode* {.size: sizeof(cuint).} = enum
      mamonoexpansionmodeduplicate = 0, mamonoexpansionmodeaverage = 1,
      mamonoexpansionmodestereoonly = 2
else:
  static :
    hint("Declaration of " & "ma_mono_expansion_mode" &
        " already exists, not redeclaring")
const
  mamonoexpansionmodedefault* = mamonoexpansionmodeduplicate
when not declared(maopenslrecordingpreset):
  type
    maopenslrecordingpreset* {.size: sizeof(cuint).} = enum
      maopenslrecordingpresetdefault = 0, maopenslrecordingpresetgeneric = 1,
      maopenslrecordingpresetcamcorder = 2,
      maopenslrecordingpresetvoicerecognition = 3,
      maopenslrecordingpresetvoicecommunication = 4,
      maopenslrecordingpresetvoiceunprocessed = 5
else:
  static :
    hint("Declaration of " & "ma_opensl_recording_preset" &
        " already exists, not redeclaring")
when not declared(mawaveformtype):
  type
    mawaveformtype* {.size: sizeof(cuint).} = enum
      mawaveformtypesine = 0, mawaveformtypesquare = 1,
      mawaveformtypetriangle = 2, mawaveformtypesawtooth = 3
else:
  static :
    hint("Declaration of " & "ma_waveform_type" &
        " already exists, not redeclaring")
when not declared(maopenmodeflags):
  type
    maopenmodeflags* {.size: sizeof(cuint).} = enum
      Maopenmoderead = 1, Maopenmodewrite = 2
else:
  static :
    hint("Declaration of " & "ma_open_mode_flags" &
        " already exists, not redeclaring")
when not declared(maaaudioinputpreset):
  type
    maaaudioinputpreset* {.size: sizeof(cuint).} = enum
      maaaudioinputpresetdefault = 0, maaaudioinputpresetgeneric = 1,
      maaaudioinputpresetcamcorder = 2, maaaudioinputpresetunprocessed = 3,
      maaaudioinputpresetvoicerecognition = 4,
      maaaudioinputpresetvoicecommunication = 5,
      maaaudioinputpresetvoiceperformance = 6
else:
  static :
    hint("Declaration of " & "ma_aaudio_input_preset" &
        " already exists, not redeclaring")
when not declared(madithermode):
  type
    madithermode* {.size: sizeof(cuint).} = enum
      madithermodenone = 0, madithermoderectangle = 1, madithermodetriangle = 2
else:
  static :
    hint("Declaration of " & "ma_dither_mode" &
        " already exists, not redeclaring")
when not declared(manoisetype):
  type
    manoisetype* {.size: sizeof(cuint).} = enum
      manoisetypewhite = 0, manoisetypepink = 1, manoisetypebrownian = 2
else:
  static :
    hint("Declaration of " & "ma_noise_type" &
        " already exists, not redeclaring")
when not declared(maresamplealgorithm):
  type
    maresamplealgorithm* {.size: sizeof(cuint).} = enum
      maresamplealgorithmlinear = 0, maresamplealgorithmcustom = 1
else:
  static :
    hint("Declaration of " & "ma_resample_algorithm" &
        " already exists, not redeclaring")
when not declared(maseekorigin):
  type
    maseekorigin* {.size: sizeof(cuint).} = enum
      maseekoriginstart = 0, maseekorigincurrent = 1, maseekoriginend = 2
else:
  static :
    hint("Declaration of " & "ma_seek_origin" &
        " already exists, not redeclaring")
when not declared(maformat):
  type
    maformat* {.size: sizeof(cuint).} = enum
      maformatunknown = 0, maformatu8 = 1, maformats16 = 2, maformats24 = 3,
      maformats32 = 4, maformatf32 = 5, maformatcount = 6
else:
  static :
    hint("Declaration of " & "ma_format" & " already exists, not redeclaring")
when not declared(maresourcemanagerdatasourceflags):
  type
    maresourcemanagerdatasourceflags* {.size: sizeof(cuint).} = enum
      Maresourcemanagerdatasourceflagstream = 1,
      Maresourcemanagerdatasourceflagdecode = 2,
      Maresourcemanagerdatasourceflagasync = 4,
      Maresourcemanagerdatasourceflagwaitinit = 8,
      Maresourcemanagerdatasourceflagunknownlength = 16
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_flags" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerflags):
  type
    maresourcemanagerflags* {.size: sizeof(cuint).} = enum
      Maresourcemanagerflagnonblocking = 1, Maresourcemanagerflagnothreading = 2
else:
  static :
    hint("Declaration of " & "ma_resource_manager_flags" &
        " already exists, not redeclaring")
when not declared(maaaudiocontenttype):
  type
    maaaudiocontenttype* {.size: sizeof(cuint).} = enum
      maaaudiocontenttypedefault = 0, maaaudiocontenttypemovie = 1,
      maaaudiocontenttypemusic = 2, maaaudiocontenttypesonification = 3,
      maaaudiocontenttypespeech = 4
else:
  static :
    hint("Declaration of " & "ma_aaudio_content_type" &
        " already exists, not redeclaring")
when not declared(mapositioning):
  type
    mapositioning* {.size: sizeof(cuint).} = enum
      mapositioningabsolute = 0, mapositioningrelative = 1
else:
  static :
    hint("Declaration of " & "ma_positioning" &
        " already exists, not redeclaring")
when not declared(masoundflags):
  type
    masoundflags* {.size: sizeof(cuint).} = enum
      Masoundflagstream = 1, Masoundflagdecode = 2, Masoundflagasync = 4,
      Masoundflagwaitinit = 8, Masoundflagnodefaultattachment = 16,
      Masoundflagnopitch = 32, Masoundflagnospatialization = 64
else:
  static :
    hint("Declaration of " & "ma_sound_flags" &
        " already exists, not redeclaring")
when not declared(maiossessioncategoryoption):
  type
    maiossessioncategoryoption* {.size: sizeof(cuint).} = enum
      maiossessioncategoryoptionmixwithothers = 1,
      maiossessioncategoryoptionduckothers = 2,
      maiossessioncategoryoptionallowbluetooth = 4,
      maiossessioncategoryoptiondefaulttospeaker = 8,
      maiossessioncategoryoptioninterruptspokenaudioandmixwithothers = 17,
      maiossessioncategoryoptionallowbluetootha2dp = 32,
      maiossessioncategoryoptionallowairplay = 64
else:
  static :
    hint("Declaration of " & "ma_ios_session_category_option" &
        " already exists, not redeclaring")
when not declared(madataconverterexecutionpath):
  type
    madataconverterexecutionpath* {.size: sizeof(cuint).} = enum
      madataconverterexecutionpathpassthrough = 0,
      madataconverterexecutionpathformatonly = 1,
      madataconverterexecutionpathchannelsonly = 2,
      madataconverterexecutionpathresampleonly = 3,
      madataconverterexecutionpathresamplefirst = 4,
      madataconverterexecutionpathchannelsfirst = 5
else:
  static :
    hint("Declaration of " & "ma_data_converter_execution_path" &
        " already exists, not redeclaring")
when not declared(majobqueueflags):
  type
    majobqueueflags* {.size: sizeof(cuint).} = enum
      Majobqueueflagnonblocking = 1
else:
  static :
    hint("Declaration of " & "ma_job_queue_flags" &
        " already exists, not redeclaring")
when not declared(mahandedness):
  type
    mahandedness* {.size: sizeof(cuint).} = enum
      mahandednessright = 0, mahandednessleft = 1
else:
  static :
    hint("Declaration of " & "ma_handedness" &
        " already exists, not redeclaring")
when not declared(mabackend):
  type
    mabackend* {.size: sizeof(cuint).} = enum
      mabackendwasapi = 0, mabackenddsound = 1, mabackendwinmm = 2,
      mabackendcoreaudio = 3, mabackendsndio = 4, mabackendaudio4 = 5,
      mabackendoss = 6, mabackendpulseaudio = 7, mabackendalsa = 8,
      mabackendjack = 9, mabackendaaudio = 10, mabackendopensl = 11,
      mabackendwebaudio = 12, mabackendcustom = 13, mabackendnull = 14
else:
  static :
    hint("Declaration of " & "ma_backend" & " already exists, not redeclaring")
when not declared(maaaudiousage):
  type
    maaaudiousage* {.size: sizeof(cuint).} = enum
      maaaudiousagedefault = 0, maaaudiousageannouncement = 1,
      maaaudiousageemergency = 2, maaaudiousagesafety = 3,
      maaaudiousagevehiclestatus = 4, maaaudiousagealarm = 5,
      maaaudiousageassistanceaccessibility = 6,
      maaaudiousageassistancenavigationguidance = 7,
      maaaudiousageassistancesonification = 8, maaaudiousageassitant = 9,
      maaaudiousagegame = 10, maaaudiousagemedia = 11,
      maaaudiousagenotification = 12, maaaudiousagenotificationevent = 13,
      maaaudiousagenotificationringtone = 14,
      maaaudiousagevoicecommunication = 15,
      maaaudiousagevoicecommunicationsignalling = 16
else:
  static :
    hint("Declaration of " & "ma_aaudio_usage" &
        " already exists, not redeclaring")
when not declared(mapanmode):
  type
    mapanmode* {.size: sizeof(cuint).} = enum
      mapanmodebalance = 0, mapanmodepan = 1
else:
  static :
    hint("Declaration of " & "ma_pan_mode" & " already exists, not redeclaring")
when not declared(mastreamlayout):
  type
    mastreamlayout* {.size: sizeof(cuint).} = enum
      mastreamlayoutinterleaved = 0, mastreamlayoutdeinterleaved = 1
else:
  static :
    hint("Declaration of " & "ma_stream_layout" &
        " already exists, not redeclaring")
when not declared(manodeflags):
  type
    manodeflags* {.size: sizeof(cuint).} = enum
      Manodeflagpassthrough = 1, Manodeflagcontinuousprocessing = 2,
      Manodeflagallownullinput = 4, Manodeflagdifferentprocessingrates = 8,
      Manodeflagsilentoutput = 16
else:
  static :
    hint("Declaration of " & "ma_node_flags" &
        " already exists, not redeclaring")
when not declared(madevicestate):
  type
    madevicestate* {.size: sizeof(cuint).} = enum
      madevicestateuninitialized = 0, madevicestatestopped = 1,
      madevicestatestarted = 2, madevicestatestarting = 3,
      madevicestatestopping = 4
else:
  static :
    hint("Declaration of " & "ma_device_state" &
        " already exists, not redeclaring")
when not declared(mathreadpriority):
  type
    mathreadpriority* {.size: sizeof(cint).} = enum
      mathreadpriorityidle = -5, mathreadprioritylowest = -4,
      mathreadprioritylow = -3, mathreadprioritynormal = -2,
      mathreadpriorityhigh = -1, mathreadpriorityhighest = 0,
      mathreadpriorityrealtime = 1
else:
  static :
    hint("Declaration of " & "ma_thread_priority" &
        " already exists, not redeclaring")
const
  mathreadprioritydefault* = mathreadpriorityhighest
when not declared(machannelmixmode):
  type
    machannelmixmode* {.size: sizeof(cuint).} = enum
      machannelmixmoderectangular = 0, machannelmixmodesimple = 1,
      machannelmixmodecustomweights = 2
else:
  static :
    hint("Declaration of " & "ma_channel_mix_mode" &
        " already exists, not redeclaring")
const
  machannelmixmodedefault* = machannelmixmoderectangular
when not declared(mastreamformat):
  type
    mastreamformat* {.size: sizeof(cuint).} = enum
      mastreamformatpcm = 0
else:
  static :
    hint("Declaration of " & "ma_stream_format" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatasupplytype):
  type
    maresourcemanagerdatasupplytype* {.size: sizeof(cuint).} = enum
      maresourcemanagerdatasupplytypeunknown = 0,
      maresourcemanagerdatasupplytypeencoded = 1,
      maresourcemanagerdatasupplytypedecoded = 2,
      maresourcemanagerdatasupplytypedecodedpaged = 3
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_supply_type" &
        " already exists, not redeclaring")
when not declared(malpf2config):
  type
    malpf2config* = distinct object
else:
  static :
    hint("Declaration of " & "ma_lpf2_config" &
        " already exists, not redeclaring")
when not declared(inline):
  type
    inline* = distinct object
else:
  static :
    hint("Declaration of " & "inline" & " already exists, not redeclaring")
when not declared(mahishelfconfig):
  type
    mahishelfconfig* = distinct object
else:
  static :
    hint("Declaration of " & "ma_hishelf_config" &
        " already exists, not redeclaring")
when not declared(maloshelfconfig):
  type
    maloshelfconfig* = distinct object
else:
  static :
    hint("Declaration of " & "ma_loshelf_config" &
        " already exists, not redeclaring")
when not declared(mapeakconfig):
  type
    mapeakconfig* = distinct object
else:
  static :
    hint("Declaration of " & "ma_peak_config" &
        " already exists, not redeclaring")
when not declared(staticanon):
  type
    staticanon* = distinct object
else:
  static :
    hint("Declaration of " & "static" & " already exists, not redeclaring")
when not declared(Majobqueueflagnonblocking):
  type
    Majobqueueflagnonblocking* = distinct object
else:
  static :
    hint("Declaration of " & "MA_JOB_QUEUE_FLAG_NON_BLOCKING" &
        " already exists, not redeclaring")
when not declared(extern):
  type
    extern* = distinct object
else:
  static :
    hint("Declaration of " & "extern" & " already exists, not redeclaring")
when not declared(mahpf2config):
  type
    mahpf2config* = distinct object
else:
  static :
    hint("Declaration of " & "ma_hpf2_config" &
        " already exists, not redeclaring")
when not declared(manotchconfig):
  type
    manotchconfig* = distinct object
else:
  static :
    hint("Declaration of " & "ma_notch_config" &
        " already exists, not redeclaring")
type
  manodegraph_436207931* = structmanodegraph_436208222 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10213:30
  madatasourcenodeconfig_436207934* {.pure, inheritable.} = object
    nodeconfig*: manodeconfig_436208017 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10418:9
    pdatasource*: pointer

  malog_436207936* {.pure, inheritable.} = object
    callbacks*: array[4'i64, malogcallback_436207989] ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4298:9
    callbackcount*: mauint32_436208046
    allocationcallbacks*: maallocationcallbacks_436208126
    lock*: mamutex_436207955

  masplitternode_436207938* {.pure, inheritable.} = object
    base*: manodebase_436208124 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10449:9

  mauint8_436207940* = cuchar ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3682:37
  structmacontextconfig_alsa_t* {.pure, inheritable.} = object
    useverbosedeviceenumeration*: mabool32_436207983

  structmacontextconfig_pulse_t* {.pure, inheritable.} = object
    papplicationname*: cstring
    pservername*: cstring
    tryautospawn*: mabool32_436207983

  structmacontextconfig_coreaudio_t* {.pure, inheritable.} = object
    sessioncategory*: maiossessioncategory_436207959
    sessioncategoryoptions*: mauint32_436208046
    noaudiosessionactivate*: mabool32_436207983
    noaudiosessiondeactivate*: mabool32_436207983

  structmacontextconfig_jack_t* {.pure, inheritable.} = object
    pclientname*: cstring
    trystartserver*: mabool32_436207983

  structmacontextconfig_436207946* {.pure, inheritable.} = object
    plog*: ptr malog_436207937 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:6761:8
    threadpriority*: mathreadpriority_436208430
    threadstacksize*: csize_t
    puserdata*: pointer
    allocationcallbacks*: maallocationcallbacks_436208126
    alsa*: structmacontextconfig_alsa_t
    pulse*: structmacontextconfig_pulse_t
    coreaudio*: structmacontextconfig_coreaudio_t
    jack*: structmacontextconfig_jack_t
    custom*: mabackendcallbacks_436207957

  madecodingbackendvtable_436207948* {.pure, inheritable.} = object
    oninit*: proc (a0: pointer; a1: mareadproc_436208260; a2: maseekproc_436208362;
                   a3: matellproc_436208384; a4: pointer;
                   a5: ptr madecodingbackendconfig_436208332;
                   a6: ptr maallocationcallbacks_436208126; a7: ptr pointer): maresult_436208042 {.
        cdecl.}              ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9576:9
    oninitfile*: proc (a0: pointer; a1: cstring;
                       a2: ptr madecodingbackendconfig_436208332;
                       a3: ptr maallocationcallbacks_436208126; a4: ptr pointer): maresult_436208042 {.
        cdecl.}
    oninitfilew*: proc (a0: pointer; a1: ptr wchart_436208248;
                        a2: ptr madecodingbackendconfig_436208332;
                        a3: ptr maallocationcallbacks_436208126; a4: ptr pointer): maresult_436208042 {.
        cdecl.}
    oninitmemory*: proc (a0: pointer; a1: pointer; a2: csize_t;
                         a3: ptr madecodingbackendconfig_436208332;
                         a4: ptr maallocationcallbacks_436208126;
                         a5: ptr pointer): maresult_436208042 {.cdecl.}
    onuninit*: proc (a0: pointer; a1: pointer; a2: ptr maallocationcallbacks_436208126): void {.
        cdecl.}

  madeviceconfig_436207952* = structmadeviceconfig_436208216 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:6537:37
  mamutex_436207954* = mapthreadmutext_436208015 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4192:28
  mabackendcallbacks_436207956* = structmabackendcallbacks_436208112 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:6538:37
  malpfnodeconfig_436207962* {.pure, inheritable.} = object
    nodeconfig*: manodeconfig_436208017 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10484:9
    lpf*: malpfconfig_436208114

  maresampler_state_t* {.union.} = object
    linear*: malinearresampler_436208448

  maresampler_436207964* {.pure, inheritable.} = object
    pbackend*: pointer       ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:5136:9
    pbackendvtable*: ptr maresamplingbackendvtable_436208232
    pbackenduserdata*: pointer
    format*: maformat_436208208
    channels*: mauint32_436208046
    sampleratein*: mauint32_436208046
    samplerateout*: mauint32_436208046
    state*: maresampler_state_t
    internalpheap*: pointer
    internalownsheap*: mabool32_436207983

  structmasoundinlined_436207966* {.pure, inheritable.} = object
    sound*: masound_436208210 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10787:8
    pnext*: ptr masoundinlined_436208264
    pprev*: ptr masoundinlined_436208264

  madelaynode_436207968* {.pure, inheritable.} = object
    basenode*: manodebase_436208124 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10651:9
    delay*: madelay_436208410

  structpthreadconds_anon0_t_compilerwseq32_t* {.pure, inheritable.} = object
    compilerlow*: cuint
    compilerhigh*: cuint

  structpthreadconds_anon0_t* {.union.} = object
    compilerwseq*: culonglong
    compilerwseq32*: structpthreadconds_anon0_t_compilerwseq32_t

  structpthreadconds_anon1_t_compilerg1start32_t* {.pure, inheritable.} = object
    compilerlow*: cuint
    compilerhigh*: cuint

  structpthreadconds_anon1_t* {.union.} = object
    compilerg1start*: culonglong
    compilerg1start32*: structpthreadconds_anon1_t_compilerg1start32_t

  structpthreadconds_436207970* {.pure, inheritable.} = object
    anon0*: structpthreadconds_anon0_t ## Generated based on /usr/include/x86_64-linux-gnu/bits/thread-shared-types.h:92:8
    anon1*: structpthreadconds_anon1_t
    compilergrefs*: array[2'i64, cuint]
    compilergsize*: array[2'i64, cuint]
    compilerg1origsize*: cuint
    compilerwrefs*: cuint
    compilergsignals*: array[2'i64, cuint]

  majob_436207972* = structmajob_436208286 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:5872:23
  maint16_436207974* = cshort ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3683:37
  maspatializer_436207978* {.pure, inheritable.} = object
    channelsin*: mauint32_436208046 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4962:9
    channelsout*: mauint32_436208046
    pchannelmapin*: ptr machannel_436208128
    attenuationmodel*: maattenuationmodel_436207961
    positioning*: mapositioning_436208284
    handedness*: mahandedness_436208352
    mingain*: cfloat
    maxgain*: cfloat
    mindistance*: cfloat
    maxdistance*: cfloat
    rolloff*: cfloat
    coneinnerangleinradians*: cfloat
    coneouterangleinradians*: cfloat
    coneoutergain*: cfloat
    dopplerfactor*: cfloat
    directionalattenuationfactor*: cfloat
    gainsmoothtimeinframes*: mauint32_436208046
    position*: mavec3f_436208100
    direction*: mavec3f_436208100
    velocity*: mavec3f_436208100
    dopplerpitch*: cfloat
    gainer*: magainer_436208480
    pnewchannelgainsout*: ptr cfloat
    internalpheap*: pointer
    internalownsheap*: mabool32_436207983

  compilerpthreadlistt_436207980* = structpthreadinternallist_436208328 ## Generated based on /usr/include/x86_64-linux-gnu/bits/thread-shared-types.h:53:3
  mabool32_436207982* = mauint32_436208046 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3713:21
  structmaresamplerconfig_linear_t* {.pure, inheritable.} = object
    lpforder*: mauint32_436208046

  structmaresamplerconfig_436207984* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:5119:8
    channels*: mauint32_436208046
    sampleratein*: mauint32_436208046
    samplerateout*: mauint32_436208046
    algorithm*: maresamplealgorithm_436208198
    pbackendvtable*: ptr maresamplingbackendvtable_436208232
    pbackenduserdata*: pointer
    linear*: structmaresamplerconfig_linear_t

  structmacontext_anon0_t_alsa_t* {.pure, inheritable.} = object
    asoundso*: mahandle_436208452
    sndpcmopen*: maproc_436208354
    sndpcmclose*: maproc_436208354
    sndpcmhwparamssizeof*: maproc_436208354
    sndpcmhwparamsany*: maproc_436208354
    sndpcmhwparamssetformat*: maproc_436208354
    sndpcmhwparamssetformatfirst*: maproc_436208354
    sndpcmhwparamsgetformatmask*: maproc_436208354
    sndpcmhwparamssetchannels*: maproc_436208354
    sndpcmhwparamssetchannelsnear*: maproc_436208354
    sndpcmhwparamssetchannelsminmax*: maproc_436208354
    sndpcmhwparamssetrateresample*: maproc_436208354
    sndpcmhwparamssetrate*: maproc_436208354
    sndpcmhwparamssetratenear*: maproc_436208354
    sndpcmhwparamssetbuffersizenear*: maproc_436208354
    sndpcmhwparamssetperiodsnear*: maproc_436208354
    sndpcmhwparamssetaccess*: maproc_436208354
    sndpcmhwparamsgetformat*: maproc_436208354
    sndpcmhwparamsgetchannels*: maproc_436208354
    sndpcmhwparamsgetchannelsmin*: maproc_436208354
    sndpcmhwparamsgetchannelsmax*: maproc_436208354
    sndpcmhwparamsgetrate*: maproc_436208354
    sndpcmhwparamsgetratemin*: maproc_436208354
    sndpcmhwparamsgetratemax*: maproc_436208354
    sndpcmhwparamsgetbuffersize*: maproc_436208354
    sndpcmhwparamsgetperiods*: maproc_436208354
    sndpcmhwparamsgetaccess*: maproc_436208354
    sndpcmhwparamstestformat*: maproc_436208354
    sndpcmhwparamstestchannels*: maproc_436208354
    sndpcmhwparamstestrate*: maproc_436208354
    sndpcmhwparams*: maproc_436208354
    sndpcmswparamssizeof*: maproc_436208354
    sndpcmswparamscurrent*: maproc_436208354
    sndpcmswparamsgetboundary*: maproc_436208354
    sndpcmswparamssetavailmin*: maproc_436208354
    sndpcmswparamssetstartthreshold*: maproc_436208354
    sndpcmswparamssetstopthreshold*: maproc_436208354
    sndpcmswparams*: maproc_436208354
    sndpcmformatmasksizeof*: maproc_436208354
    sndpcmformatmasktest*: maproc_436208354
    sndpcmgetchmap*: maproc_436208354
    sndpcmstate*: maproc_436208354
    sndpcmprepare*: maproc_436208354
    sndpcmstart*: maproc_436208354
    sndpcmdrop*: maproc_436208354
    sndpcmdrain*: maproc_436208354
    sndpcmreset*: maproc_436208354
    snddevicenamehint*: maproc_436208354
    snddevicenamegethint*: maproc_436208354
    sndcardgetindex*: maproc_436208354
    snddevicenamefreehint*: maproc_436208354
    sndpcmmmapbegin*: maproc_436208354
    sndpcmmmapcommit*: maproc_436208354
    sndpcmrecover*: maproc_436208354
    sndpcmreadi*: maproc_436208354
    sndpcmwritei*: maproc_436208354
    sndpcmavail*: maproc_436208354
    sndpcmavailupdate*: maproc_436208354
    sndpcmwait*: maproc_436208354
    sndpcmnonblock*: maproc_436208354
    sndpcminfo*: maproc_436208354
    sndpcminfosizeof*: maproc_436208354
    sndpcminfogetname*: maproc_436208354
    sndpcmpolldescriptors*: maproc_436208354
    sndpcmpolldescriptorscount*: maproc_436208354
    sndpcmpolldescriptorsrevents*: maproc_436208354
    sndconfigupdatefreeglobal*: maproc_436208354
    internaldeviceenumlock*: mamutex_436207955
    useverbosedeviceenumeration*: mabool32_436207983

  structmacontext_anon0_t_pulse_t* {.pure, inheritable.} = object
    pulseso*: mahandle_436208452
    pamainloopnew*: maproc_436208354
    pamainloopfree*: maproc_436208354
    pamainloopquit*: maproc_436208354
    pamainloopgetapi*: maproc_436208354
    pamainloopiterate*: maproc_436208354
    pamainloopwakeup*: maproc_436208354
    pathreadedmainloopnew*: maproc_436208354
    pathreadedmainloopfree*: maproc_436208354
    pathreadedmainloopstart*: maproc_436208354
    pathreadedmainloopstop*: maproc_436208354
    pathreadedmainlooplock*: maproc_436208354
    pathreadedmainloopunlock*: maproc_436208354
    pathreadedmainloopwait*: maproc_436208354
    pathreadedmainloopsignal*: maproc_436208354
    pathreadedmainloopaccept*: maproc_436208354
    pathreadedmainloopgetretval*: maproc_436208354
    pathreadedmainloopgetapi*: maproc_436208354
    pathreadedmainloopinthread*: maproc_436208354
    pathreadedmainloopsetname*: maproc_436208354
    pacontextnew*: maproc_436208354
    pacontextunref*: maproc_436208354
    pacontextconnect*: maproc_436208354
    pacontextdisconnect*: maproc_436208354
    pacontextsetstatecallback*: maproc_436208354
    pacontextgetstate*: maproc_436208354
    pacontextgetsinkinfolist*: maproc_436208354
    pacontextgetsourceinfolist*: maproc_436208354
    pacontextgetsinkinfobyname*: maproc_436208354
    pacontextgetsourceinfobyname*: maproc_436208354
    paoperationunref*: maproc_436208354
    paoperationgetstate*: maproc_436208354
    pachannelmapinitextend*: maproc_436208354
    pachannelmapvalid*: maproc_436208354
    pachannelmapcompatible*: maproc_436208354
    pastreamnew*: maproc_436208354
    pastreamunref*: maproc_436208354
    pastreamconnectplayback*: maproc_436208354
    pastreamconnectrecord*: maproc_436208354
    pastreamdisconnect*: maproc_436208354
    pastreamgetstate*: maproc_436208354
    pastreamgetsamplespec*: maproc_436208354
    pastreamgetchannelmap*: maproc_436208354
    pastreamgetbufferattr*: maproc_436208354
    pastreamsetbufferattr*: maproc_436208354
    pastreamgetdevicename*: maproc_436208354
    pastreamsetwritecallback*: maproc_436208354
    pastreamsetreadcallback*: maproc_436208354
    pastreamsetsuspendedcallback*: maproc_436208354
    pastreamsetmovedcallback*: maproc_436208354
    pastreamissuspended*: maproc_436208354
    pastreamflush*: maproc_436208354
    pastreamdrain*: maproc_436208354
    pastreamiscorked*: maproc_436208354
    pastreamcork*: maproc_436208354
    pastreamtrigger*: maproc_436208354
    pastreambeginwrite*: maproc_436208354
    pastreamwrite*: maproc_436208354
    pastreampeek*: maproc_436208354
    pastreamdrop*: maproc_436208354
    pastreamwritablesize*: maproc_436208354
    pastreamreadablesize*: maproc_436208354
    pmainloop*: maptr_436208442
    ppulsecontext*: maptr_436208442
    papplicationname*: cstring
    pservername*: cstring

  structmacontext_anon0_t_jack_t* {.pure, inheritable.} = object
    jackso*: mahandle_436208452
    jackclientopen*: maproc_436208354
    jackclientclose*: maproc_436208354
    jackclientnamesize*: maproc_436208354
    jacksetprocesscallback*: maproc_436208354
    jacksetbuffersizecallback*: maproc_436208354
    jackonshutdown*: maproc_436208354
    jackgetsamplerate*: maproc_436208354
    jackgetbuffersize*: maproc_436208354
    jackgetports*: maproc_436208354
    jackactivate*: maproc_436208354
    jackdeactivate*: maproc_436208354
    jackconnect*: maproc_436208354
    jackportregister*: maproc_436208354
    jackportname*: maproc_436208354
    jackportgetbuffer*: maproc_436208354
    jackfree*: maproc_436208354
    pclientname*: cstring
    trystartserver*: mabool32_436207983

  structmacontext_anon0_t_nullbackend_t* {.pure, inheritable.} = object
    internalunused*: cint

  structmacontext_anon0_t* {.union.} = object
    alsa*: structmacontext_anon0_t_alsa_t
    pulse*: structmacontext_anon0_t_pulse_t
    jack*: structmacontext_anon0_t_jack_t
    nullbackend*: structmacontext_anon0_t_nullbackend_t

  structmacontext_anon1_t_posix_t* {.pure, inheritable.} = object
    pthreadso*: mahandle_436208452
    pthreadcreate*: maproc_436208354
    pthreadjoin*: maproc_436208354
    pthreadmutexinit*: maproc_436208354
    pthreadmutexdestroy*: maproc_436208354
    pthreadmutexlock*: maproc_436208354
    pthreadmutexunlock*: maproc_436208354
    pthreadcondinit*: maproc_436208354
    pthreadconddestroy*: maproc_436208354
    pthreadcondwait*: maproc_436208354
    pthreadcondsignal*: maproc_436208354
    pthreadattrinit*: maproc_436208354
    pthreadattrdestroy*: maproc_436208354
    pthreadattrsetschedpolicy*: maproc_436208354
    pthreadattrgetschedparam*: maproc_436208354
    pthreadattrsetschedparam*: maproc_436208354

  structmacontext_anon1_t* {.union.} = object
    posix*: structmacontext_anon1_t_posix_t
    internalunused*: cint

  structmacontext_436207986* {.pure, inheritable.} = object
    callbacks*: mabackendcallbacks_436207957 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:6819:8
    backend*: mabackend_436208370
    plog*: ptr malog_436207937
    log*: malog_436207937
    threadpriority*: mathreadpriority_436208430
    threadstacksize*: csize_t
    puserdata*: pointer
    allocationcallbacks*: maallocationcallbacks_436208126
    deviceenumlock*: mamutex_436207955
    deviceinfolock*: mamutex_436207955
    deviceinfocapacity*: mauint32_436208046
    playbackdeviceinfocount*: mauint32_436208046
    capturedeviceinfocount*: mauint32_436208046
    pdeviceinfos*: ptr madeviceinfo_436208194
    anon0*: structmacontext_anon0_t
    anon1*: structmacontext_anon1_t

  malogcallback_436207988* {.pure, inheritable.} = object
    onlog*: malogcallbackproc_436208164 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4289:9
    puserdata*: pointer

  malpf1config_436207990* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4374:9
    channels*: mauint32_436208046
    samplerate*: mauint32_436208046
    cutofffrequency*: cdouble
    q*: cdouble

  maresourcemanagerdatastream_436207992* = structmaresourcemanagerdatastream_436208324 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9893:53
  maaudiobufferref_436207996* {.pure, inheritable.} = object
    ds*: madatasourcebase_436208236 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9351:9
    format*: maformat_436208208
    channels*: mauint32_436208046
    samplerate*: mauint32_436208046
    cursor*: mauint64_436208386
    sizeinframes*: mauint64_436208386
    pdata*: pointer

  maresourcemanagerdatabuffernode_436208000* = structmaresourcemanagerdatabuffernode_436208316 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9891:53
  manodeoutputbus_436208002* = structmanodeoutputbus_436208376 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10296:35
  maenumdevicescallbackproc_436208004* = proc (a0: ptr macontext_436208478;
      a1: madevicetype_436208060; a2: ptr madeviceinfo_436208194; a3: pointer): mabool32_436207983 {.
      cdecl.}                ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:6657:22
  mapthreadt_436208006* = pthreadt_436208108 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3759:33
  mabool8_436208008* = mauint8_436207941 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3712:21
  madatasourcegetnextproc_436208012* = proc (a0: pointer): pointer {.cdecl.} ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9304:28
  mapthreadmutext_436208014* = pthreadmutext_436208212 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3760:33
  manodeconfig_436208016* {.pure, inheritable.} = object
    vtable*: ptr manodevtable_436208220 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10279:9
    initialstate*: manodestate_436208054
    inputbuscount*: mauint32_436208046
    outputbuscount*: mauint32_436208046
    pinputchannels*: ptr mauint32_436208046
    poutputchannels*: ptr mauint32_436208046

  mapagedaudiobuffer_436208025* {.pure, inheritable.} = object
    ds*: madatasourcebase_436208236 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9457:9
    pdata*: ptr mapagedaudiobufferdata_436208048
    pcurrent*: ptr mapagedaudiobufferpage_436208342
    relativecursor*: mauint64_436208386
    absolutecursor*: mauint64_436208386

  mafader_436208029* {.pure, inheritable.} = object
    config*: mafaderconfig_436208408 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4843:9
    volumebeg*: cfloat
    volumeend*: cfloat
    lengthinframes*: mauint64_436208386
    cursorinframes*: mauint64_436208386

  maloshelfnode_436208031* {.pure, inheritable.} = object
    basenode*: manodebase_436208124 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10608:9
    loshelf*: maloshelf2_436208262

  madevice_436208033* = structmadevice_436208158 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3910:26
  malinearresamplerconfig_436208037* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:5046:9
    channels*: mauint32_436208046
    sampleratein*: mauint32_436208046
    samplerateout*: mauint32_436208046
    lpforder*: mauint32_436208046
    lpfnyquistfactor*: cdouble

  maencoder_436208039* = structmaencoder_436208414 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9729:27
  mauint32_436208045* = cuint ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3686:37
  mapagedaudiobufferdata_436208047* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9430:9
    channels*: mauint32_436208046
    head*: mapagedaudiobufferpage_436208342
    ptail*: ptr mapagedaudiobufferpage_436208342

  madecodertellproc_436208049* = proc (a0: ptr madecoder_436208076;
                                       a1: ptr maint64_436208330): maresult_436208042 {.
      cdecl.}                ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9588:22
  maasyncnotificationpoll_436208051* {.pure, inheritable.} = object
    cb*: maasyncnotificationcallbacks_436208456 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:5786:9
    signalled*: mabool32_436207983

  maresourcemanagerpipelinestagenotification_436208057* {.pure, inheritable.} = object
    pnotification*: pointer  ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9909:9
    pfence*: ptr mafence_436208110

  mabpfnode_436208061* {.pure, inheritable.} = object
    basenode*: manodebase_436208124 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10539:9
    bpf*: mabpf_436208074

  maloshelf2config_436208063* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4672:9
    channels*: mauint32_436208046
    samplerate*: mauint32_436208046
    gaindb*: cdouble
    shelfslope*: cdouble
    frequency*: cdouble

  masemaphore_436208065* {.pure, inheritable.} = object
    value*: cint             ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4211:9
    lock*: mapthreadmutext_436208015
    cond*: mapthreadcondt_436208088

  structpthreadmutexs_436208067* {.pure, inheritable.} = object
    compilerlock*: cint      ## Generated based on /usr/include/x86_64-linux-gnu/bits/struct_mutex.h:22:8
    compilercount*: cuint
    compilerowner*: cint
    compilernusers*: cuint
    compilerkind*: cint
    compilerspins*: cshort
    compilerelision*: cshort
    compilerlist*: compilerpthreadlistt_436207981

  maencoderwritepcmframesproc_436208069* = proc (a0: ptr maencoder_436208040;
      a1: pointer; a2: mauint64_436208386; a3: ptr mauint64_436208386): maresult_436208042 {.
      cdecl.}                ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9735:22
  mabpf_436208073* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4585:9
    channels*: mauint32_436208046
    bpf2count*: mauint32_436208046
    pbpf2*: ptr mabpf2_436208106
    internalpheap*: pointer
    internalownsheap*: mabool32_436207983

  madecoder_436208075* = structmadecoder_436208094 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9564:27
  structmaresourcemanagerdatabuffer_connector_t* {.union.} = object
    decoder*: madecoder_436208076
    buffer*: maaudiobuffer_436208298
    pagedbuffer*: mapagedaudiobuffer_436208026

  structmaresourcemanagerdatabuffer_436208077* {.pure, inheritable.} = object
    ds*: madatasourcebase_436208236 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10027:8
    presourcemanager*: ptr maresourcemanager_436208318
    pnode*: ptr maresourcemanagerdatabuffernode_436208001
    flags*: mauint32_436208046
    executioncounter*: mauint32_436208046
    executionpointer*: mauint32_436208046
    seektargetinpcmframes*: mauint64_436208386
    seektocursoronnextread*: mabool32_436207983
    result*: maresult_436208042
    islooping*: mabool32_436207983
    isconnectorinitialized*: mabool32_436207983
    connector*: structmaresourcemanagerdatabuffer_connector_t

  maspatializerconfig_436208081* {.pure, inheritable.} = object
    channelsin*: mauint32_436208046 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4938:9
    channelsout*: mauint32_436208046
    pchannelmapin*: ptr machannel_436208128
    attenuationmodel*: maattenuationmodel_436207961
    positioning*: mapositioning_436208284
    handedness*: mahandedness_436208352
    mingain*: cfloat
    maxgain*: cfloat
    mindistance*: cfloat
    maxdistance*: cfloat
    rolloff*: cfloat
    coneinnerangleinradians*: cfloat
    coneouterangleinradians*: cfloat
    coneoutergain*: cfloat
    dopplerfactor*: cfloat
    directionalattenuationfactor*: cfloat
    gainsmoothtimeinframes*: mauint32_436208046

  manotchnode_436208083* {.pure, inheritable.} = object
    basenode*: manodebase_436208124 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10562:9
    notch*: manotch2_436208244

  mabiquadnodeconfig_436208085* {.pure, inheritable.} = object
    nodeconfig*: manodeconfig_436208017 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10461:9
    biquad*: mabiquadconfig_436208134

  mapthreadcondt_436208087* = pthreadcondt_436208320 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3761:33
  structmadecoder_data_t_vfs_t* {.pure, inheritable.} = object
    pvfs*: pointer
    file*: mavfsfile_436208308

  structmadecoder_data_t_memory_t* {.pure, inheritable.} = object
    pdata*: ptr mauint8_436207941
    datasize*: csize_t
    currentreadpos*: csize_t

  structmadecoder_data_t* {.union.} = object
    vfs*: structmadecoder_data_t_vfs_t
    memory*: structmadecoder_data_t_memory_t

  structmadecoder_436208093* {.pure, inheritable.} = object
    ds*: madatasourcebase_436208236 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9607:8
    pbackend*: pointer
    pbackendvtable*: ptr madecodingbackendvtable_436207949
    pbackenduserdata*: pointer
    onread*: madecoderreadproc_436208272
    onseek*: madecoderseekproc_436208412
    ontell*: madecodertellproc_436208050
    puserdata*: pointer
    readpointerinpcmframes*: mauint64_436208386
    outputformat*: maformat_436208208
    outputchannels*: mauint32_436208046
    outputsamplerate*: mauint32_436208046
    converterfield*: madataconverter_436208226
    pinputcache*: pointer
    inputcachecap*: mauint64_436208386
    inputcacheconsumed*: mauint64_436208386
    inputcacheremaining*: mauint64_436208386
    allocationcallbacks*: maallocationcallbacks_436208126
    data*: structmadecoder_data_t

  mahpf1_436208095* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4475:9
    channels*: mauint32_436208046
    a*: mabiquadcoefficient_436208438
    pr1*: ptr mabiquadcoefficient_436208438
    internalpheap*: pointer
    internalownsheap*: mabool32_436207983

  mapannerconfig_436208097* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4805:9
    channels*: mauint32_436208046
    mode*: mapanmode_436208380
    pan*: cfloat

  mavec3f_436208099* {.pure, inheritable.} = object
    x*: cfloat               ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4861:9
    y*: cfloat
    z*: cfloat

  maaudiobufferconfig_436208101* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9376:9
    channels*: mauint32_436208046
    samplerate*: mauint32_436208046
    sizeinframes*: mauint64_436208386
    pdata*: pointer
    allocationcallbacks*: maallocationcallbacks_436208126

  maspinlock_436208103* = mauint32_436208046 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4165:19
  mabpf2_436208105* {.pure, inheritable.} = object
    bq*: mabiquad_436208444  ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4560:9

  pthreadt_436208107* = culong ## Generated based on /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h:27:27
  mafence_436208109* {.pure, inheritable.} = object
    e*: maevent_436208160    ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:5752:9
    counter*: mauint32_436208046

  structmabackendcallbacks_436208111* {.pure, inheritable.} = object
    oncontextinit*: proc (a0: ptr macontext_436208478; a1: ptr macontextconfig_436208188;
                          a2: ptr mabackendcallbacks_436207957): maresult_436208042 {.
        cdecl.}              ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:6744:8
    oncontextuninit*: proc (a0: ptr macontext_436208478): maresult_436208042 {.
        cdecl.}
    oncontextenumeratedevices*: proc (a0: ptr macontext_436208478;
                                      a1: maenumdevicescallbackproc_436208005;
                                      a2: pointer): maresult_436208042 {.cdecl.}
    oncontextgetdeviceinfo*: proc (a0: ptr macontext_436208478;
                                   a1: madevicetype_436208060;
                                   a2: ptr madeviceid_436208334;
                                   a3: ptr madeviceinfo_436208194): maresult_436208042 {.
        cdecl.}
    ondeviceinit*: proc (a0: ptr madevice_436208034; a1: ptr madeviceconfig_436207953;
                         a2: ptr madevicedescriptor_436208274;
                         a3: ptr madevicedescriptor_436208274): maresult_436208042 {.
        cdecl.}
    ondeviceuninit*: proc (a0: ptr madevice_436208034): maresult_436208042 {.
        cdecl.}
    ondevicestart*: proc (a0: ptr madevice_436208034): maresult_436208042 {.
        cdecl.}
    ondevicestop*: proc (a0: ptr madevice_436208034): maresult_436208042 {.cdecl.}
    ondeviceread*: proc (a0: ptr madevice_436208034; a1: pointer; a2: mauint32_436208046;
                         a3: ptr mauint32_436208046): maresult_436208042 {.cdecl.}
    ondevicewrite*: proc (a0: ptr madevice_436208034; a1: pointer; a2: mauint32_436208046;
                          a3: ptr mauint32_436208046): maresult_436208042 {.
        cdecl.}
    ondevicedataloop*: proc (a0: ptr madevice_436208034): maresult_436208042 {.
        cdecl.}
    ondevicedataloopwakeup*: proc (a0: ptr madevice_436208034): maresult_436208042 {.
        cdecl.}
    ondevicegetinfo*: proc (a0: ptr madevice_436208034; a1: madevicetype_436208060;
                            a2: ptr madeviceinfo_436208194): maresult_436208042 {.
        cdecl.}

  malpfconfig_436208113* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4422:9
    channels*: mauint32_436208046
    samplerate*: mauint32_436208046
    cutofffrequency*: cdouble
    order*: mauint32_436208046

  structmaresourcemanager_436208115* {.pure, inheritable.} = object
    config*: maresourcemanagerconfig_436208152 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10107:8
    prootdatabuffernode*: ptr maresourcemanagerdatabuffernode_436208001
    databufferbstlock*: mamutex_436207955
    jobthreads*: array[64'i64, mathread_436208326]
    jobqueue*: majobqueue_436208472
    defaultvfs*: madefaultvfs_436208310
    log*: malog_436207937

  mahpfnodeconfig_436208117* {.pure, inheritable.} = object
    nodeconfig*: manodeconfig_436208017 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10507:9
    hpf*: mahpfconfig_436208460

  masplitternodeconfig_436208119* {.pure, inheritable.} = object
    nodeconfig*: manodeconfig_436208017 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10440:9
    channels*: mauint32_436208046

  structmanodeinputbus_436208121* {.pure, inheritable.} = object
    head*: manodeoutputbus_436208003 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10321:8
    nextcounter*: mauint32_436208046
    lock*: maspinlock_436208104
    channels*: mauint8_436207941

  manodebase_436208123* = structmanodebase_436208416 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10333:29
  maallocationcallbacks_436208125* {.pure, inheritable.} = object
    puserdata*: pointer      ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4150:9
    onmalloc*: proc (a0: csize_t; a1: pointer): pointer {.cdecl.}
    onrealloc*: proc (a0: pointer; a1: csize_t; a2: pointer): pointer {.cdecl.}
    onfree*: proc (a0: pointer; a1: pointer): void {.cdecl.}

  machannel_436208127* = mauint8_436207941 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3912:18
  mafileinfo_436208129* {.pure, inheritable.} = object
    sizeinbytes*: mauint64_436208386 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9500:9

  manotch2config_436208131* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4611:9
    channels*: mauint32_436208046
    samplerate*: mauint32_436208046
    q*: cdouble
    frequency*: cdouble

  mabiquadconfig_436208133* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4328:9
    channels*: mauint32_436208046
    b0*: cdouble
    b1*: cdouble
    b2*: cdouble
    a0*: cdouble
    a1*: cdouble
    a2*: cdouble

  mahpfnode_436208141* {.pure, inheritable.} = object
    basenode*: manodebase_436208124 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10516:9
    hpf*: mahpf_436208150

  marb_436208143* {.pure, inheritable.} = object
    pbuffer*: pointer        ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:5524:9
    subbuffersizeinbytes*: mauint32_436208046
    subbuffercount*: mauint32_436208046
    subbufferstrideinbytes*: mauint32_436208046
    encodedreadoffset*: mauint32_436208046
    encodedwriteoffset*: mauint32_436208046
    ownsbuffer*: mabool8_436208009
    clearonwriteacquire*: mabool8_436208009
    allocationcallbacks*: maallocationcallbacks_436208126

  masoundgroup_436208145* = masound_436208210 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10796:25
  mauint16_436208147* = cushort ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3684:37
  mahpf_436208149* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4520:9
    channels*: mauint32_436208046
    samplerate*: mauint32_436208046
    hpf1count*: mauint32_436208046
    hpf2count*: mauint32_436208046
    phpf1*: ptr mahpf1_436208096
    phpf2*: ptr mahpf2_436208366
    internalpheap*: pointer
    internalownsheap*: mabool32_436207983

  maresourcemanagerconfig_436208151* {.pure, inheritable.} = object
    allocationcallbacks*: maallocationcallbacks_436208126 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10089:9
    plog*: ptr malog_436207937
    decodedformat*: maformat_436208208
    decodedchannels*: mauint32_436208046
    decodedsamplerate*: mauint32_436208046
    jobthreadcount*: mauint32_436208046
    jobqueuecapacity*: mauint32_436208046
    flags*: mauint32_436208046
    pvfs*: pointer
    ppcustomdecodingbackendvtables*: ptr ptr madecodingbackendvtable_436207949
    customdecodingbackendcount*: mauint32_436208046
    pcustomdecodingbackenduserdata*: pointer

  maengine_436208153* = structmaengine_436208446 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10674:26
  structmadevice_resampling_t_linear_t* {.pure, inheritable.} = object
    lpforder*: mauint32_436208046

  structmadevice_resampling_t* {.pure, inheritable.} = object
    algorithm*: maresamplealgorithm_436208198
    pbackendvtable*: ptr maresamplingbackendvtable_436208232
    pbackenduserdata*: pointer
    linear*: structmadevice_resampling_t_linear_t

  structmadevice_playback_t* {.pure, inheritable.} = object
    pid*: ptr madeviceid_436208334
    id*: madeviceid_436208334
    name*: array[256'i64, cschar]
    sharemode*: masharemode_436207995
    format*: maformat_436208208
    channels*: mauint32_436208046
    channelmap*: array[254'i64, machannel_436208128]
    internalformat*: maformat_436208208
    internalchannels*: mauint32_436208046
    internalsamplerate*: mauint32_436208046
    internalchannelmap*: array[254'i64, machannel_436208128]
    internalperiodsizeinframes*: mauint32_436208046
    internalperiods*: mauint32_436208046
    channelmixmode*: machannelmixmode_436208454
    converterfield*: madataconverter_436208226
    pintermediarybuffer*: pointer
    intermediarybuffercap*: mauint32_436208046
    intermediarybufferlen*: mauint32_436208046
    pinputcache*: pointer
    inputcachecap*: mauint64_436208386
    inputcacheconsumed*: mauint64_436208386
    inputcacheremaining*: mauint64_436208386

  structmadevice_capture_t* {.pure, inheritable.} = object
    pid*: ptr madeviceid_436208334
    id*: madeviceid_436208334
    name*: array[256'i64, cschar]
    sharemode*: masharemode_436207995
    format*: maformat_436208208
    channels*: mauint32_436208046
    channelmap*: array[254'i64, machannel_436208128]
    internalformat*: maformat_436208208
    internalchannels*: mauint32_436208046
    internalsamplerate*: mauint32_436208046
    internalchannelmap*: array[254'i64, machannel_436208128]
    internalperiodsizeinframes*: mauint32_436208046
    internalperiods*: mauint32_436208046
    channelmixmode*: machannelmixmode_436208454
    converterfield*: madataconverter_436208226
    pintermediarybuffer*: pointer
    intermediarybuffercap*: mauint32_436208046
    intermediarybufferlen*: mauint32_436208046

  structmadevice_anon0_t_alsa_t* {.pure, inheritable.} = object
    ppcmplayback*: maptr_436208442
    ppcmcapture*: maptr_436208442
    ppolldescriptorsplayback*: pointer
    ppolldescriptorscapture*: pointer
    polldescriptorcountplayback*: cint
    polldescriptorcountcapture*: cint
    wakeupfdplayback*: cint
    wakeupfdcapture*: cint
    isusingmmapplayback*: mabool8_436208009
    isusingmmapcapture*: mabool8_436208009

  structmadevice_anon0_t_pulse_t* {.pure, inheritable.} = object
    pmainloop*: maptr_436208442
    ppulsecontext*: maptr_436208442
    pstreamplayback*: maptr_436208442
    pstreamcapture*: maptr_436208442

  structmadevice_anon0_t_jack_t* {.pure, inheritable.} = object
    pclient*: maptr_436208442
    ppportsplayback*: ptr maptr_436208442
    ppportscapture*: ptr maptr_436208442
    pintermediarybufferplayback*: ptr cfloat
    pintermediarybuffercapture*: ptr cfloat

  structmadevice_anon0_t_nulldevice_t* {.pure, inheritable.} = object
    devicethread*: mathread_436208326
    operationevent*: maevent_436208160
    operationcompletionevent*: maevent_436208160
    operationsemaphore*: masemaphore_436208066
    operation*: mauint32_436208046
    operationresult*: maresult_436208042
    timer*: matimer_436208234
    priorruntime*: cdouble
    currentperiodframesremainingplayback*: mauint32_436208046
    currentperiodframesremainingcapture*: mauint32_436208046
    lastprocessedframeplayback*: mauint64_436208386
    lastprocessedframecapture*: mauint64_436208386
    isstarted*: mabool32_436207983

  structmadevice_anon0_t* {.union.} = object
    alsa*: structmadevice_anon0_t_alsa_t
    pulse*: structmadevice_anon0_t_pulse_t
    jack*: structmadevice_anon0_t_jack_t
    nulldevice*: structmadevice_anon0_t_nulldevice_t

  structmadevice_436208157* {.pure, inheritable.} = object
    pcontext*: ptr macontext_436208478 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:7232:8
    typefield*: madevicetype_436208060
    samplerate*: mauint32_436208046
    state*: madevicestate_436208418
    ondata*: madevicedataproc_436208190
    onnotification*: madevicenotificationproc_436208420
    onstop*: mastopproc_436208428
    puserdata*: pointer
    startstoplock*: mamutex_436207955
    wakeupevent*: maevent_436208160
    startevent*: maevent_436208160
    stopevent*: maevent_436208160
    thread*: mathread_436208326
    workresult*: maresult_436208042
    isownerofcontext*: mabool8_436208009
    nopresilencedoutputbuffer*: mabool8_436208009
    noclip*: mabool8_436208009
    nodisabledenormals*: mabool8_436208009
    nofixedsizedcallback*: mabool8_436208009
    mastervolumefactor*: cfloat
    duplexrb*: maduplexrb_436208374
    resampling*: structmadevice_resampling_t
    playback*: structmadevice_playback_t
    capture*: structmadevice_capture_t
    anon0*: structmadevice_anon0_t

  maevent_436208159* {.pure, inheritable.} = object
    value*: mauint32_436208046 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4199:9
    lock*: mapthreadmutext_436208015
    cond*: mapthreadcondt_436208088

  maencoderconfig_436208161* {.pure, inheritable.} = object
    encodingformat*: maencodingformat_436208028 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9737:9
    format*: maformat_436208208
    channels*: mauint32_436208046
    samplerate*: mauint32_436208046
    allocationcallbacks*: maallocationcallbacks_436208126

  malogcallbackproc_436208163* = proc (a0: pointer; a1: mauint32_436208046;
                                       a2: cstring): void {.cdecl.} ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4287:17
  madatasourcenode_436208165* {.pure, inheritable.} = object
    base*: manodebase_436208124 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10427:9
    pdatasource*: pointer

  maencoderwriteproc_436208169* = proc (a0: ptr maencoder_436208040;
                                        a1: pointer; a2: csize_t;
                                        a3: ptr csize_t): maresult_436208042 {.
      cdecl.}                ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9731:22
  manoise_state_t_pink_t* {.pure, inheritable.} = object
    bin*: ptr ptr cdouble
    accumulation*: ptr cdouble
    counter*: ptr mauint32_436208046

  manoise_state_t_brownian_t* {.pure, inheritable.} = object
    accumulation*: ptr cdouble

  manoise_state_t* {.union.} = object
    pink*: manoise_state_t_pink_t
    brownian*: manoise_state_t_brownian_t

  manoise_436208171* {.pure, inheritable.} = object
    ds*: madatasourcevtable_436208174 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9842:9
    config*: manoiseconfig_436208184
    lcg*: malcg_436208276
    state*: manoise_state_t
    internalpheap*: pointer
    internalownsheap*: mabool32_436207983

  madatasourcevtable_436208173* {.pure, inheritable.} = object
    onread*: proc (a0: pointer; a1: pointer; a2: mauint64_436208386;
                   a3: ptr mauint64_436208386): maresult_436208042 {.cdecl.} ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9293:9
    onseek*: proc (a0: pointer; a1: mauint64_436208386): maresult_436208042 {.
        cdecl.}
    ongetdataformat*: proc (a0: pointer; a1: ptr maformat_436208208;
                            a2: ptr mauint32_436208046; a3: ptr mauint32_436208046;
                            a4: ptr machannel_436208128; a5: csize_t): maresult_436208042 {.
        cdecl.}
    ongetcursor*: proc (a0: pointer; a1: ptr mauint64_436208386): maresult_436208042 {.
        cdecl.}
    ongetlength*: proc (a0: pointer; a1: ptr mauint64_436208386): maresult_436208042 {.
        cdecl.}
    onsetlooping*: proc (a0: pointer; a1: mabool32_436207983): maresult_436208042 {.
        cdecl.}
    flags*: mauint32_436208046

  maresamplerconfig_436208177* = structmaresamplerconfig_436207985 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:5096:36
  maencoderseekproc_436208179* = proc (a0: ptr maencoder_436208040; a1: maint64_436208330;
                                       a2: maseekorigin_436208206): maresult_436208042 {.
      cdecl.}                ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9732:22
  madevicejobthreadconfig_436208181* {.pure, inheritable.} = object
    nothread*: mabool32_436207983 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:6231:9
    jobqueuecapacity*: mauint32_436208046
    jobqueueflags*: mauint32_436208046

  manoiseconfig_436208183* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9830:9
    channels*: mauint32_436208046
    typefield*: manoisetype_436208176
    seed*: maint32_436208356
    amplitude*: cdouble
    duplicatechannels*: mabool32_436207983

  machannelconverter_weights_t* {.union.} = object
    f32*: ptr ptr cfloat
    s16*: ptr ptr maint32_436208356

  machannelconverter_436208185* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:5272:9
    channelsin*: mauint32_436208046
    channelsout*: mauint32_436208046
    mixingmode*: machannelmixmode_436208454
    conversionpath*: machannelconversionpath_436207977
    pchannelmapin*: ptr machannel_436208128
    pchannelmapout*: ptr machannel_436208128
    pshuffletable*: ptr mauint8_436207941
    weights*: machannelconverter_weights_t
    internalpheap*: pointer
    internalownsheap*: mabool32_436207983

  macontextconfig_436208187* = structmacontextconfig_436207947 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:6536:37
  madevicedataproc_436208189* = proc (a0: ptr madevice_436208034; a1: pointer;
                                      a2: pointer; a3: mauint32_436208046): void {.
      cdecl.}                ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:6372:17
  mahishelf2_436208191* {.pure, inheritable.} = object
    bq*: mabiquad_436208444  ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4715:9

  madeviceinfo_anon0_t* {.pure, inheritable.} = object
    format*: maformat_436208208
    channels*: mauint32_436208046
    samplerate*: mauint32_436208046
    flags*: mauint32_436208046

  madeviceinfo_nativedataformats_t* {.pure, inheritable.} = object
    format*: maformat_436208208
    channels*: mauint32_436208046
    samplerate*: mauint32_436208046
    flags*: mauint32_436208046

  madeviceinfo_436208193* {.pure, inheritable.} = object
    id*: madeviceid_436208334 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:6546:9
    name*: array[256'i64, cschar]
    isdefault*: mabool32_436207983
    nativedataformatcount*: mauint32_436208046
    anon0*: madeviceinfo_anon0_t
    nativedataformats*: array[64'i64, madeviceinfo_nativedataformats_t]

  mapeak2config_436208195* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4641:9
    channels*: mauint32_436208046
    samplerate*: mauint32_436208046
    gaindb*: cdouble
    q*: cdouble
    frequency*: cdouble

  madecoderconfig_436208199* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9590:9
    channels*: mauint32_436208046
    samplerate*: mauint32_436208046
    pchannelmap*: ptr machannel_436208128
    channelmixmode*: machannelmixmode_436208454
    dithermode*: madithermode_436208168
    resampling*: maresamplerconfig_436208178
    allocationcallbacks*: maallocationcallbacks_436208126
    encodingformat*: maencodingformat_436208028
    seekpointcount*: mauint32_436208046
    ppcustombackendvtables*: ptr ptr madecodingbackendvtable_436207949
    custombackendcount*: mauint32_436208046
    pcustombackenduserdata*: pointer

  madelaynodeconfig_436208201* {.pure, inheritable.} = object
    nodeconfig*: manodeconfig_436208017 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10642:9
    delay*: madelayconfig_436208304

  mabpf2config_436208203* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4549:9
    channels*: mauint32_436208046
    samplerate*: mauint32_436208046
    cutofffrequency*: cdouble
    q*: cdouble

  masound_436208209* = structmasound_436208214 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10675:26
  pthreadmutext_436208211* {.union.} = object
    compilerdata*: structpthreadmutexs_436208068 ## Generated based on /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h:67:9
    compilersize*: array[40'i64, cschar]
    compileralign*: clong

  structmasound_436208213* {.pure, inheritable.} = object
    enginenode*: maenginenode_436208402 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10768:8
    pdatasource*: pointer
    seektarget*: mauint64_436208386
    atend*: mabool32_436207983
    ownsdatasource*: mabool8_436208009
    presourcemanagerdatasource*: ptr maresourcemanagerdatasource_436208440

  structmadeviceconfig_playback_t* {.pure, inheritable.} = object
    pdeviceid*: ptr madeviceid_436208334
    format*: maformat_436208208
    channels*: mauint32_436208046
    pchannelmap*: ptr machannel_436208128
    channelmixmode*: machannelmixmode_436208454
    sharemode*: masharemode_436207995

  structmadeviceconfig_capture_t* {.pure, inheritable.} = object
    pdeviceid*: ptr madeviceid_436208334
    format*: maformat_436208208
    channels*: mauint32_436208046
    pchannelmap*: ptr machannel_436208128
    channelmixmode*: machannelmixmode_436208454
    sharemode*: masharemode_436207995

  structmadeviceconfig_wasapi_t* {.pure, inheritable.} = object
    noautoconvertsrc*: mabool8_436208009
    nodefaultqualitysrc*: mabool8_436208009
    noautostreamrouting*: mabool8_436208009
    nohardwareoffloading*: mabool8_436208009

  structmadeviceconfig_alsa_t* {.pure, inheritable.} = object
    nommap*: mabool32_436207983
    noautoformat*: mabool32_436207983
    noautochannels*: mabool32_436207983
    noautoresample*: mabool32_436207983

  structmadeviceconfig_pulse_t* {.pure, inheritable.} = object
    pstreamnameplayback*: cstring
    pstreamnamecapture*: cstring

  structmadeviceconfig_coreaudio_t* {.pure, inheritable.} = object
    allownominalsampleratechange*: mabool32_436207983

  structmadeviceconfig_opensl_t* {.pure, inheritable.} = object
    streamtype*: maopenslstreamtype_436208044
    recordingpreset*: maopenslrecordingpreset_436208092

  structmadeviceconfig_aaudio_t* {.pure, inheritable.} = object
    usage*: maaaudiousage_436208372
    contenttype*: maaaudiocontenttype_436208270
    inputpreset*: maaaudioinputpreset_436208140
    noautostartafterreroute*: mabool32_436207983

  structmadeviceconfig_436208215* {.pure, inheritable.} = object
    devicetype*: madevicetype_436208060 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:6563:8
    samplerate*: mauint32_436208046
    periodsizeinframes*: mauint32_436208046
    periodsizeinmilliseconds*: mauint32_436208046
    periods*: mauint32_436208046
    performanceprofile*: maperformanceprofile_436208011
    nopresilencedoutputbuffer*: mabool8_436208009
    noclip*: mabool8_436208009
    nodisabledenormals*: mabool8_436208009
    nofixedsizedcallback*: mabool8_436208009
    datacallback*: madevicedataproc_436208190
    notificationcallback*: madevicenotificationproc_436208420
    stopcallback*: mastopproc_436208428
    puserdata*: pointer
    resampling*: maresamplerconfig_436208178
    playback*: structmadeviceconfig_playback_t
    capture*: structmadeviceconfig_capture_t
    wasapi*: structmadeviceconfig_wasapi_t
    alsa*: structmadeviceconfig_alsa_t
    pulse*: structmadeviceconfig_pulse_t
    coreaudio*: structmadeviceconfig_coreaudio_t
    opensl*: structmadeviceconfig_opensl_t
    aaudio*: structmadeviceconfig_aaudio_t

  maencoderuninitproc_436208217* = proc (a0: ptr maencoder_436208040): void {.
      cdecl.}                ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9734:22
  manodevtable_436208219* {.pure, inheritable.} = object
    onprocess*: proc (a0: pointer; a1: ptr ptr cfloat; a2: ptr mauint32_436208046;
                      a3: ptr ptr cfloat; a4: ptr mauint32_436208046): void {.
        cdecl.}              ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10236:9
    ongetrequiredinputframecount*: proc (a0: pointer; a1: mauint32_436208046;
        a2: ptr mauint32_436208046): maresult_436208042 {.cdecl.}
    inputbuscount*: mauint8_436207941
    outputbuscount*: mauint8_436207941
    flags*: mauint32_436208046

  structmanodegraph_436208221* {.pure, inheritable.} = object
    base*: manodebase_436208124 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10396:8
    endpoint*: manodebase_436208124
    nodecachecapinframes*: mauint16_436208148
    isreading*: mabool32_436207983

  madatasourceconfig_436208223* {.pure, inheritable.} = object
    vtable*: ptr madatasourcevtable_436208174 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9306:9

  madataconverter_436208225* {.pure, inheritable.} = object
    formatin*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:5338:9
    formatout*: maformat_436208208
    channelsin*: mauint32_436208046
    channelsout*: mauint32_436208046
    sampleratein*: mauint32_436208046
    samplerateout*: mauint32_436208046
    dithermode*: madithermode_436208168
    executionpath*: madataconverterexecutionpath_436208340
    channelconverter*: machannelconverter_436208186
    resampler*: maresampler_436207965
    haspreformatconversion*: mabool8_436208009
    haspostformatconversion*: mabool8_436208009
    haschannelconverter*: mabool8_436208009
    hasresampler*: mabool8_436208009
    ispassthrough*: mabool8_436208009
    internalownsheap*: mabool8_436208009
    internalpheap*: pointer

  mahpf1config_436208227* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4463:9
    channels*: mauint32_436208046
    samplerate*: mauint32_436208046
    cutofffrequency*: cdouble
    q*: cdouble

  maresamplingbackendvtable_436208231* {.pure, inheritable.} = object
    ongetheapsize*: proc (a0: pointer; a1: ptr maresamplerconfig_436208178;
                          a2: ptr csize_t): maresult_436208042 {.cdecl.} ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:5099:9
    oninit*: proc (a0: pointer; a1: ptr maresamplerconfig_436208178;
                   a2: pointer; a3: ptr pointer): maresult_436208042 {.cdecl.}
    onuninit*: proc (a0: pointer; a1: pointer; a2: ptr maallocationcallbacks_436208126): void {.
        cdecl.}
    onprocess*: proc (a0: pointer; a1: pointer; a2: pointer; a3: ptr mauint64_436208386;
                      a4: pointer; a5: ptr mauint64_436208386): maresult_436208042 {.
        cdecl.}
    onsetrate*: proc (a0: pointer; a1: pointer; a2: mauint32_436208046;
                      a3: mauint32_436208046): maresult_436208042 {.cdecl.}
    ongetinputlatency*: proc (a0: pointer; a1: pointer): mauint64_436208386 {.
        cdecl.}
    ongetoutputlatency*: proc (a0: pointer; a1: pointer): mauint64_436208386 {.
        cdecl.}
    ongetrequiredinputframecount*: proc (a0: pointer; a1: pointer; a2: mauint64_436208386;
        a3: ptr mauint64_436208386): maresult_436208042 {.cdecl.}
    ongetexpectedoutputframecount*: proc (a0: pointer; a1: pointer;
        a2: mauint64_436208386; a3: ptr mauint64_436208386): maresult_436208042 {.
        cdecl.}
    onreset*: proc (a0: pointer; a1: pointer): maresult_436208042 {.cdecl.}

  matimer_436208233* {.union.} = object
    counter*: maint64_436208330 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:6505:9
    counterd*: cdouble

  madatasourcebase_436208235* {.pure, inheritable.} = object
    vtable*: ptr madatasourcevtable_436208174 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9314:9
    rangebeginframes*: mauint64_436208386
    rangeendinframes*: mauint64_436208386
    loopbeginframes*: mauint64_436208386
    loopendinframes*: mauint64_436208386
    pcurrent*: pointer
    pnext*: pointer
    ongetnext*: madatasourcegetnextproc_436208013
    islooping*: mabool32_436207983

  mahishelfnode_436208239* {.pure, inheritable.} = object
    basenode*: manodebase_436208124 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10631:9
    hishelf*: mahishelf2_436208192

  macontextcommandwasapi_data_t_quit_t* {.pure, inheritable.} = object
    internalunused*: cint

  macontextcommandwasapi_data_t_createaudioclient_t* {.pure, inheritable.} = object
    devicetype*: madevicetype_436208060
    paudioclient*: pointer
    ppaudioclientservice*: ptr pointer
    presult*: ptr maresult_436208042

  macontextcommandwasapi_data_t_releaseaudioclient_t* {.pure, inheritable.} = object
    pdevice*: ptr madevice_436208034
    devicetype*: madevicetype_436208060

  macontextcommandwasapi_data_t* {.union.} = object
    quit*: macontextcommandwasapi_data_t_quit_t
    createaudioclient*: macontextcommandwasapi_data_t_createaudioclient_t
    releaseaudioclient*: macontextcommandwasapi_data_t_releaseaudioclient_t

  macontextcommandwasapi_436208241* {.pure, inheritable.} = object
    code*: cint              ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:6794:9
    pevent*: ptr maevent_436208160
    data*: macontextcommandwasapi_data_t

  manotch2_436208243* {.pure, inheritable.} = object
    bq*: mabiquad_436208444  ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4622:9

  malpf1_436208245* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4386:9
    channels*: mauint32_436208046
    a*: mabiquadcoefficient_436208438
    pr1*: ptr mabiquadcoefficient_436208438
    internalpheap*: pointer
    internalownsheap*: mabool32_436207983

  wchart_436208247* = cint   ## Generated based on /usr/lib/clang/13.0.1/include/stddef.h:74:24
  madevicenotification_data_t_started_t* {.pure, inheritable.} = object
    internalunused*: cint

  madevicenotification_data_t_stopped_t* {.pure, inheritable.} = object
    internalunused*: cint

  madevicenotification_data_t_rerouted_t* {.pure, inheritable.} = object
    internalunused*: cint

  madevicenotification_data_t_interruption_t* {.pure, inheritable.} = object
    internalunused*: cint

  madevicenotification_data_t* {.union.} = object
    started*: madevicenotification_data_t_started_t
    stopped*: madevicenotification_data_t_stopped_t
    rerouted*: madevicenotification_data_t_rerouted_t
    interruption*: madevicenotification_data_t_interruption_t

  madevicenotification_436208249* {.pure, inheritable.} = object
    pdevice*: ptr madevice_436208034 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:6264:9
    typefield*: madevicenotificationtype_436207943
    data*: madevicenotification_data_t

  mahishelf2config_436208251* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4703:9
    channels*: mauint32_436208046
    samplerate*: mauint32_436208046
    gaindb*: cdouble
    shelfslope*: cdouble
    frequency*: cdouble

  manotchnodeconfig_436208253* {.pure, inheritable.} = object
    nodeconfig*: manodeconfig_436208017 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10553:9
    notch*: manotchconfig

  madataconverterconfig_436208255* {.pure, inheritable.} = object
    formatin*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:5307:9
    formatout*: maformat_436208208
    channelsin*: mauint32_436208046
    channelsout*: mauint32_436208046
    sampleratein*: mauint32_436208046
    samplerateout*: mauint32_436208046
    pchannelmapin*: ptr machannel_436208128
    pchannelmapout*: ptr machannel_436208128
    dithermode*: madithermode_436208168
    channelmixmode*: machannelmixmode_436208454
    ppchannelweights*: ptr ptr cfloat
    allowdynamicsamplerate*: mabool32_436207983
    resampling*: maresamplerconfig_436208178

  maslotallocatorgroup_436208257* {.pure, inheritable.} = object
    bitfield*: mauint32_436208046 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:5847:9

  mareadproc_436208259* = proc (a0: pointer; a1: pointer; a2: csize_t;
                                a3: ptr csize_t): maresult_436208042 {.cdecl.} ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9537:22
  maloshelf2_436208261* {.pure, inheritable.} = object
    bq*: mabiquad_436208444  ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4684:9

  masoundinlined_436208263* = structmasoundinlined_436207967 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10786:33
  maresourcemanagerpipelinenotifications_436208267* {.pure, inheritable.} = object
    init*: maresourcemanagerpipelinestagenotification_436208058 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9915:9
    done*: maresourcemanagerpipelinestagenotification_436208058

  madecoderreadproc_436208271* = proc (a0: ptr madecoder_436208076; a1: pointer;
                                       a2: csize_t; a3: ptr csize_t): maresult_436208042 {.
      cdecl.}                ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9586:22
  madevicedescriptor_436208273* {.pure, inheritable.} = object
    pdeviceid*: ptr madeviceid_436208334 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:6663:9
    sharemode*: masharemode_436207995
    format*: maformat_436208208
    channels*: mauint32_436208046
    samplerate*: mauint32_436208046
    channelmap*: array[254'i64, machannel_436208128]
    periodsizeinframes*: mauint32_436208046
    periodsizeinmilliseconds*: mauint32_436208046
    periodcount*: mauint32_436208046

  malcg_436208275* {.pure, inheritable.} = object
    state*: maint32_436208356 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4158:9

  maenginenodeconfig_436208277* {.pure, inheritable.} = object
    pengine*: ptr maengine_436208154 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10702:9
    typefield*: maenginenodetype_436208072
    channelsin*: mauint32_436208046
    channelsout*: mauint32_436208046
    samplerate*: mauint32_436208046
    ispitchdisabled*: mabool8_436208009
    isspatializationdisabled*: mabool8_436208009
    pinnedlistenerindex*: mauint8_436207941

  mapeaknodeconfig_436208279* {.pure, inheritable.} = object
    nodeconfig*: manodeconfig_436208017 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10576:9
    peak*: mapeakconfig

  mauintptr_436208281* = mauint64_436208386 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3707:33
  structmajob_toc_t_breakup_t* {.pure, inheritable.} = object
    code*: mauint16_436208148
    slot*: mauint16_436208148
    refcount*: mauint32_436208046

  structmajob_toc_t* {.union.} = object
    breakup*: structmajob_toc_t_breakup_t
    allocation*: mauint64_436208386

  structmajob_data_t_custom_t* {.pure, inheritable.} = object
    procfield*: majobproc_436208406
    data0*: mauintptr_436208282
    data1*: mauintptr_436208282

  structmajob_data_t_resourcemanager_t_loaddatabuffernode_t* {.pure, inheritable.} = object
    presourcemanager*: pointer
    pdatabuffernode*: pointer
    pfilepath*: cstring
    pfilepathw*: ptr wchart_436208248
    flags*: mauint32_436208046
    pinitnotification*: pointer
    pdonenotification*: pointer
    pinitfence*: ptr mafence_436208110
    pdonefence*: ptr mafence_436208110

  structmajob_data_t_resourcemanager_t_freedatabuffernode_t* {.pure, inheritable.} = object
    presourcemanager*: pointer
    pdatabuffernode*: pointer
    pdonenotification*: pointer
    pdonefence*: ptr mafence_436208110

  structmajob_data_t_resourcemanager_t_pagedatabuffernode_t* {.pure, inheritable.} = object
    presourcemanager*: pointer
    pdatabuffernode*: pointer
    pdecoder*: pointer
    pdonenotification*: pointer
    pdonefence*: ptr mafence_436208110

  structmajob_data_t_resourcemanager_t_loaddatabuffer_t* {.pure, inheritable.} = object
    pdatabuffer*: pointer
    pinitnotification*: pointer
    pdonenotification*: pointer
    pinitfence*: ptr mafence_436208110
    pdonefence*: ptr mafence_436208110
    rangebeginpcmframes*: mauint64_436208386
    rangeendinpcmframes*: mauint64_436208386
    looppointbeginpcmframes*: mauint64_436208386
    looppointendinpcmframes*: mauint64_436208386
    islooping*: mauint32_436208046

  structmajob_data_t_resourcemanager_t_freedatabuffer_t* {.pure, inheritable.} = object
    pdatabuffer*: pointer
    pdonenotification*: pointer
    pdonefence*: ptr mafence_436208110

  structmajob_data_t_resourcemanager_t_loaddatastream_t* {.pure, inheritable.} = object
    pdatastream*: pointer
    pfilepath*: cstring
    pfilepathw*: ptr wchart_436208248
    initialseekpoint*: mauint64_436208386
    pinitnotification*: pointer
    pinitfence*: ptr mafence_436208110

  structmajob_data_t_resourcemanager_t_freedatastream_t* {.pure, inheritable.} = object
    pdatastream*: pointer
    pdonenotification*: pointer
    pdonefence*: ptr mafence_436208110

  structmajob_data_t_resourcemanager_t_pagedatastream_t* {.pure, inheritable.} = object
    pdatastream*: pointer
    pageindex*: mauint32_436208046

  structmajob_data_t_resourcemanager_t_seekdatastream_t* {.pure, inheritable.} = object
    pdatastream*: pointer
    frameindex*: mauint64_436208386

  structmajob_data_t_resourcemanager_t* {.union.} = object
    loaddatabuffernode*: structmajob_data_t_resourcemanager_t_loaddatabuffernode_t
    freedatabuffernode*: structmajob_data_t_resourcemanager_t_freedatabuffernode_t
    pagedatabuffernode*: structmajob_data_t_resourcemanager_t_pagedatabuffernode_t
    loaddatabuffer*: structmajob_data_t_resourcemanager_t_loaddatabuffer_t
    freedatabuffer*: structmajob_data_t_resourcemanager_t_freedatabuffer_t
    loaddatastream*: structmajob_data_t_resourcemanager_t_loaddatastream_t
    freedatastream*: structmajob_data_t_resourcemanager_t_freedatastream_t
    pagedatastream*: structmajob_data_t_resourcemanager_t_pagedatastream_t
    seekdatastream*: structmajob_data_t_resourcemanager_t_seekdatastream_t

  structmajob_data_t_device_t_aaudio_t_reroute_t* {.pure, inheritable.} = object
    pdevice*: pointer
    devicetype*: mauint32_436208046

  structmajob_data_t_device_t_aaudio_t* {.union.} = object
    reroute*: structmajob_data_t_device_t_aaudio_t_reroute_t

  structmajob_data_t_device_t* {.union.} = object
    aaudio*: structmajob_data_t_device_t_aaudio_t

  structmajob_data_t* {.union.} = object
    custom*: structmajob_data_t_custom_t
    resourcemanager*: structmajob_data_t_resourcemanager_t
    device*: structmajob_data_t_device_t

  structmajob_436208285* {.pure, inheritable.} = object
    toc*: structmajob_toc_t  ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:5905:8
    next*: mauint64_436208386
    order*: mauint32_436208046
    data*: structmajob_data_t

  maloshelfnodeconfig_436208287* {.pure, inheritable.} = object
    nodeconfig*: manodeconfig_436208017 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10599:9
    loshelf*: maloshelfconfig

  malpf2_436208289* {.pure, inheritable.} = object
    bq*: mabiquad_436208444  ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4407:9

  mapagedaudiobufferconfig_436208295* {.pure, inheritable.} = object
    pdata*: ptr mapagedaudiobufferdata_436208048 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9449:9

  maaudiobuffer_436208297* {.pure, inheritable.} = object
    reffield*: maaudiobufferref_436207997 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9388:9
    allocationcallbacks*: maallocationcallbacks_436208126
    ownsdata*: mabool32_436207983
    internalpextradata*: array[1'i64, mauint8_436207941]

  structmaresourcemanagerdatasource_backend_t* {.union.} = object
    buffer*: maresourcemanagerdatabuffer_436208388
    stream*: maresourcemanagerdatastream_436207993

  structmaresourcemanagerdatasource_436208301* {.pure, inheritable.} = object
    backend*: structmaresourcemanagerdatasource_backend_t ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10076:8
    flags*: mauint32_436208046
    executioncounter*: mauint32_436208046
    executionpointer*: mauint32_436208046

  madelayconfig_436208303* {.pure, inheritable.} = object
    channels*: mauint32_436208046 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4733:9
    samplerate*: mauint32_436208046
    delayinframes*: mauint32_436208046
    delaystart*: mabool32_436207983
    wet*: cfloat
    dry*: cfloat
    decay*: cfloat

  majobqueueconfig_436208305* {.pure, inheritable.} = object
    flags*: mauint32_436208046 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:6038:9
    capacity*: mauint32_436208046

  mavfsfile_436208307* = mahandle_436208452 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9485:19
  madefaultvfs_436208309* {.pure, inheritable.} = object
    cb*: mavfscallbacks_436208400 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9527:9
    allocationcallbacks*: maallocationcallbacks_436208126

  mapeaknode_436208311* {.pure, inheritable.} = object
    basenode*: manodebase_436208124 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10585:9
    peak*: mapeak2_436208426

  masoundconfig_436208313* {.pure, inheritable.} = object
    pfilepath*: cstring      ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10747:9
    pfilepathw*: ptr wchart_436208248
    pdatasource*: pointer
    pinitialattachment*: pointer
    initialattachmentinputbusindex*: mauint32_436208046
    channelsin*: mauint32_436208046
    channelsout*: mauint32_436208046
    flags*: mauint32_436208046
    initialseekpointinpcmframes*: mauint64_436208386
    rangebeginpcmframes*: mauint64_436208386
    rangeendinpcmframes*: mauint64_436208386
    looppointbeginpcmframes*: mauint64_436208386
    looppointendinpcmframes*: mauint64_436208386
    islooping*: mabool32_436207983
    pdonefence*: ptr mafence_436208110

  structmaresourcemanagerdatabuffernode_436208315* {.pure, inheritable.} = object
    hashedname32*: mauint32_436208046 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10013:8
    refcount*: mauint32_436208046
    result*: maresult_436208042
    executioncounter*: mauint32_436208046
    executionpointer*: mauint32_436208046
    isdataownedbyresourcemanager*: mabool32_436207983
    data*: maresourcemanagerdatasupply_436208364
    pparent*: ptr maresourcemanagerdatabuffernode_436208001
    pchildlo*: ptr maresourcemanagerdatabuffernode_436208001
    pchildhi*: ptr maresourcemanagerdatabuffernode_436208001

  maresourcemanager_436208317* = structmaresourcemanager_436208116 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9890:53
  pthreadcondt_436208319* {.union.} = object
    compilerdata*: structpthreadconds_436207971 ## Generated based on /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h:75:9
    compilersize*: array[48'i64, cschar]
    compileralign*: clonglong

  maresourcemanagerdatasourceconfig_436208321* {.pure, inheritable.} = object
    pfilepath*: cstring      ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9960:9
    pfilepathw*: ptr wchart_436208248
    pnotifications*: ptr maresourcemanagerpipelinenotifications_436208268
    initialseekpointinpcmframes*: mauint64_436208386
    rangebeginpcmframes*: mauint64_436208386
    rangeendinpcmframes*: mauint64_436208386
    looppointbeginpcmframes*: mauint64_436208386
    looppointendinpcmframes*: mauint64_436208386
    islooping*: mabool32_436207983
    flags*: mauint32_436208046

  structmaresourcemanagerdatastream_436208323* {.pure, inheritable.} = object
    ds*: madatasourcebase_436208236 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10048:8
    presourcemanager*: ptr maresourcemanager_436208318
    flags*: mauint32_436208046
    decoder*: madecoder_436208076
    isdecoderinitialized*: mabool32_436207983
    totallengthinpcmframes*: mauint64_436208386
    relativecursor*: mauint32_436208046
    absolutecursor*: mauint64_436208386
    currentpageindex*: mauint32_436208046
    executioncounter*: mauint32_436208046
    executionpointer*: mauint32_436208046
    islooping*: mabool32_436207983
    ppagedata*: pointer
    pageframecount*: array[2'i64, mauint32_436208046]
    result*: maresult_436208042
    isdecoderatend*: mabool32_436207983
    ispagevalid*: array[2'i64, mabool32_436207983]
    seekcounter*: mabool32_436207983

  mathread_436208325* = mapthreadt_436208007 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4185:22
  structpthreadinternallist_436208327* {.pure, inheritable.} = object
    compilerprev*: ptr structpthreadinternallist_436208328 ## Generated based on /usr/include/x86_64-linux-gnu/bits/thread-shared-types.h:49:16
    compilernext*: ptr structpthreadinternallist_436208328

  maint64_436208329* = clonglong ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3698:37
  madecodingbackendconfig_436208331* {.pure, inheritable.} = object
    preferredformat*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9567:9
    seekpointcount*: mauint32_436208046

  madeviceid_custom_t* {.union.} = object
    i*: cint
    s*: array[256'i64, cschar]
    p*: pointer

  madeviceid_436208333* {.union.} = object
    wasapi*: array[64'i64, wchart_436208248] ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:6511:9
    dsound*: array[16'i64, mauint8_436207941]
    winmm*: mauint32_436208046
    alsa*: array[256'i64, cschar]
    pulse*: array[256'i64, cschar]
    jack*: cint
    coreaudio*: array[256'i64, cschar]
    sndio*: array[256'i64, cschar]
    audio4*: array[256'i64, cschar]
    oss*: array[64'i64, cschar]
    aaudio*: maint32_436208356
    opensl*: mauint32_436208046
    webaudio*: array[32'i64, cschar]
    custom*: madeviceid_custom_t
    nullbackend*: cint

  maspatializerlistenerconfig_436208335* {.pure, inheritable.} = object
    channelsout*: mauint32_436208046 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4889:9
    pchannelmapout*: ptr machannel_436208128
    handedness*: mahandedness_436208352
    coneinnerangleinradians*: cfloat
    coneouterangleinradians*: cfloat
    coneoutergain*: cfloat
    speedofsound*: cfloat
    worldup*: mavec3f_436208100

  mapagedaudiobufferpage_436208341* = structmapagedaudiobufferpage_436208344 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9422:43
  structmapagedaudiobufferpage_436208343* {.pure, inheritable.} = object
    pnext*: ptr mapagedaudiobufferpage_436208342 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9423:8
    sizeinframes*: mauint64_436208386
    paudiodata*: array[1'i64, mauint8_436207941]

  malpfnode_436208347* {.pure, inheritable.} = object
    basenode*: manodebase_436208124 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10493:9
    lpf*: malpf_436208422

  manodeinputbus_436208349* = structmanodeinputbus_436208122 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10320:34
  maproc_436208353* = proc (): void {.cdecl.} ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3719:17
  maint32_436208355* = cint  ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3685:37
  manodegraphconfig_436208357* {.pure, inheritable.} = object
    channels*: mauint32_436208046 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10387:9
    nodecachecapinframes*: mauint16_436208148

  mabiquadnode_436208359* {.pure, inheritable.} = object
    basenode*: manodebase_436208124 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10470:9
    biquad*: mabiquad_436208444

  maseekproc_436208361* = proc (a0: pointer; a1: maint64_436208330;
                                a2: maseekorigin_436208206): maresult_436208042 {.
      cdecl.}                ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9538:22
  maresourcemanagerdatasupply_backend_t_encoded_t* {.pure, inheritable.} = object
    pdata*: pointer
    sizeinbytes*: csize_t

  maresourcemanagerdatasupply_backend_t_decoded_t* {.pure, inheritable.} = object
    pdata*: pointer
    totalframecount*: mauint64_436208386
    decodedframecount*: mauint64_436208386
    format*: maformat_436208208
    channels*: mauint32_436208046
    samplerate*: mauint32_436208046

  maresourcemanagerdatasupply_backend_t_decodedpaged_t* {.pure, inheritable.} = object
    data*: mapagedaudiobufferdata_436208048
    decodedframecount*: mauint64_436208386
    samplerate*: mauint32_436208046

  maresourcemanagerdatasupply_backend_t* {.union.} = object
    encoded*: maresourcemanagerdatasupply_backend_t_encoded_t
    decoded*: maresourcemanagerdatasupply_backend_t_decoded_t
    decodedpaged*: maresourcemanagerdatasupply_backend_t_decodedpaged_t

  maresourcemanagerdatasupply_436208363* {.pure, inheritable.} = object
    typefield*: maresourcemanagerdatasupplytype_436208464 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9985:9
    backend*: maresourcemanagerdatasupply_backend_t

  mahpf2_436208365* {.pure, inheritable.} = object
    bq*: mabiquad_436208444  ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4495:9

  mawaveform_436208367* {.pure, inheritable.} = object
    ds*: madatasourcebase_436208236 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9805:9
    config*: mawaveformconfig_436208450
    advance*: cdouble
    time*: cdouble

  maduplexrb_436208373* {.pure, inheritable.} = object
    rb*: mapcmrb_436208404   ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:5592:9

  structmanodeoutputbus_436208375* {.pure, inheritable.} = object
    pnode*: pointer          ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10297:8
    outputbusindex*: mauint8_436207941
    channels*: mauint8_436207941
    inputnodeinputbusindex*: mauint8_436207941
    flags*: mauint32_436208046
    refcount*: mauint32_436208046
    isattached*: mabool32_436207983
    lock*: maspinlock_436208104
    volume*: cfloat
    pnext*: ptr manodeoutputbus_436208003
    pprev*: ptr manodeoutputbus_436208003
    pinputnode*: pointer

  mahishelfnodeconfig_436208377* {.pure, inheritable.} = object
    nodeconfig*: manodeconfig_436208017 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10622:9
    hishelf*: mahishelfconfig

  maengineconfig_436208381* {.pure, inheritable.} = object
    presourcemanager*: ptr maresourcemanager_436208318 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10801:9
    pcontext*: ptr macontext_436208478
    pdevice*: ptr madevice_436208034
    pplaybackdeviceid*: ptr madeviceid_436208334
    plog*: ptr malog_436207937
    listenercount*: mauint32_436208046
    channels*: mauint32_436208046
    samplerate*: mauint32_436208046
    periodsizeinframes*: mauint32_436208046
    periodsizeinmilliseconds*: mauint32_436208046
    gainsmoothtimeinframes*: mauint32_436208046
    gainsmoothtimeinmilliseconds*: mauint32_436208046
    allocationcallbacks*: maallocationcallbacks_436208126
    noautostart*: mabool32_436207983
    nodevice*: mabool32_436207983
    monoexpansionmode*: mamonoexpansionmode_436208080
    presourcemanagervfs*: pointer

  matellproc_436208383* = proc (a0: pointer; a1: ptr maint64_436208330): maresult_436208042 {.
      cdecl.}                ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9539:22
  mauint64_436208385* = culonglong ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3699:37
  maresourcemanagerdatabuffer_436208387* = structmaresourcemanagerdatabuffer_436208078 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9892:53
  machannelconverterconfig_436208391* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:5259:9
    channelsin*: mauint32_436208046
    channelsout*: mauint32_436208046
    pchannelmapin*: ptr machannel_436208128
    pchannelmapout*: ptr machannel_436208128
    mixingmode*: machannelmixmode_436208454
    ppweights*: ptr ptr cfloat

  maint8_436208393* = cschar ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3681:37
  maslotallocator_436208397* {.pure, inheritable.} = object
    pgroups*: ptr maslotallocatorgroup_436208258 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:5852:9
    pslots*: ptr mauint32_436208046
    count*: mauint32_436208046
    capacity*: mauint32_436208046
    internalownsheap*: mabool32_436207983
    internalpheap*: pointer

  mavfscallbacks_436208399* {.pure, inheritable.} = object
    onopen*: proc (a0: pointer; a1: cstring; a2: mauint32_436208046;
                   a3: ptr mavfsfile_436208308): maresult_436208042 {.cdecl.} ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9505:9
    onopenw*: proc (a0: pointer; a1: ptr wchart_436208248; a2: mauint32_436208046;
                    a3: ptr mavfsfile_436208308): maresult_436208042 {.cdecl.}
    onclose*: proc (a0: pointer; a1: mavfsfile_436208308): maresult_436208042 {.
        cdecl.}
    onread*: proc (a0: pointer; a1: mavfsfile_436208308; a2: pointer;
                   a3: csize_t; a4: ptr csize_t): maresult_436208042 {.cdecl.}
    onwrite*: proc (a0: pointer; a1: mavfsfile_436208308; a2: pointer;
                    a3: csize_t; a4: ptr csize_t): maresult_436208042 {.cdecl.}
    onseek*: proc (a0: pointer; a1: mavfsfile_436208308; a2: maint64_436208330;
                   a3: maseekorigin_436208206): maresult_436208042 {.cdecl.}
    ontell*: proc (a0: pointer; a1: mavfsfile_436208308; a2: ptr maint64_436208330): maresult_436208042 {.
        cdecl.}
    oninfo*: proc (a0: pointer; a1: mavfsfile_436208308; a2: ptr mafileinfo_436208130): maresult_436208042 {.
        cdecl.}

  maenginenode_436208401* {.pure, inheritable.} = object
    basenode*: manodebase_436208124 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10718:9
    pengine*: ptr maengine_436208154
    samplerate*: mauint32_436208046
    fader*: mafader_436208030
    resampler*: malinearresampler_436208448
    spatializer*: maspatializer_436207979
    panner*: mapanner_436208458
    pitch*: cfloat
    oldpitch*: cfloat
    olddopplerpitch*: cfloat
    ispitchdisabled*: mabool32_436207983
    isspatializationdisabled*: mabool32_436207983
    pinnedlistenerindex*: mauint32_436208046
    internalownsheap*: mabool8_436208009
    internalpheap*: pointer

  mapcmrb_436208403* {.pure, inheritable.} = object
    rb*: marb_436208144      ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:5556:9
    format*: maformat_436208208
    channels*: mauint32_436208046

  majobproc_436208405* = proc (a0: ptr majob_436207973): maresult_436208042 {.
      cdecl.}                ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:5878:22
  mafaderconfig_436208407* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4834:9
    channels*: mauint32_436208046
    samplerate*: mauint32_436208046

  madelay_436208409* {.pure, inheritable.} = object
    config*: madelayconfig_436208304 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4747:9
    cursor*: mauint32_436208046
    buffersizeinframes*: mauint32_436208046
    pbuffer*: ptr cfloat

  madecoderseekproc_436208411* = proc (a0: ptr madecoder_436208076; a1: maint64_436208330;
                                       a2: maseekorigin_436208206): maresult_436208042 {.
      cdecl.}                ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9587:22
  structmaencoder_data_t_vfs_t* {.pure, inheritable.} = object
    pvfs*: pointer
    file*: mavfsfile_436208308

  structmaencoder_data_t* {.union.} = object
    vfs*: structmaencoder_data_t_vfs_t

  structmaencoder_436208413* {.pure, inheritable.} = object
    config*: maencoderconfig_436208162 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9748:8
    onwrite*: maencoderwriteproc_436208170
    onseek*: maencoderseekproc_436208180
    oninit*: maencoderinitproc_436208436
    onuninit*: maencoderuninitproc_436208218
    onwritepcmframes*: maencoderwritepcmframesproc_436208070
    puserdata*: pointer
    pinternalencoder*: pointer
    data*: structmaencoder_data_t

  structmanodebase_436208415* {.pure, inheritable.} = object
    pnodegraph*: ptr manodegraph_436207933 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10334:8
    vtable*: ptr manodevtable_436208220
    pcacheddata*: ptr cfloat
    cacheddatacapinframesperbus*: mauint16_436208148
    cachedframecountout*: mauint16_436208148
    cachedframecountin*: mauint16_436208148
    consumedframecountin*: mauint16_436208148
    state*: manodestate_436208054
    statetimes*: array[2'i64, mauint64_436208386]
    localtime*: mauint64_436208386
    inputbuscount*: mauint32_436208046
    outputbuscount*: mauint32_436208046
    pinputbuses*: ptr manodeinputbus_436208350
    poutputbuses*: ptr manodeoutputbus_436208003
    internalinputbuses*: array[2'i64, manodeinputbus_436208350]
    internaloutputbuses*: array[2'i64, manodeoutputbus_436208003]
    internalpheap*: pointer
    internalownsheap*: mabool32_436207983

  madevicenotificationproc_436208419* = proc (a0: ptr madevicenotification_436208250): void {.
      cdecl.}                ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:6329:17
  malpf_436208421* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4433:9
    channels*: mauint32_436208046
    samplerate*: mauint32_436208046
    lpf1count*: mauint32_436208046
    lpf2count*: mauint32_436208046
    plpf1*: ptr malpf1_436208246
    plpf2*: ptr malpf2_436208290
    internalpheap*: pointer
    internalownsheap*: mabool32_436207983

  maspatializerlistener_436208423* {.pure, inheritable.} = object
    config*: maspatializerlistenerconfig_436208336 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4904:9
    position*: mavec3f_436208100
    direction*: mavec3f_436208100
    velocity*: mavec3f_436208100
    isenabled*: mabool32_436207983
    internalownsheap*: mabool32_436207983
    internalpheap*: pointer

  mapeak2_436208425* {.pure, inheritable.} = object
    bq*: mabiquad_436208444  ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4653:9

  mastopproc_436208427* = proc (a0: ptr madevice_436208034): void {.cdecl.} ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:6396:17
  maslotallocatorconfig_436208431* {.pure, inheritable.} = object
    capacity*: mauint32_436208046 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:5839:9

  mabpfconfig_436208433* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4574:9
    channels*: mauint32_436208046
    samplerate*: mauint32_436208046
    cutofffrequency*: cdouble
    order*: mauint32_436208046

  maencoderinitproc_436208435* = proc (a0: ptr maencoder_436208040): maresult_436208042 {.
      cdecl.}                ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9733:22
  mabiquadcoefficient_436208437* {.union.} = object
    f32*: cfloat             ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4322:9
    s32*: maint32_436208356

  maresourcemanagerdatasource_436208439* = structmaresourcemanagerdatasource_436208302 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9894:53
  maptr_436208441* = pointer ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3718:15
  mabiquad_436208443* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4342:9
    channels*: mauint32_436208046
    b0*: mabiquadcoefficient_436208438
    b1*: mabiquadcoefficient_436208438
    b2*: mabiquadcoefficient_436208438
    a1*: mabiquadcoefficient_436208438
    a2*: mabiquadcoefficient_436208438
    pr1*: ptr mabiquadcoefficient_436208438
    pr2*: ptr mabiquadcoefficient_436208438
    internalpheap*: pointer
    internalownsheap*: mabool32_436207983

  structmaengine_436208445* {.pure, inheritable.} = object
    nodegraph*: manodegraph_436207933 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10829:8
    presourcemanager*: ptr maresourcemanager_436208318
    pdevice*: ptr madevice_436208034
    plog*: ptr malog_436207937
    samplerate*: mauint32_436208046
    listenercount*: mauint32_436208046
    listeners*: array[4'i64, maspatializerlistener_436208424]
    allocationcallbacks*: maallocationcallbacks_436208126
    ownsresourcemanager*: mabool8_436208009
    ownsdevice*: mabool8_436208009
    inlinedsoundlock*: maspinlock_436208104
    pinlinedsoundhead*: ptr masoundinlined_436208264
    inlinedsoundcount*: mauint32_436208046
    gainsmoothtimeinframes*: mauint32_436208046
    monoexpansionmode*: mamonoexpansionmode_436208080

  malinearresampler_x0_t* {.union.} = object
    f32*: ptr cfloat
    s16*: ptr maint16_436207975

  malinearresampler_x1_t* {.union.} = object
    f32*: ptr cfloat
    s16*: ptr maint16_436207975

  malinearresampler_436208447* {.pure, inheritable.} = object
    config*: malinearresamplerconfig_436208038 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:5058:9
    inadvanceint*: mauint32_436208046
    inadvancefrac*: mauint32_436208046
    intimeint*: mauint32_436208046
    intimefrac*: mauint32_436208046
    x0*: malinearresampler_x0_t
    x1*: malinearresampler_x1_t
    lpf*: malpf_436208422
    internalpheap*: pointer
    internalownsheap*: mabool32_436207983

  mawaveformconfig_436208449* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9793:9
    channels*: mauint32_436208046
    samplerate*: mauint32_436208046
    typefield*: mawaveformtype_436208136
    amplitude*: cdouble
    frequency*: cdouble

  mahandle_436208451* = pointer ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3717:15
  maasyncnotificationcallbacks_436208455* {.pure, inheritable.} = object
    onsignal*: proc (a0: pointer): void {.cdecl.} ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:5773:9

  mapanner_436208457* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4816:9
    channels*: mauint32_436208046
    mode*: mapanmode_436208380
    pan*: cfloat

  mahpfconfig_436208459* {.pure, inheritable.} = object
    format*: maformat_436208208 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4509:9
    channels*: mauint32_436208046
    samplerate*: mauint32_436208046
    cutofffrequency*: cdouble
    order*: mauint32_436208046

  madevicejobthread_436208465* {.pure, inheritable.} = object
    thread*: mathread_436208326 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:6240:9
    jobqueue*: majobqueue_436208472
    internalhasthread*: mabool32_436207983

  maasyncnotificationevent_436208467* {.pure, inheritable.} = object
    cb*: maasyncnotificationcallbacks_436208456 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:5801:9
    e*: maevent_436208160

  mabpfnodeconfig_436208469* {.pure, inheritable.} = object
    nodeconfig*: manodeconfig_436208017 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10530:9
    bpf*: mabpfconfig_436208434

  majobqueue_436208471* {.pure, inheritable.} = object
    flags*: mauint32_436208046 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:6047:9
    capacity*: mauint32_436208046
    head*: mauint64_436208386
    tail*: mauint64_436208386
    sem*: masemaphore_436208066
    allocator*: maslotallocator_436208398
    pjobs*: ptr majob_436207973
    lock*: maspinlock_436208104
    internalpheap*: pointer
    internalownsheap*: mabool32_436207983

  masoundgroupconfig_436208473* = masoundconfig_436208314 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10795:25
  magainerconfig_436208475* {.pure, inheritable.} = object
    channels*: mauint32_436208046 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4767:9
    smoothtimeinframes*: mauint32_436208046

  macontext_436208477* = structmacontext_436207987 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3909:27
  magainer_436208479* {.pure, inheritable.} = object
    config*: magainerconfig_436208476 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4776:9
    t*: mauint32_436208046
    poldgains*: ptr cfloat
    pnewgains*: ptr cfloat
    internalpheap*: pointer
    internalownsheap*: mabool32_436207983

  manodegraph_436207933* = (when declared(manodegraph):
    manodegraph
   else:
    manodegraph_436207931)
  madecoder_436208076* = (when declared(madecoder):
    madecoder
   else:
    madecoder_436208075)
  structmaresourcemanagerdatabuffer_436208078* = (when declared(
      structmaresourcemanagerdatabuffer):
    structmaresourcemanagerdatabuffer
   else:
    structmaresourcemanagerdatabuffer_436208077)
  maseekproc_436208362* = (when declared(maseekproc):
    maseekproc
   else:
    maseekproc_436208361)
  maresamplealgorithm_436208198* = (when declared(maresamplealgorithm):
    maresamplealgorithm
   else:
    maresamplealgorithm_436208197)
  mamonoexpansionmode_436208080* = (when declared(mamonoexpansionmode):
    mamonoexpansionmode
   else:
    mamonoexpansionmode_436208079)
  madatasourcenodeconfig_436207935* = (when declared(madatasourcenodeconfig):
    madatasourcenodeconfig
   else:
    madatasourcenodeconfig_436207934)
  maresourcemanagerdatasupply_436208364* = (when declared(
      maresourcemanagerdatasupply):
    maresourcemanagerdatasupply
   else:
    maresourcemanagerdatasupply_436208363)
  maspatializerconfig_436208082* = (when declared(maspatializerconfig):
    maspatializerconfig
   else:
    maspatializerconfig_436208081)
  mahpf2_436208366* = (when declared(mahpf2):
    mahpf2
   else:
    mahpf2_436208365)
  mawaveform_436208368* = (when declared(mawaveform):
    mawaveform
   else:
    mawaveform_436208367)
  malog_436207937* = (when declared(malog):
    malog
   else:
    malog_436207936)
  manotchnode_436208084* = (when declared(manotchnode):
    manotchnode
   else:
    manotchnode_436208083)
  masplitternode_436207939* = (when declared(masplitternode):
    masplitternode
   else:
    masplitternode_436207938)
  mabackend_436208370* = (when declared(mabackend):
    mabackend
   else:
    mabackend_436208369)
  mabiquadnodeconfig_436208086* = (when declared(mabiquadnodeconfig):
    mabiquadnodeconfig
   else:
    mabiquadnodeconfig_436208085)
  maaaudiousage_436208372* = (when declared(maaaudiousage):
    maaaudiousage
   else:
    maaaudiousage_436208371)
  mauint8_436207941* = (when declared(mauint8):
    mauint8
   else:
    mauint8_436207940)
  madevicenotificationtype_436207943* = (when declared(madevicenotificationtype):
    madevicenotificationtype
   else:
    madevicenotificationtype_436207942)
  maduplexrb_436208374* = (when declared(maduplexrb):
    maduplexrb
   else:
    maduplexrb_436208373)
  structmanodeoutputbus_436208376* = (when declared(structmanodeoutputbus):
    structmanodeoutputbus
   else:
    structmanodeoutputbus_436208375)
  mapthreadcondt_436208088* = (when declared(mapthreadcondt):
    mapthreadcondt
   else:
    mapthreadcondt_436208087)
  mastandardsamplerate_436207945* = (when declared(mastandardsamplerate):
    mastandardsamplerate
   else:
    mastandardsamplerate_436207944)
  structmacontextconfig_436207947* = (when declared(structmacontextconfig):
    structmacontextconfig
   else:
    structmacontextconfig_436207946)
  maopenslrecordingpreset_436208092* = (when declared(maopenslrecordingpreset):
    maopenslrecordingpreset
   else:
    maopenslrecordingpreset_436208091)
  structmadecoder_436208094* = (when declared(structmadecoder):
    structmadecoder
   else:
    structmadecoder_436208093)
  madelaynodeconfig_436208202* = (when declared(madelaynodeconfig):
    madelaynodeconfig
   else:
    madelaynodeconfig_436208201)
  madecoderconfig_436208200* = (when declared(madecoderconfig):
    madecoderconfig
   else:
    madecoderconfig_436208199)
  mahpf1_436208096* = (when declared(mahpf1):
    mahpf1
   else:
    mahpf1_436208095)
  mabpf2config_436208204* = (when declared(mabpf2config):
    mabpf2config
   else:
    mabpf2config_436208203)
  mahishelfnodeconfig_436208378* = (when declared(mahishelfnodeconfig):
    mahishelfnodeconfig
   else:
    mahishelfnodeconfig_436208377)
  madecodingbackendvtable_436207949* = (when declared(madecodingbackendvtable):
    madecodingbackendvtable
   else:
    madecodingbackendvtable_436207948)
  mapannerconfig_436208098* = (when declared(mapannerconfig):
    mapannerconfig
   else:
    mapannerconfig_436208097)
  maseekorigin_436208206* = (when declared(maseekorigin):
    maseekorigin
   else:
    maseekorigin_436208205)
  mavec3f_436208100* = (when declared(mavec3f):
    mavec3f
   else:
    mavec3f_436208099)
  maaudiobufferconfig_436208102* = (when declared(maaudiobufferconfig):
    maaudiobufferconfig
   else:
    maaudiobufferconfig_436208101)
  internalmachannelposition_436207951* = (when declared(
      internalmachannelposition):
    internalmachannelposition
   else:
    internalmachannelposition_436207950)
  madeviceconfig_436207953* = (when declared(madeviceconfig):
    madeviceconfig
   else:
    madeviceconfig_436207952)
  mamutex_436207955* = (when declared(mamutex):
    mamutex
   else:
    mamutex_436207954)
  mabackendcallbacks_436207957* = (when declared(mabackendcallbacks):
    mabackendcallbacks
   else:
    mabackendcallbacks_436207956)
  maformat_436208208* = (when declared(maformat):
    maformat
   else:
    maformat_436208207)
  masound_436208210* = (when declared(masound):
    masound
   else:
    masound_436208209)
  mapanmode_436208380* = (when declared(mapanmode):
    mapanmode
   else:
    mapanmode_436208379)
  maspinlock_436208104* = (when declared(maspinlock):
    maspinlock
   else:
    maspinlock_436208103)
  pthreadmutext_436208212* = (when declared(pthreadmutext):
    pthreadmutext
   else:
    pthreadmutext_436208211)
  structmasound_436208214* = (when declared(structmasound):
    structmasound
   else:
    structmasound_436208213)
  maiossessioncategory_436207959* = (when declared(maiossessioncategory):
    maiossessioncategory
   else:
    maiossessioncategory_436207958)
  mabpf2_436208106* = (when declared(mabpf2):
    mabpf2
   else:
    mabpf2_436208105)
  pthreadt_436208108* = (when declared(pthreadt):
    pthreadt
   else:
    pthreadt_436208107)
  mafence_436208110* = (when declared(mafence):
    mafence
   else:
    mafence_436208109)
  maengineconfig_436208382* = (when declared(maengineconfig):
    maengineconfig
   else:
    maengineconfig_436208381)
  matellproc_436208384* = (when declared(matellproc):
    matellproc
   else:
    matellproc_436208383)
  structmadeviceconfig_436208216* = (when declared(structmadeviceconfig):
    structmadeviceconfig
   else:
    structmadeviceconfig_436208215)
  maencoderuninitproc_436208218* = (when declared(maencoderuninitproc):
    maencoderuninitproc
   else:
    maencoderuninitproc_436208217)
  manodevtable_436208220* = (when declared(manodevtable):
    manodevtable
   else:
    manodevtable_436208219)
  structmabackendcallbacks_436208112* = (when declared(structmabackendcallbacks):
    structmabackendcallbacks
   else:
    structmabackendcallbacks_436208111)
  structmanodegraph_436208222* = (when declared(structmanodegraph):
    structmanodegraph
   else:
    structmanodegraph_436208221)
  mauint64_436208386* = (when declared(mauint64):
    mauint64
   else:
    mauint64_436208385)
  maattenuationmodel_436207961* = (when declared(maattenuationmodel):
    maattenuationmodel
   else:
    maattenuationmodel_436207960)
  maresourcemanagerdatabuffer_436208388* = (when declared(
      maresourcemanagerdatabuffer):
    maresourcemanagerdatabuffer
   else:
    maresourcemanagerdatabuffer_436208387)
  malpfconfig_436208114* = (when declared(malpfconfig):
    malpfconfig
   else:
    malpfconfig_436208113)
  madatasourceconfig_436208224* = (when declared(madatasourceconfig):
    madatasourceconfig
   else:
    madatasourceconfig_436208223)
  malpfnodeconfig_436207963* = (when declared(malpfnodeconfig):
    malpfnodeconfig
   else:
    malpfnodeconfig_436207962)
  mastreamlayout_436208390* = (when declared(mastreamlayout):
    mastreamlayout
   else:
    mastreamlayout_436208389)
  structmaresourcemanager_436208116* = (when declared(structmaresourcemanager):
    structmaresourcemanager
   else:
    structmaresourcemanager_436208115)
  madataconverter_436208226* = (when declared(madataconverter):
    madataconverter
   else:
    madataconverter_436208225)
  maresampler_436207965* = (when declared(maresampler):
    maresampler
   else:
    maresampler_436207964)
  mahpf1config_436208228* = (when declared(mahpf1config):
    mahpf1config
   else:
    mahpf1config_436208227)
  machannelconverterconfig_436208392* = (when declared(machannelconverterconfig):
    machannelconverterconfig
   else:
    machannelconverterconfig_436208391)
  maint8_436208394* = (when declared(maint8):
    maint8
   else:
    maint8_436208393)
  structmasoundinlined_436207967* = (when declared(structmasoundinlined):
    structmasoundinlined
   else:
    structmasoundinlined_436207966)
  manodeflags_436208396* = (when declared(manodeflags):
    manodeflags
   else:
    manodeflags_436208395)
  madelaynode_436207969* = (when declared(madelaynode):
    madelaynode
   else:
    madelaynode_436207968)
  mahpfnodeconfig_436208118* = (when declared(mahpfnodeconfig):
    mahpfnodeconfig
   else:
    mahpfnodeconfig_436208117)
  maresourcemanagerdatasourceflags_436208230* = (when declared(
      maresourcemanagerdatasourceflags):
    maresourcemanagerdatasourceflags
   else:
    maresourcemanagerdatasourceflags_436208229)
  maresamplingbackendvtable_436208232* = (when declared(
      maresamplingbackendvtable):
    maresamplingbackendvtable
   else:
    maresamplingbackendvtable_436208231)
  maslotallocator_436208398* = (when declared(maslotallocator):
    maslotallocator
   else:
    maslotallocator_436208397)
  mavfscallbacks_436208400* = (when declared(mavfscallbacks):
    mavfscallbacks
   else:
    mavfscallbacks_436208399)
  masplitternodeconfig_436208120* = (when declared(masplitternodeconfig):
    masplitternodeconfig
   else:
    masplitternodeconfig_436208119)
  structpthreadconds_436207971* = (when declared(structpthreadconds):
    structpthreadconds
   else:
    structpthreadconds_436207970)
  matimer_436208234* = (when declared(matimer):
    matimer
   else:
    matimer_436208233)
  structmanodeinputbus_436208122* = (when declared(structmanodeinputbus):
    structmanodeinputbus
   else:
    structmanodeinputbus_436208121)
  madatasourcebase_436208236* = (when declared(madatasourcebase):
    madatasourcebase
   else:
    madatasourcebase_436208235)
  maenginenode_436208402* = (when declared(maenginenode):
    maenginenode
   else:
    maenginenode_436208401)
  majob_436207973* = (when declared(majob):
    majob
   else:
    majob_436207972)
  mapcmrb_436208404* = (when declared(mapcmrb):
    mapcmrb
   else:
    mapcmrb_436208403)
  maint16_436207975* = (when declared(maint16):
    maint16
   else:
    maint16_436207974)
  manodebase_436208124* = (when declared(manodebase):
    manodebase
   else:
    manodebase_436208123)
  maresourcemanagerflags_436208238* = (when declared(maresourcemanagerflags):
    maresourcemanagerflags
   else:
    maresourcemanagerflags_436208237)
  maallocationcallbacks_436208126* = (when declared(maallocationcallbacks):
    maallocationcallbacks
   else:
    maallocationcallbacks_436208125)
  mahishelfnode_436208240* = (when declared(mahishelfnode):
    mahishelfnode
   else:
    mahishelfnode_436208239)
  majobproc_436208406* = (when declared(majobproc):
    majobproc
   else:
    majobproc_436208405)
  macontextcommandwasapi_436208242* = (when declared(macontextcommandwasapi):
    macontextcommandwasapi
   else:
    macontextcommandwasapi_436208241)
  machannel_436208128* = (when declared(machannel):
    machannel
   else:
    machannel_436208127)
  mafileinfo_436208130* = (when declared(mafileinfo):
    mafileinfo
   else:
    mafileinfo_436208129)
  manotch2config_436208132* = (when declared(manotch2config):
    manotch2config
   else:
    manotch2config_436208131)
  mabiquadconfig_436208134* = (when declared(mabiquadconfig):
    mabiquadconfig
   else:
    mabiquadconfig_436208133)
  mawaveformtype_436208136* = (when declared(mawaveformtype):
    mawaveformtype
   else:
    mawaveformtype_436208135)
  maopenmodeflags_436208138* = (when declared(maopenmodeflags):
    maopenmodeflags
   else:
    maopenmodeflags_436208137)
  maaaudioinputpreset_436208140* = (when declared(maaaudioinputpreset):
    maaaudioinputpreset
   else:
    maaaudioinputpreset_436208139)
  machannelconversionpath_436207977* = (when declared(machannelconversionpath):
    machannelconversionpath
   else:
    machannelconversionpath_436207976)
  manotch2_436208244* = (when declared(manotch2):
    manotch2
   else:
    manotch2_436208243)
  mahpfnode_436208142* = (when declared(mahpfnode):
    mahpfnode
   else:
    mahpfnode_436208141)
  malpf1_436208246* = (when declared(malpf1):
    malpf1
   else:
    malpf1_436208245)
  wchart_436208248* = (when declared(wchart):
    wchart
   else:
    wchart_436208247)
  madevicenotification_436208250* = (when declared(madevicenotification):
    madevicenotification
   else:
    madevicenotification_436208249)
  mafaderconfig_436208408* = (when declared(mafaderconfig):
    mafaderconfig
   else:
    mafaderconfig_436208407)
  madelay_436208410* = (when declared(madelay):
    madelay
   else:
    madelay_436208409)
  marb_436208144* = (when declared(marb):
    marb
   else:
    marb_436208143)
  maspatializer_436207979* = (when declared(maspatializer):
    maspatializer
   else:
    maspatializer_436207978)
  mahishelf2config_436208252* = (when declared(mahishelf2config):
    mahishelf2config
   else:
    mahishelf2config_436208251)
  madecoderseekproc_436208412* = (when declared(madecoderseekproc):
    madecoderseekproc
   else:
    madecoderseekproc_436208411)
  compilerpthreadlistt_436207981* = (when declared(compilerpthreadlistt):
    compilerpthreadlistt
   else:
    compilerpthreadlistt_436207980)
  masoundgroup_436208146* = (when declared(masoundgroup):
    masoundgroup
   else:
    masoundgroup_436208145)
  mabool32_436207983* = (when declared(mabool32):
    mabool32
   else:
    mabool32_436207982)
  mauint16_436208148* = (when declared(mauint16):
    mauint16
   else:
    mauint16_436208147)
  manotchnodeconfig_436208254* = (when declared(manotchnodeconfig):
    manotchnodeconfig
   else:
    manotchnodeconfig_436208253)
  structmaresamplerconfig_436207985* = (when declared(structmaresamplerconfig):
    structmaresamplerconfig
   else:
    structmaresamplerconfig_436207984)
  structmacontext_436207987* = (when declared(structmacontext):
    structmacontext
   else:
    structmacontext_436207986)
  madataconverterconfig_436208256* = (when declared(madataconverterconfig):
    madataconverterconfig
   else:
    madataconverterconfig_436208255)
  structmaencoder_436208414* = (when declared(structmaencoder):
    structmaencoder
   else:
    structmaencoder_436208413)
  structmanodebase_436208416* = (when declared(structmanodebase):
    structmanodebase
   else:
    structmanodebase_436208415)
  maslotallocatorgroup_436208258* = (when declared(maslotallocatorgroup):
    maslotallocatorgroup
   else:
    maslotallocatorgroup_436208257)
  malogcallback_436207989* = (when declared(malogcallback):
    malogcallback
   else:
    malogcallback_436207988)
  mareadproc_436208260* = (when declared(mareadproc):
    mareadproc
   else:
    mareadproc_436208259)
  malpf1config_436207991* = (when declared(malpf1config):
    malpf1config
   else:
    malpf1config_436207990)
  madevicestate_436208418* = (when declared(madevicestate):
    madevicestate
   else:
    madevicestate_436208417)
  maloshelf2_436208262* = (when declared(maloshelf2):
    maloshelf2
   else:
    maloshelf2_436208261)
  masoundinlined_436208264* = (when declared(masoundinlined):
    masoundinlined
   else:
    masoundinlined_436208263)
  madevicenotificationproc_436208420* = (when declared(madevicenotificationproc):
    madevicenotificationproc
   else:
    madevicenotificationproc_436208419)
  malpf_436208422* = (when declared(malpf):
    malpf
   else:
    malpf_436208421)
  maspatializerlistener_436208424* = (when declared(maspatializerlistener):
    maspatializerlistener
   else:
    maspatializerlistener_436208423)
  maresourcemanagerdatastream_436207993* = (when declared(
      maresourcemanagerdatastream):
    maresourcemanagerdatastream
   else:
    maresourcemanagerdatastream_436207992)
  maresourcemanagerpipelinenotifications_436208268* = (when declared(
      maresourcemanagerpipelinenotifications):
    maresourcemanagerpipelinenotifications
   else:
    maresourcemanagerpipelinenotifications_436208267)
  maaaudiocontenttype_436208270* = (when declared(maaaudiocontenttype):
    maaaudiocontenttype
   else:
    maaaudiocontenttype_436208269)
  madecoderreadproc_436208272* = (when declared(madecoderreadproc):
    madecoderreadproc
   else:
    madecoderreadproc_436208271)
  mahpf_436208150* = (when declared(mahpf):
    mahpf
   else:
    mahpf_436208149)
  masharemode_436207995* = (when declared(masharemode):
    masharemode
   else:
    masharemode_436207994)
  maaudiobufferref_436207997* = (when declared(maaudiobufferref):
    maaudiobufferref
   else:
    maaudiobufferref_436207996)
  majobtype_436207999* = (when declared(majobtype):
    majobtype
   else:
    majobtype_436207998)
  mapeak2_436208426* = (when declared(mapeak2):
    mapeak2
   else:
    mapeak2_436208425)
  madevicedescriptor_436208274* = (when declared(madevicedescriptor):
    madevicedescriptor
   else:
    madevicedescriptor_436208273)
  mastopproc_436208428* = (when declared(mastopproc):
    mastopproc
   else:
    mastopproc_436208427)
  malcg_436208276* = (when declared(malcg):
    malcg
   else:
    malcg_436208275)
  maenginenodeconfig_436208278* = (when declared(maenginenodeconfig):
    maenginenodeconfig
   else:
    maenginenodeconfig_436208277)
  mapeaknodeconfig_436208280* = (when declared(mapeaknodeconfig):
    mapeaknodeconfig
   else:
    mapeaknodeconfig_436208279)
  mauintptr_436208282* = (when declared(mauintptr):
    mauintptr
   else:
    mauintptr_436208281)
  mathreadpriority_436208430* = (when declared(mathreadpriority):
    mathreadpriority
   else:
    mathreadpriority_436208429)
  maresourcemanagerconfig_436208152* = (when declared(maresourcemanagerconfig):
    maresourcemanagerconfig
   else:
    maresourcemanagerconfig_436208151)
  maslotallocatorconfig_436208432* = (when declared(maslotallocatorconfig):
    maslotallocatorconfig
   else:
    maslotallocatorconfig_436208431)
  mapositioning_436208284* = (when declared(mapositioning):
    mapositioning
   else:
    mapositioning_436208283)
  structmajob_436208286* = (when declared(structmajob):
    structmajob
   else:
    structmajob_436208285)
  mabpfconfig_436208434* = (when declared(mabpfconfig):
    mabpfconfig
   else:
    mabpfconfig_436208433)
  maloshelfnodeconfig_436208288* = (when declared(maloshelfnodeconfig):
    maloshelfnodeconfig
   else:
    maloshelfnodeconfig_436208287)
  malpf2_436208290* = (when declared(malpf2):
    malpf2
   else:
    malpf2_436208289)
  masoundflags_436208292* = (when declared(masoundflags):
    masoundflags
   else:
    masoundflags_436208291)
  maengine_436208154* = (when declared(maengine):
    maengine
   else:
    maengine_436208153)
  mapagedaudiobufferconfig_436208296* = (when declared(mapagedaudiobufferconfig):
    mapagedaudiobufferconfig
   else:
    mapagedaudiobufferconfig_436208295)
  maencoderinitproc_436208436* = (when declared(maencoderinitproc):
    maencoderinitproc
   else:
    maencoderinitproc_436208435)
  maaudiobuffer_436208298* = (when declared(maaudiobuffer):
    maaudiobuffer
   else:
    maaudiobuffer_436208297)
  maiossessioncategoryoption_436208300* = (when declared(
      maiossessioncategoryoption):
    maiossessioncategoryoption
   else:
    maiossessioncategoryoption_436208299)
  manodeoutputbus_436208003* = (when declared(manodeoutputbus):
    manodeoutputbus
   else:
    manodeoutputbus_436208002)
  maresourcemanagerdatabuffernode_436208001* = (when declared(
      maresourcemanagerdatabuffernode):
    maresourcemanagerdatabuffernode
   else:
    maresourcemanagerdatabuffernode_436208000)
  structmaresourcemanagerdatasource_436208302* = (when declared(
      structmaresourcemanagerdatasource):
    structmaresourcemanagerdatasource
   else:
    structmaresourcemanagerdatasource_436208301)
  mabiquadcoefficient_436208438* = (when declared(mabiquadcoefficient):
    mabiquadcoefficient
   else:
    mabiquadcoefficient_436208437)
  madelayconfig_436208304* = (when declared(madelayconfig):
    madelayconfig
   else:
    madelayconfig_436208303)
  majobqueueconfig_436208306* = (when declared(majobqueueconfig):
    majobqueueconfig
   else:
    majobqueueconfig_436208305)
  mavfsfile_436208308* = (when declared(mavfsfile):
    mavfsfile
   else:
    mavfsfile_436208307)
  maenumdevicescallbackproc_436208005* = (when declared(
      maenumdevicescallbackproc):
    maenumdevicescallbackproc
   else:
    maenumdevicescallbackproc_436208004)
  madefaultvfs_436208310* = (when declared(madefaultvfs):
    madefaultvfs
   else:
    madefaultvfs_436208309)
  maresourcemanagerdatasource_436208440* = (when declared(
      maresourcemanagerdatasource):
    maresourcemanagerdatasource
   else:
    maresourcemanagerdatasource_436208439)
  mapthreadt_436208007* = (when declared(mapthreadt):
    mapthreadt
   else:
    mapthreadt_436208006)
  mapeaknode_436208312* = (when declared(mapeaknode):
    mapeaknode
   else:
    mapeaknode_436208311)
  structmadevice_436208158* = (when declared(structmadevice):
    structmadevice
   else:
    structmadevice_436208157)
  mabool8_436208009* = (when declared(mabool8):
    mabool8
   else:
    mabool8_436208008)
  masoundconfig_436208314* = (when declared(masoundconfig):
    masoundconfig
   else:
    masoundconfig_436208313)
  maperformanceprofile_436208011* = (when declared(maperformanceprofile):
    maperformanceprofile
   else:
    maperformanceprofile_436208010)
  madatasourcegetnextproc_436208013* = (when declared(madatasourcegetnextproc):
    madatasourcegetnextproc
   else:
    madatasourcegetnextproc_436208012)
  maptr_436208442* = (when declared(maptr):
    maptr
   else:
    maptr_436208441)
  mapthreadmutext_436208015* = (when declared(mapthreadmutext):
    mapthreadmutext
   else:
    mapthreadmutext_436208014)
  structmaresourcemanagerdatabuffernode_436208316* = (when declared(
      structmaresourcemanagerdatabuffernode):
    structmaresourcemanagerdatabuffernode
   else:
    structmaresourcemanagerdatabuffernode_436208315)
  maresourcemanager_436208318* = (when declared(maresourcemanager):
    maresourcemanager
   else:
    maresourcemanager_436208317)
  manodeconfig_436208017* = (when declared(manodeconfig):
    manodeconfig
   else:
    manodeconfig_436208016)
  mabiquad_436208444* = (when declared(mabiquad):
    mabiquad
   else:
    mabiquad_436208443)
  structmaengine_436208446* = (when declared(structmaengine):
    structmaengine
   else:
    structmaengine_436208445)
  malinearresampler_436208448* = (when declared(malinearresampler):
    malinearresampler
   else:
    malinearresampler_436208447)
  mawaveformconfig_436208450* = (when declared(mawaveformconfig):
    mawaveformconfig
   else:
    mawaveformconfig_436208449)
  mapagedaudiobuffer_436208026* = (when declared(mapagedaudiobuffer):
    mapagedaudiobuffer
   else:
    mapagedaudiobuffer_436208025)
  maevent_436208160* = (when declared(maevent):
    maevent
   else:
    maevent_436208159)
  maencoderconfig_436208162* = (when declared(maencoderconfig):
    maencoderconfig
   else:
    maencoderconfig_436208161)
  maencodingformat_436208028* = (when declared(maencodingformat):
    maencodingformat
   else:
    maencodingformat_436208027)
  mahandle_436208452* = (when declared(mahandle):
    mahandle
   else:
    mahandle_436208451)
  malogcallbackproc_436208164* = (when declared(malogcallbackproc):
    malogcallbackproc
   else:
    malogcallbackproc_436208163)
  pthreadcondt_436208320* = (when declared(pthreadcondt):
    pthreadcondt
   else:
    pthreadcondt_436208319)
  madatasourcenode_436208166* = (when declared(madatasourcenode):
    madatasourcenode
   else:
    madatasourcenode_436208165)
  maloshelfnode_436208032* = (when declared(maloshelfnode):
    maloshelfnode
   else:
    maloshelfnode_436208031)
  machannelmixmode_436208454* = (when declared(machannelmixmode):
    machannelmixmode
   else:
    machannelmixmode_436208453)
  mafader_436208030* = (when declared(mafader):
    mafader
   else:
    mafader_436208029)
  madithermode_436208168* = (when declared(madithermode):
    madithermode
   else:
    madithermode_436208167)
  maasyncnotificationcallbacks_436208456* = (when declared(
      maasyncnotificationcallbacks):
    maasyncnotificationcallbacks
   else:
    maasyncnotificationcallbacks_436208455)
  maresourcemanagerdatasourceconfig_436208322* = (when declared(
      maresourcemanagerdatasourceconfig):
    maresourcemanagerdatasourceconfig
   else:
    maresourcemanagerdatasourceconfig_436208321)
  structmaresourcemanagerdatastream_436208324* = (when declared(
      structmaresourcemanagerdatastream):
    structmaresourcemanagerdatastream
   else:
    structmaresourcemanagerdatastream_436208323)
  maencoderwriteproc_436208170* = (when declared(maencoderwriteproc):
    maencoderwriteproc
   else:
    maencoderwriteproc_436208169)
  madevice_436208034* = (when declared(madevice):
    madevice
   else:
    madevice_436208033)
  maencoder_436208040* = (when declared(maencoder):
    maencoder
   else:
    maencoder_436208039)
  maloglevel_436208036* = (when declared(maloglevel):
    maloglevel
   else:
    maloglevel_436208035)
  manoise_436208172* = (when declared(manoise):
    manoise
   else:
    manoise_436208171)
  mathread_436208326* = (when declared(mathread):
    mathread
   else:
    mathread_436208325)
  madatasourcevtable_436208174* = (when declared(madatasourcevtable):
    madatasourcevtable
   else:
    madatasourcevtable_436208173)
  malinearresamplerconfig_436208038* = (when declared(malinearresamplerconfig):
    malinearresamplerconfig
   else:
    malinearresamplerconfig_436208037)
  structpthreadinternallist_436208328* = (when declared(
      structpthreadinternallist):
    structpthreadinternallist
   else:
    structpthreadinternallist_436208327)
  maresult_436208042* = (when declared(maresult):
    maresult
   else:
    maresult_436208041)
  maint64_436208330* = (when declared(maint64):
    maint64
   else:
    maint64_436208329)
  madecodingbackendconfig_436208332* = (when declared(madecodingbackendconfig):
    madecodingbackendconfig
   else:
    madecodingbackendconfig_436208331)
  mapanner_436208458* = (when declared(mapanner):
    mapanner
   else:
    mapanner_436208457)
  mahpfconfig_436208460* = (when declared(mahpfconfig):
    mahpfconfig
   else:
    mahpfconfig_436208459)
  madeviceid_436208334* = (when declared(madeviceid):
    madeviceid
   else:
    madeviceid_436208333)
  manoisetype_436208176* = (when declared(manoisetype):
    manoisetype
   else:
    manoisetype_436208175)
  maopenslstreamtype_436208044* = (when declared(maopenslstreamtype):
    maopenslstreamtype
   else:
    maopenslstreamtype_436208043)
  maspatializerlistenerconfig_436208336* = (when declared(
      maspatializerlistenerconfig):
    maspatializerlistenerconfig
   else:
    maspatializerlistenerconfig_436208335)
  mastreamformat_436208462* = (when declared(mastreamformat):
    mastreamformat
   else:
    mastreamformat_436208461)
  maresourcemanagerdatasupplytype_436208464* = (when declared(
      maresourcemanagerdatasupplytype):
    maresourcemanagerdatasupplytype
   else:
    maresourcemanagerdatasupplytype_436208463)
  mauint32_436208046* = (when declared(mauint32):
    mauint32
   else:
    mauint32_436208045)
  mapagedaudiobufferdata_436208048* = (when declared(mapagedaudiobufferdata):
    mapagedaudiobufferdata
   else:
    mapagedaudiobufferdata_436208047)
  maresamplerconfig_436208178* = (when declared(maresamplerconfig):
    maresamplerconfig
   else:
    maresamplerconfig_436208177)
  madataconverterexecutionpath_436208340* = (when declared(
      madataconverterexecutionpath):
    madataconverterexecutionpath
   else:
    madataconverterexecutionpath_436208339)
  madevicejobthread_436208466* = (when declared(madevicejobthread):
    madevicejobthread
   else:
    madevicejobthread_436208465)
  maasyncnotificationevent_436208468* = (when declared(maasyncnotificationevent):
    maasyncnotificationevent
   else:
    maasyncnotificationevent_436208467)
  mapagedaudiobufferpage_436208342* = (when declared(mapagedaudiobufferpage):
    mapagedaudiobufferpage
   else:
    mapagedaudiobufferpage_436208341)
  mabpfnodeconfig_436208470* = (when declared(mabpfnodeconfig):
    mabpfnodeconfig
   else:
    mabpfnodeconfig_436208469)
  maencoderseekproc_436208180* = (when declared(maencoderseekproc):
    maencoderseekproc
   else:
    maencoderseekproc_436208179)
  structmapagedaudiobufferpage_436208344* = (when declared(
      structmapagedaudiobufferpage):
    structmapagedaudiobufferpage
   else:
    structmapagedaudiobufferpage_436208343)
  madecodertellproc_436208050* = (when declared(madecodertellproc):
    madecodertellproc
   else:
    madecodertellproc_436208049)
  majobqueueflags_436208346* = (when declared(majobqueueflags):
    majobqueueflags
   else:
    majobqueueflags_436208345)
  maasyncnotificationpoll_436208052* = (when declared(maasyncnotificationpoll):
    maasyncnotificationpoll
   else:
    maasyncnotificationpoll_436208051)
  manodestate_436208054* = (when declared(manodestate):
    manodestate
   else:
    manodestate_436208053)
  madevicejobthreadconfig_436208182* = (when declared(madevicejobthreadconfig):
    madevicejobthreadconfig
   else:
    madevicejobthreadconfig_436208181)
  mastandardchannelmap_436208056* = (when declared(mastandardchannelmap):
    mastandardchannelmap
   else:
    mastandardchannelmap_436208055)
  manoiseconfig_436208184* = (when declared(manoiseconfig):
    manoiseconfig
   else:
    manoiseconfig_436208183)
  majobqueue_436208472* = (when declared(majobqueue):
    majobqueue
   else:
    majobqueue_436208471)
  machannelconverter_436208186* = (when declared(machannelconverter):
    machannelconverter
   else:
    machannelconverter_436208185)
  maresourcemanagerpipelinestagenotification_436208058* = (when declared(
      maresourcemanagerpipelinestagenotification):
    maresourcemanagerpipelinestagenotification
   else:
    maresourcemanagerpipelinestagenotification_436208057)
  macontextconfig_436208188* = (when declared(macontextconfig):
    macontextconfig
   else:
    macontextconfig_436208187)
  malpfnode_436208348* = (when declared(malpfnode):
    malpfnode
   else:
    malpfnode_436208347)
  madevicetype_436208060* = (when declared(madevicetype):
    madevicetype
   else:
    madevicetype_436208059)
  mabpfnode_436208062* = (when declared(mabpfnode):
    mabpfnode
   else:
    mabpfnode_436208061)
  masoundgroupconfig_436208474* = (when declared(masoundgroupconfig):
    masoundgroupconfig
   else:
    masoundgroupconfig_436208473)
  magainerconfig_436208476* = (when declared(magainerconfig):
    magainerconfig
   else:
    magainerconfig_436208475)
  maloshelf2config_436208064* = (when declared(maloshelf2config):
    maloshelf2config
   else:
    maloshelf2config_436208063)
  manodeinputbus_436208350* = (when declared(manodeinputbus):
    manodeinputbus
   else:
    manodeinputbus_436208349)
  mahandedness_436208352* = (when declared(mahandedness):
    mahandedness
   else:
    mahandedness_436208351)
  macontext_436208478* = (when declared(macontext):
    macontext
   else:
    macontext_436208477)
  masemaphore_436208066* = (when declared(masemaphore):
    masemaphore
   else:
    masemaphore_436208065)
  structpthreadmutexs_436208068* = (when declared(structpthreadmutexs):
    structpthreadmutexs
   else:
    structpthreadmutexs_436208067)
  maencoderwritepcmframesproc_436208070* = (when declared(
      maencoderwritepcmframesproc):
    maencoderwritepcmframesproc
   else:
    maencoderwritepcmframesproc_436208069)
  maproc_436208354* = (when declared(maproc):
    maproc
   else:
    maproc_436208353)
  maenginenodetype_436208072* = (when declared(maenginenodetype):
    maenginenodetype
   else:
    maenginenodetype_436208071)
  madevicedataproc_436208190* = (when declared(madevicedataproc):
    madevicedataproc
   else:
    madevicedataproc_436208189)
  mabpf_436208074* = (when declared(mabpf):
    mabpf
   else:
    mabpf_436208073)
  maint32_436208356* = (when declared(maint32):
    maint32
   else:
    maint32_436208355)
  magainer_436208480* = (when declared(magainer):
    magainer
   else:
    magainer_436208479)
  mahishelf2_436208192* = (when declared(mahishelf2):
    mahishelf2
   else:
    mahishelf2_436208191)
  manodegraphconfig_436208358* = (when declared(manodegraphconfig):
    manodegraphconfig
   else:
    manodegraphconfig_436208357)
  mabiquadnode_436208360* = (when declared(mabiquadnode):
    mabiquadnode
   else:
    mabiquadnode_436208359)
  madeviceinfo_436208194* = (when declared(madeviceinfo):
    madeviceinfo
   else:
    madeviceinfo_436208193)
  mapeak2config_436208196* = (when declared(mapeak2config):
    mapeak2config
   else:
    mapeak2config_436208195)
when not declared(manodegraph):
  type
    manodegraph* = manodegraph_436207931
else:
  static :
    hint("Declaration of " & "ma_node_graph" &
        " already exists, not redeclaring")
when not declared(madecoder):
  type
    madecoder* = madecoder_436208075
else:
  static :
    hint("Declaration of " & "ma_decoder" & " already exists, not redeclaring")
when not declared(structmaresourcemanagerdatabuffer):
  type
    structmaresourcemanagerdatabuffer* = structmaresourcemanagerdatabuffer_436208077
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_data_buffer" &
        " already exists, not redeclaring")
when not declared(maseekproc):
  type
    maseekproc* = maseekproc_436208361
else:
  static :
    hint("Declaration of " & "ma_seek_proc" & " already exists, not redeclaring")
when not declared(madatasourcenodeconfig):
  type
    madatasourcenodeconfig* = madatasourcenodeconfig_436207934
else:
  static :
    hint("Declaration of " & "ma_data_source_node_config" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatasupply):
  type
    maresourcemanagerdatasupply* = maresourcemanagerdatasupply_436208363
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_supply" &
        " already exists, not redeclaring")
when not declared(maspatializerconfig):
  type
    maspatializerconfig* = maspatializerconfig_436208081
else:
  static :
    hint("Declaration of " & "ma_spatializer_config" &
        " already exists, not redeclaring")
when not declared(mahpf2):
  type
    mahpf2* = mahpf2_436208365
else:
  static :
    hint("Declaration of " & "ma_hpf2" & " already exists, not redeclaring")
when not declared(mawaveform):
  type
    mawaveform* = mawaveform_436208367
else:
  static :
    hint("Declaration of " & "ma_waveform" & " already exists, not redeclaring")
when not declared(malog):
  type
    malog* = malog_436207936
else:
  static :
    hint("Declaration of " & "ma_log" & " already exists, not redeclaring")
when not declared(manotchnode):
  type
    manotchnode* = manotchnode_436208083
else:
  static :
    hint("Declaration of " & "ma_notch_node" &
        " already exists, not redeclaring")
when not declared(masplitternode):
  type
    masplitternode* = masplitternode_436207938
else:
  static :
    hint("Declaration of " & "ma_splitter_node" &
        " already exists, not redeclaring")
when not declared(mabiquadnodeconfig):
  type
    mabiquadnodeconfig* = mabiquadnodeconfig_436208085
else:
  static :
    hint("Declaration of " & "ma_biquad_node_config" &
        " already exists, not redeclaring")
when not declared(mauint8):
  type
    mauint8* = mauint8_436207940
else:
  static :
    hint("Declaration of " & "ma_uint8" & " already exists, not redeclaring")
when not declared(maduplexrb):
  type
    maduplexrb* = maduplexrb_436208373
else:
  static :
    hint("Declaration of " & "ma_duplex_rb" & " already exists, not redeclaring")
when not declared(structmanodeoutputbus):
  type
    structmanodeoutputbus* = structmanodeoutputbus_436208375
else:
  static :
    hint("Declaration of " & "struct_ma_node_output_bus" &
        " already exists, not redeclaring")
when not declared(mapthreadcondt):
  type
    mapthreadcondt* = mapthreadcondt_436208087
else:
  static :
    hint("Declaration of " & "ma_pthread_cond_t" &
        " already exists, not redeclaring")
when not declared(structmacontextconfig):
  type
    structmacontextconfig* = structmacontextconfig_436207946
else:
  static :
    hint("Declaration of " & "struct_ma_context_config" &
        " already exists, not redeclaring")
when not declared(structmadecoder):
  type
    structmadecoder* = structmadecoder_436208093
else:
  static :
    hint("Declaration of " & "struct_ma_decoder" &
        " already exists, not redeclaring")
when not declared(madelaynodeconfig):
  type
    madelaynodeconfig* = madelaynodeconfig_436208201
else:
  static :
    hint("Declaration of " & "ma_delay_node_config" &
        " already exists, not redeclaring")
when not declared(madecoderconfig):
  type
    madecoderconfig* = madecoderconfig_436208199
else:
  static :
    hint("Declaration of " & "ma_decoder_config" &
        " already exists, not redeclaring")
when not declared(mahpf1):
  type
    mahpf1* = mahpf1_436208095
else:
  static :
    hint("Declaration of " & "ma_hpf1" & " already exists, not redeclaring")
when not declared(mabpf2config):
  type
    mabpf2config* = mabpf2config_436208203
else:
  static :
    hint("Declaration of " & "ma_bpf2_config" &
        " already exists, not redeclaring")
when not declared(mahishelfnodeconfig):
  type
    mahishelfnodeconfig* = mahishelfnodeconfig_436208377
else:
  static :
    hint("Declaration of " & "ma_hishelf_node_config" &
        " already exists, not redeclaring")
when not declared(madecodingbackendvtable):
  type
    madecodingbackendvtable* = madecodingbackendvtable_436207948
else:
  static :
    hint("Declaration of " & "ma_decoding_backend_vtable" &
        " already exists, not redeclaring")
when not declared(mapannerconfig):
  type
    mapannerconfig* = mapannerconfig_436208097
else:
  static :
    hint("Declaration of " & "ma_panner_config" &
        " already exists, not redeclaring")
when not declared(mavec3f):
  type
    mavec3f* = mavec3f_436208099
else:
  static :
    hint("Declaration of " & "ma_vec3f" & " already exists, not redeclaring")
when not declared(maaudiobufferconfig):
  type
    maaudiobufferconfig* = maaudiobufferconfig_436208101
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_config" &
        " already exists, not redeclaring")
when not declared(madeviceconfig):
  type
    madeviceconfig* = madeviceconfig_436207952
else:
  static :
    hint("Declaration of " & "ma_device_config" &
        " already exists, not redeclaring")
when not declared(mamutex):
  type
    mamutex* = mamutex_436207954
else:
  static :
    hint("Declaration of " & "ma_mutex" & " already exists, not redeclaring")
when not declared(mabackendcallbacks):
  type
    mabackendcallbacks* = mabackendcallbacks_436207956
else:
  static :
    hint("Declaration of " & "ma_backend_callbacks" &
        " already exists, not redeclaring")
when not declared(masound):
  type
    masound* = masound_436208209
else:
  static :
    hint("Declaration of " & "ma_sound" & " already exists, not redeclaring")
when not declared(maspinlock):
  type
    maspinlock* = maspinlock_436208103
else:
  static :
    hint("Declaration of " & "ma_spinlock" & " already exists, not redeclaring")
when not declared(pthreadmutext):
  type
    pthreadmutext* = pthreadmutext_436208211
else:
  static :
    hint("Declaration of " & "pthread_mutex_t" &
        " already exists, not redeclaring")
when not declared(structmasound):
  type
    structmasound* = structmasound_436208213
else:
  static :
    hint("Declaration of " & "struct_ma_sound" &
        " already exists, not redeclaring")
when not declared(mabpf2):
  type
    mabpf2* = mabpf2_436208105
else:
  static :
    hint("Declaration of " & "ma_bpf2" & " already exists, not redeclaring")
when not declared(pthreadt):
  type
    pthreadt* = pthreadt_436208107
else:
  static :
    hint("Declaration of " & "pthread_t" & " already exists, not redeclaring")
when not declared(mafence):
  type
    mafence* = mafence_436208109
else:
  static :
    hint("Declaration of " & "ma_fence" & " already exists, not redeclaring")
when not declared(maengineconfig):
  type
    maengineconfig* = maengineconfig_436208381
else:
  static :
    hint("Declaration of " & "ma_engine_config" &
        " already exists, not redeclaring")
when not declared(matellproc):
  type
    matellproc* = matellproc_436208383
else:
  static :
    hint("Declaration of " & "ma_tell_proc" & " already exists, not redeclaring")
when not declared(structmadeviceconfig):
  type
    structmadeviceconfig* = structmadeviceconfig_436208215
else:
  static :
    hint("Declaration of " & "struct_ma_device_config" &
        " already exists, not redeclaring")
when not declared(maencoderuninitproc):
  type
    maencoderuninitproc* = maencoderuninitproc_436208217
else:
  static :
    hint("Declaration of " & "ma_encoder_uninit_proc" &
        " already exists, not redeclaring")
when not declared(manodevtable):
  type
    manodevtable* = manodevtable_436208219
else:
  static :
    hint("Declaration of " & "ma_node_vtable" &
        " already exists, not redeclaring")
when not declared(structmabackendcallbacks):
  type
    structmabackendcallbacks* = structmabackendcallbacks_436208111
else:
  static :
    hint("Declaration of " & "struct_ma_backend_callbacks" &
        " already exists, not redeclaring")
when not declared(structmanodegraph):
  type
    structmanodegraph* = structmanodegraph_436208221
else:
  static :
    hint("Declaration of " & "struct_ma_node_graph" &
        " already exists, not redeclaring")
when not declared(mauint64):
  type
    mauint64* = mauint64_436208385
else:
  static :
    hint("Declaration of " & "ma_uint64" & " already exists, not redeclaring")
when not declared(maresourcemanagerdatabuffer):
  type
    maresourcemanagerdatabuffer* = maresourcemanagerdatabuffer_436208387
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer" &
        " already exists, not redeclaring")
when not declared(malpfconfig):
  type
    malpfconfig* = malpfconfig_436208113
else:
  static :
    hint("Declaration of " & "ma_lpf_config" &
        " already exists, not redeclaring")
when not declared(madatasourceconfig):
  type
    madatasourceconfig* = madatasourceconfig_436208223
else:
  static :
    hint("Declaration of " & "ma_data_source_config" &
        " already exists, not redeclaring")
when not declared(malpfnodeconfig):
  type
    malpfnodeconfig* = malpfnodeconfig_436207962
else:
  static :
    hint("Declaration of " & "ma_lpf_node_config" &
        " already exists, not redeclaring")
when not declared(structmaresourcemanager):
  type
    structmaresourcemanager* = structmaresourcemanager_436208115
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager" &
        " already exists, not redeclaring")
when not declared(madataconverter):
  type
    madataconverter* = madataconverter_436208225
else:
  static :
    hint("Declaration of " & "ma_data_converter" &
        " already exists, not redeclaring")
when not declared(maresampler):
  type
    maresampler* = maresampler_436207964
else:
  static :
    hint("Declaration of " & "ma_resampler" & " already exists, not redeclaring")
when not declared(mahpf1config):
  type
    mahpf1config* = mahpf1config_436208227
else:
  static :
    hint("Declaration of " & "ma_hpf1_config" &
        " already exists, not redeclaring")
when not declared(machannelconverterconfig):
  type
    machannelconverterconfig* = machannelconverterconfig_436208391
else:
  static :
    hint("Declaration of " & "ma_channel_converter_config" &
        " already exists, not redeclaring")
when not declared(maint8):
  type
    maint8* = maint8_436208393
else:
  static :
    hint("Declaration of " & "ma_int8" & " already exists, not redeclaring")
when not declared(structmasoundinlined):
  type
    structmasoundinlined* = structmasoundinlined_436207966
else:
  static :
    hint("Declaration of " & "struct_ma_sound_inlined" &
        " already exists, not redeclaring")
when not declared(madelaynode):
  type
    madelaynode* = madelaynode_436207968
else:
  static :
    hint("Declaration of " & "ma_delay_node" &
        " already exists, not redeclaring")
when not declared(mahpfnodeconfig):
  type
    mahpfnodeconfig* = mahpfnodeconfig_436208117
else:
  static :
    hint("Declaration of " & "ma_hpf_node_config" &
        " already exists, not redeclaring")
when not declared(maresamplingbackendvtable):
  type
    maresamplingbackendvtable* = maresamplingbackendvtable_436208231
else:
  static :
    hint("Declaration of " & "ma_resampling_backend_vtable" &
        " already exists, not redeclaring")
when not declared(maslotallocator):
  type
    maslotallocator* = maslotallocator_436208397
else:
  static :
    hint("Declaration of " & "ma_slot_allocator" &
        " already exists, not redeclaring")
when not declared(mavfscallbacks):
  type
    mavfscallbacks* = mavfscallbacks_436208399
else:
  static :
    hint("Declaration of " & "ma_vfs_callbacks" &
        " already exists, not redeclaring")
when not declared(masplitternodeconfig):
  type
    masplitternodeconfig* = masplitternodeconfig_436208119
else:
  static :
    hint("Declaration of " & "ma_splitter_node_config" &
        " already exists, not redeclaring")
when not declared(structpthreadconds):
  type
    structpthreadconds* = structpthreadconds_436207970
else:
  static :
    hint("Declaration of " & "struct___pthread_cond_s" &
        " already exists, not redeclaring")
when not declared(matimer):
  type
    matimer* = matimer_436208233
else:
  static :
    hint("Declaration of " & "ma_timer" & " already exists, not redeclaring")
when not declared(structmanodeinputbus):
  type
    structmanodeinputbus* = structmanodeinputbus_436208121
else:
  static :
    hint("Declaration of " & "struct_ma_node_input_bus" &
        " already exists, not redeclaring")
when not declared(madatasourcebase):
  type
    madatasourcebase* = madatasourcebase_436208235
else:
  static :
    hint("Declaration of " & "ma_data_source_base" &
        " already exists, not redeclaring")
when not declared(maenginenode):
  type
    maenginenode* = maenginenode_436208401
else:
  static :
    hint("Declaration of " & "ma_engine_node" &
        " already exists, not redeclaring")
when not declared(majob):
  type
    majob* = majob_436207972
else:
  static :
    hint("Declaration of " & "ma_job" & " already exists, not redeclaring")
when not declared(mapcmrb):
  type
    mapcmrb* = mapcmrb_436208403
else:
  static :
    hint("Declaration of " & "ma_pcm_rb" & " already exists, not redeclaring")
when not declared(maint16):
  type
    maint16* = maint16_436207974
else:
  static :
    hint("Declaration of " & "ma_int16" & " already exists, not redeclaring")
when not declared(manodebase):
  type
    manodebase* = manodebase_436208123
else:
  static :
    hint("Declaration of " & "ma_node_base" & " already exists, not redeclaring")
when not declared(maallocationcallbacks):
  type
    maallocationcallbacks* = maallocationcallbacks_436208125
else:
  static :
    hint("Declaration of " & "ma_allocation_callbacks" &
        " already exists, not redeclaring")
when not declared(mahishelfnode):
  type
    mahishelfnode* = mahishelfnode_436208239
else:
  static :
    hint("Declaration of " & "ma_hishelf_node" &
        " already exists, not redeclaring")
when not declared(majobproc):
  type
    majobproc* = majobproc_436208405
else:
  static :
    hint("Declaration of " & "ma_job_proc" & " already exists, not redeclaring")
when not declared(macontextcommandwasapi):
  type
    macontextcommandwasapi* = macontextcommandwasapi_436208241
else:
  static :
    hint("Declaration of " & "ma_context_command__wasapi" &
        " already exists, not redeclaring")
when not declared(machannel):
  type
    machannel* = machannel_436208127
else:
  static :
    hint("Declaration of " & "ma_channel" & " already exists, not redeclaring")
when not declared(mafileinfo):
  type
    mafileinfo* = mafileinfo_436208129
else:
  static :
    hint("Declaration of " & "ma_file_info" & " already exists, not redeclaring")
when not declared(manotch2config):
  type
    manotch2config* = manotch2config_436208131
else:
  static :
    hint("Declaration of " & "ma_notch2_config" &
        " already exists, not redeclaring")
when not declared(mabiquadconfig):
  type
    mabiquadconfig* = mabiquadconfig_436208133
else:
  static :
    hint("Declaration of " & "ma_biquad_config" &
        " already exists, not redeclaring")
when not declared(manotch2):
  type
    manotch2* = manotch2_436208243
else:
  static :
    hint("Declaration of " & "ma_notch2" & " already exists, not redeclaring")
when not declared(mahpfnode):
  type
    mahpfnode* = mahpfnode_436208141
else:
  static :
    hint("Declaration of " & "ma_hpf_node" & " already exists, not redeclaring")
when not declared(malpf1):
  type
    malpf1* = malpf1_436208245
else:
  static :
    hint("Declaration of " & "ma_lpf1" & " already exists, not redeclaring")
when not declared(wchart):
  type
    wchart* = wchart_436208247
else:
  static :
    hint("Declaration of " & "wchar_t" & " already exists, not redeclaring")
when not declared(madevicenotification):
  type
    madevicenotification* = madevicenotification_436208249
else:
  static :
    hint("Declaration of " & "ma_device_notification" &
        " already exists, not redeclaring")
when not declared(mafaderconfig):
  type
    mafaderconfig* = mafaderconfig_436208407
else:
  static :
    hint("Declaration of " & "ma_fader_config" &
        " already exists, not redeclaring")
when not declared(madelay):
  type
    madelay* = madelay_436208409
else:
  static :
    hint("Declaration of " & "ma_delay" & " already exists, not redeclaring")
when not declared(marb):
  type
    marb* = marb_436208143
else:
  static :
    hint("Declaration of " & "ma_rb" & " already exists, not redeclaring")
when not declared(maspatializer):
  type
    maspatializer* = maspatializer_436207978
else:
  static :
    hint("Declaration of " & "ma_spatializer" &
        " already exists, not redeclaring")
when not declared(mahishelf2config):
  type
    mahishelf2config* = mahishelf2config_436208251
else:
  static :
    hint("Declaration of " & "ma_hishelf2_config" &
        " already exists, not redeclaring")
when not declared(madecoderseekproc):
  type
    madecoderseekproc* = madecoderseekproc_436208411
else:
  static :
    hint("Declaration of " & "ma_decoder_seek_proc" &
        " already exists, not redeclaring")
when not declared(compilerpthreadlistt):
  type
    compilerpthreadlistt* = compilerpthreadlistt_436207980
else:
  static :
    hint("Declaration of " & "__pthread_list_t" &
        " already exists, not redeclaring")
when not declared(masoundgroup):
  type
    masoundgroup* = masoundgroup_436208145
else:
  static :
    hint("Declaration of " & "ma_sound_group" &
        " already exists, not redeclaring")
when not declared(mabool32):
  type
    mabool32* = mabool32_436207982
else:
  static :
    hint("Declaration of " & "ma_bool32" & " already exists, not redeclaring")
when not declared(mauint16):
  type
    mauint16* = mauint16_436208147
else:
  static :
    hint("Declaration of " & "ma_uint16" & " already exists, not redeclaring")
when not declared(manotchnodeconfig):
  type
    manotchnodeconfig* = manotchnodeconfig_436208253
else:
  static :
    hint("Declaration of " & "ma_notch_node_config" &
        " already exists, not redeclaring")
when not declared(structmaresamplerconfig):
  type
    structmaresamplerconfig* = structmaresamplerconfig_436207984
else:
  static :
    hint("Declaration of " & "struct_ma_resampler_config" &
        " already exists, not redeclaring")
when not declared(structmacontext):
  type
    structmacontext* = structmacontext_436207986
else:
  static :
    hint("Declaration of " & "struct_ma_context" &
        " already exists, not redeclaring")
when not declared(madataconverterconfig):
  type
    madataconverterconfig* = madataconverterconfig_436208255
else:
  static :
    hint("Declaration of " & "ma_data_converter_config" &
        " already exists, not redeclaring")
when not declared(structmaencoder):
  type
    structmaencoder* = structmaencoder_436208413
else:
  static :
    hint("Declaration of " & "struct_ma_encoder" &
        " already exists, not redeclaring")
when not declared(structmanodebase):
  type
    structmanodebase* = structmanodebase_436208415
else:
  static :
    hint("Declaration of " & "struct_ma_node_base" &
        " already exists, not redeclaring")
when not declared(maslotallocatorgroup):
  type
    maslotallocatorgroup* = maslotallocatorgroup_436208257
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_group" &
        " already exists, not redeclaring")
when not declared(malogcallback):
  type
    malogcallback* = malogcallback_436207988
else:
  static :
    hint("Declaration of " & "ma_log_callback" &
        " already exists, not redeclaring")
when not declared(mareadproc):
  type
    mareadproc* = mareadproc_436208259
else:
  static :
    hint("Declaration of " & "ma_read_proc" & " already exists, not redeclaring")
when not declared(malpf1config):
  type
    malpf1config* = malpf1config_436207990
else:
  static :
    hint("Declaration of " & "ma_lpf1_config" &
        " already exists, not redeclaring")
when not declared(maloshelf2):
  type
    maloshelf2* = maloshelf2_436208261
else:
  static :
    hint("Declaration of " & "ma_loshelf2" & " already exists, not redeclaring")
when not declared(masoundinlined):
  type
    masoundinlined* = masoundinlined_436208263
else:
  static :
    hint("Declaration of " & "ma_sound_inlined" &
        " already exists, not redeclaring")
when not declared(madevicenotificationproc):
  type
    madevicenotificationproc* = madevicenotificationproc_436208419
else:
  static :
    hint("Declaration of " & "ma_device_notification_proc" &
        " already exists, not redeclaring")
when not declared(malpf):
  type
    malpf* = malpf_436208421
else:
  static :
    hint("Declaration of " & "ma_lpf" & " already exists, not redeclaring")
when not declared(maspatializerlistener):
  type
    maspatializerlistener* = maspatializerlistener_436208423
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatastream):
  type
    maresourcemanagerdatastream* = maresourcemanagerdatastream_436207992
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerpipelinenotifications):
  type
    maresourcemanagerpipelinenotifications* = maresourcemanagerpipelinenotifications_436208267
else:
  static :
    hint("Declaration of " & "ma_resource_manager_pipeline_notifications" &
        " already exists, not redeclaring")
when not declared(madecoderreadproc):
  type
    madecoderreadproc* = madecoderreadproc_436208271
else:
  static :
    hint("Declaration of " & "ma_decoder_read_proc" &
        " already exists, not redeclaring")
when not declared(mahpf):
  type
    mahpf* = mahpf_436208149
else:
  static :
    hint("Declaration of " & "ma_hpf" & " already exists, not redeclaring")
when not declared(maaudiobufferref):
  type
    maaudiobufferref* = maaudiobufferref_436207996
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref" &
        " already exists, not redeclaring")
when not declared(mapeak2):
  type
    mapeak2* = mapeak2_436208425
else:
  static :
    hint("Declaration of " & "ma_peak2" & " already exists, not redeclaring")
when not declared(madevicedescriptor):
  type
    madevicedescriptor* = madevicedescriptor_436208273
else:
  static :
    hint("Declaration of " & "ma_device_descriptor" &
        " already exists, not redeclaring")
when not declared(mastopproc):
  type
    mastopproc* = mastopproc_436208427
else:
  static :
    hint("Declaration of " & "ma_stop_proc" & " already exists, not redeclaring")
when not declared(malcg):
  type
    malcg* = malcg_436208275
else:
  static :
    hint("Declaration of " & "ma_lcg" & " already exists, not redeclaring")
when not declared(maenginenodeconfig):
  type
    maenginenodeconfig* = maenginenodeconfig_436208277
else:
  static :
    hint("Declaration of " & "ma_engine_node_config" &
        " already exists, not redeclaring")
when not declared(mapeaknodeconfig):
  type
    mapeaknodeconfig* = mapeaknodeconfig_436208279
else:
  static :
    hint("Declaration of " & "ma_peak_node_config" &
        " already exists, not redeclaring")
when not declared(mauintptr):
  type
    mauintptr* = mauintptr_436208281
else:
  static :
    hint("Declaration of " & "ma_uintptr" & " already exists, not redeclaring")
when not declared(maresourcemanagerconfig):
  type
    maresourcemanagerconfig* = maresourcemanagerconfig_436208151
else:
  static :
    hint("Declaration of " & "ma_resource_manager_config" &
        " already exists, not redeclaring")
when not declared(maslotallocatorconfig):
  type
    maslotallocatorconfig* = maslotallocatorconfig_436208431
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_config" &
        " already exists, not redeclaring")
when not declared(structmajob):
  type
    structmajob* = structmajob_436208285
else:
  static :
    hint("Declaration of " & "struct_ma_job" &
        " already exists, not redeclaring")
when not declared(mabpfconfig):
  type
    mabpfconfig* = mabpfconfig_436208433
else:
  static :
    hint("Declaration of " & "ma_bpf_config" &
        " already exists, not redeclaring")
when not declared(maloshelfnodeconfig):
  type
    maloshelfnodeconfig* = maloshelfnodeconfig_436208287
else:
  static :
    hint("Declaration of " & "ma_loshelf_node_config" &
        " already exists, not redeclaring")
when not declared(malpf2):
  type
    malpf2* = malpf2_436208289
else:
  static :
    hint("Declaration of " & "ma_lpf2" & " already exists, not redeclaring")
when not declared(maengine):
  type
    maengine* = maengine_436208153
else:
  static :
    hint("Declaration of " & "ma_engine" & " already exists, not redeclaring")
when not declared(mapagedaudiobufferconfig):
  type
    mapagedaudiobufferconfig* = mapagedaudiobufferconfig_436208295
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_config" &
        " already exists, not redeclaring")
when not declared(maencoderinitproc):
  type
    maencoderinitproc* = maencoderinitproc_436208435
else:
  static :
    hint("Declaration of " & "ma_encoder_init_proc" &
        " already exists, not redeclaring")
when not declared(maaudiobuffer):
  type
    maaudiobuffer* = maaudiobuffer_436208297
else:
  static :
    hint("Declaration of " & "ma_audio_buffer" &
        " already exists, not redeclaring")
when not declared(manodeoutputbus):
  type
    manodeoutputbus* = manodeoutputbus_436208002
else:
  static :
    hint("Declaration of " & "ma_node_output_bus" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatabuffernode):
  type
    maresourcemanagerdatabuffernode* = maresourcemanagerdatabuffernode_436208000
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_node" &
        " already exists, not redeclaring")
when not declared(structmaresourcemanagerdatasource):
  type
    structmaresourcemanagerdatasource* = structmaresourcemanagerdatasource_436208301
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_data_source" &
        " already exists, not redeclaring")
when not declared(mabiquadcoefficient):
  type
    mabiquadcoefficient* = mabiquadcoefficient_436208437
else:
  static :
    hint("Declaration of " & "ma_biquad_coefficient" &
        " already exists, not redeclaring")
when not declared(madelayconfig):
  type
    madelayconfig* = madelayconfig_436208303
else:
  static :
    hint("Declaration of " & "ma_delay_config" &
        " already exists, not redeclaring")
when not declared(majobqueueconfig):
  type
    majobqueueconfig* = majobqueueconfig_436208305
else:
  static :
    hint("Declaration of " & "ma_job_queue_config" &
        " already exists, not redeclaring")
when not declared(mavfsfile):
  type
    mavfsfile* = mavfsfile_436208307
else:
  static :
    hint("Declaration of " & "ma_vfs_file" & " already exists, not redeclaring")
when not declared(maenumdevicescallbackproc):
  type
    maenumdevicescallbackproc* = maenumdevicescallbackproc_436208004
else:
  static :
    hint("Declaration of " & "ma_enum_devices_callback_proc" &
        " already exists, not redeclaring")
when not declared(madefaultvfs):
  type
    madefaultvfs* = madefaultvfs_436208309
else:
  static :
    hint("Declaration of " & "ma_default_vfs" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatasource):
  type
    maresourcemanagerdatasource* = maresourcemanagerdatasource_436208439
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source" &
        " already exists, not redeclaring")
when not declared(mapthreadt):
  type
    mapthreadt* = mapthreadt_436208006
else:
  static :
    hint("Declaration of " & "ma_pthread_t" & " already exists, not redeclaring")
when not declared(mapeaknode):
  type
    mapeaknode* = mapeaknode_436208311
else:
  static :
    hint("Declaration of " & "ma_peak_node" & " already exists, not redeclaring")
when not declared(structmadevice):
  type
    structmadevice* = structmadevice_436208157
else:
  static :
    hint("Declaration of " & "struct_ma_device" &
        " already exists, not redeclaring")
when not declared(mabool8):
  type
    mabool8* = mabool8_436208008
else:
  static :
    hint("Declaration of " & "ma_bool8" & " already exists, not redeclaring")
when not declared(masoundconfig):
  type
    masoundconfig* = masoundconfig_436208313
else:
  static :
    hint("Declaration of " & "ma_sound_config" &
        " already exists, not redeclaring")
when not declared(madatasourcegetnextproc):
  type
    madatasourcegetnextproc* = madatasourcegetnextproc_436208012
else:
  static :
    hint("Declaration of " & "ma_data_source_get_next_proc" &
        " already exists, not redeclaring")
when not declared(maptr):
  type
    maptr* = maptr_436208441
else:
  static :
    hint("Declaration of " & "ma_ptr" & " already exists, not redeclaring")
when not declared(mapthreadmutext):
  type
    mapthreadmutext* = mapthreadmutext_436208014
else:
  static :
    hint("Declaration of " & "ma_pthread_mutex_t" &
        " already exists, not redeclaring")
when not declared(structmaresourcemanagerdatabuffernode):
  type
    structmaresourcemanagerdatabuffernode* = structmaresourcemanagerdatabuffernode_436208315
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_data_buffer_node" &
        " already exists, not redeclaring")
when not declared(maresourcemanager):
  type
    maresourcemanager* = maresourcemanager_436208317
else:
  static :
    hint("Declaration of " & "ma_resource_manager" &
        " already exists, not redeclaring")
when not declared(manodeconfig):
  type
    manodeconfig* = manodeconfig_436208016
else:
  static :
    hint("Declaration of " & "ma_node_config" &
        " already exists, not redeclaring")
when not declared(mabiquad):
  type
    mabiquad* = mabiquad_436208443
else:
  static :
    hint("Declaration of " & "ma_biquad" & " already exists, not redeclaring")
when not declared(structmaengine):
  type
    structmaengine* = structmaengine_436208445
else:
  static :
    hint("Declaration of " & "struct_ma_engine" &
        " already exists, not redeclaring")
when not declared(malinearresampler):
  type
    malinearresampler* = malinearresampler_436208447
else:
  static :
    hint("Declaration of " & "ma_linear_resampler" &
        " already exists, not redeclaring")
when not declared(mawaveformconfig):
  type
    mawaveformconfig* = mawaveformconfig_436208449
else:
  static :
    hint("Declaration of " & "ma_waveform_config" &
        " already exists, not redeclaring")
when not declared(mapagedaudiobuffer):
  type
    mapagedaudiobuffer* = mapagedaudiobuffer_436208025
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer" &
        " already exists, not redeclaring")
when not declared(maevent):
  type
    maevent* = maevent_436208159
else:
  static :
    hint("Declaration of " & "ma_event" & " already exists, not redeclaring")
when not declared(maencoderconfig):
  type
    maencoderconfig* = maencoderconfig_436208161
else:
  static :
    hint("Declaration of " & "ma_encoder_config" &
        " already exists, not redeclaring")
when not declared(mahandle):
  type
    mahandle* = mahandle_436208451
else:
  static :
    hint("Declaration of " & "ma_handle" & " already exists, not redeclaring")
when not declared(malogcallbackproc):
  type
    malogcallbackproc* = malogcallbackproc_436208163
else:
  static :
    hint("Declaration of " & "ma_log_callback_proc" &
        " already exists, not redeclaring")
when not declared(pthreadcondt):
  type
    pthreadcondt* = pthreadcondt_436208319
else:
  static :
    hint("Declaration of " & "pthread_cond_t" &
        " already exists, not redeclaring")
when not declared(madatasourcenode):
  type
    madatasourcenode* = madatasourcenode_436208165
else:
  static :
    hint("Declaration of " & "ma_data_source_node" &
        " already exists, not redeclaring")
when not declared(maloshelfnode):
  type
    maloshelfnode* = maloshelfnode_436208031
else:
  static :
    hint("Declaration of " & "ma_loshelf_node" &
        " already exists, not redeclaring")
when not declared(mafader):
  type
    mafader* = mafader_436208029
else:
  static :
    hint("Declaration of " & "ma_fader" & " already exists, not redeclaring")
when not declared(maasyncnotificationcallbacks):
  type
    maasyncnotificationcallbacks* = maasyncnotificationcallbacks_436208455
else:
  static :
    hint("Declaration of " & "ma_async_notification_callbacks" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatasourceconfig):
  type
    maresourcemanagerdatasourceconfig* = maresourcemanagerdatasourceconfig_436208321
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_config" &
        " already exists, not redeclaring")
when not declared(structmaresourcemanagerdatastream):
  type
    structmaresourcemanagerdatastream* = structmaresourcemanagerdatastream_436208323
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_data_stream" &
        " already exists, not redeclaring")
when not declared(maencoderwriteproc):
  type
    maencoderwriteproc* = maencoderwriteproc_436208169
else:
  static :
    hint("Declaration of " & "ma_encoder_write_proc" &
        " already exists, not redeclaring")
when not declared(madevice):
  type
    madevice* = madevice_436208033
else:
  static :
    hint("Declaration of " & "ma_device" & " already exists, not redeclaring")
when not declared(maencoder):
  type
    maencoder* = maencoder_436208039
else:
  static :
    hint("Declaration of " & "ma_encoder" & " already exists, not redeclaring")
when not declared(manoise):
  type
    manoise* = manoise_436208171
else:
  static :
    hint("Declaration of " & "ma_noise" & " already exists, not redeclaring")
when not declared(mathread):
  type
    mathread* = mathread_436208325
else:
  static :
    hint("Declaration of " & "ma_thread" & " already exists, not redeclaring")
when not declared(madatasourcevtable):
  type
    madatasourcevtable* = madatasourcevtable_436208173
else:
  static :
    hint("Declaration of " & "ma_data_source_vtable" &
        " already exists, not redeclaring")
when not declared(malinearresamplerconfig):
  type
    malinearresamplerconfig* = malinearresamplerconfig_436208037
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_config" &
        " already exists, not redeclaring")
when not declared(structpthreadinternallist):
  type
    structpthreadinternallist* = structpthreadinternallist_436208327
else:
  static :
    hint("Declaration of " & "struct___pthread_internal_list" &
        " already exists, not redeclaring")
when not declared(maint64):
  type
    maint64* = maint64_436208329
else:
  static :
    hint("Declaration of " & "ma_int64" & " already exists, not redeclaring")
when not declared(madecodingbackendconfig):
  type
    madecodingbackendconfig* = madecodingbackendconfig_436208331
else:
  static :
    hint("Declaration of " & "ma_decoding_backend_config" &
        " already exists, not redeclaring")
when not declared(mapanner):
  type
    mapanner* = mapanner_436208457
else:
  static :
    hint("Declaration of " & "ma_panner" & " already exists, not redeclaring")
when not declared(mahpfconfig):
  type
    mahpfconfig* = mahpfconfig_436208459
else:
  static :
    hint("Declaration of " & "ma_hpf_config" &
        " already exists, not redeclaring")
when not declared(madeviceid):
  type
    madeviceid* = madeviceid_436208333
else:
  static :
    hint("Declaration of " & "ma_device_id" & " already exists, not redeclaring")
when not declared(maspatializerlistenerconfig):
  type
    maspatializerlistenerconfig* = maspatializerlistenerconfig_436208335
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_config" &
        " already exists, not redeclaring")
when not declared(mauint32):
  type
    mauint32* = mauint32_436208045
else:
  static :
    hint("Declaration of " & "ma_uint32" & " already exists, not redeclaring")
when not declared(mapagedaudiobufferdata):
  type
    mapagedaudiobufferdata* = mapagedaudiobufferdata_436208047
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data" &
        " already exists, not redeclaring")
when not declared(maresamplerconfig):
  type
    maresamplerconfig* = maresamplerconfig_436208177
else:
  static :
    hint("Declaration of " & "ma_resampler_config" &
        " already exists, not redeclaring")
when not declared(madevicejobthread):
  type
    madevicejobthread* = madevicejobthread_436208465
else:
  static :
    hint("Declaration of " & "ma_device_job_thread" &
        " already exists, not redeclaring")
when not declared(maasyncnotificationevent):
  type
    maasyncnotificationevent* = maasyncnotificationevent_436208467
else:
  static :
    hint("Declaration of " & "ma_async_notification_event" &
        " already exists, not redeclaring")
when not declared(mapagedaudiobufferpage):
  type
    mapagedaudiobufferpage* = mapagedaudiobufferpage_436208341
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_page" &
        " already exists, not redeclaring")
when not declared(mabpfnodeconfig):
  type
    mabpfnodeconfig* = mabpfnodeconfig_436208469
else:
  static :
    hint("Declaration of " & "ma_bpf_node_config" &
        " already exists, not redeclaring")
when not declared(maencoderseekproc):
  type
    maencoderseekproc* = maencoderseekproc_436208179
else:
  static :
    hint("Declaration of " & "ma_encoder_seek_proc" &
        " already exists, not redeclaring")
when not declared(structmapagedaudiobufferpage):
  type
    structmapagedaudiobufferpage* = structmapagedaudiobufferpage_436208343
else:
  static :
    hint("Declaration of " & "struct_ma_paged_audio_buffer_page" &
        " already exists, not redeclaring")
when not declared(madecodertellproc):
  type
    madecodertellproc* = madecodertellproc_436208049
else:
  static :
    hint("Declaration of " & "ma_decoder_tell_proc" &
        " already exists, not redeclaring")
when not declared(maasyncnotificationpoll):
  type
    maasyncnotificationpoll* = maasyncnotificationpoll_436208051
else:
  static :
    hint("Declaration of " & "ma_async_notification_poll" &
        " already exists, not redeclaring")
when not declared(madevicejobthreadconfig):
  type
    madevicejobthreadconfig* = madevicejobthreadconfig_436208181
else:
  static :
    hint("Declaration of " & "ma_device_job_thread_config" &
        " already exists, not redeclaring")
when not declared(manoiseconfig):
  type
    manoiseconfig* = manoiseconfig_436208183
else:
  static :
    hint("Declaration of " & "ma_noise_config" &
        " already exists, not redeclaring")
when not declared(majobqueue):
  type
    majobqueue* = majobqueue_436208471
else:
  static :
    hint("Declaration of " & "ma_job_queue" & " already exists, not redeclaring")
when not declared(machannelconverter):
  type
    machannelconverter* = machannelconverter_436208185
else:
  static :
    hint("Declaration of " & "ma_channel_converter" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerpipelinestagenotification):
  type
    maresourcemanagerpipelinestagenotification* = maresourcemanagerpipelinestagenotification_436208057
else:
  static :
    hint("Declaration of " & "ma_resource_manager_pipeline_stage_notification" &
        " already exists, not redeclaring")
when not declared(macontextconfig):
  type
    macontextconfig* = macontextconfig_436208187
else:
  static :
    hint("Declaration of " & "ma_context_config" &
        " already exists, not redeclaring")
when not declared(malpfnode):
  type
    malpfnode* = malpfnode_436208347
else:
  static :
    hint("Declaration of " & "ma_lpf_node" & " already exists, not redeclaring")
when not declared(mabpfnode):
  type
    mabpfnode* = mabpfnode_436208061
else:
  static :
    hint("Declaration of " & "ma_bpf_node" & " already exists, not redeclaring")
when not declared(masoundgroupconfig):
  type
    masoundgroupconfig* = masoundgroupconfig_436208473
else:
  static :
    hint("Declaration of " & "ma_sound_group_config" &
        " already exists, not redeclaring")
when not declared(magainerconfig):
  type
    magainerconfig* = magainerconfig_436208475
else:
  static :
    hint("Declaration of " & "ma_gainer_config" &
        " already exists, not redeclaring")
when not declared(maloshelf2config):
  type
    maloshelf2config* = maloshelf2config_436208063
else:
  static :
    hint("Declaration of " & "ma_loshelf2_config" &
        " already exists, not redeclaring")
when not declared(manodeinputbus):
  type
    manodeinputbus* = manodeinputbus_436208349
else:
  static :
    hint("Declaration of " & "ma_node_input_bus" &
        " already exists, not redeclaring")
when not declared(macontext):
  type
    macontext* = macontext_436208477
else:
  static :
    hint("Declaration of " & "ma_context" & " already exists, not redeclaring")
when not declared(masemaphore):
  type
    masemaphore* = masemaphore_436208065
else:
  static :
    hint("Declaration of " & "ma_semaphore" & " already exists, not redeclaring")
when not declared(structpthreadmutexs):
  type
    structpthreadmutexs* = structpthreadmutexs_436208067
else:
  static :
    hint("Declaration of " & "struct___pthread_mutex_s" &
        " already exists, not redeclaring")
when not declared(maencoderwritepcmframesproc):
  type
    maencoderwritepcmframesproc* = maencoderwritepcmframesproc_436208069
else:
  static :
    hint("Declaration of " & "ma_encoder_write_pcm_frames_proc" &
        " already exists, not redeclaring")
when not declared(maproc):
  type
    maproc* = maproc_436208353
else:
  static :
    hint("Declaration of " & "ma_proc" & " already exists, not redeclaring")
when not declared(madevicedataproc):
  type
    madevicedataproc* = madevicedataproc_436208189
else:
  static :
    hint("Declaration of " & "ma_device_data_proc" &
        " already exists, not redeclaring")
when not declared(mabpf):
  type
    mabpf* = mabpf_436208073
else:
  static :
    hint("Declaration of " & "ma_bpf" & " already exists, not redeclaring")
when not declared(maint32):
  type
    maint32* = maint32_436208355
else:
  static :
    hint("Declaration of " & "ma_int32" & " already exists, not redeclaring")
when not declared(magainer):
  type
    magainer* = magainer_436208479
else:
  static :
    hint("Declaration of " & "ma_gainer" & " already exists, not redeclaring")
when not declared(mahishelf2):
  type
    mahishelf2* = mahishelf2_436208191
else:
  static :
    hint("Declaration of " & "ma_hishelf2" & " already exists, not redeclaring")
when not declared(manodegraphconfig):
  type
    manodegraphconfig* = manodegraphconfig_436208357
else:
  static :
    hint("Declaration of " & "ma_node_graph_config" &
        " already exists, not redeclaring")
when not declared(mabiquadnode):
  type
    mabiquadnode* = mabiquadnode_436208359
else:
  static :
    hint("Declaration of " & "ma_biquad_node" &
        " already exists, not redeclaring")
when not declared(madeviceinfo):
  type
    madeviceinfo* = madeviceinfo_436208193
else:
  static :
    hint("Declaration of " & "ma_device_info" &
        " already exists, not redeclaring")
when not declared(mapeak2config):
  type
    mapeak2config* = mapeak2config_436208195
else:
  static :
    hint("Declaration of " & "ma_peak2_config" &
        " already exists, not redeclaring")
when not declared(madataconverterconfiginit):
  proc madataconverterconfiginit*(formatin: maformat_436208208;
                                  formatout: maformat_436208208;
                                  channelsin: mauint32_436208046;
                                  channelsout: mauint32_436208046;
                                  sampleratein: mauint32_436208046;
                                  samplerateout: mauint32_436208046): madataconverterconfig_436208256 {.
      cdecl, importc: "ma_data_converter_config_init".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_config_init" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatabufferinitw):
  proc maresourcemanagerdatabufferinitw*(
      presourcemanager: ptr maresourcemanager_436208318; pfilepath: ptr wchart_436208248;
      flags: mauint32_436208046;
      pnotifications: ptr maresourcemanagerpipelinenotifications_436208268;
      pdatabuffer: ptr maresourcemanagerdatabuffer_436208388): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_data_buffer_init_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_init_w" &
        " already exists, not redeclaring")
when not declared(madecoderinit):
  proc madecoderinit*(onread: madecoderreadproc_436208272;
                      onseek: madecoderseekproc_436208412; puserdata: pointer;
                      pconfig: ptr madecoderconfig_436208200;
                      pdecoder: ptr madecoder_436208076): maresult_436208042 {.
      cdecl, importc: "ma_decoder_init".}
else:
  static :
    hint("Declaration of " & "ma_decoder_init" &
        " already exists, not redeclaring")
when not declared(masoundislooping):
  proc masoundislooping*(psound: ptr masound_436208210): mabool32_436207983 {.
      cdecl, importc: "ma_sound_is_looping".}
else:
  static :
    hint("Declaration of " & "ma_sound_is_looping" &
        " already exists, not redeclaring")
when not declared(masoundgroupgetcone):
  proc masoundgroupgetcone*(pgroup: ptr masoundgroup_436208146;
                            pinnerangleinradians: ptr cfloat;
                            pouterangleinradians: ptr cfloat;
                            poutergain: ptr cfloat): void {.cdecl,
      importc: "ma_sound_group_get_cone".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_cone" &
        " already exists, not redeclaring")
when not declared(masoundsetvolume):
  proc masoundsetvolume*(psound: ptr masound_436208210; volume: cfloat): void {.
      cdecl, importc: "ma_sound_set_volume".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_volume" &
        " already exists, not redeclaring")
when not declared(manotch2processpcmframes):
  proc manotch2processpcmframes*(pfilter: ptr manotch2_436208244;
                                 pframesout: pointer; pframesin: pointer;
                                 framecount: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_notch2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_notch2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(mabiquaduninit):
  proc mabiquaduninit*(pbq: ptr mabiquad_436208444;
                       pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_biquad_uninit".}
else:
  static :
    hint("Declaration of " & "ma_biquad_uninit" &
        " already exists, not redeclaring")
when not declared(macopyandapplyvolumefactorpcmframesf32):
  proc macopyandapplyvolumefactorpcmframesf32*(pframesout: ptr cfloat;
      pframesin: ptr cfloat; framecount: mauint64_436208386; channels: mauint32_436208046;
      factor: cfloat): void {.cdecl, importc: "ma_copy_and_apply_volume_factor_pcm_frames_f32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_pcm_frames_f32" &
        " already exists, not redeclaring")
when not declared(mablendf32):
  proc mablendf32*(pout: ptr cfloat; pina: ptr cfloat; pinb: ptr cfloat;
                   factor: cfloat; channels: mauint32_436208046): void {.cdecl,
      importc: "ma_blend_f32".}
else:
  static :
    hint("Declaration of " & "ma_blend_f32" & " already exists, not redeclaring")
when not declared(malinearresamplerconfiginit):
  proc malinearresamplerconfiginit*(format: maformat_436208208;
                                    channels: mauint32_436208046;
                                    sampleratein: mauint32_436208046;
                                    samplerateout: mauint32_436208046): malinearresamplerconfig_436208038 {.
      cdecl, importc: "ma_linear_resampler_config_init".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_config_init" &
        " already exists, not redeclaring")
when not declared(madataconverterinitpreallocated):
  proc madataconverterinitpreallocated*(pconfig: ptr madataconverterconfig_436208256;
                                        pheap: pointer;
                                        pconverter: ptr madataconverter_436208226): maresult_436208042 {.
      cdecl, importc: "ma_data_converter_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_init_preallocated" &
        " already exists, not redeclaring")
when not declared(madecoderconfiginitdefault):
  proc madecoderconfiginitdefault*(): madecoderconfig_436208200 {.cdecl,
      importc: "ma_decoder_config_init_default".}
else:
  static :
    hint("Declaration of " & "ma_decoder_config_init_default" &
        " already exists, not redeclaring")
when not declared(maenginegetdevice):
  proc maenginegetdevice*(pengine: ptr maengine_436208154): ptr madevice_436208034 {.
      cdecl, importc: "ma_engine_get_device".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_device" &
        " already exists, not redeclaring")
when not declared(maspatializergetmingain):
  proc maspatializergetmingain*(pspatializer: ptr maspatializer_436207979): cfloat {.
      cdecl, importc: "ma_spatializer_get_min_gain".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_min_gain" &
        " already exists, not redeclaring")
when not declared(madatasourcesetnext):
  proc madatasourcesetnext*(pdatasource: pointer; pnextdatasource: pointer): maresult_436208042 {.
      cdecl, importc: "ma_data_source_set_next".}
else:
  static :
    hint("Declaration of " & "ma_data_source_set_next" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatabuffergetdataformat):
  proc maresourcemanagerdatabuffergetdataformat*(
      pdatabuffer: ptr maresourcemanagerdatabuffer_436208388;
      pformat: ptr maformat_436208208; pchannels: ptr mauint32_436208046;
      psamplerate: ptr mauint32_436208046; pchannelmap: ptr machannel_436208128;
      channelmapcap: csize_t): maresult_436208042 {.cdecl,
      importc: "ma_resource_manager_data_buffer_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_get_data_format" &
        " already exists, not redeclaring")
when not declared(mafenceuninit):
  proc mafenceuninit*(pfence: ptr mafence_436208110): void {.cdecl,
      importc: "ma_fence_uninit".}
else:
  static :
    hint("Declaration of " & "ma_fence_uninit" &
        " already exists, not redeclaring")
when not declared(marbgetsubbufferstride):
  proc marbgetsubbufferstride*(prb: ptr marb_436208144): csize_t {.cdecl,
      importc: "ma_rb_get_subbuffer_stride".}
else:
  static :
    hint("Declaration of " & "ma_rb_get_subbuffer_stride" &
        " already exists, not redeclaring")
when not declared(masoundgetmaxgain):
  proc masoundgetmaxgain*(psound: ptr masound_436208210): cfloat {.cdecl,
      importc: "ma_sound_get_max_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_max_gain" &
        " already exists, not redeclaring")
when not declared(masoundgroupsetcone):
  proc masoundgroupsetcone*(pgroup: ptr masoundgroup_436208146;
                            innerangleinradians: cfloat;
                            outerangleinradians: cfloat; outergain: cfloat): void {.
      cdecl, importc: "ma_sound_group_set_cone".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_cone" &
        " already exists, not redeclaring")
when not declared(madataconvertergetoutputchannelmap):
  proc madataconvertergetoutputchannelmap*(pconverter: ptr madataconverter_436208226;
      pchannelmap: ptr machannel_436208128; channelmapcap: csize_t): maresult_436208042 {.
      cdecl, importc: "ma_data_converter_get_output_channel_map".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_output_channel_map" &
        " already exists, not redeclaring")
when not declared(madevicegetinfo):
  proc madevicegetinfo*(pdevice: ptr madevice_436208034; typearg: madevicetype_436208060;
                        pdeviceinfo: ptr madeviceinfo_436208194): maresult_436208042 {.
      cdecl, importc: "ma_device_get_info".}
else:
  static :
    hint("Declaration of " & "ma_device_get_info" &
        " already exists, not redeclaring")
when not declared(mahpfreinit):
  proc mahpfreinit*(pconfig: ptr mahpfconfig_436208460; phpf: ptr mahpf_436208150): maresult_436208042 {.
      cdecl, importc: "ma_hpf_reinit".}
else:
  static :
    hint("Declaration of " & "ma_hpf_reinit" &
        " already exists, not redeclaring")
when not declared(maspatializerinit):
  proc maspatializerinit*(pconfig: ptr maspatializerconfig_436208082;
                          pallocationcallbacks: ptr maallocationcallbacks_436208126;
                          pspatializer: ptr maspatializer_436207979): maresult_436208042 {.
      cdecl, importc: "ma_spatializer_init".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_init" &
        " already exists, not redeclaring")
when not declared(maresamplerconfiginit):
  proc maresamplerconfiginit*(format: maformat_436208208; channels: mauint32_436208046;
                              sampleratein: mauint32_436208046;
                              samplerateout: mauint32_436208046;
                              algorithm: maresamplealgorithm_436208198): maresamplerconfig_436208178 {.
      cdecl, importc: "ma_resampler_config_init".}
else:
  static :
    hint("Declaration of " & "ma_resampler_config_init" &
        " already exists, not redeclaring")
when not declared(maenginestop):
  proc maenginestop*(pengine: ptr maengine_436208154): maresult_436208042 {.
      cdecl, importc: "ma_engine_stop".}
else:
  static :
    hint("Declaration of " & "ma_engine_stop" &
        " already exists, not redeclaring")
when not declared(madelayuninit):
  proc madelayuninit*(pdelay: ptr madelay_436208410;
                      pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_delay_uninit".}
else:
  static :
    hint("Declaration of " & "ma_delay_uninit" &
        " already exists, not redeclaring")
when not declared(maduplexrbuninit):
  proc maduplexrbuninit*(prb: ptr maduplexrb_436208374): maresult_436208042 {.
      cdecl, importc: "ma_duplex_rb_uninit".}
else:
  static :
    hint("Declaration of " & "ma_duplex_rb_uninit" &
        " already exists, not redeclaring")
when not declared(madatasourceconfiginit):
  proc madatasourceconfiginit*(): madatasourceconfig_436208224 {.cdecl,
      importc: "ma_data_source_config_init".}
else:
  static :
    hint("Declaration of " & "ma_data_source_config_init" &
        " already exists, not redeclaring")
when not declared(maencoderinitvfsw):
  proc maencoderinitvfsw*(pvfs: pointer; pfilepath: ptr wchart_436208248;
                          pconfig: ptr maencoderconfig_436208162;
                          pencoder: ptr maencoder_436208040): maresult_436208042 {.
      cdecl, importc: "ma_encoder_init_vfs_w".}
else:
  static :
    hint("Declaration of " & "ma_encoder_init_vfs_w" &
        " already exists, not redeclaring")
when not declared(maspatializerlistenersetcone):
  proc maspatializerlistenersetcone*(plistener: ptr maspatializerlistener_436208424;
                                     innerangleinradians: cfloat;
                                     outerangleinradians: cfloat;
                                     outergain: cfloat): void {.cdecl,
      importc: "ma_spatializer_listener_set_cone".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_cone" &
        " already exists, not redeclaring")
when not declared(maspatializersetrolloff):
  proc maspatializersetrolloff*(pspatializer: ptr maspatializer_436207979;
                                rolloff: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_rolloff".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_rolloff" &
        " already exists, not redeclaring")
when not declared(mapcmrbseekread):
  proc mapcmrbseekread*(prb: ptr mapcmrb_436208404; offsetinframes: mauint32_436208046): maresult_436208042 {.
      cdecl, importc: "ma_pcm_rb_seek_read".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_seek_read" &
        " already exists, not redeclaring")
when not declared(madatasourcesetrangeinpcmframes):
  proc madatasourcesetrangeinpcmframes*(pdatasource: pointer;
                                        rangebeginframes: mauint64_436208386;
                                        rangeendinframes: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_data_source_set_range_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_set_range_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerregisterdecodeddata):
  proc maresourcemanagerregisterdecodeddata*(
      presourcemanager: ptr maresourcemanager_436208318; pname: cstring;
      pdata: pointer; framecount: mauint64_436208386; format: maformat_436208208;
      channels: mauint32_436208046; samplerate: mauint32_436208046): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_register_decoded_data".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_register_decoded_data" &
        " already exists, not redeclaring")
when not declared(masoundsetrolloff):
  proc masoundsetrolloff*(psound: ptr masound_436208210; rolloff: cfloat): void {.
      cdecl, importc: "ma_sound_set_rolloff".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_rolloff" &
        " already exists, not redeclaring")
when not declared(mabiquadnodeuninit):
  proc mabiquadnodeuninit*(pnode: ptr mabiquadnode_436208360;
                           pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_biquad_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_biquad_node_uninit" &
        " already exists, not redeclaring")
when not declared(Mafalse):
  when 0 is static:
    const
      Mafalse* = 0           ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3715:9
  else:
    let Mafalse* = 0         ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3715:9
else:
  static :
    hint("Declaration of " & "MA_FALSE" & " already exists, not redeclaring")
when not declared(madecodergetdataformat):
  proc madecodergetdataformat*(pdecoder: ptr madecoder_436208076;
                               pformat: ptr maformat_436208208;
                               pchannels: ptr mauint32_436208046;
                               psamplerate: ptr mauint32_436208046;
                               pchannelmap: ptr machannel_436208128;
                               channelmapcap: csize_t): maresult_436208042 {.
      cdecl, importc: "ma_decoder_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_decoder_get_data_format" &
        " already exists, not redeclaring")
when not declared(madatasourcenodeinit):
  proc madatasourcenodeinit*(pnodegraph: ptr manodegraph_436207933;
                             pconfig: ptr madatasourcenodeconfig_436207935;
                             pallocationcallbacks: ptr maallocationcallbacks_436208126;
                             pdatasourcenode: ptr madatasourcenode_436208166): maresult_436208042 {.
      cdecl, importc: "ma_data_source_node_init".}
else:
  static :
    hint("Declaration of " & "ma_data_source_node_init" &
        " already exists, not redeclaring")
when not declared(maspatializersetattenuationmodel):
  proc maspatializersetattenuationmodel*(pspatializer: ptr maspatializer_436207979;
      attenuationmodel: maattenuationmodel_436207961): void {.cdecl,
      importc: "ma_spatializer_set_attenuation_model".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_attenuation_model" &
        " already exists, not redeclaring")
when not declared(magetbackendname):
  proc magetbackendname*(backend: mabackend_436208370): cstring {.cdecl,
      importc: "ma_get_backend_name".}
else:
  static :
    hint("Declaration of " & "ma_get_backend_name" &
        " already exists, not redeclaring")
when not declared(mabpfinit):
  proc mabpfinit*(pconfig: ptr mabpfconfig_436208434;
                  pallocationcallbacks: ptr maallocationcallbacks_436208126;
                  pbpf: ptr mabpf_436208074): maresult_436208042 {.cdecl,
      importc: "ma_bpf_init".}
else:
  static :
    hint("Declaration of " & "ma_bpf_init" & " already exists, not redeclaring")
when not declared(machannelconverterinit):
  proc machannelconverterinit*(pconfig: ptr machannelconverterconfig_436208392;
                               pallocationcallbacks: ptr maallocationcallbacks_436208126;
                               pconverter: ptr machannelconverter_436208186): maresult_436208042 {.
      cdecl, importc: "ma_channel_converter_init".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_init" &
        " already exists, not redeclaring")
when not declared(mapcmrbgetsubbufferoffset):
  proc mapcmrbgetsubbufferoffset*(prb: ptr mapcmrb_436208404;
                                  subbufferindex: mauint32_436208046): mauint32_436208046 {.
      cdecl, importc: "ma_pcm_rb_get_subbuffer_offset".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_get_subbuffer_offset" &
        " already exists, not redeclaring")
when not declared(mabpfconfiginit):
  proc mabpfconfiginit*(format: maformat_436208208; channels: mauint32_436208046;
                        samplerate: mauint32_436208046;
                        cutofffrequency: cdouble; order: mauint32_436208046): mabpfconfig_436208434 {.
      cdecl, importc: "ma_bpf_config_init".}
else:
  static :
    hint("Declaration of " & "ma_bpf_config_init" &
        " already exists, not redeclaring")
when not declared(madecoderinitmemory):
  proc madecoderinitmemory*(pdata: pointer; datasize: csize_t;
                            pconfig: ptr madecoderconfig_436208200;
                            pdecoder: ptr madecoder_436208076): maresult_436208042 {.
      cdecl, importc: "ma_decoder_init_memory".}
else:
  static :
    hint("Declaration of " & "ma_decoder_init_memory" &
        " already exists, not redeclaring")
when not declared(maspatializersetmaxgain):
  proc maspatializersetmaxgain*(pspatializer: ptr maspatializer_436207979;
                                maxgain: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_max_gain".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_max_gain" &
        " already exists, not redeclaring")
when not declared(masoundgroupsetpanmode):
  proc masoundgroupsetpanmode*(pgroup: ptr masoundgroup_436208146;
                               panmode: mapanmode_436208380): void {.cdecl,
      importc: "ma_sound_group_set_pan_mode".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_pan_mode" &
        " already exists, not redeclaring")
when not declared(mabiquadinit):
  proc mabiquadinit*(pconfig: ptr mabiquadconfig_436208134;
                     pallocationcallbacks: ptr maallocationcallbacks_436208126;
                     pbq: ptr mabiquad_436208444): maresult_436208042 {.cdecl,
      importc: "ma_biquad_init".}
else:
  static :
    hint("Declaration of " & "ma_biquad_init" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatabufferinit):
  proc maresourcemanagerdatabufferinit*(presourcemanager: ptr maresourcemanager_436208318;
                                        pfilepath: cstring; flags: mauint32_436208046;
      pnotifications: ptr maresourcemanagerpipelinenotifications_436208268;
      pdatabuffer: ptr maresourcemanagerdatabuffer_436208388): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_data_buffer_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_init" &
        " already exists, not redeclaring")
when not declared(masoundgetmindistance):
  proc masoundgetmindistance*(psound: ptr masound_436208210): cfloat {.cdecl,
      importc: "ma_sound_get_min_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_min_distance" &
        " already exists, not redeclaring")
when not declared(mapannersetpan):
  proc mapannersetpan*(ppanner: ptr mapanner_436208458; pan: cfloat): void {.
      cdecl, importc: "ma_panner_set_pan".}
else:
  static :
    hint("Declaration of " & "ma_panner_set_pan" &
        " already exists, not redeclaring")
when not declared(mawaveformreadpcmframes):
  proc mawaveformreadpcmframes*(pwaveform: ptr mawaveform_436208368;
                                pframesout: pointer; framecount: mauint64_436208386;
                                pframesread: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_waveform_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_waveform_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(maspinlocklock):
  proc maspinlocklock*(pspinlock: ptr maspinlock_436208104): maresult_436208042 {.
      cdecl, importc: "ma_spinlock_lock".}
else:
  static :
    hint("Declaration of " & "ma_spinlock_lock" &
        " already exists, not redeclaring")
when not declared(maapplyvolumefactorpcmframess16):
  proc maapplyvolumefactorpcmframess16*(pframes: ptr maint16_436207975;
                                        framecount: mauint64_436208386;
                                        channels: mauint32_436208046;
                                        factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_pcm_frames_s16".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_pcm_frames_s16" &
        " already exists, not redeclaring")
when not declared(machannelmapinitblank):
  proc machannelmapinitblank*(pchannelmap: ptr machannel_436208128;
                              channels: mauint32_436208046): void {.cdecl,
      importc: "ma_channel_map_init_blank".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_init_blank" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerinit):
  proc maresourcemanagerinit*(pconfig: ptr maresourcemanagerconfig_436208152;
                              presourcemanager: ptr maresourcemanager_436208318): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_init" &
        " already exists, not redeclaring")
when not declared(mapagedaudiobufferdatafreepage):
  proc mapagedaudiobufferdatafreepage*(pdata: ptr mapagedaudiobufferdata_436208048;
                                       ppage: ptr mapagedaudiobufferpage_436208342;
      pallocationcallbacks: ptr maallocationcallbacks_436208126): maresult_436208042 {.
      cdecl, importc: "ma_paged_audio_buffer_data_free_page".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_free_page" &
        " already exists, not redeclaring")
when not declared(masoundsetmingain):
  proc masoundsetmingain*(psound: ptr masound_436208210; mingain: cfloat): void {.
      cdecl, importc: "ma_sound_set_min_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_min_gain" &
        " already exists, not redeclaring")
when not declared(malpfclearcache):
  proc malpfclearcache*(plpf: ptr malpf_436208422): maresult_436208042 {.cdecl,
      importc: "ma_lpf_clear_cache".}
else:
  static :
    hint("Declaration of " & "ma_lpf_clear_cache" &
        " already exists, not redeclaring")
when not declared(maaudiobufferrefreadpcmframes):
  proc maaudiobufferrefreadpcmframes*(paudiobufferref: ptr maaudiobufferref_436207997;
                                      pframesout: pointer; framecount: mauint64_436208386;
                                      loop: mabool32_436207983): mauint64_436208386 {.
      cdecl, importc: "ma_audio_buffer_ref_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(masoundsetmaxgain):
  proc masoundsetmaxgain*(psound: ptr masound_436208210; maxgain: cfloat): void {.
      cdecl, importc: "ma_sound_set_max_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_max_gain" &
        " already exists, not redeclaring")
when not declared(manodegraphinit):
  proc manodegraphinit*(pconfig: ptr manodegraphconfig_436208358;
                        pallocationcallbacks: ptr maallocationcallbacks_436208126;
                        pnodegraph: ptr manodegraph_436207933): maresult_436208042 {.
      cdecl, importc: "ma_node_graph_init".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_init" &
        " already exists, not redeclaring")
when not declared(masoundgroupconfiginit):
  proc masoundgroupconfiginit*(): masoundgroupconfig_436208474 {.cdecl,
      importc: "ma_sound_group_config_init".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_config_init" &
        " already exists, not redeclaring")
when not declared(mafenceinit):
  proc mafenceinit*(pfence: ptr mafence_436208110): maresult_436208042 {.cdecl,
      importc: "ma_fence_init".}
else:
  static :
    hint("Declaration of " & "ma_fence_init" &
        " already exists, not redeclaring")
when not declared(masoundgroupgetdirectionalattenuationfactor):
  proc masoundgroupgetdirectionalattenuationfactor*(pgroup: ptr masoundgroup_436208146): cfloat {.
      cdecl, importc: "ma_sound_group_get_directional_attenuation_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_directional_attenuation_factor" &
        " already exists, not redeclaring")
when not declared(maaudiobufferrefuninit):
  proc maaudiobufferrefuninit*(paudiobufferref: ptr maaudiobufferref_436207997): void {.
      cdecl, importc: "ma_audio_buffer_ref_uninit".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_uninit" &
        " already exists, not redeclaring")
when not declared(madelaynodeinit):
  proc madelaynodeinit*(pnodegraph: ptr manodegraph_436207933;
                        pconfig: ptr madelaynodeconfig_436208202;
                        pallocationcallbacks: ptr maallocationcallbacks_436208126;
                        pdelaynode: ptr madelaynode_436207969): maresult_436208042 {.
      cdecl, importc: "ma_delay_node_init".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_init" &
        " already exists, not redeclaring")
when not declared(maspatializerlistenersetworldup):
  proc maspatializerlistenersetworldup*(plistener: ptr maspatializerlistener_436208424;
                                        x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_spatializer_listener_set_world_up".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_world_up" &
        " already exists, not redeclaring")
when not declared(marbinitex):
  proc marbinitex*(subbuffersizeinbytes: csize_t; subbuffercount: csize_t;
                   subbufferstrideinbytes: csize_t;
                   poptionalpreallocatedbuffer: pointer;
                   pallocationcallbacks: ptr maallocationcallbacks_436208126;
                   prb: ptr marb_436208144): maresult_436208042 {.cdecl,
      importc: "ma_rb_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_rb_init_ex" &
        " already exists, not redeclaring")
when not declared(mafenceacquire):
  proc mafenceacquire*(pfence: ptr mafence_436208110): maresult_436208042 {.
      cdecl, importc: "ma_fence_acquire".}
else:
  static :
    hint("Declaration of " & "ma_fence_acquire" &
        " already exists, not redeclaring")
when not declared(macontextgetdevices):
  proc macontextgetdevices*(pcontext: ptr macontext_436208478;
                            ppplaybackdeviceinfos: ptr ptr madeviceinfo_436208194;
                            pplaybackdevicecount: ptr mauint32_436208046;
                            ppcapturedeviceinfos: ptr ptr madeviceinfo_436208194;
                            pcapturedevicecount: ptr mauint32_436208046): maresult_436208042 {.
      cdecl, importc: "ma_context_get_devices".}
else:
  static :
    hint("Declaration of " & "ma_context_get_devices" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatabufferinitcopy):
  proc maresourcemanagerdatabufferinitcopy*(
      presourcemanager: ptr maresourcemanager_436208318;
      pexistingdatabuffer: ptr maresourcemanagerdatabuffer_436208388;
      pdatabuffer: ptr maresourcemanagerdatabuffer_436208388): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_data_buffer_init_copy".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_init_copy" &
        " already exists, not redeclaring")
when not declared(manodesetstatetime):
  proc manodesetstatetime*(pnode: pointer; state: manodestate_436208054;
                           globaltime: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_node_set_state_time".}
else:
  static :
    hint("Declaration of " & "ma_node_set_state_time" &
        " already exists, not redeclaring")
when not declared(manodegraphreadpcmframes):
  proc manodegraphreadpcmframes*(pnodegraph: ptr manodegraph_436207933;
                                 pframesout: pointer; framecount: mauint64_436208386;
                                 pframesread: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_node_graph_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(masoundgetpositioning):
  proc masoundgetpositioning*(psound: ptr masound_436208210): mapositioning_436208284 {.
      cdecl, importc: "ma_sound_get_positioning".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_positioning" &
        " already exists, not redeclaring")
when not declared(masoundgetvelocity):
  proc masoundgetvelocity*(psound: ptr masound_436208210): mavec3f_436208100 {.
      cdecl, importc: "ma_sound_get_velocity".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_velocity" &
        " already exists, not redeclaring")
when not declared(madeviceisstarted):
  proc madeviceisstarted*(pdevice: ptr madevice_436208034): mabool32_436207983 {.
      cdecl, importc: "ma_device_is_started".}
else:
  static :
    hint("Declaration of " & "ma_device_is_started" &
        " already exists, not redeclaring")
when not declared(masoundsetpinnedlistenerindex):
  proc masoundsetpinnedlistenerindex*(psound: ptr masound_436208210;
                                      listenerindex: mauint32_436208046): void {.
      cdecl, importc: "ma_sound_set_pinned_listener_index".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_pinned_listener_index" &
        " already exists, not redeclaring")
when not declared(macopyandapplyvolumefactorperchannelf32):
  proc macopyandapplyvolumefactorperchannelf32*(pframesout: ptr cfloat;
      pframesin: ptr cfloat; framecount: mauint64_436208386; channels: mauint32_436208046;
      pchannelgains: ptr cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_per_channel_f32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_per_channel_f32" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatasourcereadpcmframes):
  proc maresourcemanagerdatasourcereadpcmframes*(
      pdatasource: ptr maresourcemanagerdatasource_436208440;
      pframesout: pointer; framecount: mauint64_436208386;
      pframesread: ptr mauint64_436208386): maresult_436208042 {.cdecl,
      importc: "ma_resource_manager_data_source_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(malinearresamplersetrate):
  proc malinearresamplersetrate*(presampler: ptr malinearresampler_436208448;
                                 sampleratein: mauint32_436208046;
                                 samplerateout: mauint32_436208046): maresult_436208042 {.
      cdecl, importc: "ma_linear_resampler_set_rate".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_set_rate" &
        " already exists, not redeclaring")
when not declared(mabpfnodeinit):
  proc mabpfnodeinit*(pnodegraph: ptr manodegraph_436207933;
                      pconfig: ptr mabpfnodeconfig_436208470;
                      pallocationcallbacks: ptr maallocationcallbacks_436208126;
                      pnode: ptr mabpfnode_436208062): maresult_436208042 {.
      cdecl, importc: "ma_bpf_node_init".}
else:
  static :
    hint("Declaration of " & "ma_bpf_node_init" &
        " already exists, not redeclaring")
when not declared(masoundgroupgetpitch):
  proc masoundgroupgetpitch*(pgroup: ptr masoundgroup_436208146): cfloat {.
      cdecl, importc: "ma_sound_group_get_pitch".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_pitch" &
        " already exists, not redeclaring")
when not declared(manotchnodeconfiginit):
  proc manotchnodeconfiginit*(channels: mauint32_436208046;
                              samplerate: mauint32_436208046; q: cdouble;
                              frequency: cdouble): manotchnodeconfig_436208254 {.
      cdecl, importc: "ma_notch_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_notch_node_config_init" &
        " already exists, not redeclaring")
when not declared(manodegraphuninit):
  proc manodegraphuninit*(pnodegraph: ptr manodegraph_436207933;
                          pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_node_graph_uninit".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_uninit" &
        " already exists, not redeclaring")
when not declared(marbpointerdistance):
  proc marbpointerdistance*(prb: ptr marb_436208144): maint32_436208356 {.cdecl,
      importc: "ma_rb_pointer_distance".}
else:
  static :
    hint("Declaration of " & "ma_rb_pointer_distance" &
        " already exists, not redeclaring")
when not declared(manoiseinit):
  proc manoiseinit*(pconfig: ptr manoiseconfig_436208184;
                    pallocationcallbacks: ptr maallocationcallbacks_436208126;
                    pnoise: ptr manoise_436208172): maresult_436208042 {.cdecl,
      importc: "ma_noise_init".}
else:
  static :
    hint("Declaration of " & "ma_noise_init" &
        " already exists, not redeclaring")
when not declared(mabiquadinitpreallocated):
  proc mabiquadinitpreallocated*(pconfig: ptr mabiquadconfig_436208134;
                                 pheap: pointer; pbq: ptr mabiquad_436208444): maresult_436208042 {.
      cdecl, importc: "ma_biquad_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_biquad_init_preallocated" &
        " already exists, not redeclaring")
when not declared(mabpfgetlatency):
  proc mabpfgetlatency*(pbpf: ptr mabpf_436208074): mauint32_436208046 {.cdecl,
      importc: "ma_bpf_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_bpf_get_latency" &
        " already exists, not redeclaring")
when not declared(magainergetheapsize):
  proc magainergetheapsize*(pconfig: ptr magainerconfig_436208476;
                            pheapsizeinbytes: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_gainer_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_gainer_get_heap_size" &
        " already exists, not redeclaring")
when not declared(masoundsetmaxdistance):
  proc masoundsetmaxdistance*(psound: ptr masound_436208210; maxdistance: cfloat): void {.
      cdecl, importc: "ma_sound_set_max_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_max_distance" &
        " already exists, not redeclaring")
when not declared(masoundsetdopplerfactor):
  proc masoundsetdopplerfactor*(psound: ptr masound_436208210;
                                dopplerfactor: cfloat): void {.cdecl,
      importc: "ma_sound_set_doppler_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_doppler_factor" &
        " already exists, not redeclaring")
when not declared(mapeak2init):
  proc mapeak2init*(pconfig: ptr mapeak2config_436208196;
                    pallocationcallbacks: ptr maallocationcallbacks_436208126;
                    pfilter: ptr mapeak2_436208426): maresult_436208042 {.cdecl,
      importc: "ma_peak2_init".}
else:
  static :
    hint("Declaration of " & "ma_peak2_init" &
        " already exists, not redeclaring")
when not declared(manodesetoutputbusvolume):
  proc manodesetoutputbusvolume*(pnode: pointer; outputbusindex: mauint32_436208046;
                                 volume: cfloat): maresult_436208042 {.cdecl,
      importc: "ma_node_set_output_bus_volume".}
else:
  static :
    hint("Declaration of " & "ma_node_set_output_bus_volume" &
        " already exists, not redeclaring")
when not declared(malpf2reinit):
  proc malpf2reinit*(pconfig: ptr malpf2config; plpf: ptr malpf2_436208290): maresult_436208042 {.
      cdecl, importc: "ma_lpf2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_reinit" &
        " already exists, not redeclaring")
when not declared(maspatializergetdirectionalattenuationfactor):
  proc maspatializergetdirectionalattenuationfactor*(
      pspatializer: ptr maspatializer_436207979): cfloat {.cdecl,
      importc: "ma_spatializer_get_directional_attenuation_factor".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_directional_attenuation_factor" &
        " already exists, not redeclaring")
when not declared(madecoderseektopcmframe):
  proc madecoderseektopcmframe*(pdecoder: ptr madecoder_436208076;
                                frameindex: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_decoder_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_decoder_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(mapcmrbcommitwrite):
  proc mapcmrbcommitwrite*(prb: ptr mapcmrb_436208404; sizeinframes: mauint32_436208046): maresult_436208042 {.
      cdecl, importc: "ma_pcm_rb_commit_write".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_commit_write" &
        " already exists, not redeclaring")
when not declared(malpfgetheapsize):
  proc malpfgetheapsize*(pconfig: ptr malpfconfig_436208114;
                         pheapsizeinbytes: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_lpf_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_lpf_get_heap_size" &
        " already exists, not redeclaring")
when not declared(macopyandapplyvolumefactoru8):
  proc macopyandapplyvolumefactoru8*(psamplesout: ptr mauint8_436207941;
                                     psamplesin: ptr mauint8_436207941;
                                     samplecount: mauint64_436208386;
                                     factor: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_u8".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_u8" &
        " already exists, not redeclaring")
when not declared(maspatializerlistenergetdirection):
  proc maspatializerlistenergetdirection*(plistener: ptr maspatializerlistener_436208424): mavec3f_436208100 {.
      cdecl, importc: "ma_spatializer_listener_get_direction".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_direction" &
        " already exists, not redeclaring")
when not declared(machannelmapcopyordefault):
  proc machannelmapcopyordefault*(pout: ptr machannel_436208128;
                                  channelmapcapout: csize_t; pin: ptr machannel_436208128;
                                  channels: mauint32_436208046): void {.cdecl,
      importc: "ma_channel_map_copy_or_default".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_copy_or_default" &
        " already exists, not redeclaring")
when not declared(majobqueuegetheapsize):
  proc majobqueuegetheapsize*(pconfig: ptr majobqueueconfig_436208306;
                              pheapsizeinbytes: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_job_queue_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_get_heap_size" &
        " already exists, not redeclaring")
when not declared(malinearresamplergetheapsize):
  proc malinearresamplergetheapsize*(pconfig: ptr malinearresamplerconfig_436208038;
                                     pheapsizeinbytes: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_linear_resampler_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_get_heap_size" &
        " already exists, not redeclaring")
when not declared(madecoderinitfilew):
  proc madecoderinitfilew*(pfilepath: ptr wchart_436208248;
                           pconfig: ptr madecoderconfig_436208200;
                           pdecoder: ptr madecoder_436208076): maresult_436208042 {.
      cdecl, importc: "ma_decoder_init_file_w".}
else:
  static :
    hint("Declaration of " & "ma_decoder_init_file_w" &
        " already exists, not redeclaring")
when not declared(manodegetoutputbusvolume):
  proc manodegetoutputbusvolume*(pnode: pointer; outputbusindex: mauint32_436208046): cfloat {.
      cdecl, importc: "ma_node_get_output_bus_volume".}
else:
  static :
    hint("Declaration of " & "ma_node_get_output_bus_volume" &
        " already exists, not redeclaring")
when not declared(maspatializergetmaxgain):
  proc maspatializergetmaxgain*(pspatializer: ptr maspatializer_436207979): cfloat {.
      cdecl, importc: "ma_spatializer_get_max_gain".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_max_gain" &
        " already exists, not redeclaring")
when not declared(mabiquadgetheapsize):
  proc mabiquadgetheapsize*(pconfig: ptr mabiquadconfig_436208134;
                            pheapsizeinbytes: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_biquad_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_biquad_get_heap_size" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerprocessnextjob):
  proc maresourcemanagerprocessnextjob*(presourcemanager: ptr maresourcemanager_436208318): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_process_next_job".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_process_next_job" &
        " already exists, not redeclaring")
when not declared(mapannergetpan):
  proc mapannergetpan*(ppanner: ptr mapanner_436208458): cfloat {.cdecl,
      importc: "ma_panner_get_pan".}
else:
  static :
    hint("Declaration of " & "ma_panner_get_pan" &
        " already exists, not redeclaring")
when not declared(macopyandapplyvolumefactors32):
  proc macopyandapplyvolumefactors32*(psamplesout: ptr maint32_436208356;
                                      psamplesin: ptr maint32_436208356;
                                      samplecount: mauint64_436208386;
                                      factor: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_s32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_s32" &
        " already exists, not redeclaring")
when not declared(madatasourcegetlengthinseconds):
  proc madatasourcegetlengthinseconds*(pdatasource: pointer; plength: ptr cfloat): maresult_436208042 {.
      cdecl, importc: "ma_data_source_get_length_in_seconds".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_length_in_seconds" &
        " already exists, not redeclaring")
when not declared(mahishelfnodereinit):
  proc mahishelfnodereinit*(pconfig: ptr mahishelfconfig;
                            pnode: ptr mahishelfnode_436208240): maresult_436208042 {.
      cdecl, importc: "ma_hishelf_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_hishelf_node_reinit" &
        " already exists, not redeclaring")
when not declared(Madatasourceselfmanagedrangeandlooppoint):
  when 1 is static:
    const
      Madatasourceselfmanagedrangeandlooppoint* = 1 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9291:9
  else:
    let Madatasourceselfmanagedrangeandlooppoint* = 1 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9291:9
else:
  static :
    hint("Declaration of " & "MA_DATA_SOURCE_SELF_MANAGED_RANGE_AND_LOOP_POINT" &
        " already exists, not redeclaring")
when not declared(maresamplergetrequiredinputframecount):
  proc maresamplergetrequiredinputframecount*(presampler: ptr maresampler_436207965;
      outputframecount: mauint64_436208386; pinputframecount: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_resampler_get_required_input_frame_count".}
else:
  static :
    hint("Declaration of " & "ma_resampler_get_required_input_frame_count" &
        " already exists, not redeclaring")
when not declared(madecodingbackendconfiginit):
  proc madecodingbackendconfiginit*(preferredformat: maformat_436208208;
                                    seekpointcount: mauint32_436208046): madecodingbackendconfig_436208332 {.
      cdecl, importc: "ma_decoding_backend_config_init".}
else:
  static :
    hint("Declaration of " & "ma_decoding_backend_config_init" &
        " already exists, not redeclaring")
when not declared(masoundgroupgetmingain):
  proc masoundgroupgetmingain*(pgroup: ptr masoundgroup_436208146): cfloat {.
      cdecl, importc: "ma_sound_group_get_min_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_min_gain" &
        " already exists, not redeclaring")
when not declared(madecodefromvfs):
  proc madecodefromvfs*(pvfs: pointer; pfilepath: cstring;
                        pconfig: ptr madecoderconfig_436208200;
                        pframecountout: ptr mauint64_436208386;
                        pppcmframesout: ptr pointer): maresult_436208042 {.
      cdecl, importc: "ma_decode_from_vfs".}
else:
  static :
    hint("Declaration of " & "ma_decode_from_vfs" &
        " already exists, not redeclaring")
when not declared(maconvertframesex):
  proc maconvertframesex*(pout: pointer; framecountout: mauint64_436208386;
                          pin: pointer; framecountin: mauint64_436208386;
                          pconfig: ptr madataconverterconfig_436208256): mauint64_436208386 {.
      cdecl, importc: "ma_convert_frames_ex".}
else:
  static :
    hint("Declaration of " & "ma_convert_frames_ex" &
        " already exists, not redeclaring")
when not declared(Maminchannels):
  when 1 is static:
    const
      Maminchannels* = 1     ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4052:9
  else:
    let Maminchannels* = 1   ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4052:9
else:
  static :
    hint("Declaration of " & "MA_MIN_CHANNELS" &
        " already exists, not redeclaring")
when not declared(masoundgroupgetmaxgain):
  proc masoundgroupgetmaxgain*(pgroup: ptr masoundgroup_436208146): cfloat {.
      cdecl, importc: "ma_sound_group_get_max_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_max_gain" &
        " already exists, not redeclaring")
when not declared(mawaveformuninit):
  proc mawaveformuninit*(pwaveform: ptr mawaveform_436208368): void {.cdecl,
      importc: "ma_waveform_uninit".}
else:
  static :
    hint("Declaration of " & "ma_waveform_uninit" &
        " already exists, not redeclaring")
when not declared(Mamaxchannels):
  when 254 is static:
    const
      Mamaxchannels* = 254   ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4054:9
  else:
    let Mamaxchannels* = 254 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4054:9
else:
  static :
    hint("Declaration of " & "MA_MAX_CHANNELS" &
        " already exists, not redeclaring")
when not declared(mapeak2getlatency):
  proc mapeak2getlatency*(pfilter: ptr mapeak2_436208426): mauint32_436208046 {.
      cdecl, importc: "ma_peak2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_peak2_get_latency" &
        " already exists, not redeclaring")
when not declared(malinearresamplergetrequiredinputframecount):
  proc malinearresamplergetrequiredinputframecount*(
      presampler: ptr malinearresampler_436208448; outputframecount: mauint64_436208386;
      pinputframecount: ptr mauint64_436208386): maresult_436208042 {.cdecl,
      importc: "ma_linear_resampler_get_required_input_frame_count".}
else:
  static :
    hint("Declaration of " &
        "ma_linear_resampler_get_required_input_frame_count" &
        " already exists, not redeclaring")
when not declared(maalignedmalloc):
  proc maalignedmalloc*(sz: csize_t; alignment: csize_t;
                        pallocationcallbacks: ptr maallocationcallbacks_436208126): pointer {.
      cdecl, importc: "ma_aligned_malloc".}
else:
  static :
    hint("Declaration of " & "ma_aligned_malloc" &
        " already exists, not redeclaring")
when not declared(mapcms32tou8):
  proc mapcms32tou8*(pout: pointer; pin: pointer; count: mauint64_436208386;
                     dithermode: madithermode_436208168): void {.cdecl,
      importc: "ma_pcm_s32_to_u8".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s32_to_u8" &
        " already exists, not redeclaring")
when not declared(mamutexlock):
  proc mamutexlock*(pmutex: ptr mamutex_436207955): void {.cdecl,
      importc: "ma_mutex_lock".}
else:
  static :
    hint("Declaration of " & "ma_mutex_lock" &
        " already exists, not redeclaring")
when not declared(mapagedaudiobufferreadpcmframes):
  proc mapagedaudiobufferreadpcmframes*(ppagedaudiobuffer: ptr mapagedaudiobuffer_436208026;
                                        pframesout: pointer;
                                        framecount: mauint64_436208386;
                                        pframesread: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_paged_audio_buffer_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(madecodergetlengthinpcmframes):
  proc madecodergetlengthinpcmframes*(pdecoder: ptr madecoder_436208076;
                                      plength: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_decoder_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_decoder_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(manodegetstatebytime):
  proc manodegetstatebytime*(pnode: pointer; globaltime: mauint64_436208386): manodestate_436208054 {.
      cdecl, importc: "ma_node_get_state_by_time".}
else:
  static :
    hint("Declaration of " & "ma_node_get_state_by_time" &
        " already exists, not redeclaring")
when not declared(maaudiobufferrefgetcursorinpcmframes):
  proc maaudiobufferrefgetcursorinpcmframes*(
      paudiobufferref: ptr maaudiobufferref_436207997; pcursor: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_audio_buffer_ref_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(masoundsetmindistance):
  proc masoundsetmindistance*(psound: ptr masound_436208210; mindistance: cfloat): void {.
      cdecl, importc: "ma_sound_set_min_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_min_distance" &
        " already exists, not redeclaring")
when not declared(mahpf2processpcmframes):
  proc mahpf2processpcmframes*(phpf: ptr mahpf2_436208366; pframesout: pointer;
                               pframesin: pointer; framecount: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_hpf2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(magainerprocesspcmframes):
  proc magainerprocesspcmframes*(pgainer: ptr magainer_436208480;
                                 pframesout: pointer; pframesin: pointer;
                                 framecount: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_gainer_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_gainer_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(maspatializersetmaxdistance):
  proc maspatializersetmaxdistance*(pspatializer: ptr maspatializer_436207979;
                                    maxdistance: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_max_distance".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_max_distance" &
        " already exists, not redeclaring")
when not declared(madataconverteruninit):
  proc madataconverteruninit*(pconverter: ptr madataconverter_436208226;
                              pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_data_converter_uninit".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_uninit" &
        " already exists, not redeclaring")
when not declared(maresampleruninit):
  proc maresampleruninit*(presampler: ptr maresampler_436207965;
                          pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_resampler_uninit".}
else:
  static :
    hint("Declaration of " & "ma_resampler_uninit" &
        " already exists, not redeclaring")
when not declared(macontextuninit):
  proc macontextuninit*(pcontext: ptr macontext_436208478): maresult_436208042 {.
      cdecl, importc: "ma_context_uninit".}
else:
  static :
    hint("Declaration of " & "ma_context_uninit" &
        " already exists, not redeclaring")
when not declared(maloshelf2getlatency):
  proc maloshelf2getlatency*(pfilter: ptr maloshelf2_436208262): mauint32_436208046 {.
      cdecl, importc: "ma_loshelf2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_get_latency" &
        " already exists, not redeclaring")
when not declared(mafencewait):
  proc mafencewait*(pfence: ptr mafence_436208110): maresult_436208042 {.cdecl,
      importc: "ma_fence_wait".}
else:
  static :
    hint("Declaration of " & "ma_fence_wait" &
        " already exists, not redeclaring")
when not declared(madeviceinit):
  proc madeviceinit*(pcontext: ptr macontext_436208478;
                     pconfig: ptr madeviceconfig_436207953;
                     pdevice: ptr madevice_436208034): maresult_436208042 {.
      cdecl, importc: "ma_device_init".}
else:
  static :
    hint("Declaration of " & "ma_device_init" &
        " already exists, not redeclaring")
when not declared(madevicegetstate):
  proc madevicegetstate*(pdevice: ptr madevice_436208034): madevicestate_436208418 {.
      cdecl, importc: "ma_device_get_state".}
else:
  static :
    hint("Declaration of " & "ma_device_get_state" &
        " already exists, not redeclaring")
when not declared(maspatializersetmindistance):
  proc maspatializersetmindistance*(pspatializer: ptr maspatializer_436207979;
                                    mindistance: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_min_distance".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_min_distance" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatasourceconfiginit):
  proc maresourcemanagerdatasourceconfiginit*(): maresourcemanagerdatasourceconfig_436208322 {.
      cdecl, importc: "ma_resource_manager_data_source_config_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_config_init" &
        " already exists, not redeclaring")
when not declared(malpf2getlatency):
  proc malpf2getlatency*(plpf: ptr malpf2_436208290): mauint32_436208046 {.
      cdecl, importc: "ma_lpf2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_get_latency" &
        " already exists, not redeclaring")
when not declared(malogunregistercallback):
  proc malogunregistercallback*(plog: ptr malog_436207937;
                                callback: malogcallback_436207989): maresult_436208042 {.
      cdecl, importc: "ma_log_unregister_callback".}
else:
  static :
    hint("Declaration of " & "ma_log_unregister_callback" &
        " already exists, not redeclaring")
when not declared(mabiquadconfiginit):
  proc mabiquadconfiginit*(format: maformat_436208208; channels: mauint32_436208046;
                           b0: cdouble; b1: cdouble; b2: cdouble; a0: cdouble;
                           a1: cdouble; a2: cdouble): mabiquadconfig_436208134 {.
      cdecl, importc: "ma_biquad_config_init".}
else:
  static :
    hint("Declaration of " & "ma_biquad_config_init" &
        " already exists, not redeclaring")
when not declared(mahpfnodeconfiginit):
  proc mahpfnodeconfiginit*(channels: mauint32_436208046; samplerate: mauint32_436208046;
                            cutofffrequency: cdouble; order: mauint32_436208046): mahpfnodeconfig_436208118 {.
      cdecl, importc: "ma_hpf_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf_node_config_init" &
        " already exists, not redeclaring")
when not declared(maresultdescription):
  proc maresultdescription*(result: maresult_436208042): cstring {.cdecl,
      importc: "ma_result_description".}
else:
  static :
    hint("Declaration of " & "ma_result_description" &
        " already exists, not redeclaring")
when not declared(mapagedaudiobufferdatagetlengthinpcmframes):
  proc mapagedaudiobufferdatagetlengthinpcmframes*(
      pdata: ptr mapagedaudiobufferdata_436208048; plength: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_paged_audio_buffer_data_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_paged_audio_buffer_data_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(mabpfgetheapsize):
  proc mabpfgetheapsize*(pconfig: ptr mabpfconfig_436208434;
                         pheapsizeinbytes: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_bpf_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_bpf_get_heap_size" &
        " already exists, not redeclaring")
when not declared(masoundgroupsetspatializationenabled):
  proc masoundgroupsetspatializationenabled*(pgroup: ptr masoundgroup_436208146;
      enabled: mabool32_436207983): void {.cdecl,
      importc: "ma_sound_group_set_spatialization_enabled".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_spatialization_enabled" &
        " already exists, not redeclaring")
when not declared(mapcmf32tou8):
  proc mapcmf32tou8*(pout: pointer; pin: pointer; count: mauint64_436208386;
                     dithermode: madithermode_436208168): void {.cdecl,
      importc: "ma_pcm_f32_to_u8".}
else:
  static :
    hint("Declaration of " & "ma_pcm_f32_to_u8" &
        " already exists, not redeclaring")
when not declared(malpfreinit):
  proc malpfreinit*(pconfig: ptr malpfconfig_436208114; plpf: ptr malpf_436208422): maresult_436208042 {.
      cdecl, importc: "ma_lpf_reinit".}
else:
  static :
    hint("Declaration of " & "ma_lpf_reinit" &
        " already exists, not redeclaring")
when not declared(maloshelf2getheapsize):
  proc maloshelf2getheapsize*(pconfig: ptr maloshelf2config_436208064;
                              pheapsizeinbytes: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_loshelf2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(maslotallocatorgetheapsize):
  proc maslotallocatorgetheapsize*(pconfig: ptr maslotallocatorconfig_436208432;
                                   pheapsizeinbytes: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_slot_allocator_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_get_heap_size" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerregisterencodeddata):
  proc maresourcemanagerregisterencodeddata*(
      presourcemanager: ptr maresourcemanager_436208318; pname: cstring;
      pdata: pointer; sizeinbytes: csize_t): maresult_436208042 {.cdecl,
      importc: "ma_resource_manager_register_encoded_data".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_register_encoded_data" &
        " already exists, not redeclaring")
when not declared(mapcmrbacquireread):
  proc mapcmrbacquireread*(prb: ptr mapcmrb_436208404;
                           psizeinframes: ptr mauint32_436208046;
                           ppbufferout: ptr pointer): maresult_436208042 {.
      cdecl, importc: "ma_pcm_rb_acquire_read".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_acquire_read" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatastreamresult):
  proc maresourcemanagerdatastreamresult*(
      pdatastream: ptr maresourcemanagerdatastream_436207993): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_data_stream_result".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_result" &
        " already exists, not redeclaring")
when not declared(maloshelf2configinit):
  proc maloshelf2configinit*(format: maformat_436208208; channels: mauint32_436208046;
                             samplerate: mauint32_436208046; gaindb: cdouble;
                             shelfslope: cdouble; frequency: cdouble): maloshelf2config_436208064 {.
      cdecl, importc: "ma_loshelf2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_config_init" &
        " already exists, not redeclaring")
when not declared(masoundgetmaxdistance):
  proc masoundgetmaxdistance*(psound: ptr masound_436208210): cfloat {.cdecl,
      importc: "ma_sound_get_max_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_max_distance" &
        " already exists, not redeclaring")
when not declared(madecoderinitvfsw):
  proc madecoderinitvfsw*(pvfs: pointer; pfilepath: ptr wchart_436208248;
                          pconfig: ptr madecoderconfig_436208200;
                          pdecoder: ptr madecoder_436208076): maresult_436208042 {.
      cdecl, importc: "ma_decoder_init_vfs_w".}
else:
  static :
    hint("Declaration of " & "ma_decoder_init_vfs_w" &
        " already exists, not redeclaring")
when not declared(mabiquadgetlatency):
  proc mabiquadgetlatency*(pbq: ptr mabiquad_436208444): mauint32_436208046 {.
      cdecl, importc: "ma_biquad_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_biquad_get_latency" &
        " already exists, not redeclaring")
when not declared(mapagedaudiobufferconfiginit):
  proc mapagedaudiobufferconfiginit*(pdata: ptr mapagedaudiobufferdata_436208048): mapagedaudiobufferconfig_436208296 {.
      cdecl, importc: "ma_paged_audio_buffer_config_init".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_config_init" &
        " already exists, not redeclaring")
when not declared(masoundgroupsetvolume):
  proc masoundgroupsetvolume*(pgroup: ptr masoundgroup_436208146; volume: cfloat): void {.
      cdecl, importc: "ma_sound_group_set_volume".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_volume" &
        " already exists, not redeclaring")
when not declared(mapeak2getheapsize):
  proc mapeak2getheapsize*(pconfig: ptr mapeak2config_436208196;
                           pheapsizeinbytes: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_peak2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_peak2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(masoundgetvolume):
  proc masoundgetvolume*(psound: ptr masound_436208210): cfloat {.cdecl,
      importc: "ma_sound_get_volume".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_volume" &
        " already exists, not redeclaring")
when not declared(masoundconfiginit):
  proc masoundconfiginit*(): masoundconfig_436208314 {.cdecl,
      importc: "ma_sound_config_init".}
else:
  static :
    hint("Declaration of " & "ma_sound_config_init" &
        " already exists, not redeclaring")
when not declared(masoundgetdirectiontolistener):
  proc masoundgetdirectiontolistener*(psound: ptr masound_436208210): mavec3f_436208100 {.
      cdecl, importc: "ma_sound_get_direction_to_listener".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_direction_to_listener" &
        " already exists, not redeclaring")
when not declared(masoundgroupgetpanmode):
  proc masoundgroupgetpanmode*(pgroup: ptr masoundgroup_436208146): mapanmode_436208380 {.
      cdecl, importc: "ma_sound_group_get_pan_mode".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_pan_mode" &
        " already exists, not redeclaring")
when not declared(malpf1init):
  proc malpf1init*(pconfig: ptr malpf1config_436207991;
                   pallocationcallbacks: ptr maallocationcallbacks_436208126;
                   plpf: ptr malpf1_436208246): maresult_436208042 {.cdecl,
      importc: "ma_lpf1_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_init" & " already exists, not redeclaring")
when not declared(maencoderinitfilew):
  proc maencoderinitfilew*(pfilepath: ptr wchart_436208248;
                           pconfig: ptr maencoderconfig_436208162;
                           pencoder: ptr maencoder_436208040): maresult_436208042 {.
      cdecl, importc: "ma_encoder_init_file_w".}
else:
  static :
    hint("Declaration of " & "ma_encoder_init_file_w" &
        " already exists, not redeclaring")
when not declared(masoundgroupgetengine):
  proc masoundgroupgetengine*(pgroup: ptr masoundgroup_436208146): ptr maengine_436208154 {.
      cdecl, importc: "ma_sound_group_get_engine".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_engine" &
        " already exists, not redeclaring")
when not declared(masoundgroupgetvelocity):
  proc masoundgroupgetvelocity*(pgroup: ptr masoundgroup_436208146): mavec3f_436208100 {.
      cdecl, importc: "ma_sound_group_get_velocity".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_velocity" &
        " already exists, not redeclaring")
when not declared(madevicesetmastervolumedb):
  proc madevicesetmastervolumedb*(pdevice: ptr madevice_436208034;
                                  gaindb: cfloat): maresult_436208042 {.cdecl,
      importc: "ma_device_set_master_volume_db".}
else:
  static :
    hint("Declaration of " & "ma_device_set_master_volume_db" &
        " already exists, not redeclaring")
when not declared(maresamplersetrate):
  proc maresamplersetrate*(presampler: ptr maresampler_436207965;
                           sampleratein: mauint32_436208046;
                           samplerateout: mauint32_436208046): maresult_436208042 {.
      cdecl, importc: "ma_resampler_set_rate".}
else:
  static :
    hint("Declaration of " & "ma_resampler_set_rate" &
        " already exists, not redeclaring")
when not declared(mabiquadclearcache):
  proc mabiquadclearcache*(pbq: ptr mabiquad_436208444): maresult_436208042 {.
      cdecl, importc: "ma_biquad_clear_cache".}
else:
  static :
    hint("Declaration of " & "ma_biquad_clear_cache" &
        " already exists, not redeclaring")
when not declared(maeventsignal):
  proc maeventsignal*(pevent: ptr maevent_436208160): maresult_436208042 {.
      cdecl, importc: "ma_event_signal".}
else:
  static :
    hint("Declaration of " & "ma_event_signal" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerregisterdecodeddataw):
  proc maresourcemanagerregisterdecodeddataw*(
      presourcemanager: ptr maresourcemanager_436208318; pname: ptr wchart_436208248;
      pdata: pointer; framecount: mauint64_436208386; format: maformat_436208208;
      channels: mauint32_436208046; samplerate: mauint32_436208046): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_register_decoded_data_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_register_decoded_data_w" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerunregisterfile):
  proc maresourcemanagerunregisterfile*(presourcemanager: ptr maresourcemanager_436208318;
                                        pfilepath: cstring): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_unregister_file".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_unregister_file" &
        " already exists, not redeclaring")
when not declared(maaudiobufferrefgetlengthinpcmframes):
  proc maaudiobufferrefgetlengthinpcmframes*(
      paudiobufferref: ptr maaudiobufferref_436207997; plength: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_audio_buffer_ref_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(masoundgetlengthinpcmframes):
  proc masoundgetlengthinpcmframes*(psound: ptr masound_436208210;
                                    plength: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_sound_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(malpf1processpcmframes):
  proc malpf1processpcmframes*(plpf: ptr malpf1_436208246; pframesout: pointer;
                               pframesin: pointer; framecount: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_lpf1_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(maisloopbacksupported):
  proc maisloopbacksupported*(backend: mabackend_436208370): mabool32_436207983 {.
      cdecl, importc: "ma_is_loopback_supported".}
else:
  static :
    hint("Declaration of " & "ma_is_loopback_supported" &
        " already exists, not redeclaring")
when not declared(madevicestop):
  proc madevicestop*(pdevice: ptr madevice_436208034): maresult_436208042 {.
      cdecl, importc: "ma_device_stop".}
else:
  static :
    hint("Declaration of " & "ma_device_stop" &
        " already exists, not redeclaring")
when not declared(madatasourceuninit):
  proc madatasourceuninit*(pdatasource: pointer): void {.cdecl,
      importc: "ma_data_source_uninit".}
else:
  static :
    hint("Declaration of " & "ma_data_source_uninit" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatasourceinit):
  proc maresourcemanagerdatasourceinit*(presourcemanager: ptr maresourcemanager_436208318;
                                        pname: cstring; flags: mauint32_436208046;
      pnotifications: ptr maresourcemanagerpipelinenotifications_436208268;
      pdatasource: ptr maresourcemanagerdatasource_436208440): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_data_source_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_init" &
        " already exists, not redeclaring")
when not declared(masoundgroupsetattenuationmodel):
  proc masoundgroupsetattenuationmodel*(pgroup: ptr masoundgroup_436208146;
                                        attenuationmodel: maattenuationmodel_436207961): void {.
      cdecl, importc: "ma_sound_group_set_attenuation_model".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_attenuation_model" &
        " already exists, not redeclaring")
when not declared(masoundinitfromfile):
  proc masoundinitfromfile*(pengine: ptr maengine_436208154; pfilepath: cstring;
                            flags: mauint32_436208046; pgroup: ptr masoundgroup_436208146;
                            pdonefence: ptr mafence_436208110;
                            psound: ptr masound_436208210): maresult_436208042 {.
      cdecl, importc: "ma_sound_init_from_file".}
else:
  static :
    hint("Declaration of " & "ma_sound_init_from_file" &
        " already exists, not redeclaring")
when not declared(masoundgroupsetpitch):
  proc masoundgroupsetpitch*(pgroup: ptr masoundgroup_436208146; pitch: cfloat): void {.
      cdecl, importc: "ma_sound_group_set_pitch".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_pitch" &
        " already exists, not redeclaring")
when not declared(mapannersetmode):
  proc mapannersetmode*(ppanner: ptr mapanner_436208458; mode: mapanmode_436208380): void {.
      cdecl, importc: "ma_panner_set_mode".}
else:
  static :
    hint("Declaration of " & "ma_panner_set_mode" &
        " already exists, not redeclaring")
when not declared(machannelmapisequal):
  proc machannelmapisequal*(pchannelmapa: ptr machannel_436208128;
                            pchannelmapb: ptr machannel_436208128;
                            channels: mauint32_436208046): mabool32_436207983 {.
      cdecl, importc: "ma_channel_map_is_equal".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_is_equal" &
        " already exists, not redeclaring")
when not declared(mahishelfnodeuninit):
  proc mahishelfnodeuninit*(pnode: ptr mahishelfnode_436208240;
                            pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_hishelf_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_hishelf_node_uninit" &
        " already exists, not redeclaring")
when not declared(mahpfconfiginit):
  proc mahpfconfiginit*(format: maformat_436208208; channels: mauint32_436208046;
                        samplerate: mauint32_436208046;
                        cutofffrequency: cdouble; order: mauint32_436208046): mahpfconfig_436208460 {.
      cdecl, importc: "ma_hpf_config_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf_config_init" &
        " already exists, not redeclaring")
when not declared(Mamaxnodebuscount):
  when 254 is static:
    const
      Mamaxnodebuscount* = 254 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10202:9
  else:
    let Mamaxnodebuscount* = 254 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10202:9
else:
  static :
    hint("Declaration of " & "MA_MAX_NODE_BUS_COUNT" &
        " already exists, not redeclaring")
when not declared(masoundgroupsetstoptimeinpcmframes):
  proc masoundgroupsetstoptimeinpcmframes*(pgroup: ptr masoundgroup_436208146;
      absoluteglobaltimeinframes: mauint64_436208386): void {.cdecl,
      importc: "ma_sound_group_set_stop_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_stop_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(mapcms32tos16):
  proc mapcms32tos16*(pout: pointer; pin: pointer; count: mauint64_436208386;
                      dithermode: madithermode_436208168): void {.cdecl,
      importc: "ma_pcm_s32_to_s16".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s32_to_s16" &
        " already exists, not redeclaring")
when not declared(mahpfgetlatency):
  proc mahpfgetlatency*(phpf: ptr mahpf_436208150): mauint32_436208046 {.cdecl,
      importc: "ma_hpf_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_hpf_get_latency" &
        " already exists, not redeclaring")
when not declared(maenginelistenersetdirection):
  proc maenginelistenersetdirection*(pengine: ptr maengine_436208154;
                                     listenerindex: mauint32_436208046;
                                     x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_engine_listener_set_direction".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_set_direction" &
        " already exists, not redeclaring")
when not declared(maaudiobufferinit):
  proc maaudiobufferinit*(pconfig: ptr maaudiobufferconfig_436208102;
                          paudiobuffer: ptr maaudiobuffer_436208298): maresult_436208042 {.
      cdecl, importc: "ma_audio_buffer_init".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_init" &
        " already exists, not redeclaring")
when not declared(mapcms16tos32):
  proc mapcms16tos32*(pout: pointer; pin: pointer; count: mauint64_436208386;
                      dithermode: madithermode_436208168): void {.cdecl,
      importc: "ma_pcm_s16_to_s32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s16_to_s32" &
        " already exists, not redeclaring")
when not declared(macopyandapplyvolumefactorpcmframess16):
  proc macopyandapplyvolumefactorpcmframess16*(pframesout: ptr maint16_436207975;
      pframesin: ptr maint16_436207975; framecount: mauint64_436208386;
      channels: mauint32_436208046; factor: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_pcm_frames_s16".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_pcm_frames_s16" &
        " already exists, not redeclaring")
when not declared(mabiquadnodeinit):
  proc mabiquadnodeinit*(pnodegraph: ptr manodegraph_436207933;
                         pconfig: ptr mabiquadnodeconfig_436208086;
                         pallocationcallbacks: ptr maallocationcallbacks_436208126;
                         pnode: ptr mabiquadnode_436208360): maresult_436208042 {.
      cdecl, importc: "ma_biquad_node_init".}
else:
  static :
    hint("Declaration of " & "ma_biquad_node_init" &
        " already exists, not redeclaring")
when not declared(madelaynodeconfiginit):
  proc madelaynodeconfiginit*(channels: mauint32_436208046;
                              samplerate: mauint32_436208046;
                              delayinframes: mauint32_436208046; decay: cfloat): madelaynodeconfig_436208202 {.
      cdecl, importc: "ma_delay_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_config_init" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerregisterfilew):
  proc maresourcemanagerregisterfilew*(presourcemanager: ptr maresourcemanager_436208318;
                                       pfilepath: ptr wchart_436208248;
                                       flags: mauint32_436208046): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_register_file_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_register_file_w" &
        " already exists, not redeclaring")
when not declared(maspatializergetcone):
  proc maspatializergetcone*(pspatializer: ptr maspatializer_436207979;
                             pinnerangleinradians: ptr cfloat;
                             pouterangleinradians: ptr cfloat;
                             poutergain: ptr cfloat): void {.cdecl,
      importc: "ma_spatializer_get_cone".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_cone" &
        " already exists, not redeclaring")
when not declared(majobqueueinitpreallocated):
  proc majobqueueinitpreallocated*(pconfig: ptr majobqueueconfig_436208306;
                                   pheap: pointer; pqueue: ptr majobqueue_436208472): maresult_436208042 {.
      cdecl, importc: "ma_job_queue_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_init_preallocated" &
        " already exists, not redeclaring")
when not declared(maaudiobufferuninitandfree):
  proc maaudiobufferuninitandfree*(paudiobuffer: ptr maaudiobuffer_436208298): void {.
      cdecl, importc: "ma_audio_buffer_uninit_and_free".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_uninit_and_free" &
        " already exists, not redeclaring")
when not declared(mapcmu8tos24):
  proc mapcmu8tos24*(pout: pointer; pin: pointer; count: mauint64_436208386;
                     dithermode: madithermode_436208168): void {.cdecl,
      importc: "ma_pcm_u8_to_s24".}
else:
  static :
    hint("Declaration of " & "ma_pcm_u8_to_s24" &
        " already exists, not redeclaring")
when not declared(maenginereadpcmframes):
  proc maenginereadpcmframes*(pengine: ptr maengine_436208154;
                              pframesout: pointer; framecount: mauint64_436208386;
                              pframesread: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_engine_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_engine_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(manotch2configinit):
  proc manotch2configinit*(format: maformat_436208208; channels: mauint32_436208046;
                           samplerate: mauint32_436208046; q: cdouble;
                           frequency: cdouble): manotch2config_436208132 {.
      cdecl, importc: "ma_notch2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_notch2_config_init" &
        " already exists, not redeclaring")
when not declared(manotch2init):
  proc manotch2init*(pconfig: ptr manotch2config_436208132;
                     pallocationcallbacks: ptr maallocationcallbacks_436208126;
                     pfilter: ptr manotch2_436208244): maresult_436208042 {.
      cdecl, importc: "ma_notch2_init".}
else:
  static :
    hint("Declaration of " & "ma_notch2_init" &
        " already exists, not redeclaring")
when not declared(maresamplergetheapsize):
  proc maresamplergetheapsize*(pconfig: ptr maresamplerconfig_436208178;
                               pheapsizeinbytes: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_resampler_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_resampler_get_heap_size" &
        " already exists, not redeclaring")
when not declared(manoisesetamplitude):
  proc manoisesetamplitude*(pnoise: ptr manoise_436208172; amplitude: cdouble): maresult_436208042 {.
      cdecl, importc: "ma_noise_set_amplitude".}
else:
  static :
    hint("Declaration of " & "ma_noise_set_amplitude" &
        " already exists, not redeclaring")
when not declared(marbcommitwrite):
  proc marbcommitwrite*(prb: ptr marb_436208144; sizeinbytes: csize_t): maresult_436208042 {.
      cdecl, importc: "ma_rb_commit_write".}
else:
  static :
    hint("Declaration of " & "ma_rb_commit_write" &
        " already exists, not redeclaring")
when not declared(masoundgroupsetmaxgain):
  proc masoundgroupsetmaxgain*(pgroup: ptr masoundgroup_436208146;
                               maxgain: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_max_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_max_gain" &
        " already exists, not redeclaring")
when not declared(mahpf1getheapsize):
  proc mahpf1getheapsize*(pconfig: ptr mahpf1config_436208228;
                          pheapsizeinbytes: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_hpf1_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_get_heap_size" &
        " already exists, not redeclaring")
when not declared(masplitternodeconfiginit):
  proc masplitternodeconfiginit*(channels: mauint32_436208046): masplitternodeconfig_436208120 {.
      cdecl, importc: "ma_splitter_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_splitter_node_config_init" &
        " already exists, not redeclaring")
when not declared(masoundgroupgetattenuationmodel):
  proc masoundgroupgetattenuationmodel*(pgroup: ptr masoundgroup_436208146): maattenuationmodel_436207961 {.
      cdecl, importc: "ma_sound_group_get_attenuation_model".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_attenuation_model" &
        " already exists, not redeclaring")
when not declared(macalculatebuffersizeinmillisecondsfromframes):
  proc macalculatebuffersizeinmillisecondsfromframes*(
      buffersizeinframes: mauint32_436208046; samplerate: mauint32_436208046): mauint32_436208046 {.
      cdecl, importc: "ma_calculate_buffer_size_in_milliseconds_from_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_calculate_buffer_size_in_milliseconds_from_frames" &
        " already exists, not redeclaring")
when not declared(mapeak2initpreallocated):
  proc mapeak2initpreallocated*(pconfig: ptr mapeak2config_436208196;
                                pheap: pointer; pfilter: ptr mapeak2_436208426): maresult_436208042 {.
      cdecl, importc: "ma_peak2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_peak2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatastreamuninit):
  proc maresourcemanagerdatastreamuninit*(
      pdatastream: ptr maresourcemanagerdatastream_436207993): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_data_stream_uninit".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_uninit" &
        " already exists, not redeclaring")
when not declared(masoundgetcurrentfadevolume):
  proc masoundgetcurrentfadevolume*(psound: ptr masound_436208210): cfloat {.
      cdecl, importc: "ma_sound_get_current_fade_volume".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_current_fade_volume" &
        " already exists, not redeclaring")
when not declared(manodegetinputbuscount):
  proc manodegetinputbuscount*(pnode: pointer): mauint32_436208046 {.cdecl,
      importc: "ma_node_get_input_bus_count".}
else:
  static :
    hint("Declaration of " & "ma_node_get_input_bus_count" &
        " already exists, not redeclaring")
when not declared(manodegetinputchannels):
  proc manodegetinputchannels*(pnode: pointer; inputbusindex: mauint32_436208046): mauint32_436208046 {.
      cdecl, importc: "ma_node_get_input_channels".}
else:
  static :
    hint("Declaration of " & "ma_node_get_input_channels" &
        " already exists, not redeclaring")
when not declared(maloshelf2processpcmframes):
  proc maloshelf2processpcmframes*(pfilter: ptr maloshelf2_436208262;
                                   pframesout: pointer; pframesin: pointer;
                                   framecount: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_loshelf2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(masoundinitfromfilew):
  proc masoundinitfromfilew*(pengine: ptr maengine_436208154;
                             pfilepath: ptr wchart_436208248; flags: mauint32_436208046;
                             pgroup: ptr masoundgroup_436208146;
                             pdonefence: ptr mafence_436208110;
                             psound: ptr masound_436208210): maresult_436208042 {.
      cdecl, importc: "ma_sound_init_from_file_w".}
else:
  static :
    hint("Declaration of " & "ma_sound_init_from_file_w" &
        " already exists, not redeclaring")
when not declared(maclipsampless32):
  proc maclipsampless32*(pdst: ptr maint32_436208356; psrc: ptr maint64_436208330;
                         count: mauint64_436208386): void {.cdecl,
      importc: "ma_clip_samples_s32".}
else:
  static :
    hint("Declaration of " & "ma_clip_samples_s32" &
        " already exists, not redeclaring")
when not declared(madelaynodegetwet):
  proc madelaynodegetwet*(pdelaynode: ptr madelaynode_436207969): cfloat {.
      cdecl, importc: "ma_delay_node_get_wet".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_get_wet" &
        " already exists, not redeclaring")
when not declared(masoundgetpanmode):
  proc masoundgetpanmode*(psound: ptr masound_436208210): mapanmode_436208380 {.
      cdecl, importc: "ma_sound_get_pan_mode".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_pan_mode" &
        " already exists, not redeclaring")
when not declared(maspatializergetvelocity):
  proc maspatializergetvelocity*(pspatializer: ptr maspatializer_436207979): mavec3f_436208100 {.
      cdecl, importc: "ma_spatializer_get_velocity".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_velocity" &
        " already exists, not redeclaring")
when not declared(marbgetsubbufferoffset):
  proc marbgetsubbufferoffset*(prb: ptr marb_436208144; subbufferindex: csize_t): csize_t {.
      cdecl, importc: "ma_rb_get_subbuffer_offset".}
else:
  static :
    hint("Declaration of " & "ma_rb_get_subbuffer_offset" &
        " already exists, not redeclaring")
when not declared(magainerinit):
  proc magainerinit*(pconfig: ptr magainerconfig_436208476;
                     pallocationcallbacks: ptr maallocationcallbacks_436208126;
                     pgainer: ptr magainer_436208480): maresult_436208042 {.
      cdecl, importc: "ma_gainer_init".}
else:
  static :
    hint("Declaration of " & "ma_gainer_init" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerregisterencodeddataw):
  proc maresourcemanagerregisterencodeddataw*(
      presourcemanager: ptr maresourcemanager_436208318; pname: ptr wchart_436208248;
      pdata: pointer; sizeinbytes: csize_t): maresult_436208042 {.cdecl,
      importc: "ma_resource_manager_register_encoded_data_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_register_encoded_data_w" &
        " already exists, not redeclaring")
when not declared(manotch2uninit):
  proc manotch2uninit*(pfilter: ptr manotch2_436208244;
                       pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_notch2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_notch2_uninit" &
        " already exists, not redeclaring")
when not declared(maspatializergetmindistance):
  proc maspatializergetmindistance*(pspatializer: ptr maspatializer_436207979): cfloat {.
      cdecl, importc: "ma_spatializer_get_min_distance".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_min_distance" &
        " already exists, not redeclaring")
when not declared(madelayprocesspcmframes):
  proc madelayprocesspcmframes*(pdelay: ptr madelay_436208410;
                                pframesout: pointer; pframesin: pointer;
                                framecount: mauint32_436208046): maresult_436208042 {.
      cdecl, importc: "ma_delay_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_delay_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(mahpfuninit):
  proc mahpfuninit*(phpf: ptr mahpf_436208150;
                    pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_hpf_uninit".}
else:
  static :
    hint("Declaration of " & "ma_hpf_uninit" &
        " already exists, not redeclaring")
when not declared(maspatializerlistenergetvelocity):
  proc maspatializerlistenergetvelocity*(plistener: ptr maspatializerlistener_436208424): mavec3f_436208100 {.
      cdecl, importc: "ma_spatializer_listener_get_velocity".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_velocity" &
        " already exists, not redeclaring")
when not declared(mabiquadreinit):
  proc mabiquadreinit*(pconfig: ptr mabiquadconfig_436208134; pbq: ptr mabiquad_436208444): maresult_436208042 {.
      cdecl, importc: "ma_biquad_reinit".}
else:
  static :
    hint("Declaration of " & "ma_biquad_reinit" &
        " already exists, not redeclaring")
when not declared(mapagedaudiobufferdatagettail):
  proc mapagedaudiobufferdatagettail*(pdata: ptr mapagedaudiobufferdata_436208048): ptr mapagedaudiobufferpage_436208342 {.
      cdecl, importc: "ma_paged_audio_buffer_data_get_tail".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_get_tail" &
        " already exists, not redeclaring")
when not declared(madevicejobthreadnext):
  proc madevicejobthreadnext*(pjobthread: ptr madevicejobthread_436208466;
                              pjob: ptr majob_436207973): maresult_436208042 {.
      cdecl, importc: "ma_device_job_thread_next".}
else:
  static :
    hint("Declaration of " & "ma_device_job_thread_next" &
        " already exists, not redeclaring")
when not declared(madevicegetmastervolume):
  proc madevicegetmastervolume*(pdevice: ptr madevice_436208034;
                                pvolume: ptr cfloat): maresult_436208042 {.
      cdecl, importc: "ma_device_get_master_volume".}
else:
  static :
    hint("Declaration of " & "ma_device_get_master_volume" &
        " already exists, not redeclaring")
when not declared(maresourcemanagergetlog):
  proc maresourcemanagergetlog*(presourcemanager: ptr maresourcemanager_436208318): ptr malog_436207937 {.
      cdecl, importc: "ma_resource_manager_get_log".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_get_log" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatastreaminitw):
  proc maresourcemanagerdatastreaminitw*(
      presourcemanager: ptr maresourcemanager_436208318; pfilepath: ptr wchart_436208248;
      flags: mauint32_436208046;
      pnotifications: ptr maresourcemanagerpipelinenotifications_436208268;
      pdatastream: ptr maresourcemanagerdatastream_436207993): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_data_stream_init_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_init_w" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatasourcegetdataformat):
  proc maresourcemanagerdatasourcegetdataformat*(
      pdatasource: ptr maresourcemanagerdatasource_436208440;
      pformat: ptr maformat_436208208; pchannels: ptr mauint32_436208046;
      psamplerate: ptr mauint32_436208046; pchannelmap: ptr machannel_436208128;
      channelmapcap: csize_t): maresult_436208042 {.cdecl,
      importc: "ma_resource_manager_data_source_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_get_data_format" &
        " already exists, not redeclaring")
when not declared(mahishelfnodeconfiginit):
  proc mahishelfnodeconfiginit*(channels: mauint32_436208046;
                                samplerate: mauint32_436208046; gaindb: cdouble;
                                q: cdouble; frequency: cdouble): mahishelfnodeconfig_436208378 {.
      cdecl, importc: "ma_hishelf_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_hishelf_node_config_init" &
        " already exists, not redeclaring")
when not declared(masoundatend):
  proc masoundatend*(psound: ptr masound_436208210): mabool32_436207983 {.cdecl,
      importc: "ma_sound_at_end".}
else:
  static :
    hint("Declaration of " & "ma_sound_at_end" &
        " already exists, not redeclaring")
when not declared(masoundgetcursorinseconds):
  proc masoundgetcursorinseconds*(psound: ptr masound_436208210;
                                  pcursor: ptr cfloat): maresult_436208042 {.
      cdecl, importc: "ma_sound_get_cursor_in_seconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_cursor_in_seconds" &
        " already exists, not redeclaring")
when not declared(maaudiobuffergetavailableframes):
  proc maaudiobuffergetavailableframes*(paudiobuffer: ptr maaudiobuffer_436208298;
                                        pavailableframes: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_audio_buffer_get_available_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_get_available_frames" &
        " already exists, not redeclaring")
when not declared(mavfswrite):
  proc mavfswrite*(pvfs: pointer; file: mavfsfile_436208308; psrc: pointer;
                   sizeinbytes: csize_t; pbyteswritten: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_vfs_write".}
else:
  static :
    hint("Declaration of " & "ma_vfs_write" & " already exists, not redeclaring")
when not declared(maresourcemanagerdatabuffergetavailableframes):
  proc maresourcemanagerdatabuffergetavailableframes*(
      pdatabuffer: ptr maresourcemanagerdatabuffer_436208388;
      pavailableframes: ptr mauint64_436208386): maresult_436208042 {.cdecl,
      importc: "ma_resource_manager_data_buffer_get_available_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_buffer_get_available_frames" &
        " already exists, not redeclaring")
when not declared(maspatializerlisteneruninit):
  proc maspatializerlisteneruninit*(plistener: ptr maspatializerlistener_436208424;
      pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.cdecl,
      importc: "ma_spatializer_listener_uninit".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_uninit" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerunregisterfilew):
  proc maresourcemanagerunregisterfilew*(
      presourcemanager: ptr maresourcemanager_436208318; pfilepath: ptr wchart_436208248): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_unregister_file_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_unregister_file_w" &
        " already exists, not redeclaring")
when not declared(Mamaxdevicenamelength):
  when 255 is static:
    const
      Mamaxdevicenamelength* = 255 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:6543:9
  else:
    let Mamaxdevicenamelength* = 255 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:6543:9
else:
  static :
    hint("Declaration of " & "MA_MAX_DEVICE_NAME_LENGTH" &
        " already exists, not redeclaring")
when not declared(Maprivate):
  when staticanon is typedesc:
    type
      Maprivate* = staticanon ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3842:17
  else:
    when staticanon is static:
      const
        Maprivate* = staticanon ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3842:17
    else:
      let Maprivate* = staticanon ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3842:17
else:
  static :
    hint("Declaration of " & "MA_PRIVATE" & " already exists, not redeclaring")
when not declared(madelaynodesetwet):
  proc madelaynodesetwet*(pdelaynode: ptr madelaynode_436207969; value: cfloat): void {.
      cdecl, importc: "ma_delay_node_set_wet".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_set_wet" &
        " already exists, not redeclaring")
when not declared(madelaynodegetdry):
  proc madelaynodegetdry*(pdelaynode: ptr madelaynode_436207969): cfloat {.
      cdecl, importc: "ma_delay_node_get_dry".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_get_dry" &
        " already exists, not redeclaring")
when not declared(madatasourcegetnext):
  proc madatasourcegetnext*(pdatasource: pointer): pointer {.cdecl,
      importc: "ma_data_source_get_next".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_next" &
        " already exists, not redeclaring")
when not declared(manodeattachoutputbus):
  proc manodeattachoutputbus*(pnode: pointer; outputbusindex: mauint32_436208046;
                              pothernode: pointer;
                              othernodeinputbusindex: mauint32_436208046): maresult_436208042 {.
      cdecl, importc: "ma_node_attach_output_bus".}
else:
  static :
    hint("Declaration of " & "ma_node_attach_output_bus" &
        " already exists, not redeclaring")
when not declared(mabpf2reinit):
  proc mabpf2reinit*(pconfig: ptr mabpf2config_436208204; pbpf: ptr mabpf2_436208106): maresult_436208042 {.
      cdecl, importc: "ma_bpf2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_reinit" &
        " already exists, not redeclaring")
when not declared(maslotallocatoruninit):
  proc maslotallocatoruninit*(pallocator: ptr maslotallocator_436208398;
                              pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_slot_allocator_uninit".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_uninit" &
        " already exists, not redeclaring")
when not declared(masoundgroupgetpinnedlistenerindex):
  proc masoundgroupgetpinnedlistenerindex*(pgroup: ptr masoundgroup_436208146): mauint32_436208046 {.
      cdecl, importc: "ma_sound_group_get_pinned_listener_index".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_pinned_listener_index" &
        " already exists, not redeclaring")
when not declared(machannelmapisblank):
  proc machannelmapisblank*(pchannelmap: ptr machannel_436208128;
                            channels: mauint32_436208046): mabool32_436207983 {.
      cdecl, importc: "ma_channel_map_is_blank".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_is_blank" &
        " already exists, not redeclaring")
when not declared(mapagedaudiobuffergetlengthinpcmframes):
  proc mapagedaudiobuffergetlengthinpcmframes*(
      ppagedaudiobuffer: ptr mapagedaudiobuffer_436208026; plength: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_paged_audio_buffer_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(Mamaxnodelocalbuscount):
  when 2 is static:
    const
      Mamaxnodelocalbuscount* = 2 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10207:9
  else:
    let Mamaxnodelocalbuscount* = 2 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10207:9
else:
  static :
    hint("Declaration of " & "MA_MAX_NODE_LOCAL_BUS_COUNT" &
        " already exists, not redeclaring")
when not declared(mapcms16tof32):
  proc mapcms16tof32*(pout: pointer; pin: pointer; count: mauint64_436208386;
                      dithermode: madithermode_436208168): void {.cdecl,
      importc: "ma_pcm_s16_to_f32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s16_to_f32" &
        " already exists, not redeclaring")
when not declared(mahpfnodereinit):
  proc mahpfnodereinit*(pconfig: ptr mahpfconfig_436208460; pnode: ptr mahpfnode_436208142): maresult_436208042 {.
      cdecl, importc: "ma_hpf_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_hpf_node_reinit" &
        " already exists, not redeclaring")
when not declared(machannelconvertergetheapsize):
  proc machannelconvertergetheapsize*(pconfig: ptr machannelconverterconfig_436208392;
                                      pheapsizeinbytes: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_channel_converter_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_get_heap_size" &
        " already exists, not redeclaring")
when not declared(mapcms16tou8):
  proc mapcms16tou8*(pout: pointer; pin: pointer; count: mauint64_436208386;
                     dithermode: madithermode_436208168): void {.cdecl,
      importc: "ma_pcm_s16_to_u8".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s16_to_u8" &
        " already exists, not redeclaring")
when not declared(macopyandapplyvolumeandclipsamplesf32):
  proc macopyandapplyvolumeandclipsamplesf32*(pdst: ptr cfloat;
      psrc: ptr cfloat; count: mauint64_436208386; volume: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_and_clip_samples_f32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_and_clip_samples_f32" &
        " already exists, not redeclaring")
when not declared(mapeak2configinit):
  proc mapeak2configinit*(format: maformat_436208208; channels: mauint32_436208046;
                          samplerate: mauint32_436208046; gaindb: cdouble;
                          q: cdouble; frequency: cdouble): mapeak2config_436208196 {.
      cdecl, importc: "ma_peak2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_peak2_config_init" &
        " already exists, not redeclaring")
when not declared(macopyandapplyvolumefactorpcmframesu8):
  proc macopyandapplyvolumefactorpcmframesu8*(pframesout: ptr mauint8_436207941;
      pframesin: ptr mauint8_436207941; framecount: mauint64_436208386;
      channels: mauint32_436208046; factor: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_pcm_frames_u8".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_pcm_frames_u8" &
        " already exists, not redeclaring")
when not declared(manotchnodereinit):
  proc manotchnodereinit*(pconfig: ptr manotchconfig; pnode: ptr manotchnode_436208084): maresult_436208042 {.
      cdecl, importc: "ma_notch_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_notch_node_reinit" &
        " already exists, not redeclaring")
when not declared(masoundgetdirection):
  proc masoundgetdirection*(psound: ptr masound_436208210): mavec3f_436208100 {.
      cdecl, importc: "ma_sound_get_direction".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_direction" &
        " already exists, not redeclaring")
when not declared(marbavailableread):
  proc marbavailableread*(prb: ptr marb_436208144): mauint32_436208046 {.cdecl,
      importc: "ma_rb_available_read".}
else:
  static :
    hint("Declaration of " & "ma_rb_available_read" &
        " already exists, not redeclaring")
when not declared(maaudiobufferseektopcmframe):
  proc maaudiobufferseektopcmframe*(paudiobuffer: ptr maaudiobuffer_436208298;
                                    frameindex: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_audio_buffer_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(maasyncnotificationpollissignalled):
  proc maasyncnotificationpollissignalled*(
      pnotificationpoll: ptr maasyncnotificationpoll_436208052): mabool32_436207983 {.
      cdecl, importc: "ma_async_notification_poll_is_signalled".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_poll_is_signalled" &
        " already exists, not redeclaring")
when not declared(mawaveformconfiginit):
  proc mawaveformconfiginit*(format: maformat_436208208; channels: mauint32_436208046;
                             samplerate: mauint32_436208046;
                             typearg: mawaveformtype_436208136;
                             amplitude: cdouble; frequency: cdouble): mawaveformconfig_436208450 {.
      cdecl, importc: "ma_waveform_config_init".}
else:
  static :
    hint("Declaration of " & "ma_waveform_config_init" &
        " already exists, not redeclaring")
when not declared(malpf1getlatency):
  proc malpf1getlatency*(plpf: ptr malpf1_436208246): mauint32_436208046 {.
      cdecl, importc: "ma_lpf1_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_get_latency" &
        " already exists, not redeclaring")
when not declared(maapplyvolumefactorpcmframess24):
  proc maapplyvolumefactorpcmframess24*(pframes: pointer; framecount: mauint64_436208386;
                                        channels: mauint32_436208046;
                                        factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_pcm_frames_s24".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_pcm_frames_s24" &
        " already exists, not redeclaring")
when not declared(Maversionmajor):
  when 0 is static:
    const
      Maversionmajor* = 0    ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3641:9
  else:
    let Maversionmajor* = 0  ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3641:9
else:
  static :
    hint("Declaration of " & "MA_VERSION_MAJOR" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatastreaminitex):
  proc maresourcemanagerdatastreaminitex*(
      presourcemanager: ptr maresourcemanager_436208318;
      pconfig: ptr maresourcemanagerdatasourceconfig_436208322;
      pdatastream: ptr maresourcemanagerdatastream_436207993): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_data_stream_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_init_ex" &
        " already exists, not redeclaring")
when not declared(maenginenodeinitpreallocated):
  proc maenginenodeinitpreallocated*(pconfig: ptr maenginenodeconfig_436208278;
                                     pheap: pointer;
                                     penginenode: ptr maenginenode_436208402): maresult_436208042 {.
      cdecl, importc: "ma_engine_node_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_engine_node_init_preallocated" &
        " already exists, not redeclaring")
when not declared(malpfinitpreallocated):
  proc malpfinitpreallocated*(pconfig: ptr malpfconfig_436208114;
                              pheap: pointer; plpf: ptr malpf_436208422): maresult_436208042 {.
      cdecl, importc: "ma_lpf_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_lpf_init_preallocated" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatabufferislooping):
  proc maresourcemanagerdatabufferislooping*(
      pdatabuffer: ptr maresourcemanagerdatabuffer_436208388): mabool32_436207983 {.
      cdecl, importc: "ma_resource_manager_data_buffer_is_looping".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_is_looping" &
        " already exists, not redeclaring")
when not declared(maapplyvolumefactorf32):
  proc maapplyvolumefactorf32*(psamples: ptr cfloat; samplecount: mauint64_436208386;
                               factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_f32".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_f32" &
        " already exists, not redeclaring")
when not declared(madatasourcesetlooping):
  proc madatasourcesetlooping*(pdatasource: pointer; islooping: mabool32_436207983): maresult_436208042 {.
      cdecl, importc: "ma_data_source_set_looping".}
else:
  static :
    hint("Declaration of " & "ma_data_source_set_looping" &
        " already exists, not redeclaring")
when not declared(maloshelf2uninit):
  proc maloshelf2uninit*(pfilter: ptr maloshelf2_436208262;
                         pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_loshelf2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_uninit" &
        " already exists, not redeclaring")
when not declared(madatasourceislooping):
  proc madatasourceislooping*(pdatasource: pointer): mabool32_436207983 {.cdecl,
      importc: "ma_data_source_is_looping".}
else:
  static :
    hint("Declaration of " & "ma_data_source_is_looping" &
        " already exists, not redeclaring")
when not declared(mabpfreinit):
  proc mabpfreinit*(pconfig: ptr mabpfconfig_436208434; pbpf: ptr mabpf_436208074): maresult_436208042 {.
      cdecl, importc: "ma_bpf_reinit".}
else:
  static :
    hint("Declaration of " & "ma_bpf_reinit" &
        " already exists, not redeclaring")
when not declared(madelaygetwet):
  proc madelaygetwet*(pdelay: ptr madelay_436208410): cfloat {.cdecl,
      importc: "ma_delay_get_wet".}
else:
  static :
    hint("Declaration of " & "ma_delay_get_wet" &
        " already exists, not redeclaring")
when not declared(maenginenodegetheapsize):
  proc maenginenodegetheapsize*(pconfig: ptr maenginenodeconfig_436208278;
                                pheapsizeinbytes: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_engine_node_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_engine_node_get_heap_size" &
        " already exists, not redeclaring")
when not declared(masoundsetposition):
  proc masoundsetposition*(psound: ptr masound_436208210; x: cfloat; y: cfloat;
                           z: cfloat): void {.cdecl,
      importc: "ma_sound_set_position".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_position" &
        " already exists, not redeclaring")
when not declared(mapagedaudiobuffergetcursorinpcmframes):
  proc mapagedaudiobuffergetcursorinpcmframes*(
      ppagedaudiobuffer: ptr mapagedaudiobuffer_436208026; pcursor: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_paged_audio_buffer_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(majobqueueuninit):
  proc majobqueueuninit*(pqueue: ptr majobqueue_436208472;
                         pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_job_queue_uninit".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_uninit" &
        " already exists, not redeclaring")
when not declared(maapplyvolumefactors24):
  proc maapplyvolumefactors24*(psamples: pointer; samplecount: mauint64_436208386;
                               factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_s24".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_s24" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatasourceuninit):
  proc maresourcemanagerdatasourceuninit*(
      pdatasource: ptr maresourcemanagerdatasource_436208440): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_data_source_uninit".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_uninit" &
        " already exists, not redeclaring")
when not declared(mapcmrbinit):
  proc mapcmrbinit*(format: maformat_436208208; channels: mauint32_436208046;
                    buffersizeinframes: mauint32_436208046;
                    poptionalpreallocatedbuffer: pointer;
                    pallocationcallbacks: ptr maallocationcallbacks_436208126;
                    prb: ptr mapcmrb_436208404): maresult_436208042 {.cdecl,
      importc: "ma_pcm_rb_init".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_init" &
        " already exists, not redeclaring")
when not declared(madevicestart):
  proc madevicestart*(pdevice: ptr madevice_436208034): maresult_436208042 {.
      cdecl, importc: "ma_device_start".}
else:
  static :
    hint("Declaration of " & "ma_device_start" &
        " already exists, not redeclaring")
when not declared(Manodebuscountunknown):
  when 255 is static:
    const
      Manodebuscountunknown* = 255 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10211:9
  else:
    let Manodebuscountunknown* = 255 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10211:9
else:
  static :
    hint("Declaration of " & "MA_NODE_BUS_COUNT_UNKNOWN" &
        " already exists, not redeclaring")
when not declared(manodeinitpreallocated):
  proc manodeinitpreallocated*(pnodegraph: ptr manodegraph_436207933;
                               pconfig: ptr manodeconfig_436208017;
                               pheap: pointer; pnode: pointer): maresult_436208042 {.
      cdecl, importc: "ma_node_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_node_init_preallocated" &
        " already exists, not redeclaring")
when not declared(madataconverterprocesspcmframes):
  proc madataconverterprocesspcmframes*(pconverter: ptr madataconverter_436208226;
                                        pframesin: pointer;
                                        pframecountin: ptr mauint64_436208386;
                                        pframesout: pointer;
                                        pframecountout: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_data_converter_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(masoundseektopcmframe):
  proc masoundseektopcmframe*(psound: ptr masound_436208210;
                              frameindex: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_sound_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_sound_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(masoundgroupsetpositioning):
  proc masoundgroupsetpositioning*(pgroup: ptr masoundgroup_436208146;
                                   positioning: mapositioning_436208284): void {.
      cdecl, importc: "ma_sound_group_set_positioning".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_positioning" &
        " already exists, not redeclaring")
when not declared(mapagedaudiobufferdataappendpage):
  proc mapagedaudiobufferdataappendpage*(pdata: ptr mapagedaudiobufferdata_436208048;
      ppage: ptr mapagedaudiobufferpage_436208342): maresult_436208042 {.cdecl,
      importc: "ma_paged_audio_buffer_data_append_page".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_append_page" &
        " already exists, not redeclaring")
when not declared(mapannergetmode):
  proc mapannergetmode*(ppanner: ptr mapanner_436208458): mapanmode_436208380 {.
      cdecl, importc: "ma_panner_get_mode".}
else:
  static :
    hint("Declaration of " & "ma_panner_get_mode" &
        " already exists, not redeclaring")
when not declared(mapagedaudiobufferdatainit):
  proc mapagedaudiobufferdatainit*(format: maformat_436208208;
                                   channels: mauint32_436208046;
                                   pdata: ptr mapagedaudiobufferdata_436208048): maresult_436208042 {.
      cdecl, importc: "ma_paged_audio_buffer_data_init".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_init" &
        " already exists, not redeclaring")
when not declared(mahpfinitpreallocated):
  proc mahpfinitpreallocated*(pconfig: ptr mahpfconfig_436208460;
                              pheap: pointer; plpf: ptr mahpf_436208150): maresult_436208042 {.
      cdecl, importc: "ma_hpf_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_hpf_init_preallocated" &
        " already exists, not redeclaring")
when not declared(masoundgetcursorinpcmframes):
  proc masoundgetcursorinpcmframes*(psound: ptr masound_436208210;
                                    pcursor: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_sound_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(maspatializerlistenersetposition):
  proc maspatializerlistenersetposition*(plistener: ptr maspatializerlistener_436208424;
      x: cfloat; y: cfloat; z: cfloat): void {.cdecl,
      importc: "ma_spatializer_listener_set_position".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_position" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatasourcegetlengthinpcmframes):
  proc maresourcemanagerdatasourcegetlengthinpcmframes*(
      pdatasource: ptr maresourcemanagerdatasource_436208440;
      plength: ptr mauint64_436208386): maresult_436208042 {.cdecl,
      importc: "ma_resource_manager_data_source_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_source_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(manodegettime):
  proc manodegettime*(pnode: pointer): mauint64_436208386 {.cdecl,
      importc: "ma_node_get_time".}
else:
  static :
    hint("Declaration of " & "ma_node_get_time" &
        " already exists, not redeclaring")
when not declared(maapplyvolumefactors32):
  proc maapplyvolumefactors32*(psamples: ptr maint32_436208356;
                               samplecount: mauint64_436208386; factor: cfloat): void {.
      cdecl, importc: "ma_apply_volume_factor_s32".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_s32" &
        " already exists, not redeclaring")
when not declared(madelaysetdecay):
  proc madelaysetdecay*(pdelay: ptr madelay_436208410; value: cfloat): void {.
      cdecl, importc: "ma_delay_set_decay".}
else:
  static :
    hint("Declaration of " & "ma_delay_set_decay" &
        " already exists, not redeclaring")
when not declared(maaudiobufferinitcopy):
  proc maaudiobufferinitcopy*(pconfig: ptr maaudiobufferconfig_436208102;
                              paudiobuffer: ptr maaudiobuffer_436208298): maresult_436208042 {.
      cdecl, importc: "ma_audio_buffer_init_copy".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_init_copy" &
        " already exists, not redeclaring")
when not declared(madatasourcegetcurrent):
  proc madatasourcegetcurrent*(pdatasource: pointer): pointer {.cdecl,
      importc: "ma_data_source_get_current".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_current" &
        " already exists, not redeclaring")
when not declared(majobqueueconfiginit):
  proc majobqueueconfiginit*(flags: mauint32_436208046; capacity: mauint32_436208046): majobqueueconfig_436208306 {.
      cdecl, importc: "ma_job_queue_config_init".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_config_init" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatabuffergetcursorinpcmframes):
  proc maresourcemanagerdatabuffergetcursorinpcmframes*(
      pdatabuffer: ptr maresourcemanagerdatabuffer_436208388;
      pcursor: ptr mauint64_436208386): maresult_436208042 {.cdecl,
      importc: "ma_resource_manager_data_buffer_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_buffer_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatasourcegetcursorinpcmframes):
  proc maresourcemanagerdatasourcegetcursorinpcmframes*(
      pdatasource: ptr maresourcemanagerdatasource_436208440;
      pcursor: ptr mauint64_436208386): maresult_436208042 {.cdecl,
      importc: "ma_resource_manager_data_source_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_source_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(maaudiobufferrefinit):
  proc maaudiobufferrefinit*(format: maformat_436208208; channels: mauint32_436208046;
                             pdata: pointer; sizeinframes: mauint64_436208386;
                             paudiobufferref: ptr maaudiobufferref_436207997): maresult_436208042 {.
      cdecl, importc: "ma_audio_buffer_ref_init".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_init" &
        " already exists, not redeclaring")
when not declared(malpfuninit):
  proc malpfuninit*(plpf: ptr malpf_436208422;
                    pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_lpf_uninit".}
else:
  static :
    hint("Declaration of " & "ma_lpf_uninit" &
        " already exists, not redeclaring")
when not declared(malpf2initpreallocated):
  proc malpf2initpreallocated*(pconfig: ptr malpf2config; pheap: pointer;
                               phpf: ptr malpf2_436208290): maresult_436208042 {.
      cdecl, importc: "ma_lpf2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(mavfsseek):
  proc mavfsseek*(pvfs: pointer; file: mavfsfile_436208308; offset: maint64_436208330;
                  origin: maseekorigin_436208206): maresult_436208042 {.cdecl,
      importc: "ma_vfs_seek".}
else:
  static :
    hint("Declaration of " & "ma_vfs_seek" & " already exists, not redeclaring")
when not declared(malogleveltostring):
  proc malogleveltostring*(loglevel: mauint32_436208046): cstring {.cdecl,
      importc: "ma_log_level_to_string".}
else:
  static :
    hint("Declaration of " & "ma_log_level_to_string" &
        " already exists, not redeclaring")
when not declared(maclipsampless24):
  proc maclipsampless24*(pdst: ptr mauint8_436207941; psrc: ptr maint64_436208330;
                         count: mauint64_436208386): void {.cdecl,
      importc: "ma_clip_samples_s24".}
else:
  static :
    hint("Declaration of " & "ma_clip_samples_s24" &
        " already exists, not redeclaring")
when not declared(manodegraphconfiginit):
  proc manodegraphconfiginit*(channels: mauint32_436208046): manodegraphconfig_436208358 {.
      cdecl, importc: "ma_node_graph_config_init".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_config_init" &
        " already exists, not redeclaring")
when not declared(maencoderinitfile):
  proc maencoderinitfile*(pfilepath: cstring; pconfig: ptr maencoderconfig_436208162;
                          pencoder: ptr maencoder_436208040): maresult_436208042 {.
      cdecl, importc: "ma_encoder_init_file".}
else:
  static :
    hint("Declaration of " & "ma_encoder_init_file" &
        " already exists, not redeclaring")
when not declared(maloshelfnodeuninit):
  proc maloshelfnodeuninit*(pnode: ptr maloshelfnode_436208032;
                            pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_loshelf_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_loshelf_node_uninit" &
        " already exists, not redeclaring")
when not declared(maspatializerinitpreallocated):
  proc maspatializerinitpreallocated*(pconfig: ptr maspatializerconfig_436208082;
                                      pheap: pointer;
                                      pspatializer: ptr maspatializer_436207979): maresult_436208042 {.
      cdecl, importc: "ma_spatializer_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_init_preallocated" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatastreamgetavailableframes):
  proc maresourcemanagerdatastreamgetavailableframes*(
      pdatastream: ptr maresourcemanagerdatastream_436207993;
      pavailableframes: ptr mauint64_436208386): maresult_436208042 {.cdecl,
      importc: "ma_resource_manager_data_stream_get_available_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_stream_get_available_frames" &
        " already exists, not redeclaring")
when not declared(maloshelf2initpreallocated):
  proc maloshelf2initpreallocated*(pconfig: ptr maloshelf2config_436208064;
                                   pheap: pointer; pfilter: ptr maloshelf2_436208262): maresult_436208042 {.
      cdecl, importc: "ma_loshelf2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(masoundgroupgetdopplerfactor):
  proc masoundgroupgetdopplerfactor*(pgroup: ptr masoundgroup_436208146): cfloat {.
      cdecl, importc: "ma_sound_group_get_doppler_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_doppler_factor" &
        " already exists, not redeclaring")
when not declared(madatasourcenodesetlooping):
  proc madatasourcenodesetlooping*(pdatasourcenode: ptr madatasourcenode_436208166;
                                   islooping: mabool32_436207983): maresult_436208042 {.
      cdecl, importc: "ma_data_source_node_set_looping".}
else:
  static :
    hint("Declaration of " & "ma_data_source_node_set_looping" &
        " already exists, not redeclaring")
when not declared(madataconvertersetrateratio):
  proc madataconvertersetrateratio*(pconverter: ptr madataconverter_436208226;
                                    ratioinout: cfloat): maresult_436208042 {.
      cdecl, importc: "ma_data_converter_set_rate_ratio".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_set_rate_ratio" &
        " already exists, not redeclaring")
when not declared(machannelconverteruninit):
  proc machannelconverteruninit*(pconverter: ptr machannelconverter_436208186;
      pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.cdecl,
      importc: "ma_channel_converter_uninit".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_uninit" &
        " already exists, not redeclaring")
when not declared(mafaderconfiginit):
  proc mafaderconfiginit*(format: maformat_436208208; channels: mauint32_436208046;
                          samplerate: mauint32_436208046): mafaderconfig_436208408 {.
      cdecl, importc: "ma_fader_config_init".}
else:
  static :
    hint("Declaration of " & "ma_fader_config_init" &
        " already exists, not redeclaring")
when not declared(mapcms32tos24):
  proc mapcms32tos24*(pout: pointer; pin: pointer; count: mauint64_436208386;
                      dithermode: madithermode_436208168): void {.cdecl,
      importc: "ma_pcm_s32_to_s24".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s32_to_s24" &
        " already exists, not redeclaring")
when not declared(macopyandapplyvolumefactorf32):
  proc macopyandapplyvolumefactorf32*(psamplesout: ptr cfloat;
                                      psamplesin: ptr cfloat;
                                      samplecount: mauint64_436208386;
                                      factor: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_f32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_f32" &
        " already exists, not redeclaring")
when not declared(mapcmrbavailablewrite):
  proc mapcmrbavailablewrite*(prb: ptr mapcmrb_436208404): mauint32_436208046 {.
      cdecl, importc: "ma_pcm_rb_available_write".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_available_write" &
        " already exists, not redeclaring")
when not declared(Masimdalignment):
  when 32 is static:
    const
      Masimdalignment* = 32  ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3847:9
  else:
    let Masimdalignment* = 32 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3847:9
else:
  static :
    hint("Declaration of " & "MA_SIMD_ALIGNMENT" &
        " already exists, not redeclaring")
when not declared(maaudiobufferrefseektopcmframe):
  proc maaudiobufferrefseektopcmframe*(paudiobufferref: ptr maaudiobufferref_436207997;
                                       frameindex: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_audio_buffer_ref_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(malinearresamplerinit):
  proc malinearresamplerinit*(pconfig: ptr malinearresamplerconfig_436208038;
                              pallocationcallbacks: ptr maallocationcallbacks_436208126;
                              presampler: ptr malinearresampler_436208448): maresult_436208042 {.
      cdecl, importc: "ma_linear_resampler_init".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_init" &
        " already exists, not redeclaring")
when not declared(masoundinitfromdatasource):
  proc masoundinitfromdatasource*(pengine: ptr maengine_436208154;
                                  pdatasource: pointer; flags: mauint32_436208046;
                                  pgroup: ptr masoundgroup_436208146;
                                  psound: ptr masound_436208210): maresult_436208042 {.
      cdecl, importc: "ma_sound_init_from_data_source".}
else:
  static :
    hint("Declaration of " & "ma_sound_init_from_data_source" &
        " already exists, not redeclaring")
when not declared(maspatializerlistenergetspeedofsound):
  proc maspatializerlistenergetspeedofsound*(
      plistener: ptr maspatializerlistener_436208424): cfloat {.cdecl,
      importc: "ma_spatializer_listener_get_speed_of_sound".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_speed_of_sound" &
        " already exists, not redeclaring")
when not declared(mavolumedbtolinear):
  proc mavolumedbtolinear*(gain: cfloat): cfloat {.cdecl,
      importc: "ma_volume_db_to_linear".}
else:
  static :
    hint("Declaration of " & "ma_volume_db_to_linear" &
        " already exists, not redeclaring")
when not declared(mahpfprocesspcmframes):
  proc mahpfprocesspcmframes*(phpf: ptr mahpf_436208150; pframesout: pointer;
                              pframesin: pointer; framecount: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_hpf_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_hpf_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(mainterleavepcmframes):
  proc mainterleavepcmframes*(format: maformat_436208208; channels: mauint32_436208046;
                              framecount: mauint64_436208386;
                              ppdeinterleavedpcmframes: ptr pointer;
                              pinterleavedpcmframes: pointer): void {.cdecl,
      importc: "ma_interleave_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_interleave_pcm_frames" &
        " already exists, not redeclaring")
when not declared(maresamplergetinputlatency):
  proc maresamplergetinputlatency*(presampler: ptr maresampler_436207965): mauint64_436208386 {.
      cdecl, importc: "ma_resampler_get_input_latency".}
else:
  static :
    hint("Declaration of " & "ma_resampler_get_input_latency" &
        " already exists, not redeclaring")
when not declared(maeventinit):
  proc maeventinit*(pevent: ptr maevent_436208160): maresult_436208042 {.cdecl,
      importc: "ma_event_init".}
else:
  static :
    hint("Declaration of " & "ma_event_init" &
        " already exists, not redeclaring")
when not declared(Magnucinlinehint):
  when inline is typedesc:
    type
      Magnucinlinehint* = inline ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3802:17
  else:
    when inline is static:
      const
        Magnucinlinehint* = inline ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3802:17
    else:
      let Magnucinlinehint* = inline ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3802:17
else:
  static :
    hint("Declaration of " & "MA_GNUC_INLINE_HINT" &
        " already exists, not redeclaring")
when not declared(mahpf2configinit):
  proc mahpf2configinit*(format: maformat_436208208; channels: mauint32_436208046;
                         samplerate: mauint32_436208046;
                         cutofffrequency: cdouble; q: cdouble): mahpf2config {.
      cdecl, importc: "ma_hpf2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_config_init" &
        " already exists, not redeclaring")
when not declared(maresamplerreset):
  proc maresamplerreset*(presampler: ptr maresampler_436207965): maresult_436208042 {.
      cdecl, importc: "ma_resampler_reset".}
else:
  static :
    hint("Declaration of " & "ma_resampler_reset" &
        " already exists, not redeclaring")
when not declared(madatasourcesetnextcallback):
  proc madatasourcesetnextcallback*(pdatasource: pointer;
                                    ongetnext: madatasourcegetnextproc_436208013): maresult_436208042 {.
      cdecl, importc: "ma_data_source_set_next_callback".}
else:
  static :
    hint("Declaration of " & "ma_data_source_set_next_callback" &
        " already exists, not redeclaring")
when not declared(masoundgroupgetrolloff):
  proc masoundgroupgetrolloff*(pgroup: ptr masoundgroup_436208146): cfloat {.
      cdecl, importc: "ma_sound_group_get_rolloff".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_rolloff" &
        " already exists, not redeclaring")
when not declared(manodeuninit):
  proc manodeuninit*(pnode: pointer;
                     pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_node_uninit" &
        " already exists, not redeclaring")
when not declared(maenginestart):
  proc maenginestart*(pengine: ptr maengine_436208154): maresult_436208042 {.
      cdecl, importc: "ma_engine_start".}
else:
  static :
    hint("Declaration of " & "ma_engine_start" &
        " already exists, not redeclaring")
when not declared(mahishelf2initpreallocated):
  proc mahishelf2initpreallocated*(pconfig: ptr mahishelf2config_436208252;
                                   pheap: pointer; pfilter: ptr mahishelf2_436208192): maresult_436208042 {.
      cdecl, importc: "ma_hishelf2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(machannelconverterconfiginit):
  proc machannelconverterconfiginit*(format: maformat_436208208;
                                     channelsin: mauint32_436208046;
                                     pchannelmapin: ptr machannel_436208128;
                                     channelsout: mauint32_436208046;
                                     pchannelmapout: ptr machannel_436208128;
                                     mixingmode: machannelmixmode_436208454): machannelconverterconfig_436208392 {.
      cdecl, importc: "ma_channel_converter_config_init".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_config_init" &
        " already exists, not redeclaring")
when not declared(maaudiobuffermap):
  proc maaudiobuffermap*(paudiobuffer: ptr maaudiobuffer_436208298;
                         ppframesout: ptr pointer; pframecount: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_audio_buffer_map".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_map" &
        " already exists, not redeclaring")
when not declared(madecodememory):
  proc madecodememory*(pdata: pointer; datasize: csize_t;
                       pconfig: ptr madecoderconfig_436208200;
                       pframecountout: ptr mauint64_436208386;
                       pppcmframesout: ptr pointer): maresult_436208042 {.cdecl,
      importc: "ma_decode_memory".}
else:
  static :
    hint("Declaration of " & "ma_decode_memory" &
        " already exists, not redeclaring")
when not declared(majobqueueinit):
  proc majobqueueinit*(pconfig: ptr majobqueueconfig_436208306;
                       pallocationcallbacks: ptr maallocationcallbacks_436208126;
                       pqueue: ptr majobqueue_436208472): maresult_436208042 {.
      cdecl, importc: "ma_job_queue_init".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_init" &
        " already exists, not redeclaring")
when not declared(malinearresamplersetrateratio):
  proc malinearresamplersetrateratio*(presampler: ptr malinearresampler_436208448;
                                      ratioinout: cfloat): maresult_436208042 {.
      cdecl, importc: "ma_linear_resampler_set_rate_ratio".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_set_rate_ratio" &
        " already exists, not redeclaring")
when not declared(madataconvertergetinputchannelmap):
  proc madataconvertergetinputchannelmap*(pconverter: ptr madataconverter_436208226;
      pchannelmap: ptr machannel_436208128; channelmapcap: csize_t): maresult_436208042 {.
      cdecl, importc: "ma_data_converter_get_input_channel_map".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_input_channel_map" &
        " already exists, not redeclaring")
when not declared(maenginegetnodegraph):
  proc maenginegetnodegraph*(pengine: ptr maengine_436208154): ptr manodegraph_436207933 {.
      cdecl, importc: "ma_engine_get_node_graph".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_node_graph" &
        " already exists, not redeclaring")
when not declared(Maversionrevision):
  when 9 is static:
    const
      Maversionrevision* = 9 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3643:9
  else:
    let Maversionrevision* = 9 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3643:9
else:
  static :
    hint("Declaration of " & "MA_VERSION_REVISION" &
        " already exists, not redeclaring")
when not declared(macalculatebuffersizeinframesfromdescriptor):
  proc macalculatebuffersizeinframesfromdescriptor*(
      pdescriptor: ptr madevicedescriptor_436208274; nativesamplerate: mauint32_436208046;
      performanceprofile: maperformanceprofile_436208011): mauint32_436208046 {.
      cdecl, importc: "ma_calculate_buffer_size_in_frames_from_descriptor".}
else:
  static :
    hint("Declaration of " &
        "ma_calculate_buffer_size_in_frames_from_descriptor" &
        " already exists, not redeclaring")
when not declared(mabpf2configinit):
  proc mabpf2configinit*(format: maformat_436208208; channels: mauint32_436208046;
                         samplerate: mauint32_436208046;
                         cutofffrequency: cdouble; q: cdouble): mabpf2config_436208204 {.
      cdecl, importc: "ma_bpf2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_config_init" &
        " already exists, not redeclaring")
when not declared(machannelconvertergetoutputchannelmap):
  proc machannelconvertergetoutputchannelmap*(
      pconverter: ptr machannelconverter_436208186; pchannelmap: ptr machannel_436208128;
      channelmapcap: csize_t): maresult_436208042 {.cdecl,
      importc: "ma_channel_converter_get_output_channel_map".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_get_output_channel_map" &
        " already exists, not redeclaring")
when not declared(maengineuninit):
  proc maengineuninit*(pengine: ptr maengine_436208154): void {.cdecl,
      importc: "ma_engine_uninit".}
else:
  static :
    hint("Declaration of " & "ma_engine_uninit" &
        " already exists, not redeclaring")
when not declared(maspatializerlistenergetworldup):
  proc maspatializerlistenergetworldup*(plistener: ptr maspatializerlistener_436208424): mavec3f_436208100 {.
      cdecl, importc: "ma_spatializer_listener_get_world_up".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_world_up" &
        " already exists, not redeclaring")
when not declared(mapannerprocesspcmframes):
  proc mapannerprocesspcmframes*(ppanner: ptr mapanner_436208458;
                                 pframesout: pointer; pframesin: pointer;
                                 framecount: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_panner_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_panner_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(maencoderuninit):
  proc maencoderuninit*(pencoder: ptr maencoder_436208040): void {.cdecl,
      importc: "ma_encoder_uninit".}
else:
  static :
    hint("Declaration of " & "ma_encoder_uninit" &
        " already exists, not redeclaring")
when not declared(maenginelistenergetposition):
  proc maenginelistenergetposition*(pengine: ptr maengine_436208154;
                                    listenerindex: mauint32_436208046): mavec3f_436208100 {.
      cdecl, importc: "ma_engine_listener_get_position".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_get_position" &
        " already exists, not redeclaring")
when not declared(maasyncnotificationeventsignal):
  proc maasyncnotificationeventsignal*(pnotificationevent: ptr maasyncnotificationevent_436208468): maresult_436208042 {.
      cdecl, importc: "ma_async_notification_event_signal".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_event_signal" &
        " already exists, not redeclaring")
when not declared(maalignedfree):
  proc maalignedfree*(p: pointer;
                      pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_aligned_free".}
else:
  static :
    hint("Declaration of " & "ma_aligned_free" &
        " already exists, not redeclaring")
when not declared(mamutexunlock):
  proc mamutexunlock*(pmutex: ptr mamutex_436207955): void {.cdecl,
      importc: "ma_mutex_unlock".}
else:
  static :
    hint("Declaration of " & "ma_mutex_unlock" &
        " already exists, not redeclaring")
when not declared(malogpost):
  proc malogpost*(plog: ptr malog_436207937; level: mauint32_436208046;
                  pmessage: cstring): maresult_436208042 {.cdecl,
      importc: "ma_log_post".}
else:
  static :
    hint("Declaration of " & "ma_log_post" & " already exists, not redeclaring")
when not declared(maengineinit):
  proc maengineinit*(pconfig: ptr maengineconfig_436208382;
                     pengine: ptr maengine_436208154): maresult_436208042 {.
      cdecl, importc: "ma_engine_init".}
else:
  static :
    hint("Declaration of " & "ma_engine_init" &
        " already exists, not redeclaring")
when not declared(malpf1uninit):
  proc malpf1uninit*(plpf: ptr malpf1_436208246;
                     pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_lpf1_uninit".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_uninit" &
        " already exists, not redeclaring")
when not declared(masoundgroupsetstarttimeinpcmframes):
  proc masoundgroupsetstarttimeinpcmframes*(pgroup: ptr masoundgroup_436208146;
      absoluteglobaltimeinframes: mauint64_436208386): void {.cdecl,
      importc: "ma_sound_group_set_start_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_start_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(Maapi):
  when extern is typedesc:
    type
      Maapi* = extern        ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3841:17
  else:
    when extern is static:
      const
        Maapi* = extern      ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3841:17
    else:
      let Maapi* = extern    ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3841:17
else:
  static :
    hint("Declaration of " & "MA_API" & " already exists, not redeclaring")
when not declared(mavfsopenw):
  proc mavfsopenw*(pvfs: pointer; pfilepath: ptr wchart_436208248;
                   openmode: mauint32_436208046; pfile: ptr mavfsfile_436208308): maresult_436208042 {.
      cdecl, importc: "ma_vfs_open_w".}
else:
  static :
    hint("Declaration of " & "ma_vfs_open_w" &
        " already exists, not redeclaring")
when not declared(masoundgetpan):
  proc masoundgetpan*(psound: ptr masound_436208210): cfloat {.cdecl,
      importc: "ma_sound_get_pan".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_pan" &
        " already exists, not redeclaring")
when not declared(madatasourcenodeconfiginit):
  proc madatasourcenodeconfiginit*(pdatasource: pointer): madatasourcenodeconfig_436207935 {.
      cdecl, importc: "ma_data_source_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_data_source_node_config_init" &
        " already exists, not redeclaring")
when not declared(majobqueuepost):
  proc majobqueuepost*(pqueue: ptr majobqueue_436208472; pjob: ptr majob_436207973): maresult_436208042 {.
      cdecl, importc: "ma_job_queue_post".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_post" &
        " already exists, not redeclaring")
when not declared(maasyncnotificationeventwait):
  proc maasyncnotificationeventwait*(pnotificationevent: ptr maasyncnotificationevent_436208468): maresult_436208042 {.
      cdecl, importc: "ma_async_notification_event_wait".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_event_wait" &
        " already exists, not redeclaring")
when not declared(maresourcemanageruninit):
  proc maresourcemanageruninit*(presourcemanager: ptr maresourcemanager_436208318): void {.
      cdecl, importc: "ma_resource_manager_uninit".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_uninit" &
        " already exists, not redeclaring")
when not declared(mabiquadnodeconfiginit):
  proc mabiquadnodeconfiginit*(channels: mauint32_436208046; b0: cfloat;
                               b1: cfloat; b2: cfloat; a0: cfloat; a1: cfloat;
                               a2: cfloat): mabiquadnodeconfig_436208086 {.
      cdecl, importc: "ma_biquad_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_biquad_node_config_init" &
        " already exists, not redeclaring")
when not declared(masoundgroupisplaying):
  proc masoundgroupisplaying*(pgroup: ptr masoundgroup_436208146): mabool32_436207983 {.
      cdecl, importc: "ma_sound_group_is_playing".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_is_playing" &
        " already exists, not redeclaring")
when not declared(mahishelf2uninit):
  proc mahishelf2uninit*(pfilter: ptr mahishelf2_436208192;
                         pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_hishelf2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_uninit" &
        " already exists, not redeclaring")
when not declared(mapcmrbacquirewrite):
  proc mapcmrbacquirewrite*(prb: ptr mapcmrb_436208404;
                            psizeinframes: ptr mauint32_436208046;
                            ppbufferout: ptr pointer): maresult_436208042 {.
      cdecl, importc: "ma_pcm_rb_acquire_write".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_acquire_write" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatastreamreadpcmframes):
  proc maresourcemanagerdatastreamreadpcmframes*(
      pdatastream: ptr maresourcemanagerdatastream_436207993;
      pframesout: pointer; framecount: mauint64_436208386;
      pframesread: ptr mauint64_436208386): maresult_436208042 {.cdecl,
      importc: "ma_resource_manager_data_stream_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatasourceinitex):
  proc maresourcemanagerdatasourceinitex*(
      presourcemanager: ptr maresourcemanager_436208318;
      pconfig: ptr maresourcemanagerdatasourceconfig_436208322;
      pdatasource: ptr maresourcemanagerdatasource_436208440): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_data_source_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_init_ex" &
        " already exists, not redeclaring")
when not declared(Masoundsourcechannelcount):
  when 4294967295 is static:
    const
      Masoundsourcechannelcount* = 4294967295'i64 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10745:9
  else:
    let Masoundsourcechannelcount* = 4294967295'i64 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10745:9
else:
  static :
    hint("Declaration of " & "MA_SOUND_SOURCE_CHANNEL_COUNT" &
        " already exists, not redeclaring")
when not declared(magainersetgains):
  proc magainersetgains*(pgainer: ptr magainer_436208480; pnewgains: ptr cfloat): maresult_436208042 {.
      cdecl, importc: "ma_gainer_set_gains".}
else:
  static :
    hint("Declaration of " & "ma_gainer_set_gains" &
        " already exists, not redeclaring")
when not declared(macopyandapplyvolumefactorpcmframess32):
  proc macopyandapplyvolumefactorpcmframess32*(pframesout: ptr maint32_436208356;
      pframesin: ptr maint32_436208356; framecount: mauint64_436208386;
      channels: mauint32_436208046; factor: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_pcm_frames_s32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_pcm_frames_s32" &
        " already exists, not redeclaring")
when not declared(malogpostf):
  proc malogpostf*(plog: ptr malog_436207937; level: mauint32_436208046;
                   pformat: cstring): maresult_436208042 {.cdecl, varargs,
      importc: "ma_log_postf".}
else:
  static :
    hint("Declaration of " & "ma_log_postf" & " already exists, not redeclaring")
when not declared(macopyandapplyvolumeandclipsamplesu8):
  proc macopyandapplyvolumeandclipsamplesu8*(pdst: ptr mauint8_436207941;
      psrc: ptr maint16_436207975; count: mauint64_436208386; volume: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_and_clip_samples_u8".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_and_clip_samples_u8" &
        " already exists, not redeclaring")
when not declared(masoundgroupsetmaxdistance):
  proc masoundgroupsetmaxdistance*(pgroup: ptr masoundgroup_436208146;
                                   maxdistance: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_max_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_max_distance" &
        " already exists, not redeclaring")
when not declared(masoundgetdopplerfactor):
  proc masoundgetdopplerfactor*(psound: ptr masound_436208210): cfloat {.cdecl,
      importc: "ma_sound_get_doppler_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_doppler_factor" &
        " already exists, not redeclaring")
when not declared(maenginelistenergetdirection):
  proc maenginelistenergetdirection*(pengine: ptr maengine_436208154;
                                     listenerindex: mauint32_436208046): mavec3f_436208100 {.
      cdecl, importc: "ma_engine_listener_get_direction".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_get_direction" &
        " already exists, not redeclaring")
when not declared(mavfsclose):
  proc mavfsclose*(pvfs: pointer; file: mavfsfile_436208308): maresult_436208042 {.
      cdecl, importc: "ma_vfs_close".}
else:
  static :
    hint("Declaration of " & "ma_vfs_close" & " already exists, not redeclaring")
when not declared(manodegraphgettime):
  proc manodegraphgettime*(pnodegraph: ptr manodegraph_436207933): mauint64_436208386 {.
      cdecl, importc: "ma_node_graph_get_time".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_get_time" &
        " already exists, not redeclaring")
when not declared(mahpfinit):
  proc mahpfinit*(pconfig: ptr mahpfconfig_436208460;
                  pallocationcallbacks: ptr maallocationcallbacks_436208126;
                  phpf: ptr mahpf_436208150): maresult_436208042 {.cdecl,
      importc: "ma_hpf_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf_init" & " already exists, not redeclaring")
when not declared(macopyandapplyvolumeandclipsampless32):
  proc macopyandapplyvolumeandclipsampless32*(pdst: ptr maint32_436208356;
      psrc: ptr maint64_436208330; count: mauint64_436208386; volume: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_and_clip_samples_s32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_and_clip_samples_s32" &
        " already exists, not redeclaring")
when not declared(maspatializerlistenergetchannelmap):
  proc maspatializerlistenergetchannelmap*(plistener: ptr maspatializerlistener_436208424): ptr machannel_436208128 {.
      cdecl, importc: "ma_spatializer_listener_get_channel_map".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_channel_map" &
        " already exists, not redeclaring")
when not declared(marbacquirewrite):
  proc marbacquirewrite*(prb: ptr marb_436208144; psizeinbytes: ptr csize_t;
                         ppbufferout: ptr pointer): maresult_436208042 {.cdecl,
      importc: "ma_rb_acquire_write".}
else:
  static :
    hint("Declaration of " & "ma_rb_acquire_write" &
        " already exists, not redeclaring")
when not declared(masoundsetpanmode):
  proc masoundsetpanmode*(psound: ptr masound_436208210; panmode: mapanmode_436208380): void {.
      cdecl, importc: "ma_sound_set_pan_mode".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_pan_mode" &
        " already exists, not redeclaring")
when not declared(mapeaknodeinit):
  proc mapeaknodeinit*(pnodegraph: ptr manodegraph_436207933;
                       pconfig: ptr mapeaknodeconfig_436208280;
                       pallocationcallbacks: ptr maallocationcallbacks_436208126;
                       pnode: ptr mapeaknode_436208312): maresult_436208042 {.
      cdecl, importc: "ma_peak_node_init".}
else:
  static :
    hint("Declaration of " & "ma_peak_node_init" &
        " already exists, not redeclaring")
when not declared(maenginelistenergetvelocity):
  proc maenginelistenergetvelocity*(pengine: ptr maengine_436208154;
                                    listenerindex: mauint32_436208046): mavec3f_436208100 {.
      cdecl, importc: "ma_engine_listener_get_velocity".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_get_velocity" &
        " already exists, not redeclaring")
when not declared(masoundstart):
  proc masoundstart*(psound: ptr masound_436208210): maresult_436208042 {.cdecl,
      importc: "ma_sound_start".}
else:
  static :
    hint("Declaration of " & "ma_sound_start" &
        " already exists, not redeclaring")
when not declared(malpf2uninit):
  proc malpf2uninit*(plpf: ptr malpf2_436208290;
                     pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_lpf2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_uninit" &
        " already exists, not redeclaring")
when not declared(mabpf2init):
  proc mabpf2init*(pconfig: ptr mabpf2config_436208204;
                   pallocationcallbacks: ptr maallocationcallbacks_436208126;
                   pbpf: ptr mabpf2_436208106): maresult_436208042 {.cdecl,
      importc: "ma_bpf2_init".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_init" & " already exists, not redeclaring")
when not declared(maresamplerinitpreallocated):
  proc maresamplerinitpreallocated*(pconfig: ptr maresamplerconfig_436208178;
                                    pheap: pointer; presampler: ptr maresampler_436207965): maresult_436208042 {.
      cdecl, importc: "ma_resampler_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_resampler_init_preallocated" &
        " already exists, not redeclaring")
when not declared(masoundsetstoptimeinmilliseconds):
  proc masoundsetstoptimeinmilliseconds*(psound: ptr masound_436208210;
      absoluteglobaltimeinmilliseconds: mauint64_436208386): void {.cdecl,
      importc: "ma_sound_set_stop_time_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_stop_time_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(malinearresamplergetinputlatency):
  proc malinearresamplergetinputlatency*(presampler: ptr malinearresampler_436208448): mauint64_436208386 {.
      cdecl, importc: "ma_linear_resampler_get_input_latency".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_get_input_latency" &
        " already exists, not redeclaring")
when not declared(maresamplergetoutputlatency):
  proc maresamplergetoutputlatency*(presampler: ptr maresampler_436207965): mauint64_436208386 {.
      cdecl, importc: "ma_resampler_get_output_latency".}
else:
  static :
    hint("Declaration of " & "ma_resampler_get_output_latency" &
        " already exists, not redeclaring")
when not declared(masoundsetstoptimeinpcmframes):
  proc masoundsetstoptimeinpcmframes*(psound: ptr masound_436208210;
                                      absoluteglobaltimeinframes: mauint64_436208386): void {.
      cdecl, importc: "ma_sound_set_stop_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_stop_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(mapcmrbreset):
  proc mapcmrbreset*(prb: ptr mapcmrb_436208404): void {.cdecl,
      importc: "ma_pcm_rb_reset".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_reset" &
        " already exists, not redeclaring")
when not declared(marbacquireread):
  proc marbacquireread*(prb: ptr marb_436208144; psizeinbytes: ptr csize_t;
                        ppbufferout: ptr pointer): maresult_436208042 {.cdecl,
      importc: "ma_rb_acquire_read".}
else:
  static :
    hint("Declaration of " & "ma_rb_acquire_read" &
        " already exists, not redeclaring")
when not declared(maclipsamplesf32):
  proc maclipsamplesf32*(pdst: ptr cfloat; psrc: ptr cfloat; count: mauint64_436208386): void {.
      cdecl, importc: "ma_clip_samples_f32".}
else:
  static :
    hint("Declaration of " & "ma_clip_samples_f32" &
        " already exists, not redeclaring")
when not declared(Maversionminor):
  when 11 is static:
    const
      Maversionminor* = 11   ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3642:9
  else:
    let Maversionminor* = 11 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3642:9
else:
  static :
    hint("Declaration of " & "MA_VERSION_MINOR" &
        " already exists, not redeclaring")
when not declared(malogpostv):
  proc malogpostv*(plog: ptr malog_436207937; level: mauint32_436208046;
                   pformat: cstring): maresult_436208042 {.cdecl, varargs,
      importc: "ma_log_postv".}
else:
  static :
    hint("Declaration of " & "ma_log_postv" & " already exists, not redeclaring")
when not declared(marbseekread):
  proc marbseekread*(prb: ptr marb_436208144; offsetinbytes: csize_t): maresult_436208042 {.
      cdecl, importc: "ma_rb_seek_read".}
else:
  static :
    hint("Declaration of " & "ma_rb_seek_read" &
        " already exists, not redeclaring")
when not declared(mavolumelineartodb):
  proc mavolumelineartodb*(factor: cfloat): cfloat {.cdecl,
      importc: "ma_volume_linear_to_db".}
else:
  static :
    hint("Declaration of " & "ma_volume_linear_to_db" &
        " already exists, not redeclaring")
when not declared(maenginelistenersetvelocity):
  proc maenginelistenersetvelocity*(pengine: ptr maengine_436208154;
                                    listenerindex: mauint32_436208046;
                                    x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_engine_listener_set_velocity".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_set_velocity" &
        " already exists, not redeclaring")
when not declared(mapcmu8tos32):
  proc mapcmu8tos32*(pout: pointer; pin: pointer; count: mauint64_436208386;
                     dithermode: madithermode_436208168): void {.cdecl,
      importc: "ma_pcm_u8_to_s32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_u8_to_s32" &
        " already exists, not redeclaring")
when not declared(masoundgetdirectionalattenuationfactor):
  proc masoundgetdirectionalattenuationfactor*(psound: ptr masound_436208210): cfloat {.
      cdecl, importc: "ma_sound_get_directional_attenuation_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_directional_attenuation_factor" &
        " already exists, not redeclaring")
when not declared(maaudiobuffergetlengthinpcmframes):
  proc maaudiobuffergetlengthinpcmframes*(paudiobuffer: ptr maaudiobuffer_436208298;
      plength: ptr mauint64_436208386): maresult_436208042 {.cdecl,
      importc: "ma_audio_buffer_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(mapcmrbgetsubbufferptr):
  proc mapcmrbgetsubbufferptr*(prb: ptr mapcmrb_436208404;
                               subbufferindex: mauint32_436208046;
                               pbuffer: pointer): pointer {.cdecl,
      importc: "ma_pcm_rb_get_subbuffer_ptr".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_get_subbuffer_ptr" &
        " already exists, not redeclaring")
when not declared(masoundgetrolloff):
  proc masoundgetrolloff*(psound: ptr masound_436208210): cfloat {.cdecl,
      importc: "ma_sound_get_rolloff".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_rolloff" &
        " already exists, not redeclaring")
when not declared(mabpf2initpreallocated):
  proc mabpf2initpreallocated*(pconfig: ptr mabpf2config_436208204;
                               pheap: pointer; pbpf: ptr mabpf2_436208106): maresult_436208042 {.
      cdecl, importc: "ma_bpf2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(macalculatebuffersizeinframesfrommilliseconds):
  proc macalculatebuffersizeinframesfrommilliseconds*(
      buffersizeinmilliseconds: mauint32_436208046; samplerate: mauint32_436208046): mauint32_436208046 {.
      cdecl, importc: "ma_calculate_buffer_size_in_frames_from_milliseconds".}
else:
  static :
    hint("Declaration of " &
        "ma_calculate_buffer_size_in_frames_from_milliseconds" &
        " already exists, not redeclaring")
when not declared(malogregistercallback):
  proc malogregistercallback*(plog: ptr malog_436207937; callback: malogcallback_436207989): maresult_436208042 {.
      cdecl, importc: "ma_log_register_callback".}
else:
  static :
    hint("Declaration of " & "ma_log_register_callback" &
        " already exists, not redeclaring")
when not declared(maspatializerprocesspcmframes):
  proc maspatializerprocesspcmframes*(pspatializer: ptr maspatializer_436207979;
                                      plistener: ptr maspatializerlistener_436208424;
                                      pframesout: pointer; pframesin: pointer;
                                      framecount: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_spatializer_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(mapcmrbpointerdistance):
  proc mapcmrbpointerdistance*(prb: ptr mapcmrb_436208404): maint32_436208356 {.
      cdecl, importc: "ma_pcm_rb_pointer_distance".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_pointer_distance" &
        " already exists, not redeclaring")
when not declared(madataconvertergetoutputlatency):
  proc madataconvertergetoutputlatency*(pconverter: ptr madataconverter_436208226): mauint64_436208386 {.
      cdecl, importc: "ma_data_converter_get_output_latency".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_output_latency" &
        " already exists, not redeclaring")
when not declared(mafaderinit):
  proc mafaderinit*(pconfig: ptr mafaderconfig_436208408; pfader: ptr mafader_436208030): maresult_436208042 {.
      cdecl, importc: "ma_fader_init".}
else:
  static :
    hint("Declaration of " & "ma_fader_init" &
        " already exists, not redeclaring")
when not declared(masoundgetposition):
  proc masoundgetposition*(psound: ptr masound_436208210): mavec3f_436208100 {.
      cdecl, importc: "ma_sound_get_position".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_position" &
        " already exists, not redeclaring")
when not declared(mawaveformsettype):
  proc mawaveformsettype*(pwaveform: ptr mawaveform_436208368;
                          typearg: mawaveformtype_436208136): maresult_436208042 {.
      cdecl, importc: "ma_waveform_set_type".}
else:
  static :
    hint("Declaration of " & "ma_waveform_set_type" &
        " already exists, not redeclaring")
when not declared(maspatializergetposition):
  proc maspatializergetposition*(pspatializer: ptr maspatializer_436207979): mavec3f_436208100 {.
      cdecl, importc: "ma_spatializer_get_position".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_position" &
        " already exists, not redeclaring")
when not declared(mafencerelease):
  proc mafencerelease*(pfence: ptr mafence_436208110): maresult_436208042 {.
      cdecl, importc: "ma_fence_release".}
else:
  static :
    hint("Declaration of " & "ma_fence_release" &
        " already exists, not redeclaring")
when not declared(madatasourcegetnextcallback):
  proc madatasourcegetnextcallback*(pdatasource: pointer): madatasourcegetnextproc_436208013 {.
      cdecl, importc: "ma_data_source_get_next_callback".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_next_callback" &
        " already exists, not redeclaring")
when not declared(madevicegetcontext):
  proc madevicegetcontext*(pdevice: ptr madevice_436208034): ptr macontext_436208478 {.
      cdecl, importc: "ma_device_get_context".}
else:
  static :
    hint("Declaration of " & "ma_device_get_context" &
        " already exists, not redeclaring")
when not declared(maapplyvolumefactorpcmframesu8):
  proc maapplyvolumefactorpcmframesu8*(pframes: ptr mauint8_436207941;
                                       framecount: mauint64_436208386;
                                       channels: mauint32_436208046;
                                       factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_pcm_frames_u8".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_pcm_frames_u8" &
        " already exists, not redeclaring")
when not declared(maaudiobuffergetcursorinpcmframes):
  proc maaudiobuffergetcursorinpcmframes*(paudiobuffer: ptr maaudiobuffer_436208298;
      pcursor: ptr mauint64_436208386): maresult_436208042 {.cdecl,
      importc: "ma_audio_buffer_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(madataconvertergetexpectedoutputframecount):
  proc madataconvertergetexpectedoutputframecount*(
      pconverter: ptr madataconverter_436208226; inputframecount: mauint64_436208386;
      poutputframecount: ptr mauint64_436208386): maresult_436208042 {.cdecl,
      importc: "ma_data_converter_get_expected_output_frame_count".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_expected_output_frame_count" &
        " already exists, not redeclaring")
when not declared(mabiquadprocesspcmframes):
  proc mabiquadprocesspcmframes*(pbq: ptr mabiquad_436208444;
                                 pframesout: pointer; pframesin: pointer;
                                 framecount: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_biquad_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_biquad_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(masoundinitex):
  proc masoundinitex*(pengine: ptr maengine_436208154;
                      pconfig: ptr masoundconfig_436208314; psound: ptr masound_436208210): maresult_436208042 {.
      cdecl, importc: "ma_sound_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_sound_init_ex" &
        " already exists, not redeclaring")
when not declared(madatasourcesetcurrent):
  proc madatasourcesetcurrent*(pdatasource: pointer; pcurrentdatasource: pointer): maresult_436208042 {.
      cdecl, importc: "ma_data_source_set_current".}
else:
  static :
    hint("Declaration of " & "ma_data_source_set_current" &
        " already exists, not redeclaring")
when not declared(manodegraphgetchannels):
  proc manodegraphgetchannels*(pnodegraph: ptr manodegraph_436207933): mauint32_436208046 {.
      cdecl, importc: "ma_node_graph_get_channels".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_get_channels" &
        " already exists, not redeclaring")
when not declared(mapagedaudiobufferdatagethead):
  proc mapagedaudiobufferdatagethead*(pdata: ptr mapagedaudiobufferdata_436208048): ptr mapagedaudiobufferpage_436208342 {.
      cdecl, importc: "ma_paged_audio_buffer_data_get_head".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_get_head" &
        " already exists, not redeclaring")
when not declared(madataconverterconfiginitdefault):
  proc madataconverterconfiginitdefault*(): madataconverterconfig_436208256 {.
      cdecl, importc: "ma_data_converter_config_init_default".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_config_init_default" &
        " already exists, not redeclaring")
when not declared(maenginelistenergetcone):
  proc maenginelistenergetcone*(pengine: ptr maengine_436208154;
                                listenerindex: mauint32_436208046;
                                pinnerangleinradians: ptr cfloat;
                                pouterangleinradians: ptr cfloat;
                                poutergain: ptr cfloat): void {.cdecl,
      importc: "ma_engine_listener_get_cone".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_get_cone" &
        " already exists, not redeclaring")
when not declared(maspatializerconfiginit):
  proc maspatializerconfiginit*(channelsin: mauint32_436208046;
                                channelsout: mauint32_436208046): maspatializerconfig_436208082 {.
      cdecl, importc: "ma_spatializer_config_init".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_config_init" &
        " already exists, not redeclaring")
when not declared(maisbackendenabled):
  proc maisbackendenabled*(backend: mabackend_436208370): mabool32_436207983 {.
      cdecl, importc: "ma_is_backend_enabled".}
else:
  static :
    hint("Declaration of " & "ma_is_backend_enabled" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatabufferseektopcmframe):
  proc maresourcemanagerdatabufferseektopcmframe*(
      pdatabuffer: ptr maresourcemanagerdatabuffer_436208388;
      frameindex: mauint64_436208386): maresult_436208042 {.cdecl,
      importc: "ma_resource_manager_data_buffer_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(Majobtyperesourcemanagerqueueflagnonblocking):
  when Majobqueueflagnonblocking is typedesc:
    type
      Majobtyperesourcemanagerqueueflagnonblocking* = Majobqueueflagnonblocking ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9930:9
  else:
    when Majobqueueflagnonblocking is static:
      const
        Majobtyperesourcemanagerqueueflagnonblocking* = Majobqueueflagnonblocking ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9930:9
    else:
      let Majobtyperesourcemanagerqueueflagnonblocking* = Majobqueueflagnonblocking ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9930:9
else:
  static :
    hint("Declaration of " &
        "MA_JOB_TYPE_RESOURCE_MANAGER_QUEUE_FLAG_NON_BLOCKING" &
        " already exists, not redeclaring")
when not declared(mapagedaudiobufferdataallocateandappendpage):
  proc mapagedaudiobufferdataallocateandappendpage*(
      pdata: ptr mapagedaudiobufferdata_436208048; pagesizeinframes: mauint32_436208046;
      pinitialdata: pointer; pallocationcallbacks: ptr maallocationcallbacks_436208126): maresult_436208042 {.
      cdecl, importc: "ma_paged_audio_buffer_data_allocate_and_append_page".}
else:
  static :
    hint("Declaration of " &
        "ma_paged_audio_buffer_data_allocate_and_append_page" &
        " already exists, not redeclaring")
when not declared(maenginegetlistenercount):
  proc maenginegetlistenercount*(pengine: ptr maengine_436208154): mauint32_436208046 {.
      cdecl, importc: "ma_engine_get_listener_count".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_listener_count" &
        " already exists, not redeclaring")
when not declared(maversion):
  proc maversion*(pmajor: ptr mauint32_436208046; pminor: ptr mauint32_436208046;
                  prevision: ptr mauint32_436208046): void {.cdecl,
      importc: "ma_version".}
else:
  static :
    hint("Declaration of " & "ma_version" & " already exists, not redeclaring")
when not declared(maapplyvolumefactorpcmframes):
  proc maapplyvolumefactorpcmframes*(pframes: pointer; framecount: mauint64_436208386;
                                     format: maformat_436208208;
                                     channels: mauint32_436208046;
                                     factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_pcm_frames" &
        " already exists, not redeclaring")
when not declared(mavfsinfo):
  proc mavfsinfo*(pvfs: pointer; file: mavfsfile_436208308;
                  pinfo: ptr mafileinfo_436208130): maresult_436208042 {.cdecl,
      importc: "ma_vfs_info".}
else:
  static :
    hint("Declaration of " & "ma_vfs_info" & " already exists, not redeclaring")
when not declared(maspatializergetinputchannels):
  proc maspatializergetinputchannels*(pspatializer: ptr maspatializer_436207979): mauint32_436208046 {.
      cdecl, importc: "ma_spatializer_get_input_channels".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_input_channels" &
        " already exists, not redeclaring")
when not declared(marbcommitread):
  proc marbcommitread*(prb: ptr marb_436208144; sizeinbytes: csize_t): maresult_436208042 {.
      cdecl, importc: "ma_rb_commit_read".}
else:
  static :
    hint("Declaration of " & "ma_rb_commit_read" &
        " already exists, not redeclaring")
when not declared(malpfnodeinit):
  proc malpfnodeinit*(pnodegraph: ptr manodegraph_436207933;
                      pconfig: ptr malpfnodeconfig_436207963;
                      pallocationcallbacks: ptr maallocationcallbacks_436208126;
                      pnode: ptr malpfnode_436208348): maresult_436208042 {.
      cdecl, importc: "ma_lpf_node_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf_node_init" &
        " already exists, not redeclaring")
when not declared(mabpf2processpcmframes):
  proc mabpf2processpcmframes*(pbpf: ptr mabpf2_436208106; pframesout: pointer;
                               pframesin: pointer; framecount: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_bpf2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(manotch2getlatency):
  proc manotch2getlatency*(pfilter: ptr manotch2_436208244): mauint32_436208046 {.
      cdecl, importc: "ma_notch2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_notch2_get_latency" &
        " already exists, not redeclaring")
when not declared(maenginelistenersetenabled):
  proc maenginelistenersetenabled*(pengine: ptr maengine_436208154;
                                   listenerindex: mauint32_436208046;
                                   isenabled: mabool32_436207983): void {.cdecl,
      importc: "ma_engine_listener_set_enabled".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_set_enabled" &
        " already exists, not redeclaring")
when not declared(masoundgetengine):
  proc masoundgetengine*(psound: ptr masound_436208210): ptr maengine_436208154 {.
      cdecl, importc: "ma_sound_get_engine".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_engine" &
        " already exists, not redeclaring")
when not declared(malpfprocesspcmframes):
  proc malpfprocesspcmframes*(plpf: ptr malpf_436208422; pframesout: pointer;
                              pframesin: pointer; framecount: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_lpf_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_lpf_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(malinearresamplerinitpreallocated):
  proc malinearresamplerinitpreallocated*(pconfig: ptr malinearresamplerconfig_436208038;
      pheap: pointer; presampler: ptr malinearresampler_436208448): maresult_436208042 {.
      cdecl, importc: "ma_linear_resampler_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_init_preallocated" &
        " already exists, not redeclaring")
when not declared(maenginegetendpoint):
  proc maenginegetendpoint*(pengine: ptr maengine_436208154): pointer {.cdecl,
      importc: "ma_engine_get_endpoint".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_endpoint" &
        " already exists, not redeclaring")
when not declared(marbavailablewrite):
  proc marbavailablewrite*(prb: ptr marb_436208144): mauint32_436208046 {.cdecl,
      importc: "ma_rb_available_write".}
else:
  static :
    hint("Declaration of " & "ma_rb_available_write" &
        " already exists, not redeclaring")
when not declared(maaudiobufferrefatend):
  proc maaudiobufferrefatend*(paudiobufferref: ptr maaudiobufferref_436207997): mabool32_436207983 {.
      cdecl, importc: "ma_audio_buffer_ref_at_end".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_at_end" &
        " already exists, not redeclaring")
when not declared(maslotallocatorfree):
  proc maslotallocatorfree*(pallocator: ptr maslotallocator_436208398;
                            slot: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_slot_allocator_free".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_free" &
        " already exists, not redeclaring")
when not declared(mawaveformseektopcmframe):
  proc mawaveformseektopcmframe*(pwaveform: ptr mawaveform_436208368;
                                 frameindex: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_waveform_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_waveform_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(magainersetgain):
  proc magainersetgain*(pgainer: ptr magainer_436208480; newgain: cfloat): maresult_436208042 {.
      cdecl, importc: "ma_gainer_set_gain".}
else:
  static :
    hint("Declaration of " & "ma_gainer_set_gain" &
        " already exists, not redeclaring")
when not declared(maenginenodeconfiginit):
  proc maenginenodeconfiginit*(pengine: ptr maengine_436208154;
                               typearg: maenginenodetype_436208072;
                               flags: mauint32_436208046): maenginenodeconfig_436208278 {.
      cdecl, importc: "ma_engine_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_engine_node_config_init" &
        " already exists, not redeclaring")
when not declared(masoundgetcone):
  proc masoundgetcone*(psound: ptr masound_436208210;
                       pinnerangleinradians: ptr cfloat;
                       pouterangleinradians: ptr cfloat; poutergain: ptr cfloat): void {.
      cdecl, importc: "ma_sound_get_cone".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_cone" &
        " already exists, not redeclaring")
when not declared(maspatializersetdopplerfactor):
  proc maspatializersetdopplerfactor*(pspatializer: ptr maspatializer_436207979;
                                      dopplerfactor: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_doppler_factor".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_doppler_factor" &
        " already exists, not redeclaring")
when not declared(maeventuninit):
  proc maeventuninit*(pevent: ptr maevent_436208160): void {.cdecl,
      importc: "ma_event_uninit".}
else:
  static :
    hint("Declaration of " & "ma_event_uninit" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatabufferreadpcmframes):
  proc maresourcemanagerdatabufferreadpcmframes*(
      pdatabuffer: ptr maresourcemanagerdatabuffer_436208388;
      pframesout: pointer; framecount: mauint64_436208386;
      pframesread: ptr mauint64_436208386): maresult_436208042 {.cdecl,
      importc: "ma_resource_manager_data_buffer_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(masoundgroupstart):
  proc masoundgroupstart*(pgroup: ptr masoundgroup_436208146): maresult_436208042 {.
      cdecl, importc: "ma_sound_group_start".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_start" &
        " already exists, not redeclaring")
when not declared(maspatializeruninit):
  proc maspatializeruninit*(pspatializer: ptr maspatializer_436207979;
                            pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_spatializer_uninit".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_uninit" &
        " already exists, not redeclaring")
when not declared(mapcmu8tof32):
  proc mapcmu8tof32*(pout: pointer; pin: pointer; count: mauint64_436208386;
                     dithermode: madithermode_436208168): void {.cdecl,
      importc: "ma_pcm_u8_to_f32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_u8_to_f32" &
        " already exists, not redeclaring")
when not declared(masoundsetattenuationmodel):
  proc masoundsetattenuationmodel*(psound: ptr masound_436208210;
                                   attenuationmodel: maattenuationmodel_436207961): void {.
      cdecl, importc: "ma_sound_set_attenuation_model".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_attenuation_model" &
        " already exists, not redeclaring")
when not declared(maspatializergetmaxdistance):
  proc maspatializergetmaxdistance*(pspatializer: ptr maspatializer_436207979): cfloat {.
      cdecl, importc: "ma_spatializer_get_max_distance".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_max_distance" &
        " already exists, not redeclaring")
when not declared(manodegraphsettime):
  proc manodegraphsettime*(pnodegraph: ptr manodegraph_436207933;
                           globaltime: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_node_graph_set_time".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_set_time" &
        " already exists, not redeclaring")
when not declared(maengineconfiginit):
  proc maengineconfiginit*(): maengineconfig_436208382 {.cdecl,
      importc: "ma_engine_config_init".}
else:
  static :
    hint("Declaration of " & "ma_engine_config_init" &
        " already exists, not redeclaring")
when not declared(masoundsetdirection):
  proc masoundsetdirection*(psound: ptr masound_436208210; x: cfloat; y: cfloat;
                            z: cfloat): void {.cdecl,
      importc: "ma_sound_set_direction".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_direction" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerjobqueueconfig):
  when majobqueueconfig_436208306 is typedesc:
    type
      maresourcemanagerjobqueueconfig* = majobqueueconfig_436208306 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9931:9
  else:
    when majobqueueconfig_436208306 is static:
      const
        maresourcemanagerjobqueueconfig* = majobqueueconfig_436208306 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9931:9
    else:
      let maresourcemanagerjobqueueconfig* = majobqueueconfig_436208306 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9931:9
else:
  static :
    hint("Declaration of " & "ma_resource_manager_job_queue_config" &
        " already exists, not redeclaring")
when not declared(manotch2initpreallocated):
  proc manotch2initpreallocated*(pconfig: ptr manotch2config_436208132;
                                 pheap: pointer; pfilter: ptr manotch2_436208244): maresult_436208042 {.
      cdecl, importc: "ma_notch2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_notch2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(maspatializerlistenerinitpreallocated):
  proc maspatializerlistenerinitpreallocated*(
      pconfig: ptr maspatializerlistenerconfig_436208336; pheap: pointer;
      plistener: ptr maspatializerlistener_436208424): maresult_436208042 {.
      cdecl, importc: "ma_spatializer_listener_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_init_preallocated" &
        " already exists, not redeclaring")
when not declared(macopyandapplyvolumefactorpcmframess24):
  proc macopyandapplyvolumefactorpcmframess24*(pframesout: pointer;
      pframesin: pointer; framecount: mauint64_436208386; channels: mauint32_436208046;
      factor: cfloat): void {.cdecl, importc: "ma_copy_and_apply_volume_factor_pcm_frames_s24".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_pcm_frames_s24" &
        " already exists, not redeclaring")
when not declared(maloshelf2init):
  proc maloshelf2init*(pconfig: ptr maloshelf2config_436208064;
                       pallocationcallbacks: ptr maallocationcallbacks_436208126;
                       pfilter: ptr maloshelf2_436208262): maresult_436208042 {.
      cdecl, importc: "ma_loshelf2_init".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_init" &
        " already exists, not redeclaring")
when not declared(maaudiobufferuninit):
  proc maaudiobufferuninit*(paudiobuffer: ptr maaudiobuffer_436208298): void {.
      cdecl, importc: "ma_audio_buffer_uninit".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_uninit" &
        " already exists, not redeclaring")
when not declared(maaudiobufferatend):
  proc maaudiobufferatend*(paudiobuffer: ptr maaudiobuffer_436208298): mabool32_436207983 {.
      cdecl, importc: "ma_audio_buffer_at_end".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_at_end" &
        " already exists, not redeclaring")
when not declared(maspatializersetdirection):
  proc maspatializersetdirection*(pspatializer: ptr maspatializer_436207979;
                                  x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_spatializer_set_direction".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_direction" &
        " already exists, not redeclaring")
when not declared(maspatializergetdopplerfactor):
  proc maspatializergetdopplerfactor*(pspatializer: ptr maspatializer_436207979): cfloat {.
      cdecl, importc: "ma_spatializer_get_doppler_factor".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_doppler_factor" &
        " already exists, not redeclaring")
when not declared(madeviceuninit):
  proc madeviceuninit*(pdevice: ptr madevice_436208034): void {.cdecl,
      importc: "ma_device_uninit".}
else:
  static :
    hint("Declaration of " & "ma_device_uninit" &
        " already exists, not redeclaring")
when not declared(madecoderinitfile):
  proc madecoderinitfile*(pfilepath: cstring; pconfig: ptr madecoderconfig_436208200;
                          pdecoder: ptr madecoder_436208076): maresult_436208042 {.
      cdecl, importc: "ma_decoder_init_file".}
else:
  static :
    hint("Declaration of " & "ma_decoder_init_file" &
        " already exists, not redeclaring")
when not declared(mapeaknodeuninit):
  proc mapeaknodeuninit*(pnode: ptr mapeaknode_436208312;
                         pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_peak_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_peak_node_uninit" &
        " already exists, not redeclaring")
when not declared(malpf1configinit):
  proc malpf1configinit*(format: maformat_436208208; channels: mauint32_436208046;
                         samplerate: mauint32_436208046;
                         cutofffrequency: cdouble): malpf1config_436207991 {.
      cdecl, importc: "ma_lpf1_config_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_config_init" &
        " already exists, not redeclaring")
when not declared(manodegetoutputbuscount):
  proc manodegetoutputbuscount*(pnode: pointer): mauint32_436208046 {.cdecl,
      importc: "ma_node_get_output_bus_count".}
else:
  static :
    hint("Declaration of " & "ma_node_get_output_bus_count" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatabufferuninit):
  proc maresourcemanagerdatabufferuninit*(
      pdatabuffer: ptr maresourcemanagerdatabuffer_436208388): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_data_buffer_uninit".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_uninit" &
        " already exists, not redeclaring")
when not declared(mahpf2getheapsize):
  proc mahpf2getheapsize*(pconfig: ptr mahpf2config;
                          pheapsizeinbytes: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_hpf2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(maslotallocatoralloc):
  proc maslotallocatoralloc*(pallocator: ptr maslotallocator_436208398;
                             pslot: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_slot_allocator_alloc".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_alloc" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatasourceresult):
  proc maresourcemanagerdatasourceresult*(
      pdatasource: ptr maresourcemanagerdatasource_436208440): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_data_source_result".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_result" &
        " already exists, not redeclaring")
when not declared(masoundgroupgetposition):
  proc masoundgroupgetposition*(pgroup: ptr masoundgroup_436208146): mavec3f_436208100 {.
      cdecl, importc: "ma_sound_group_get_position".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_position" &
        " already exists, not redeclaring")
when not declared(maspatializerlistenersetvelocity):
  proc maspatializerlistenersetvelocity*(plistener: ptr maspatializerlistener_436208424;
      x: cfloat; y: cfloat; z: cfloat): void {.cdecl,
      importc: "ma_spatializer_listener_set_velocity".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_velocity" &
        " already exists, not redeclaring")
when not declared(masoundgroupgetmindistance):
  proc masoundgroupgetmindistance*(pgroup: ptr masoundgroup_436208146): cfloat {.
      cdecl, importc: "ma_sound_group_get_min_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_min_distance" &
        " already exists, not redeclaring")
when not declared(mabpf2uninit):
  proc mabpf2uninit*(pbpf: ptr mabpf2_436208106;
                     pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_bpf2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_uninit" &
        " already exists, not redeclaring")
when not declared(mamutexuninit):
  proc mamutexuninit*(pmutex: ptr mamutex_436207955): void {.cdecl,
      importc: "ma_mutex_uninit".}
else:
  static :
    hint("Declaration of " & "ma_mutex_uninit" &
        " already exists, not redeclaring")
when not declared(mahpf2initpreallocated):
  proc mahpf2initpreallocated*(pconfig: ptr mahpf2config; pheap: pointer;
                               phpf: ptr mahpf2_436208366): maresult_436208042 {.
      cdecl, importc: "ma_hpf2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(mahishelf2getlatency):
  proc mahishelf2getlatency*(pfilter: ptr mahishelf2_436208192): mauint32_436208046 {.
      cdecl, importc: "ma_hishelf2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_get_latency" &
        " already exists, not redeclaring")
when not declared(mapcms24tos32):
  proc mapcms24tos32*(pout: pointer; pin: pointer; count: mauint64_436208386;
                      dithermode: madithermode_436208168): void {.cdecl,
      importc: "ma_pcm_s24_to_s32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s24_to_s32" &
        " already exists, not redeclaring")
when not declared(macontextsizeof):
  proc macontextsizeof*(): csize_t {.cdecl, importc: "ma_context_sizeof".}
else:
  static :
    hint("Declaration of " & "ma_context_sizeof" &
        " already exists, not redeclaring")
when not declared(macopypcmframes):
  proc macopypcmframes*(dst: pointer; src: pointer; framecount: mauint64_436208386;
                        format: maformat_436208208; channels: mauint32_436208046): void {.
      cdecl, importc: "ma_copy_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_copy_pcm_frames" &
        " already exists, not redeclaring")
when not declared(maapplyvolumefactoru8):
  proc maapplyvolumefactoru8*(psamples: ptr mauint8_436207941;
                              samplecount: mauint64_436208386; factor: cfloat): void {.
      cdecl, importc: "ma_apply_volume_factor_u8".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_u8" &
        " already exists, not redeclaring")
when not declared(mapeaknodeconfiginit):
  proc mapeaknodeconfiginit*(channels: mauint32_436208046; samplerate: mauint32_436208046;
                             gaindb: cdouble; q: cdouble; frequency: cdouble): mapeaknodeconfig_436208280 {.
      cdecl, importc: "ma_peak_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_peak_node_config_init" &
        " already exists, not redeclaring")
when not declared(magainerconfiginit):
  proc magainerconfiginit*(channels: mauint32_436208046;
                           smoothtimeinframes: mauint32_436208046): magainerconfig_436208476 {.
      cdecl, importc: "ma_gainer_config_init".}
else:
  static :
    hint("Declaration of " & "ma_gainer_config_init" &
        " already exists, not redeclaring")
when not declared(madevicesetmastervolume):
  proc madevicesetmastervolume*(pdevice: ptr madevice_436208034; volume: cfloat): maresult_436208042 {.
      cdecl, importc: "ma_device_set_master_volume".}
else:
  static :
    hint("Declaration of " & "ma_device_set_master_volume" &
        " already exists, not redeclaring")
when not declared(madatasourcegetrangeinpcmframes):
  proc madatasourcegetrangeinpcmframes*(pdatasource: pointer;
                                        prangebeginframes: ptr mauint64_436208386;
                                        prangeendinframes: ptr mauint64_436208386): void {.
      cdecl, importc: "ma_data_source_get_range_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_range_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(maresamplergetexpectedoutputframecount):
  proc maresamplergetexpectedoutputframecount*(presampler: ptr maresampler_436207965;
      inputframecount: mauint64_436208386; poutputframecount: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_resampler_get_expected_output_frame_count".}
else:
  static :
    hint("Declaration of " & "ma_resampler_get_expected_output_frame_count" &
        " already exists, not redeclaring")
when not declared(mahpfnodeuninit):
  proc mahpfnodeuninit*(pnode: ptr mahpfnode_436208142;
                        pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_hpf_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_hpf_node_uninit" &
        " already exists, not redeclaring")
when not declared(magainerinitpreallocated):
  proc magainerinitpreallocated*(pconfig: ptr magainerconfig_436208476;
                                 pheap: pointer; pgainer: ptr magainer_436208480): maresult_436208042 {.
      cdecl, importc: "ma_gainer_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_gainer_init_preallocated" &
        " already exists, not redeclaring")
when not declared(mahpf2init):
  proc mahpf2init*(pconfig: ptr mahpf2config;
                   pallocationcallbacks: ptr maallocationcallbacks_436208126;
                   phpf: ptr mahpf2_436208366): maresult_436208042 {.cdecl,
      importc: "ma_hpf2_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_init" & " already exists, not redeclaring")
when not declared(maaudiobufferunmap):
  proc maaudiobufferunmap*(paudiobuffer: ptr maaudiobuffer_436208298;
                           framecount: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_audio_buffer_unmap".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_unmap" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatasourcesetlooping):
  proc maresourcemanagerdatasourcesetlooping*(
      pdatasource: ptr maresourcemanagerdatasource_436208440;
      islooping: mabool32_436207983): maresult_436208042 {.cdecl,
      importc: "ma_resource_manager_data_source_set_looping".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_set_looping" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatastreamgetcursorinpcmframes):
  proc maresourcemanagerdatastreamgetcursorinpcmframes*(
      pdatastream: ptr maresourcemanagerdatastream_436207993;
      pcursor: ptr mauint64_436208386): maresult_436208042 {.cdecl,
      importc: "ma_resource_manager_data_stream_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_stream_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(maresourcemanagernextjob):
  proc maresourcemanagernextjob*(presourcemanager: ptr maresourcemanager_436208318;
                                 pjob: ptr majob_436207973): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_next_job".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_next_job" &
        " already exists, not redeclaring")
when not declared(manodegetoutputchannels):
  proc manodegetoutputchannels*(pnode: pointer; outputbusindex: mauint32_436208046): mauint32_436208046 {.
      cdecl, importc: "ma_node_get_output_channels".}
else:
  static :
    hint("Declaration of " & "ma_node_get_output_channels" &
        " already exists, not redeclaring")
when not declared(masoundgetattenuationmodel):
  proc masoundgetattenuationmodel*(psound: ptr masound_436208210): maattenuationmodel_436207961 {.
      cdecl, importc: "ma_sound_get_attenuation_model".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_attenuation_model" &
        " already exists, not redeclaring")
when not declared(maloshelf2reinit):
  proc maloshelf2reinit*(pconfig: ptr maloshelf2config_436208064;
                         pfilter: ptr maloshelf2_436208262): maresult_436208042 {.
      cdecl, importc: "ma_loshelf2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_reinit" &
        " already exists, not redeclaring")
when not declared(mapannerinit):
  proc mapannerinit*(pconfig: ptr mapannerconfig_436208098;
                     ppanner: ptr mapanner_436208458): maresult_436208042 {.
      cdecl, importc: "ma_panner_init".}
else:
  static :
    hint("Declaration of " & "ma_panner_init" &
        " already exists, not redeclaring")
when not declared(mawaveformsetamplitude):
  proc mawaveformsetamplitude*(pwaveform: ptr mawaveform_436208368;
                               amplitude: cdouble): maresult_436208042 {.cdecl,
      importc: "ma_waveform_set_amplitude".}
else:
  static :
    hint("Declaration of " & "ma_waveform_set_amplitude" &
        " already exists, not redeclaring")
when not declared(maasyncnotificationeventuninit):
  proc maasyncnotificationeventuninit*(pnotificationevent: ptr maasyncnotificationevent_436208468): maresult_436208042 {.
      cdecl, importc: "ma_async_notification_event_uninit".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_event_uninit" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerpostjob):
  proc maresourcemanagerpostjob*(presourcemanager: ptr maresourcemanager_436208318;
                                 pjob: ptr majob_436207973): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_post_job".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_post_job" &
        " already exists, not redeclaring")
when not declared(malinearresampleruninit):
  proc malinearresampleruninit*(presampler: ptr malinearresampler_436208448;
                                pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_linear_resampler_uninit".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_uninit" &
        " already exists, not redeclaring")
when not declared(maspatializergetdirection):
  proc maspatializergetdirection*(pspatializer: ptr maspatializer_436207979): mavec3f_436208100 {.
      cdecl, importc: "ma_spatializer_get_direction".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_direction" &
        " already exists, not redeclaring")
when not declared(madevicehandlebackenddatacallback):
  proc madevicehandlebackenddatacallback*(pdevice: ptr madevice_436208034;
      poutput: pointer; pinput: pointer; framecount: mauint32_436208046): maresult_436208042 {.
      cdecl, importc: "ma_device_handle_backend_data_callback".}
else:
  static :
    hint("Declaration of " & "ma_device_handle_backend_data_callback" &
        " already exists, not redeclaring")
when not declared(mapcms24tof32):
  proc mapcms24tof32*(pout: pointer; pin: pointer; count: mauint64_436208386;
                      dithermode: madithermode_436208168): void {.cdecl,
      importc: "ma_pcm_s24_to_f32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s24_to_f32" &
        " already exists, not redeclaring")
when not declared(mapeaknodereinit):
  proc mapeaknodereinit*(pconfig: ptr mapeakconfig; pnode: ptr mapeaknode_436208312): maresult_436208042 {.
      cdecl, importc: "ma_peak_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_peak_node_reinit" &
        " already exists, not redeclaring")
when not declared(maenginegetchannels):
  proc maenginegetchannels*(pengine: ptr maengine_436208154): mauint32_436208046 {.
      cdecl, importc: "ma_engine_get_channels".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_channels" &
        " already exists, not redeclaring")
when not declared(maspinlocklocknoyield):
  proc maspinlocklocknoyield*(pspinlock: ptr maspinlock_436208104): maresult_436208042 {.
      cdecl, importc: "ma_spinlock_lock_noyield".}
else:
  static :
    hint("Declaration of " & "ma_spinlock_lock_noyield" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatasourceislooping):
  proc maresourcemanagerdatasourceislooping*(
      pdatasource: ptr maresourcemanagerdatasource_436208440): mabool32_436207983 {.
      cdecl, importc: "ma_resource_manager_data_source_is_looping".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_is_looping" &
        " already exists, not redeclaring")
when not declared(masoundgroupsetvelocity):
  proc masoundgroupsetvelocity*(pgroup: ptr masoundgroup_436208146; x: cfloat;
                                y: cfloat; z: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_velocity".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_velocity" &
        " already exists, not redeclaring")
when not declared(maslotallocatorinit):
  proc maslotallocatorinit*(pconfig: ptr maslotallocatorconfig_436208432;
                            pallocationcallbacks: ptr maallocationcallbacks_436208126;
                            pallocator: ptr maslotallocator_436208398): maresult_436208042 {.
      cdecl, importc: "ma_slot_allocator_init".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_init" &
        " already exists, not redeclaring")
when not declared(madelaygetdry):
  proc madelaygetdry*(pdelay: ptr madelay_436208410): cfloat {.cdecl,
      importc: "ma_delay_get_dry".}
else:
  static :
    hint("Declaration of " & "ma_delay_get_dry" &
        " already exists, not redeclaring")
when not declared(madecodergetavailableframes):
  proc madecodergetavailableframes*(pdecoder: ptr madecoder_436208076;
                                    pavailableframes: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_decoder_get_available_frames".}
else:
  static :
    hint("Declaration of " & "ma_decoder_get_available_frames" &
        " already exists, not redeclaring")
when not declared(masoundgroupgetpan):
  proc masoundgroupgetpan*(pgroup: ptr masoundgroup_436208146): cfloat {.cdecl,
      importc: "ma_sound_group_get_pan".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_pan" &
        " already exists, not redeclaring")
when not declared(masoundgroupsetrolloff):
  proc masoundgroupsetrolloff*(pgroup: ptr masoundgroup_436208146;
                               rolloff: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_rolloff".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_rolloff" &
        " already exists, not redeclaring")
when not declared(manodesetstate):
  proc manodesetstate*(pnode: pointer; state: manodestate_436208054): maresult_436208042 {.
      cdecl, importc: "ma_node_set_state".}
else:
  static :
    hint("Declaration of " & "ma_node_set_state" &
        " already exists, not redeclaring")
when not declared(mahpf1reinit):
  proc mahpf1reinit*(pconfig: ptr mahpf1config_436208228; phpf: ptr mahpf1_436208096): maresult_436208042 {.
      cdecl, importc: "ma_hpf1_reinit".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_reinit" &
        " already exists, not redeclaring")
when not declared(mabpfprocesspcmframes):
  proc mabpfprocesspcmframes*(pbpf: ptr mabpf_436208074; pframesout: pointer;
                              pframesin: pointer; framecount: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_bpf_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_bpf_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(madelayconfiginit):
  proc madelayconfiginit*(channels: mauint32_436208046; samplerate: mauint32_436208046;
                          delayinframes: mauint32_436208046; decay: cfloat): madelayconfig_436208304 {.
      cdecl, importc: "ma_delay_config_init".}
else:
  static :
    hint("Declaration of " & "ma_delay_config_init" &
        " already exists, not redeclaring")
when not declared(maspatializersetposition):
  proc maspatializersetposition*(pspatializer: ptr maspatializer_436207979;
                                 x: cfloat; y: cfloat; z: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_position".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_position" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatastreamgetlengthinpcmframes):
  proc maresourcemanagerdatastreamgetlengthinpcmframes*(
      pdatastream: ptr maresourcemanagerdatastream_436207993;
      plength: ptr mauint64_436208386): maresult_436208042 {.cdecl,
      importc: "ma_resource_manager_data_stream_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_stream_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(madatasourcenodeislooping):
  proc madatasourcenodeislooping*(pdatasourcenode: ptr madatasourcenode_436208166): mabool32_436207983 {.
      cdecl, importc: "ma_data_source_node_is_looping".}
else:
  static :
    hint("Declaration of " & "ma_data_source_node_is_looping" &
        " already exists, not redeclaring")
when not declared(maenginesetgaindb):
  proc maenginesetgaindb*(pengine: ptr maengine_436208154; gaindb: cfloat): maresult_436208042 {.
      cdecl, importc: "ma_engine_set_gain_db".}
else:
  static :
    hint("Declaration of " & "ma_engine_set_gain_db" &
        " already exists, not redeclaring")
when not declared(masoundgroupgetdirection):
  proc masoundgroupgetdirection*(pgroup: ptr masoundgroup_436208146): mavec3f_436208100 {.
      cdecl, importc: "ma_sound_group_get_direction".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_direction" &
        " already exists, not redeclaring")
when not declared(malpfconfiginit):
  proc malpfconfiginit*(format: maformat_436208208; channels: mauint32_436208046;
                        samplerate: mauint32_436208046;
                        cutofffrequency: cdouble; order: mauint32_436208046): malpfconfig_436208114 {.
      cdecl, importc: "ma_lpf_config_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf_config_init" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatasourceseektopcmframe):
  proc maresourcemanagerdatasourceseektopcmframe*(
      pdatasource: ptr maresourcemanagerdatasource_436208440;
      frameindex: mauint64_436208386): maresult_436208042 {.cdecl,
      importc: "ma_resource_manager_data_source_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(maenginesettime):
  proc maenginesettime*(pengine: ptr maengine_436208154; globaltime: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_engine_set_time".}
else:
  static :
    hint("Declaration of " & "ma_engine_set_time" &
        " already exists, not redeclaring")
when not declared(masoundsetpan):
  proc masoundsetpan*(psound: ptr masound_436208210; pan: cfloat): void {.cdecl,
      importc: "ma_sound_set_pan".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_pan" &
        " already exists, not redeclaring")
when not declared(malinearresamplergetexpectedoutputframecount):
  proc malinearresamplergetexpectedoutputframecount*(
      presampler: ptr malinearresampler_436208448; inputframecount: mauint64_436208386;
      poutputframecount: ptr mauint64_436208386): maresult_436208042 {.cdecl,
      importc: "ma_linear_resampler_get_expected_output_frame_count".}
else:
  static :
    hint("Declaration of " &
        "ma_linear_resampler_get_expected_output_frame_count" &
        " already exists, not redeclaring")
when not declared(maoffsetpcmframesptr):
  proc maoffsetpcmframesptr*(p: pointer; offsetinframes: mauint64_436208386;
                             format: maformat_436208208; channels: mauint32_436208046): pointer {.
      cdecl, importc: "ma_offset_pcm_frames_ptr".}
else:
  static :
    hint("Declaration of " & "ma_offset_pcm_frames_ptr" &
        " already exists, not redeclaring")
when not declared(madatasourcenodeuninit):
  proc madatasourcenodeuninit*(pdatasourcenode: ptr madatasourcenode_436208166;
                               pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_data_source_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_data_source_node_uninit" &
        " already exists, not redeclaring")
when not declared(manoiseconfiginit):
  proc manoiseconfiginit*(format: maformat_436208208; channels: mauint32_436208046;
                          typearg: manoisetype_436208176; seed: maint32_436208356;
                          amplitude: cdouble): manoiseconfig_436208184 {.cdecl,
      importc: "ma_noise_config_init".}
else:
  static :
    hint("Declaration of " & "ma_noise_config_init" &
        " already exists, not redeclaring")
when not declared(maenginesetvolume):
  proc maenginesetvolume*(pengine: ptr maengine_436208154; volume: cfloat): maresult_436208042 {.
      cdecl, importc: "ma_engine_set_volume".}
else:
  static :
    hint("Declaration of " & "ma_engine_set_volume" &
        " already exists, not redeclaring")
when not declared(masoundgroupsetstoptimeinmilliseconds):
  proc masoundgroupsetstoptimeinmilliseconds*(pgroup: ptr masoundgroup_436208146;
      absoluteglobaltimeinmilliseconds: mauint64_436208386): void {.cdecl,
      importc: "ma_sound_group_set_stop_time_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_stop_time_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(mahpf1init):
  proc mahpf1init*(pconfig: ptr mahpf1config_436208228;
                   pallocationcallbacks: ptr maallocationcallbacks_436208126;
                   phpf: ptr mahpf1_436208096): maresult_436208042 {.cdecl,
      importc: "ma_hpf1_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_init" & " already exists, not redeclaring")
when not declared(mafadergetcurrentvolume):
  proc mafadergetcurrentvolume*(pfader: ptr mafader_436208030): cfloat {.cdecl,
      importc: "ma_fader_get_current_volume".}
else:
  static :
    hint("Declaration of " & "ma_fader_get_current_volume" &
        " already exists, not redeclaring")
when not declared(masoundgroupgetvolume):
  proc masoundgroupgetvolume*(pgroup: ptr masoundgroup_436208146): cfloat {.
      cdecl, importc: "ma_sound_group_get_volume".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_volume" &
        " already exists, not redeclaring")
when not declared(mawaveforminit):
  proc mawaveforminit*(pconfig: ptr mawaveformconfig_436208450;
                       pwaveform: ptr mawaveform_436208368): maresult_436208042 {.
      cdecl, importc: "ma_waveform_init".}
else:
  static :
    hint("Declaration of " & "ma_waveform_init" &
        " already exists, not redeclaring")
when not declared(mahpf1processpcmframes):
  proc mahpf1processpcmframes*(phpf: ptr mahpf1_436208096; pframesout: pointer;
                               pframesin: pointer; framecount: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_hpf1_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(marbinit):
  proc marbinit*(buffersizeinbytes: csize_t;
                 poptionalpreallocatedbuffer: pointer;
                 pallocationcallbacks: ptr maallocationcallbacks_436208126;
                 prb: ptr marb_436208144): maresult_436208042 {.cdecl,
      importc: "ma_rb_init".}
else:
  static :
    hint("Declaration of " & "ma_rb_init" & " already exists, not redeclaring")
when not declared(madatasourcegetlengthinpcmframes):
  proc madatasourcegetlengthinpcmframes*(pdatasource: pointer;
      plength: ptr mauint64_436208386): maresult_436208042 {.cdecl,
      importc: "ma_data_source_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(manodegetstatebytimerange):
  proc manodegetstatebytimerange*(pnode: pointer; globaltimebeg: mauint64_436208386;
                                  globaltimeend: mauint64_436208386): manodestate_436208054 {.
      cdecl, importc: "ma_node_get_state_by_time_range".}
else:
  static :
    hint("Declaration of " & "ma_node_get_state_by_time_range" &
        " already exists, not redeclaring")
when not declared(masoundsetcone):
  proc masoundsetcone*(psound: ptr masound_436208210;
                       innerangleinradians: cfloat; outerangleinradians: cfloat;
                       outergain: cfloat): void {.cdecl,
      importc: "ma_sound_set_cone".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_cone" &
        " already exists, not redeclaring")
when not declared(Mamaxfilterorder):
  when 8 is static:
    const
      Mamaxfilterorder* = 8  ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4058:9
  else:
    let Mamaxfilterorder* = 8 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4058:9
else:
  static :
    hint("Declaration of " & "MA_MAX_FILTER_ORDER" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatastreamsetlooping):
  proc maresourcemanagerdatastreamsetlooping*(
      pdatastream: ptr maresourcemanagerdatastream_436207993;
      islooping: mabool32_436207983): maresult_436208042 {.cdecl,
      importc: "ma_resource_manager_data_stream_set_looping".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_set_looping" &
        " already exists, not redeclaring")
when not declared(mapcmf32tos32):
  proc mapcmf32tos32*(pout: pointer; pin: pointer; count: mauint64_436208386;
                      dithermode: madithermode_436208168): void {.cdecl,
      importc: "ma_pcm_f32_to_s32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_f32_to_s32" &
        " already exists, not redeclaring")
when not declared(maspatializerlistenersetspeedofsound):
  proc maspatializerlistenersetspeedofsound*(
      plistener: ptr maspatializerlistener_436208424; speedofsound: cfloat): void {.
      cdecl, importc: "ma_spatializer_listener_set_speed_of_sound".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_speed_of_sound" &
        " already exists, not redeclaring")
when not declared(maencoderinit):
  proc maencoderinit*(onwrite: maencoderwriteproc_436208170;
                      onseek: maencoderseekproc_436208180; puserdata: pointer;
                      pconfig: ptr maencoderconfig_436208162;
                      pencoder: ptr maencoder_436208040): maresult_436208042 {.
      cdecl, importc: "ma_encoder_init".}
else:
  static :
    hint("Declaration of " & "ma_encoder_init" &
        " already exists, not redeclaring")
when not declared(maspatializersetpositioning):
  proc maspatializersetpositioning*(pspatializer: ptr maspatializer_436207979;
                                    positioning: mapositioning_436208284): void {.
      cdecl, importc: "ma_spatializer_set_positioning".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_positioning" &
        " already exists, not redeclaring")
when not declared(mabpf2getlatency):
  proc mabpf2getlatency*(pbpf: ptr mabpf2_436208106): mauint32_436208046 {.
      cdecl, importc: "ma_bpf2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_get_latency" &
        " already exists, not redeclaring")
when not declared(maenginenodeuninit):
  proc maenginenodeuninit*(penginenode: ptr maenginenode_436208402;
                           pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_engine_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_engine_node_uninit" &
        " already exists, not redeclaring")
when not declared(maencoderinitvfs):
  proc maencoderinitvfs*(pvfs: pointer; pfilepath: cstring;
                         pconfig: ptr maencoderconfig_436208162;
                         pencoder: ptr maencoder_436208040): maresult_436208042 {.
      cdecl, importc: "ma_encoder_init_vfs".}
else:
  static :
    hint("Declaration of " & "ma_encoder_init_vfs" &
        " already exists, not redeclaring")
when not declared(maenginelistenergetworldup):
  proc maenginelistenergetworldup*(pengine: ptr maengine_436208154;
                                   listenerindex: mauint32_436208046): mavec3f_436208100 {.
      cdecl, importc: "ma_engine_listener_get_world_up".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_get_world_up" &
        " already exists, not redeclaring")
when not declared(maloginit):
  proc maloginit*(pallocationcallbacks: ptr maallocationcallbacks_436208126;
                  plog: ptr malog_436207937): maresult_436208042 {.cdecl,
      importc: "ma_log_init".}
else:
  static :
    hint("Declaration of " & "ma_log_init" & " already exists, not redeclaring")
when not declared(mahpf1configinit):
  proc mahpf1configinit*(format: maformat_436208208; channels: mauint32_436208046;
                         samplerate: mauint32_436208046;
                         cutofffrequency: cdouble): mahpf1config_436208228 {.
      cdecl, importc: "ma_hpf1_config_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_config_init" &
        " already exists, not redeclaring")
when not declared(madevicegetmastervolumedb):
  proc madevicegetmastervolumedb*(pdevice: ptr madevice_436208034;
                                  pgaindb: ptr cfloat): maresult_436208042 {.
      cdecl, importc: "ma_device_get_master_volume_db".}
else:
  static :
    hint("Declaration of " & "ma_device_get_master_volume_db" &
        " already exists, not redeclaring")
when not declared(masoundsetdirectionalattenuationfactor):
  proc masoundsetdirectionalattenuationfactor*(psound: ptr masound_436208210;
      directionalattenuationfactor: cfloat): void {.cdecl,
      importc: "ma_sound_set_directional_attenuation_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_directional_attenuation_factor" &
        " already exists, not redeclaring")
when not declared(manoisesettype):
  proc manoisesettype*(pnoise: ptr manoise_436208172; typearg: manoisetype_436208176): maresult_436208042 {.
      cdecl, importc: "ma_noise_set_type".}
else:
  static :
    hint("Declaration of " & "ma_noise_set_type" &
        " already exists, not redeclaring")
when not declared(maenginelistenerisenabled):
  proc maenginelistenerisenabled*(pengine: ptr maengine_436208154;
                                  listenerindex: mauint32_436208046): mabool32_436207983 {.
      cdecl, importc: "ma_engine_listener_is_enabled".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_is_enabled" &
        " already exists, not redeclaring")
when not declared(masoundgroupgetmaxdistance):
  proc masoundgroupgetmaxdistance*(pgroup: ptr masoundgroup_436208146): cfloat {.
      cdecl, importc: "ma_sound_group_get_max_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_max_distance" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerpipelinenotificationsinit):
  proc maresourcemanagerpipelinenotificationsinit*(): maresourcemanagerpipelinenotifications_436208268 {.
      cdecl, importc: "ma_resource_manager_pipeline_notifications_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_pipeline_notifications_init" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatabuffergetlengthinpcmframes):
  proc maresourcemanagerdatabuffergetlengthinpcmframes*(
      pdatabuffer: ptr maresourcemanagerdatabuffer_436208388;
      plength: ptr mauint64_436208386): maresult_436208042 {.cdecl,
      importc: "ma_resource_manager_data_buffer_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_buffer_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(manoisesetseed):
  proc manoisesetseed*(pnoise: ptr manoise_436208172; seed: maint32_436208356): maresult_436208042 {.
      cdecl, importc: "ma_noise_set_seed".}
else:
  static :
    hint("Declaration of " & "ma_noise_set_seed" &
        " already exists, not redeclaring")
when not declared(malpf1reinit):
  proc malpf1reinit*(pconfig: ptr malpf1config_436207991; plpf: ptr malpf1_436208246): maresult_436208042 {.
      cdecl, importc: "ma_lpf1_reinit".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_reinit" &
        " already exists, not redeclaring")
when not declared(mapcms24tos16):
  proc mapcms24tos16*(pout: pointer; pin: pointer; count: mauint64_436208386;
                      dithermode: madithermode_436208168): void {.cdecl,
      importc: "ma_pcm_s24_to_s16".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s24_to_s16" &
        " already exists, not redeclaring")
when not declared(mapagedaudiobufferdatauninit):
  proc mapagedaudiobufferdatauninit*(pdata: ptr mapagedaudiobufferdata_436208048;
      pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.cdecl,
      importc: "ma_paged_audio_buffer_data_uninit".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_uninit" &
        " already exists, not redeclaring")
when not declared(maenginelistenersetcone):
  proc maenginelistenersetcone*(pengine: ptr maengine_436208154;
                                listenerindex: mauint32_436208046;
                                innerangleinradians: cfloat;
                                outerangleinradians: cfloat; outergain: cfloat): void {.
      cdecl, importc: "ma_engine_listener_set_cone".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_set_cone" &
        " already exists, not redeclaring")
when not declared(machannelconverterinitpreallocated):
  proc machannelconverterinitpreallocated*(
      pconfig: ptr machannelconverterconfig_436208392; pheap: pointer;
      pconverter: ptr machannelconverter_436208186): maresult_436208042 {.cdecl,
      importc: "ma_channel_converter_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_init_preallocated" &
        " already exists, not redeclaring")
when not declared(marbuninit):
  proc marbuninit*(prb: ptr marb_436208144): void {.cdecl,
      importc: "ma_rb_uninit".}
else:
  static :
    hint("Declaration of " & "ma_rb_uninit" & " already exists, not redeclaring")
when not declared(manodegraphgetendpoint):
  proc manodegraphgetendpoint*(pnodegraph: ptr manodegraph_436207933): pointer {.
      cdecl, importc: "ma_node_graph_get_endpoint".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_get_endpoint" &
        " already exists, not redeclaring")
when not declared(masoundinitcopy):
  proc masoundinitcopy*(pengine: ptr maengine_436208154;
                        pexistingsound: ptr masound_436208210; flags: mauint32_436208046;
                        pgroup: ptr masoundgroup_436208146; psound: ptr masound_436208210): maresult_436208042 {.
      cdecl, importc: "ma_sound_init_copy".}
else:
  static :
    hint("Declaration of " & "ma_sound_init_copy" &
        " already exists, not redeclaring")
when not declared(maclipsampless16):
  proc maclipsampless16*(pdst: ptr maint16_436207975; psrc: ptr maint32_436208356;
                         count: mauint64_436208386): void {.cdecl,
      importc: "ma_clip_samples_s16".}
else:
  static :
    hint("Declaration of " & "ma_clip_samples_s16" &
        " already exists, not redeclaring")
when not declared(masoundgroupstop):
  proc masoundgroupstop*(pgroup: ptr masoundgroup_436208146): maresult_436208042 {.
      cdecl, importc: "ma_sound_group_stop".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_stop" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatabufferresult):
  proc maresourcemanagerdatabufferresult*(
      pdatabuffer: ptr maresourcemanagerdatabuffer_436208388): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_data_buffer_result".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_result" &
        " already exists, not redeclaring")
when not declared(malpf2configinit):
  proc malpf2configinit*(format: maformat_436208208; channels: mauint32_436208046;
                         samplerate: mauint32_436208046;
                         cutofffrequency: cdouble; q: cdouble): malpf2config {.
      cdecl, importc: "ma_lpf2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_config_init" &
        " already exists, not redeclaring")
when not declared(maenginegetresourcemanager):
  proc maenginegetresourcemanager*(pengine: ptr maengine_436208154): ptr maresourcemanager_436208318 {.
      cdecl, importc: "ma_engine_get_resource_manager".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_resource_manager" &
        " already exists, not redeclaring")
when not declared(Maresourcemanagermaxjobthreadcount):
  when 64 is static:
    const
      Maresourcemanagermaxjobthreadcount* = 64 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9948:9
  else:
    let Maresourcemanagermaxjobthreadcount* = 64 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9948:9
else:
  static :
    hint("Declaration of " & "MA_RESOURCE_MANAGER_MAX_JOB_THREAD_COUNT" &
        " already exists, not redeclaring")
when not declared(madecoderconfiginit):
  proc madecoderconfiginit*(outputformat: maformat_436208208;
                            outputchannels: mauint32_436208046;
                            outputsamplerate: mauint32_436208046): madecoderconfig_436208200 {.
      cdecl, importc: "ma_decoder_config_init".}
else:
  static :
    hint("Declaration of " & "ma_decoder_config_init" &
        " already exists, not redeclaring")
when not declared(madelaynodeuninit):
  proc madelaynodeuninit*(pdelaynode: ptr madelaynode_436207969;
                          pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_delay_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_uninit" &
        " already exists, not redeclaring")
when not declared(masoundgetdatasource):
  proc masoundgetdatasource*(psound: ptr masound_436208210): pointer {.cdecl,
      importc: "ma_sound_get_data_source".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_data_source" &
        " already exists, not redeclaring")
when not declared(marbreset):
  proc marbreset*(prb: ptr marb_436208144): void {.cdecl, importc: "ma_rb_reset".}
else:
  static :
    hint("Declaration of " & "ma_rb_reset" & " already exists, not redeclaring")
when not declared(masoundsetvelocity):
  proc masoundsetvelocity*(psound: ptr masound_436208210; x: cfloat; y: cfloat;
                           z: cfloat): void {.cdecl,
      importc: "ma_sound_set_velocity".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_velocity" &
        " already exists, not redeclaring")
when not declared(maapplyvolumefactorpcmframess32):
  proc maapplyvolumefactorpcmframess32*(pframes: ptr maint32_436208356;
                                        framecount: mauint64_436208386;
                                        channels: mauint32_436208046;
                                        factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_pcm_frames_s32".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_pcm_frames_s32" &
        " already exists, not redeclaring")
when not declared(manoiseuninit):
  proc manoiseuninit*(pnoise: ptr manoise_436208172;
                      pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_noise_uninit".}
else:
  static :
    hint("Declaration of " & "ma_noise_uninit" &
        " already exists, not redeclaring")
when not declared(masoundgettimeinpcmframes):
  proc masoundgettimeinpcmframes*(psound: ptr masound_436208210): mauint64_436208386 {.
      cdecl, importc: "ma_sound_get_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(masoundsetstarttimeinpcmframes):
  proc masoundsetstarttimeinpcmframes*(psound: ptr masound_436208210;
                                       absoluteglobaltimeinframes: mauint64_436208386): void {.
      cdecl, importc: "ma_sound_set_start_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_start_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(machannelmapinitstandard):
  proc machannelmapinitstandard*(standardchannelmap: mastandardchannelmap_436208056;
                                 pchannelmap: ptr machannel_436208128;
                                 channelmapcap: csize_t; channels: mauint32_436208046): void {.
      cdecl, importc: "ma_channel_map_init_standard".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_init_standard" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerunregisterdata):
  proc maresourcemanagerunregisterdata*(presourcemanager: ptr maresourcemanager_436208318;
                                        pname: cstring): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_unregister_data".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_unregister_data" &
        " already exists, not redeclaring")
when not declared(maengineplaysound):
  proc maengineplaysound*(pengine: ptr maengine_436208154; pfilepath: cstring;
                          pgroup: ptr masoundgroup_436208146): maresult_436208042 {.
      cdecl, importc: "ma_engine_play_sound".}
else:
  static :
    hint("Declaration of " & "ma_engine_play_sound" &
        " already exists, not redeclaring")
when not declared(machannelmapcopy):
  proc machannelmapcopy*(pout: ptr machannel_436208128; pin: ptr machannel_436208128;
                         channels: mauint32_436208046): void {.cdecl,
      importc: "ma_channel_map_copy".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_copy" &
        " already exists, not redeclaring")
when not declared(magaineruninit):
  proc magaineruninit*(pgainer: ptr magainer_436208480;
                       pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_gainer_uninit".}
else:
  static :
    hint("Declaration of " & "ma_gainer_uninit" &
        " already exists, not redeclaring")
when not declared(mapcmf32tos16):
  proc mapcmf32tos16*(pout: pointer; pin: pointer; count: mauint64_436208386;
                      dithermode: madithermode_436208168): void {.cdecl,
      importc: "ma_pcm_f32_to_s16".}
else:
  static :
    hint("Declaration of " & "ma_pcm_f32_to_s16" &
        " already exists, not redeclaring")
when not declared(maoffsetpcmframesconstptr):
  proc maoffsetpcmframesconstptr*(p: pointer; offsetinframes: mauint64_436208386;
                                  format: maformat_436208208; channels: mauint32_436208046): pointer {.
      cdecl, importc: "ma_offset_pcm_frames_const_ptr".}
else:
  static :
    hint("Declaration of " & "ma_offset_pcm_frames_const_ptr" &
        " already exists, not redeclaring")
when not declared(mabiquadnodereinit):
  proc mabiquadnodereinit*(pconfig: ptr mabiquadconfig_436208134;
                           pnode: ptr mabiquadnode_436208360): maresult_436208042 {.
      cdecl, importc: "ma_biquad_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_biquad_node_reinit" &
        " already exists, not redeclaring")
when not declared(mapcmrbuninit):
  proc mapcmrbuninit*(prb: ptr mapcmrb_436208404): void {.cdecl,
      importc: "ma_pcm_rb_uninit".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_uninit" &
        " already exists, not redeclaring")
when not declared(madevicejobthreaduninit):
  proc madevicejobthreaduninit*(pjobthread: ptr madevicejobthread_436208466;
                                pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_device_job_thread_uninit".}
else:
  static :
    hint("Declaration of " & "ma_device_job_thread_uninit" &
        " already exists, not redeclaring")
when not declared(malpf1initpreallocated):
  proc malpf1initpreallocated*(pconfig: ptr malpf1config_436207991;
                               pheap: pointer; plpf: ptr malpf1_436208246): maresult_436208042 {.
      cdecl, importc: "ma_lpf1_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_init_preallocated" &
        " already exists, not redeclaring")
when not declared(magetenabledbackends):
  proc magetenabledbackends*(pbackends: ptr mabackend_436208370;
                             backendcap: csize_t; pbackendcount: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_get_enabled_backends".}
else:
  static :
    hint("Declaration of " & "ma_get_enabled_backends" &
        " already exists, not redeclaring")
when not declared(majobinit):
  proc majobinit*(code: mauint16_436208148): majob_436207973 {.cdecl,
      importc: "ma_job_init".}
else:
  static :
    hint("Declaration of " & "ma_job_init" & " already exists, not redeclaring")
when not declared(maspatializergetpositioning):
  proc maspatializergetpositioning*(pspatializer: ptr maspatializer_436207979): mapositioning_436208284 {.
      cdecl, importc: "ma_spatializer_get_positioning".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_positioning" &
        " already exists, not redeclaring")
when not declared(malinearresamplergetoutputlatency):
  proc malinearresamplergetoutputlatency*(presampler: ptr malinearresampler_436208448): mauint64_436208386 {.
      cdecl, importc: "ma_linear_resampler_get_output_latency".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_get_output_latency" &
        " already exists, not redeclaring")
when not declared(mahishelf2configinit):
  proc mahishelf2configinit*(format: maformat_436208208; channels: mauint32_436208046;
                             samplerate: mauint32_436208046; gaindb: cdouble;
                             shelfslope: cdouble; frequency: cdouble): mahishelf2config_436208252 {.
      cdecl, importc: "ma_hishelf2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_config_init" &
        " already exists, not redeclaring")
when not declared(madatasourcegetcursorinpcmframes):
  proc madatasourcegetcursorinpcmframes*(pdatasource: pointer;
      pcursor: ptr mauint64_436208386): maresult_436208042 {.cdecl,
      importc: "ma_data_source_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(masoundgetpitch):
  proc masoundgetpitch*(psound: ptr masound_436208210): cfloat {.cdecl,
      importc: "ma_sound_get_pitch".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_pitch" &
        " already exists, not redeclaring")
when not declared(Maenginemaxlisteners):
  when 4 is static:
    const
      Maenginemaxlisteners* = 4 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10691:9
  else:
    let Maenginemaxlisteners* = 4 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:10691:9
else:
  static :
    hint("Declaration of " & "MA_ENGINE_MAX_LISTENERS" &
        " already exists, not redeclaring")
when not declared(mamutexinit):
  proc mamutexinit*(pmutex: ptr mamutex_436207955): maresult_436208042 {.cdecl,
      importc: "ma_mutex_init".}
else:
  static :
    hint("Declaration of " & "ma_mutex_init" &
        " already exists, not redeclaring")
when not declared(maspatializergetattenuationmodel):
  proc maspatializergetattenuationmodel*(pspatializer: ptr maspatializer_436207979): maattenuationmodel_436207961 {.
      cdecl, importc: "ma_spatializer_get_attenuation_model".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_attenuation_model" &
        " already exists, not redeclaring")
when not declared(madelaynodesetdry):
  proc madelaynodesetdry*(pdelaynode: ptr madelaynode_436207969; value: cfloat): void {.
      cdecl, importc: "ma_delay_node_set_dry".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_set_dry" &
        " already exists, not redeclaring")
when not declared(masoundgroupsetdirection):
  proc masoundgroupsetdirection*(pgroup: ptr masoundgroup_436208146; x: cfloat;
                                 y: cfloat; z: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_direction".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_direction" &
        " already exists, not redeclaring")
when not declared(maspatializergetoutputchannels):
  proc maspatializergetoutputchannels*(pspatializer: ptr maspatializer_436207979): mauint32_436208046 {.
      cdecl, importc: "ma_spatializer_get_output_channels".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_output_channels" &
        " already exists, not redeclaring")
when not declared(machannelmapisvalid):
  proc machannelmapisvalid*(pchannelmap: ptr machannel_436208128;
                            channels: mauint32_436208046): mabool32_436207983 {.
      cdecl, importc: "ma_channel_map_is_valid".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_is_valid" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatastreamislooping):
  proc maresourcemanagerdatastreamislooping*(
      pdatastream: ptr maresourcemanagerdatastream_436207993): mabool32_436207983 {.
      cdecl, importc: "ma_resource_manager_data_stream_is_looping".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_is_looping" &
        " already exists, not redeclaring")
when not declared(maspatializersetdirectionalattenuationfactor):
  proc maspatializersetdirectionalattenuationfactor*(
      pspatializer: ptr maspatializer_436207979;
      directionalattenuationfactor: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_directional_attenuation_factor".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_directional_attenuation_factor" &
        " already exists, not redeclaring")
when not declared(maenginefindclosestlistener):
  proc maenginefindclosestlistener*(pengine: ptr maengine_436208154;
                                    absoluteposx: cfloat; absoluteposy: cfloat;
                                    absoluteposz: cfloat): mauint32_436208046 {.
      cdecl, importc: "ma_engine_find_closest_listener".}
else:
  static :
    hint("Declaration of " & "ma_engine_find_closest_listener" &
        " already exists, not redeclaring")
when not declared(madataconverterinit):
  proc madataconverterinit*(pconfig: ptr madataconverterconfig_436208256;
                            pallocationcallbacks: ptr maallocationcallbacks_436208126;
                            pconverter: ptr madataconverter_436208226): maresult_436208042 {.
      cdecl, importc: "ma_data_converter_init".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_init" &
        " already exists, not redeclaring")
when not declared(Mamaxlogcallbacks):
  when 4 is static:
    const
      Mamaxlogcallbacks* = 4 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4254:9
  else:
    let Mamaxlogcallbacks* = 4 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:4254:9
else:
  static :
    hint("Declaration of " & "MA_MAX_LOG_CALLBACKS" &
        " already exists, not redeclaring")
when not declared(masoundisplaying):
  proc masoundisplaying*(psound: ptr masound_436208210): mabool32_436207983 {.
      cdecl, importc: "ma_sound_is_playing".}
else:
  static :
    hint("Declaration of " & "ma_sound_is_playing" &
        " already exists, not redeclaring")
when not declared(masoundgetlengthinseconds):
  proc masoundgetlengthinseconds*(psound: ptr masound_436208210;
                                  plength: ptr cfloat): maresult_436208042 {.
      cdecl, importc: "ma_sound_get_length_in_seconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_length_in_seconds" &
        " already exists, not redeclaring")
when not declared(mabpfnodereinit):
  proc mabpfnodereinit*(pconfig: ptr mabpfconfig_436208434; pnode: ptr mabpfnode_436208062): maresult_436208042 {.
      cdecl, importc: "ma_bpf_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_bpf_node_reinit" &
        " already exists, not redeclaring")
when not declared(maslotallocatorinitpreallocated):
  proc maslotallocatorinitpreallocated*(pconfig: ptr maslotallocatorconfig_436208432;
                                        pheap: pointer;
                                        pallocator: ptr maslotallocator_436208398): maresult_436208042 {.
      cdecl, importc: "ma_slot_allocator_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_init_preallocated" &
        " already exists, not redeclaring")
when not declared(mabpfinitpreallocated):
  proc mabpfinitpreallocated*(pconfig: ptr mabpfconfig_436208434;
                              pheap: pointer; pbpf: ptr mabpf_436208074): maresult_436208042 {.
      cdecl, importc: "ma_bpf_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_bpf_init_preallocated" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatasourceinitcopy):
  proc maresourcemanagerdatasourceinitcopy*(
      presourcemanager: ptr maresourcemanager_436208318;
      pexistingdatasource: ptr maresourcemanagerdatasource_436208440;
      pdatasource: ptr maresourcemanagerdatasource_436208440): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_data_source_init_copy".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_init_copy" &
        " already exists, not redeclaring")
when not declared(madatasourcesetlooppointinpcmframes):
  proc madatasourcesetlooppointinpcmframes*(pdatasource: pointer;
      loopbeginframes: mauint64_436208386; loopendinframes: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_data_source_set_loop_point_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_set_loop_point_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatasourcegetavailableframes):
  proc maresourcemanagerdatasourcegetavailableframes*(
      pdatasource: ptr maresourcemanagerdatasource_436208440;
      pavailableframes: ptr mauint64_436208386): maresult_436208042 {.cdecl,
      importc: "ma_resource_manager_data_source_get_available_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_source_get_available_frames" &
        " already exists, not redeclaring")
when not declared(Masizeofptr):
  when 8 is static:
    const
      Masizeofptr* = 8       ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3662:13
  else:
    let Masizeofptr* = 8     ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3662:13
else:
  static :
    hint("Declaration of " & "MA_SIZEOF_PTR" &
        " already exists, not redeclaring")
when not declared(masoundsetfadeinmilliseconds):
  proc masoundsetfadeinmilliseconds*(psound: ptr masound_436208210;
                                     volumebeg: cfloat; volumeend: cfloat;
                                     fadelengthinmilliseconds: mauint64_436208386): void {.
      cdecl, importc: "ma_sound_set_fade_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_fade_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(Machannelindexnull):
  when 255 is static:
    const
      Machannelindexnull* = 255 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:5424:9
  else:
    let Machannelindexnull* = 255 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:5424:9
else:
  static :
    hint("Declaration of " & "MA_CHANNEL_INDEX_NULL" &
        " already exists, not redeclaring")
when not declared(mapcms32tof32):
  proc mapcms32tof32*(pout: pointer; pin: pointer; count: mauint64_436208386;
                      dithermode: madithermode_436208168): void {.cdecl,
      importc: "ma_pcm_s32_to_f32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s32_to_f32" &
        " already exists, not redeclaring")
when not declared(madatasourceseekpcmframes):
  proc madatasourceseekpcmframes*(pdatasource: pointer; framecount: mauint64_436208386;
                                  pframesseeked: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_data_source_seek_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_seek_pcm_frames" &
        " already exists, not redeclaring")
when not declared(maspatializersetcone):
  proc maspatializersetcone*(pspatializer: ptr maspatializer_436207979;
                             innerangleinradians: cfloat;
                             outerangleinradians: cfloat; outergain: cfloat): void {.
      cdecl, importc: "ma_spatializer_set_cone".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_cone" &
        " already exists, not redeclaring")
when not declared(mapcmconvert):
  proc mapcmconvert*(pout: pointer; formatout: maformat_436208208; pin: pointer;
                     formatin: maformat_436208208; samplecount: mauint64_436208386;
                     dithermode: madithermode_436208168): void {.cdecl,
      importc: "ma_pcm_convert".}
else:
  static :
    hint("Declaration of " & "ma_pcm_convert" &
        " already exists, not redeclaring")
when not declared(madevicegetlog):
  proc madevicegetlog*(pdevice: ptr madevice_436208034): ptr malog_436207937 {.
      cdecl, importc: "ma_device_get_log".}
else:
  static :
    hint("Declaration of " & "ma_device_get_log" &
        " already exists, not redeclaring")
when not declared(madefaultvfsinit):
  proc madefaultvfsinit*(pvfs: ptr madefaultvfs_436208310;
                         pallocationcallbacks: ptr maallocationcallbacks_436208126): maresult_436208042 {.
      cdecl, importc: "ma_default_vfs_init".}
else:
  static :
    hint("Declaration of " & "ma_default_vfs_init" &
        " already exists, not redeclaring")
when not declared(macopyandapplyvolumeandclippcmframes):
  proc macopyandapplyvolumeandclippcmframes*(pdst: pointer; psrc: pointer;
      framecount: mauint64_436208386; format: maformat_436208208;
      channels: mauint32_436208046; volume: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_and_clip_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_and_clip_pcm_frames" &
        " already exists, not redeclaring")
when not declared(manoisereadpcmframes):
  proc manoisereadpcmframes*(pnoise: ptr manoise_436208172; pframesout: pointer;
                             framecount: mauint64_436208386;
                             pframesread: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_noise_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_noise_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(maloshelfnodeinit):
  proc maloshelfnodeinit*(pnodegraph: ptr manodegraph_436207933;
                          pconfig: ptr maloshelfnodeconfig_436208288;
                          pallocationcallbacks: ptr maallocationcallbacks_436208126;
                          pnode: ptr maloshelfnode_436208032): maresult_436208042 {.
      cdecl, importc: "ma_loshelf_node_init".}
else:
  static :
    hint("Declaration of " & "ma_loshelf_node_init" &
        " already exists, not redeclaring")
when not declared(madelayinit):
  proc madelayinit*(pconfig: ptr madelayconfig_436208304;
                    pallocationcallbacks: ptr maallocationcallbacks_436208126;
                    pdelay: ptr madelay_436208410): maresult_436208042 {.cdecl,
      importc: "ma_delay_init".}
else:
  static :
    hint("Declaration of " & "ma_delay_init" &
        " already exists, not redeclaring")
when not declared(maduplexrbinit):
  proc maduplexrbinit*(captureformat: maformat_436208208;
                       capturechannels: mauint32_436208046;
                       samplerate: mauint32_436208046;
                       captureinternalsamplerate: mauint32_436208046;
                       captureinternalperiodsizeinframes: mauint32_436208046;
                       pallocationcallbacks: ptr maallocationcallbacks_436208126;
                       prb: ptr maduplexrb_436208374): maresult_436208042 {.
      cdecl, importc: "ma_duplex_rb_init".}
else:
  static :
    hint("Declaration of " & "ma_duplex_rb_init" &
        " already exists, not redeclaring")
when not declared(mahishelf2getheapsize):
  proc mahishelf2getheapsize*(pconfig: ptr mahishelf2config_436208252;
                              pheapsizeinbytes: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_hishelf2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(maenginelistenersetworldup):
  proc maenginelistenersetworldup*(pengine: ptr maengine_436208154;
                                   listenerindex: mauint32_436208046; x: cfloat;
                                   y: cfloat; z: cfloat): void {.cdecl,
      importc: "ma_engine_listener_set_world_up".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_set_world_up" &
        " already exists, not redeclaring")
when not declared(mahpf2reinit):
  proc mahpf2reinit*(pconfig: ptr mahpf2config; phpf: ptr mahpf2_436208366): maresult_436208042 {.
      cdecl, importc: "ma_hpf2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_reinit" &
        " already exists, not redeclaring")
when not declared(mafaderprocesspcmframes):
  proc mafaderprocesspcmframes*(pfader: ptr mafader_436208030;
                                pframesout: pointer; pframesin: pointer;
                                framecount: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_fader_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_fader_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(macopyandapplyvolumeandclipsampless16):
  proc macopyandapplyvolumeandclipsampless16*(pdst: ptr maint16_436207975;
      psrc: ptr maint32_436208356; count: mauint64_436208386; volume: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_and_clip_samples_s16".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_and_clip_samples_s16" &
        " already exists, not redeclaring")
when not declared(macalloc):
  proc macalloc*(sz: csize_t; pallocationcallbacks: ptr maallocationcallbacks_436208126): pointer {.
      cdecl, importc: "ma_calloc".}
else:
  static :
    hint("Declaration of " & "ma_calloc" & " already exists, not redeclaring")
when not declared(manoiseinitpreallocated):
  proc manoiseinitpreallocated*(pconfig: ptr manoiseconfig_436208184;
                                pheap: pointer; pnoise: ptr manoise_436208172): maresult_436208042 {.
      cdecl, importc: "ma_noise_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_noise_init_preallocated" &
        " already exists, not redeclaring")
when not declared(malpfnodeuninit):
  proc malpfnodeuninit*(pnode: ptr malpfnode_436208348;
                        pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_lpf_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_lpf_node_uninit" &
        " already exists, not redeclaring")
when not declared(maspatializergetrolloff):
  proc maspatializergetrolloff*(pspatializer: ptr maspatializer_436207979): cfloat {.
      cdecl, importc: "ma_spatializer_get_rolloff".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_rolloff" &
        " already exists, not redeclaring")
when not declared(mahpf2uninit):
  proc mahpf2uninit*(phpf: ptr mahpf2_436208366;
                     pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_hpf2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_uninit" &
        " already exists, not redeclaring")
when not declared(masoundsetpitch):
  proc masoundsetpitch*(psound: ptr masound_436208210; pitch: cfloat): void {.
      cdecl, importc: "ma_sound_set_pitch".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_pitch" &
        " already exists, not redeclaring")
when not declared(maenginegetsamplerate):
  proc maenginegetsamplerate*(pengine: ptr maengine_436208154): mauint32_436208046 {.
      cdecl, importc: "ma_engine_get_sample_rate".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_sample_rate" &
        " already exists, not redeclaring")
when not declared(masoundgetpinnedlistenerindex):
  proc masoundgetpinnedlistenerindex*(psound: ptr masound_436208210): mauint32_436208046 {.
      cdecl, importc: "ma_sound_get_pinned_listener_index".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_pinned_listener_index" &
        " already exists, not redeclaring")
when not declared(madecodefile):
  proc madecodefile*(pfilepath: cstring; pconfig: ptr madecoderconfig_436208200;
                     pframecountout: ptr mauint64_436208386;
                     pppcmframesout: ptr pointer): maresult_436208042 {.cdecl,
      importc: "ma_decode_file".}
else:
  static :
    hint("Declaration of " & "ma_decode_file" &
        " already exists, not redeclaring")
when not declared(manoisegetheapsize):
  proc manoisegetheapsize*(pconfig: ptr manoiseconfig_436208184;
                           pheapsizeinbytes: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_noise_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_noise_get_heap_size" &
        " already exists, not redeclaring")
when not declared(mavfsopenandreadfile):
  proc mavfsopenandreadfile*(pvfs: pointer; pfilepath: cstring;
                             ppdata: ptr pointer; psize: ptr csize_t;
                             pallocationcallbacks: ptr maallocationcallbacks_436208126): maresult_436208042 {.
      cdecl, importc: "ma_vfs_open_and_read_file".}
else:
  static :
    hint("Declaration of " & "ma_vfs_open_and_read_file" &
        " already exists, not redeclaring")
when not declared(madevicepostinit):
  proc madevicepostinit*(pdevice: ptr madevice_436208034;
                         devicetype: madevicetype_436208060;
                         pplaybackdescriptor: ptr madevicedescriptor_436208274;
                         pcapturedescriptor: ptr madevicedescriptor_436208274): maresult_436208042 {.
      cdecl, importc: "ma_device_post_init".}
else:
  static :
    hint("Declaration of " & "ma_device_post_init" &
        " already exists, not redeclaring")
when not declared(macontextenumeratedevices):
  proc macontextenumeratedevices*(pcontext: ptr macontext_436208478;
                                  callback: maenumdevicescallbackproc_436208005;
                                  puserdata: pointer): maresult_436208042 {.
      cdecl, importc: "ma_context_enumerate_devices".}
else:
  static :
    hint("Declaration of " & "ma_context_enumerate_devices" &
        " already exists, not redeclaring")
when not declared(madelaygetdecay):
  proc madelaygetdecay*(pdelay: ptr madelay_436208410): cfloat {.cdecl,
      importc: "ma_delay_get_decay".}
else:
  static :
    hint("Declaration of " & "ma_delay_get_decay" &
        " already exists, not redeclaring")
when not declared(manodegetstatetime):
  proc manodegetstatetime*(pnode: pointer; state: manodestate_436208054): mauint64_436208386 {.
      cdecl, importc: "ma_node_get_state_time".}
else:
  static :
    hint("Declaration of " & "ma_node_get_state_time" &
        " already exists, not redeclaring")
when not declared(malpfnodeconfiginit):
  proc malpfnodeconfiginit*(channels: mauint32_436208046; samplerate: mauint32_436208046;
                            cutofffrequency: cdouble; order: mauint32_436208046): malpfnodeconfig_436207963 {.
      cdecl, importc: "ma_lpf_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf_node_config_init" &
        " already exists, not redeclaring")
when not declared(masoundgroupisspatializationenabled):
  proc masoundgroupisspatializationenabled*(pgroup: ptr masoundgroup_436208146): mabool32_436207983 {.
      cdecl, importc: "ma_sound_group_is_spatialization_enabled".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_is_spatialization_enabled" &
        " already exists, not redeclaring")
when not declared(manotchnodeinit):
  proc manotchnodeinit*(pnodegraph: ptr manodegraph_436207933;
                        pconfig: ptr manotchnodeconfig_436208254;
                        pallocationcallbacks: ptr maallocationcallbacks_436208126;
                        pnode: ptr manotchnode_436208084): maresult_436208042 {.
      cdecl, importc: "ma_notch_node_init".}
else:
  static :
    hint("Declaration of " & "ma_notch_node_init" &
        " already exists, not redeclaring")
when not declared(mafadersetfade):
  proc mafadersetfade*(pfader: ptr mafader_436208030; volumebeg: cfloat;
                       volumeend: cfloat; lengthinframes: mauint64_436208386): void {.
      cdecl, importc: "ma_fader_set_fade".}
else:
  static :
    hint("Declaration of " & "ma_fader_set_fade" &
        " already exists, not redeclaring")
when not declared(madecoderreadpcmframes):
  proc madecoderreadpcmframes*(pdecoder: ptr madecoder_436208076;
                               pframesout: pointer; framecount: mauint64_436208386;
                               pframesread: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_decoder_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_decoder_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatastreaminit):
  proc maresourcemanagerdatastreaminit*(presourcemanager: ptr maresourcemanager_436208318;
                                        pfilepath: cstring; flags: mauint32_436208046;
      pnotifications: ptr maresourcemanagerpipelinenotifications_436208268;
      pdatastream: ptr maresourcemanagerdatastream_436207993): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_data_stream_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_init" &
        " already exists, not redeclaring")
when not declared(mabpfnodeconfiginit):
  proc mabpfnodeconfiginit*(channels: mauint32_436208046; samplerate: mauint32_436208046;
                            cutofffrequency: cdouble; order: mauint32_436208046): mabpfnodeconfig_436208470 {.
      cdecl, importc: "ma_bpf_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_bpf_node_config_init" &
        " already exists, not redeclaring")
when not declared(masoundgroupsetpan):
  proc masoundgroupsetpan*(pgroup: ptr masoundgroup_436208146; pan: cfloat): void {.
      cdecl, importc: "ma_sound_group_set_pan".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_pan" &
        " already exists, not redeclaring")
when not declared(masoundgroupsetmindistance):
  proc masoundgroupsetmindistance*(pgroup: ptr masoundgroup_436208146;
                                   mindistance: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_min_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_min_distance" &
        " already exists, not redeclaring")
when not declared(maspatializerlistenerisenabled):
  proc maspatializerlistenerisenabled*(plistener: ptr maspatializerlistener_436208424): mabool32_436207983 {.
      cdecl, importc: "ma_spatializer_listener_is_enabled".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_is_enabled" &
        " already exists, not redeclaring")
when not declared(maspatializerlistenergetheapsize):
  proc maspatializerlistenergetheapsize*(
      pconfig: ptr maspatializerlistenerconfig_436208336;
      pheapsizeinbytes: ptr csize_t): maresult_436208042 {.cdecl,
      importc: "ma_spatializer_listener_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_heap_size" &
        " already exists, not redeclaring")
when not declared(maspinlockunlock):
  proc maspinlockunlock*(pspinlock: ptr maspinlock_436208104): maresult_436208042 {.
      cdecl, importc: "ma_spinlock_unlock".}
else:
  static :
    hint("Declaration of " & "ma_spinlock_unlock" &
        " already exists, not redeclaring")
when not declared(macontextisloopbacksupported):
  proc macontextisloopbacksupported*(pcontext: ptr macontext_436208478): mabool32_436207983 {.
      cdecl, importc: "ma_context_is_loopback_supported".}
else:
  static :
    hint("Declaration of " & "ma_context_is_loopback_supported" &
        " already exists, not redeclaring")
when not declared(maasyncnotificationpollinit):
  proc maasyncnotificationpollinit*(pnotificationpoll: ptr maasyncnotificationpoll_436208052): maresult_436208042 {.
      cdecl, importc: "ma_async_notification_poll_init".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_poll_init" &
        " already exists, not redeclaring")
when not declared(madevicejobthreadpost):
  proc madevicejobthreadpost*(pjobthread: ptr madevicejobthread_436208466;
                              pjob: ptr majob_436207973): maresult_436208042 {.
      cdecl, importc: "ma_device_job_thread_post".}
else:
  static :
    hint("Declaration of " & "ma_device_job_thread_post" &
        " already exists, not redeclaring")
when not declared(mapcmrbinitex):
  proc mapcmrbinitex*(format: maformat_436208208; channels: mauint32_436208046;
                      subbuffersizeinframes: mauint32_436208046;
                      subbuffercount: mauint32_436208046;
                      subbufferstrideinframes: mauint32_436208046;
                      poptionalpreallocatedbuffer: pointer;
                      pallocationcallbacks: ptr maallocationcallbacks_436208126;
                      prb: ptr mapcmrb_436208404): maresult_436208042 {.cdecl,
      importc: "ma_pcm_rb_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_init_ex" &
        " already exists, not redeclaring")
when not declared(macontextgetlog):
  proc macontextgetlog*(pcontext: ptr macontext_436208478): ptr malog_436207937 {.
      cdecl, importc: "ma_context_get_log".}
else:
  static :
    hint("Declaration of " & "ma_context_get_log" &
        " already exists, not redeclaring")
when not declared(mapannerconfiginit):
  proc mapannerconfiginit*(format: maformat_436208208; channels: mauint32_436208046): mapannerconfig_436208098 {.
      cdecl, importc: "ma_panner_config_init".}
else:
  static :
    hint("Declaration of " & "ma_panner_config_init" &
        " already exists, not redeclaring")
when not declared(manodegetstate):
  proc manodegetstate*(pnode: pointer): manodestate_436208054 {.cdecl,
      importc: "ma_node_get_state".}
else:
  static :
    hint("Declaration of " & "ma_node_get_state" &
        " already exists, not redeclaring")
when not declared(madataconvertersetrate):
  proc madataconvertersetrate*(pconverter: ptr madataconverter_436208226;
                               sampleratein: mauint32_436208046;
                               samplerateout: mauint32_436208046): maresult_436208042 {.
      cdecl, importc: "ma_data_converter_set_rate".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_set_rate" &
        " already exists, not redeclaring")
when not declared(madeviceinitex):
  proc madeviceinitex*(backends: ptr UncheckedArray[mabackend_436208370];
                       backendcount: mauint32_436208046;
                       pcontextconfig: ptr macontextconfig_436208188;
                       pconfig: ptr madeviceconfig_436207953;
                       pdevice: ptr madevice_436208034): maresult_436208042 {.
      cdecl, importc: "ma_device_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_device_init_ex" &
        " already exists, not redeclaring")
when not declared(mahishelf2reinit):
  proc mahishelf2reinit*(pconfig: ptr mahishelf2config_436208252;
                         pfilter: ptr mahishelf2_436208192): maresult_436208042 {.
      cdecl, importc: "ma_hishelf2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_reinit" &
        " already exists, not redeclaring")
when not declared(maenginegettime):
  proc maenginegettime*(pengine: ptr maengine_436208154): mauint64_436208386 {.
      cdecl, importc: "ma_engine_get_time".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_time" &
        " already exists, not redeclaring")
when not declared(masoundgroupgetdirectiontolistener):
  proc masoundgroupgetdirectiontolistener*(pgroup: ptr masoundgroup_436208146): mavec3f_436208100 {.
      cdecl, importc: "ma_sound_group_get_direction_to_listener".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_direction_to_listener" &
        " already exists, not redeclaring")
when not declared(maclipsamplesu8):
  proc maclipsamplesu8*(pdst: ptr mauint8_436207941; psrc: ptr maint16_436207975;
                        count: mauint64_436208386): void {.cdecl,
      importc: "ma_clip_samples_u8".}
else:
  static :
    hint("Declaration of " & "ma_clip_samples_u8" &
        " already exists, not redeclaring")
when not declared(maclippcmframes):
  proc maclippcmframes*(pdst: pointer; psrc: pointer; framecount: mauint64_436208386;
                        format: maformat_436208208; channels: mauint32_436208046): void {.
      cdecl, importc: "ma_clip_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_clip_pcm_frames" &
        " already exists, not redeclaring")
when not declared(madatasourceinit):
  proc madatasourceinit*(pconfig: ptr madatasourceconfig_436208224;
                         pdatasource: pointer): maresult_436208042 {.cdecl,
      importc: "ma_data_source_init".}
else:
  static :
    hint("Declaration of " & "ma_data_source_init" &
        " already exists, not redeclaring")
when not declared(mapagedaudiobufferdataallocatepage):
  proc mapagedaudiobufferdataallocatepage*(pdata: ptr mapagedaudiobufferdata_436208048;
      pagesizeinframes: mauint64_436208386; pinitialdata: pointer;
      pallocationcallbacks: ptr maallocationcallbacks_436208126;
      pppage: ptr ptr mapagedaudiobufferpage_436208342): maresult_436208042 {.
      cdecl, importc: "ma_paged_audio_buffer_data_allocate_page".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_allocate_page" &
        " already exists, not redeclaring")
when not declared(masounduninit):
  proc masounduninit*(psound: ptr masound_436208210): void {.cdecl,
      importc: "ma_sound_uninit".}
else:
  static :
    hint("Declaration of " & "ma_sound_uninit" &
        " already exists, not redeclaring")
when not declared(mapagedaudiobufferuninit):
  proc mapagedaudiobufferuninit*(ppagedaudiobuffer: ptr mapagedaudiobuffer_436208026): void {.
      cdecl, importc: "ma_paged_audio_buffer_uninit".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_uninit" &
        " already exists, not redeclaring")
when not declared(masoundsetstarttimeinmilliseconds):
  proc masoundsetstarttimeinmilliseconds*(psound: ptr masound_436208210;
      absoluteglobaltimeinmilliseconds: mauint64_436208386): void {.cdecl,
      importc: "ma_sound_set_start_time_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_start_time_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(machannelmapcontainschannelposition):
  proc machannelmapcontainschannelposition*(channels: mauint32_436208046;
      pchannelmap: ptr machannel_436208128; channelposition: machannel_436208128): mabool32_436207983 {.
      cdecl, importc: "ma_channel_map_contains_channel_position".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_contains_channel_position" &
        " already exists, not redeclaring")
when not declared(mawaveformsetfrequency):
  proc mawaveformsetfrequency*(pwaveform: ptr mawaveform_436208368;
                               frequency: cdouble): maresult_436208042 {.cdecl,
      importc: "ma_waveform_set_frequency".}
else:
  static :
    hint("Declaration of " & "ma_waveform_set_frequency" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerprocessjob):
  proc maresourcemanagerprocessjob*(presourcemanager: ptr maresourcemanager_436208318;
                                    pjob: ptr majob_436207973): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_process_job".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_process_job" &
        " already exists, not redeclaring")
when not declared(masoundgroupsetfadeinmilliseconds):
  proc masoundgroupsetfadeinmilliseconds*(pgroup: ptr masoundgroup_436208146;
      volumebeg: cfloat; volumeend: cfloat; fadelengthinmilliseconds: mauint64_436208386): void {.
      cdecl, importc: "ma_sound_group_set_fade_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_fade_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(madevicejobthreadinit):
  proc madevicejobthreadinit*(pconfig: ptr madevicejobthreadconfig_436208182;
                              pallocationcallbacks: ptr maallocationcallbacks_436208126;
                              pjobthread: ptr madevicejobthread_436208466): maresult_436208042 {.
      cdecl, importc: "ma_device_job_thread_init".}
else:
  static :
    hint("Declaration of " & "ma_device_job_thread_init" &
        " already exists, not redeclaring")
when not declared(madecoderuninit):
  proc madecoderuninit*(pdecoder: ptr madecoder_436208076): maresult_436208042 {.
      cdecl, importc: "ma_decoder_uninit".}
else:
  static :
    hint("Declaration of " & "ma_decoder_uninit" &
        " already exists, not redeclaring")
when not declared(machannelmapgetchannel):
  proc machannelmapgetchannel*(pchannelmap: ptr machannel_436208128;
                               channelcount: mauint32_436208046;
                               channelindex: mauint32_436208046): machannel_436208128 {.
      cdecl, importc: "ma_channel_map_get_channel".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_get_channel" &
        " already exists, not redeclaring")
when not declared(maaudiobufferrefsetdata):
  proc maaudiobufferrefsetdata*(paudiobufferref: ptr maaudiobufferref_436207997;
                                pdata: pointer; sizeinframes: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_audio_buffer_ref_set_data".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_set_data" &
        " already exists, not redeclaring")
when not declared(maaudiobufferreadpcmframes):
  proc maaudiobufferreadpcmframes*(paudiobuffer: ptr maaudiobuffer_436208298;
                                   pframesout: pointer; framecount: mauint64_436208386;
                                   loop: mabool32_436207983): mauint64_436208386 {.
      cdecl, importc: "ma_audio_buffer_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(masoundsetlooping):
  proc masoundsetlooping*(psound: ptr masound_436208210; islooping: mabool32_436207983): void {.
      cdecl, importc: "ma_sound_set_looping".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_looping" &
        " already exists, not redeclaring")
when not declared(manotch2getheapsize):
  proc manotch2getheapsize*(pconfig: ptr manotch2config_436208132;
                            pheapsizeinbytes: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_notch2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_notch2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(mapcms16tos24):
  proc mapcms16tos24*(pout: pointer; pin: pointer; count: mauint64_436208386;
                      dithermode: madithermode_436208168): void {.cdecl,
      importc: "ma_pcm_s16_to_s24".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s16_to_s24" &
        " already exists, not redeclaring")
when not declared(maspatializersetmingain):
  proc maspatializersetmingain*(pspatializer: ptr maspatializer_436207979;
                                mingain: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_min_gain".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_min_gain" &
        " already exists, not redeclaring")
when not declared(maenginelistenersetposition):
  proc maenginelistenersetposition*(pengine: ptr maengine_436208154;
                                    listenerindex: mauint32_436208046;
                                    x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_engine_listener_set_position".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_set_position" &
        " already exists, not redeclaring")
when not declared(maenginenodeinit):
  proc maenginenodeinit*(pconfig: ptr maenginenodeconfig_436208278;
                         pallocationcallbacks: ptr maallocationcallbacks_436208126;
                         penginenode: ptr maenginenode_436208402): maresult_436208042 {.
      cdecl, importc: "ma_engine_node_init".}
else:
  static :
    hint("Declaration of " & "ma_engine_node_init" &
        " already exists, not redeclaring")
when not declared(mapcmrbgetsubbuffersize):
  proc mapcmrbgetsubbuffersize*(prb: ptr mapcmrb_436208404): mauint32_436208046 {.
      cdecl, importc: "ma_pcm_rb_get_subbuffer_size".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_get_subbuffer_size" &
        " already exists, not redeclaring")
when not declared(maslotallocatorconfiginit):
  proc maslotallocatorconfiginit*(capacity: mauint32_436208046): maslotallocatorconfig_436208432 {.
      cdecl, importc: "ma_slot_allocator_config_init".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_config_init" &
        " already exists, not redeclaring")
when not declared(manodesettime):
  proc manodesettime*(pnode: pointer; localtime: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_node_set_time".}
else:
  static :
    hint("Declaration of " & "ma_node_set_time" &
        " already exists, not redeclaring")
when not declared(madelaynodesetdecay):
  proc madelaynodesetdecay*(pdelaynode: ptr madelaynode_436207969; value: cfloat): void {.
      cdecl, importc: "ma_delay_node_set_decay".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_set_decay" &
        " already exists, not redeclaring")
when not declared(masoundsetpositioning):
  proc masoundsetpositioning*(psound: ptr masound_436208210;
                              positioning: mapositioning_436208284): void {.
      cdecl, importc: "ma_sound_set_positioning".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_positioning" &
        " already exists, not redeclaring")
when not declared(manodeconfiginit):
  proc manodeconfiginit*(): manodeconfig_436208017 {.cdecl,
      importc: "ma_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_node_config_init" &
        " already exists, not redeclaring")
when not declared(majobqueuenext):
  proc majobqueuenext*(pqueue: ptr majobqueue_436208472; pjob: ptr majob_436207973): maresult_436208042 {.
      cdecl, importc: "ma_job_queue_next".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_next" &
        " already exists, not redeclaring")
when not declared(majobprocess):
  proc majobprocess*(pjob: ptr majob_436207973): maresult_436208042 {.cdecl,
      importc: "ma_job_process".}
else:
  static :
    hint("Declaration of " & "ma_job_process" &
        " already exists, not redeclaring")
when not declared(maspatializerlistenerinit):
  proc maspatializerlistenerinit*(pconfig: ptr maspatializerlistenerconfig_436208336;
      pallocationcallbacks: ptr maallocationcallbacks_436208126;
                                  plistener: ptr maspatializerlistener_436208424): maresult_436208042 {.
      cdecl, importc: "ma_spatializer_listener_init".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_init" &
        " already exists, not redeclaring")
when not declared(mapeak2uninit):
  proc mapeak2uninit*(pfilter: ptr mapeak2_436208426;
                      pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_peak2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_peak2_uninit" &
        " already exists, not redeclaring")
when not declared(mapagedaudiobufferseektopcmframe):
  proc mapagedaudiobufferseektopcmframe*(
      ppagedaudiobuffer: ptr mapagedaudiobuffer_436208026; frameindex: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_paged_audio_buffer_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(mahpf2getlatency):
  proc mahpf2getlatency*(phpf: ptr mahpf2_436208366): mauint32_436208046 {.
      cdecl, importc: "ma_hpf2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_get_latency" &
        " already exists, not redeclaring")
when not declared(malpfinit):
  proc malpfinit*(pconfig: ptr malpfconfig_436208114;
                  pallocationcallbacks: ptr maallocationcallbacks_436208126;
                  plpf: ptr malpf_436208422): maresult_436208042 {.cdecl,
      importc: "ma_lpf_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf_init" & " already exists, not redeclaring")
when not declared(maaudiobufferrefgetavailableframes):
  proc maaudiobufferrefgetavailableframes*(
      paudiobufferref: ptr maaudiobufferref_436207997;
      pavailableframes: ptr mauint64_436208386): maresult_436208042 {.cdecl,
      importc: "ma_audio_buffer_ref_get_available_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_get_available_frames" &
        " already exists, not redeclaring")
when not declared(madeinterleavepcmframes):
  proc madeinterleavepcmframes*(format: maformat_436208208; channels: mauint32_436208046;
                                framecount: mauint64_436208386;
                                pinterleavedpcmframes: pointer;
                                ppdeinterleavedpcmframes: ptr pointer): void {.
      cdecl, importc: "ma_deinterleave_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_deinterleave_pcm_frames" &
        " already exists, not redeclaring")
when not declared(mahpfnodeinit):
  proc mahpfnodeinit*(pnodegraph: ptr manodegraph_436207933;
                      pconfig: ptr mahpfnodeconfig_436208118;
                      pallocationcallbacks: ptr maallocationcallbacks_436208126;
                      pnode: ptr mahpfnode_436208142): maresult_436208042 {.
      cdecl, importc: "ma_hpf_node_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf_node_init" &
        " already exists, not redeclaring")
when not declared(mabpf2getheapsize):
  proc mabpf2getheapsize*(pconfig: ptr mabpf2config_436208204;
                          pheapsizeinbytes: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_bpf2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerjobqueue):
  when majobqueue_436208472 is typedesc:
    type
      maresourcemanagerjobqueue* = majobqueue_436208472 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9933:9
  else:
    when majobqueue_436208472 is static:
      const
        maresourcemanagerjobqueue* = majobqueue_436208472 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9933:9
    else:
      let maresourcemanagerjobqueue* = majobqueue_436208472 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9933:9
else:
  static :
    hint("Declaration of " & "ma_resource_manager_job_queue" &
        " already exists, not redeclaring")
when not declared(malpfgetlatency):
  proc malpfgetlatency*(plpf: ptr malpf_436208422): mauint32_436208046 {.cdecl,
      importc: "ma_lpf_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_lpf_get_latency" &
        " already exists, not redeclaring")
when not declared(malpf2processpcmframes):
  proc malpf2processpcmframes*(plpf: ptr malpf2_436208290; pframesout: pointer;
                               pframesin: pointer; framecount: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_lpf2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(maaudiobufferconfiginit):
  proc maaudiobufferconfiginit*(format: maformat_436208208; channels: mauint32_436208046;
                                sizeinframes: mauint64_436208386;
                                pdata: pointer;
                                pallocationcallbacks: ptr maallocationcallbacks_436208126): maaudiobufferconfig_436208102 {.
      cdecl, importc: "ma_audio_buffer_config_init".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_config_init" &
        " already exists, not redeclaring")
when not declared(macontextinit):
  proc macontextinit*(backends: ptr UncheckedArray[mabackend_436208370];
                      backendcount: mauint32_436208046;
                      pconfig: ptr macontextconfig_436208188;
                      pcontext: ptr macontext_436208478): maresult_436208042 {.
      cdecl, importc: "ma_context_init".}
else:
  static :
    hint("Declaration of " & "ma_context_init" &
        " already exists, not redeclaring")
when not declared(masoundgroupgettimeinpcmframes):
  proc masoundgroupgettimeinpcmframes*(pgroup: ptr masoundgroup_436208146): mauint64_436208386 {.
      cdecl, importc: "ma_sound_group_get_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(madeviceconfiginit):
  proc madeviceconfiginit*(devicetype: madevicetype_436208060): madeviceconfig_436207953 {.
      cdecl, importc: "ma_device_config_init".}
else:
  static :
    hint("Declaration of " & "ma_device_config_init" &
        " already exists, not redeclaring")
when not declared(mamalloc):
  proc mamalloc*(sz: csize_t; pallocationcallbacks: ptr maallocationcallbacks_436208126): pointer {.
      cdecl, importc: "ma_malloc".}
else:
  static :
    hint("Declaration of " & "ma_malloc" & " already exists, not redeclaring")
when not declared(machannelconverterprocesspcmframes):
  proc machannelconverterprocesspcmframes*(pconverter: ptr machannelconverter_436208186;
      pframesout: pointer; pframesin: pointer; framecount: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_channel_converter_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(mavfsread):
  proc mavfsread*(pvfs: pointer; file: mavfsfile_436208308; pdst: pointer;
                  sizeinbytes: csize_t; pbytesread: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_vfs_read".}
else:
  static :
    hint("Declaration of " & "ma_vfs_read" & " already exists, not redeclaring")
when not declared(machannelconvertergetinputchannelmap):
  proc machannelconvertergetinputchannelmap*(pconverter: ptr machannelconverter_436208186;
      pchannelmap: ptr machannel_436208128; channelmapcap: csize_t): maresult_436208042 {.
      cdecl, importc: "ma_channel_converter_get_input_channel_map".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_get_input_channel_map" &
        " already exists, not redeclaring")
when not declared(madatasourcegetdataformat):
  proc madatasourcegetdataformat*(pdatasource: pointer; pformat: ptr maformat_436208208;
                                  pchannels: ptr mauint32_436208046;
                                  psamplerate: ptr mauint32_436208046;
                                  pchannelmap: ptr machannel_436208128;
                                  channelmapcap: csize_t): maresult_436208042 {.
      cdecl, importc: "ma_data_source_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_data_format" &
        " already exists, not redeclaring")
when not declared(masplitternodeuninit):
  proc masplitternodeuninit*(psplitternode: ptr masplitternode_436207939;
                             pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_splitter_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_splitter_node_uninit" &
        " already exists, not redeclaring")
when not declared(madevicegetname):
  proc madevicegetname*(pdevice: ptr madevice_436208034; typearg: madevicetype_436208060;
                        pname: cstring; namecap: csize_t;
                        plengthnotincludingnullterminator: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_device_get_name".}
else:
  static :
    hint("Declaration of " & "ma_device_get_name" &
        " already exists, not redeclaring")
when not declared(mapcmrbseekwrite):
  proc mapcmrbseekwrite*(prb: ptr mapcmrb_436208404; offsetinframes: mauint32_436208046): maresult_436208042 {.
      cdecl, importc: "ma_pcm_rb_seek_write".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_seek_write" &
        " already exists, not redeclaring")
when not declared(malpf1clearcache):
  proc malpf1clearcache*(plpf: ptr malpf1_436208246): maresult_436208042 {.
      cdecl, importc: "ma_lpf1_clear_cache".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_clear_cache" &
        " already exists, not redeclaring")
when not declared(madatasourcereadpcmframes):
  proc madatasourcereadpcmframes*(pdatasource: pointer; pframesout: pointer;
                                  framecount: mauint64_436208386;
                                  pframesread: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_data_source_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(madataconverterreset):
  proc madataconverterreset*(pconverter: ptr madataconverter_436208226): maresult_436208042 {.
      cdecl, importc: "ma_data_converter_reset".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_reset" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerregisterfile):
  proc maresourcemanagerregisterfile*(presourcemanager: ptr maresourcemanager_436208318;
                                      pfilepath: cstring; flags: mauint32_436208046): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_register_file".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_register_file" &
        " already exists, not redeclaring")
when not declared(masoundgetlistenerindex):
  proc masoundgetlistenerindex*(psound: ptr masound_436208210): mauint32_436208046 {.
      cdecl, importc: "ma_sound_get_listener_index".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_listener_index" &
        " already exists, not redeclaring")
when not declared(malinearresamplerreset):
  proc malinearresamplerreset*(presampler: ptr malinearresampler_436208448): maresult_436208042 {.
      cdecl, importc: "ma_linear_resampler_reset".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_reset" &
        " already exists, not redeclaring")
when not declared(maasyncnotificationsignal):
  proc maasyncnotificationsignal*(pnotification: pointer): maresult_436208042 {.
      cdecl, importc: "ma_async_notification_signal".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_signal" &
        " already exists, not redeclaring")
when not declared(madecodergetcursorinpcmframes):
  proc madecodergetcursorinpcmframes*(pdecoder: ptr madecoder_436208076;
                                      pcursor: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_decoder_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_decoder_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatastreamgetdataformat):
  proc maresourcemanagerdatastreamgetdataformat*(
      pdatastream: ptr maresourcemanagerdatastream_436207993;
      pformat: ptr maformat_436208208; pchannels: ptr mauint32_436208046;
      psamplerate: ptr mauint32_436208046; pchannelmap: ptr machannel_436208128;
      channelmapcap: csize_t): maresult_436208042 {.cdecl,
      importc: "ma_resource_manager_data_stream_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_get_data_format" &
        " already exists, not redeclaring")
when not declared(masoundgroupsetposition):
  proc masoundgroupsetposition*(pgroup: ptr masoundgroup_436208146; x: cfloat;
                                y: cfloat; z: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_position".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_position" &
        " already exists, not redeclaring")
when not declared(maenginegetlog):
  proc maenginegetlog*(pengine: ptr maengine_436208154): ptr malog_436207937 {.
      cdecl, importc: "ma_engine_get_log".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_log" &
        " already exists, not redeclaring")
when not declared(manodedetachoutputbus):
  proc manodedetachoutputbus*(pnode: pointer; outputbusindex: mauint32_436208046): maresult_436208042 {.
      cdecl, importc: "ma_node_detach_output_bus".}
else:
  static :
    hint("Declaration of " & "ma_node_detach_output_bus" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatabuffersetlooping):
  proc maresourcemanagerdatabuffersetlooping*(
      pdatabuffer: ptr maresourcemanagerdatabuffer_436208388;
      islooping: mabool32_436207983): maresult_436208042 {.cdecl,
      importc: "ma_resource_manager_data_buffer_set_looping".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_set_looping" &
        " already exists, not redeclaring")
when not declared(masoundstop):
  proc masoundstop*(psound: ptr masound_436208210): maresult_436208042 {.cdecl,
      importc: "ma_sound_stop".}
else:
  static :
    hint("Declaration of " & "ma_sound_stop" &
        " already exists, not redeclaring")
when not declared(mabpfnodeuninit):
  proc mabpfnodeuninit*(pnode: ptr mabpfnode_436208062;
                        pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_bpf_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_bpf_node_uninit" &
        " already exists, not redeclaring")
when not declared(masplitternodeinit):
  proc masplitternodeinit*(pnodegraph: ptr manodegraph_436207933;
                           pconfig: ptr masplitternodeconfig_436208120;
                           pallocationcallbacks: ptr maallocationcallbacks_436208126;
                           psplitternode: ptr masplitternode_436207939): maresult_436208042 {.
      cdecl, importc: "ma_splitter_node_init".}
else:
  static :
    hint("Declaration of " & "ma_splitter_node_init" &
        " already exists, not redeclaring")
when not declared(maaudiobufferrefmap):
  proc maaudiobufferrefmap*(paudiobufferref: ptr maaudiobufferref_436207997;
                            ppframesout: ptr pointer; pframecount: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_audio_buffer_ref_map".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_map" &
        " already exists, not redeclaring")
when not declared(mapagedaudiobufferinit):
  proc mapagedaudiobufferinit*(pconfig: ptr mapagedaudiobufferconfig_436208296;
                               ppagedaudiobuffer: ptr mapagedaudiobuffer_436208026): maresult_436208042 {.
      cdecl, importc: "ma_paged_audio_buffer_init".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_init" &
        " already exists, not redeclaring")
when not declared(mapcmrbcommitread):
  proc mapcmrbcommitread*(prb: ptr mapcmrb_436208404; sizeinframes: mauint32_436208046): maresult_436208042 {.
      cdecl, importc: "ma_pcm_rb_commit_read".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_commit_read" &
        " already exists, not redeclaring")
when not declared(macopyandapplyvolumefactors16):
  proc macopyandapplyvolumefactors16*(psamplesout: ptr maint16_436207975;
                                      psamplesin: ptr maint16_436207975;
                                      samplecount: mauint64_436208386;
                                      factor: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_s16".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_s16" &
        " already exists, not redeclaring")
when not declared(masoundgroupsetdopplerfactor):
  proc masoundgroupsetdopplerfactor*(pgroup: ptr masoundgroup_436208146;
                                     dopplerfactor: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_doppler_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_doppler_factor" &
        " already exists, not redeclaring")
when not declared(mabpfuninit):
  proc mabpfuninit*(pbpf: ptr mabpf_436208074;
                    pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_bpf_uninit".}
else:
  static :
    hint("Declaration of " & "ma_bpf_uninit" &
        " already exists, not redeclaring")
when not declared(masoundgroupgetlistenerindex):
  proc masoundgroupgetlistenerindex*(pgroup: ptr masoundgroup_436208146): mauint32_436208046 {.
      cdecl, importc: "ma_sound_group_get_listener_index".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_listener_index" &
        " already exists, not redeclaring")
when not declared(masilencepcmframes):
  proc masilencepcmframes*(p: pointer; framecount: mauint64_436208386;
                           format: maformat_436208208; channels: mauint32_436208046): void {.
      cdecl, importc: "ma_silence_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_silence_pcm_frames" &
        " already exists, not redeclaring")
when not declared(madataconvertergetinputlatency):
  proc madataconvertergetinputlatency*(pconverter: ptr madataconverter_436208226): mauint64_436208386 {.
      cdecl, importc: "ma_data_converter_get_input_latency".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_input_latency" &
        " already exists, not redeclaring")
when not declared(malinearresamplerprocesspcmframes):
  proc malinearresamplerprocesspcmframes*(presampler: ptr malinearresampler_436208448;
      pframesin: pointer; pframecountin: ptr mauint64_436208386;
      pframesout: pointer; pframecountout: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_linear_resampler_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(maspatializerlistenergetposition):
  proc maspatializerlistenergetposition*(plistener: ptr maspatializerlistener_436208424): mavec3f_436208100 {.
      cdecl, importc: "ma_spatializer_listener_get_position".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_position" &
        " already exists, not redeclaring")
when not declared(madatasourcegetcursorinseconds):
  proc madatasourcegetcursorinseconds*(pdatasource: pointer; pcursor: ptr cfloat): maresult_436208042 {.
      cdecl, importc: "ma_data_source_get_cursor_in_seconds".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_cursor_in_seconds" &
        " already exists, not redeclaring")
when not declared(macopyandapplyvolumefactorpcmframes):
  proc macopyandapplyvolumefactorpcmframes*(pframesout: pointer;
      pframesin: pointer; framecount: mauint64_436208386; format: maformat_436208208;
      channels: mauint32_436208046; factor: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_pcm_frames" &
        " already exists, not redeclaring")
when not declared(madataconvertergetheapsize):
  proc madataconvertergetheapsize*(pconfig: ptr madataconverterconfig_436208256;
                                   pheapsizeinbytes: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_data_converter_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_heap_size" &
        " already exists, not redeclaring")
when not declared(maloshelfnodereinit):
  proc maloshelfnodereinit*(pconfig: ptr maloshelfconfig;
                            pnode: ptr maloshelfnode_436208032): maresult_436208042 {.
      cdecl, importc: "ma_loshelf_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_loshelf_node_reinit" &
        " already exists, not redeclaring")
when not declared(masoundgroupinit):
  proc masoundgroupinit*(pengine: ptr maengine_436208154; flags: mauint32_436208046;
                         pparentgroup: ptr masoundgroup_436208146;
                         pgroup: ptr masoundgroup_436208146): maresult_436208042 {.
      cdecl, importc: "ma_sound_group_init".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_init" &
        " already exists, not redeclaring")
when not declared(maeventwait):
  proc maeventwait*(pevent: ptr maevent_436208160): maresult_436208042 {.cdecl,
      importc: "ma_event_wait".}
else:
  static :
    hint("Declaration of " & "ma_event_wait" &
        " already exists, not redeclaring")
when not declared(maaudiobufferrefunmap):
  proc maaudiobufferrefunmap*(paudiobufferref: ptr maaudiobufferref_436207997;
                              framecount: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_audio_buffer_ref_unmap".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_unmap" &
        " already exists, not redeclaring")
when not declared(masoundgroupsetstarttimeinmilliseconds):
  proc masoundgroupsetstarttimeinmilliseconds*(pgroup: ptr masoundgroup_436208146;
      absoluteglobaltimeinmilliseconds: mauint64_436208386): void {.cdecl,
      importc: "ma_sound_group_set_start_time_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_start_time_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(madatasourcegetlooppointinpcmframes):
  proc madatasourcegetlooppointinpcmframes*(pdatasource: pointer;
      ploopbeginframes: ptr mauint64_436208386; ploopendinframes: ptr mauint64_436208386): void {.
      cdecl, importc: "ma_data_source_get_loop_point_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_loop_point_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(masoundsetspatializationenabled):
  proc masoundsetspatializationenabled*(psound: ptr masound_436208210;
                                        enabled: mabool32_436207983): void {.
      cdecl, importc: "ma_sound_set_spatialization_enabled".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_spatialization_enabled" &
        " already exists, not redeclaring")
when not declared(maspatializergetheapsize):
  proc maspatializergetheapsize*(pconfig: ptr maspatializerconfig_436208082;
                                 pheapsizeinbytes: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_spatializer_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_heap_size" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerjob):
  when majob_436207973 is typedesc:
    type
      maresourcemanagerjob* = majob_436207973 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9928:9
  else:
    when majob_436207973 is static:
      const
        maresourcemanagerjob* = majob_436207973 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9928:9
    else:
      let maresourcemanagerjob* = majob_436207973 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:9928:9
else:
  static :
    hint("Declaration of " & "ma_resource_manager_job" &
        " already exists, not redeclaring")
when not declared(mapcmu8tos16):
  proc mapcmu8tos16*(pout: pointer; pin: pointer; count: mauint64_436208386;
                     dithermode: madithermode_436208168): void {.cdecl,
      importc: "ma_pcm_u8_to_s16".}
else:
  static :
    hint("Declaration of " & "ma_pcm_u8_to_s16" &
        " already exists, not redeclaring")
when not declared(mapcmrbavailableread):
  proc mapcmrbavailableread*(prb: ptr mapcmrb_436208404): mauint32_436208046 {.
      cdecl, importc: "ma_pcm_rb_available_read".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_available_read" &
        " already exists, not redeclaring")
when not declared(mapcmrbgetsubbufferstride):
  proc mapcmrbgetsubbufferstride*(prb: ptr mapcmrb_436208404): mauint32_436208046 {.
      cdecl, importc: "ma_pcm_rb_get_subbuffer_stride".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_get_subbuffer_stride" &
        " already exists, not redeclaring")
when not declared(masoundgroupsetmingain):
  proc masoundgroupsetmingain*(pgroup: ptr masoundgroup_436208146;
                               mingain: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_min_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_min_gain" &
        " already exists, not redeclaring")
when not declared(masoundgroupsetdirectionalattenuationfactor):
  proc masoundgroupsetdirectionalattenuationfactor*(pgroup: ptr masoundgroup_436208146;
      directionalattenuationfactor: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_directional_attenuation_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_directional_attenuation_factor" &
        " already exists, not redeclaring")
when not declared(marbseekwrite):
  proc marbseekwrite*(prb: ptr marb_436208144; offsetinbytes: csize_t): maresult_436208042 {.
      cdecl, importc: "ma_rb_seek_write".}
else:
  static :
    hint("Declaration of " & "ma_rb_seek_write" &
        " already exists, not redeclaring")
when not declared(maresamplerprocesspcmframes):
  proc maresamplerprocesspcmframes*(presampler: ptr maresampler_436207965;
                                    pframesin: pointer;
                                    pframecountin: ptr mauint64_436208386;
                                    pframesout: pointer;
                                    pframecountout: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_resampler_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_resampler_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(madelaynodegetdecay):
  proc madelaynodegetdecay*(pdelaynode: ptr madelaynode_436207969): cfloat {.
      cdecl, importc: "ma_delay_node_get_decay".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_get_decay" &
        " already exists, not redeclaring")
when not declared(mapeak2processpcmframes):
  proc mapeak2processpcmframes*(pfilter: ptr mapeak2_436208426;
                                pframesout: pointer; pframesin: pointer;
                                framecount: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_peak2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_peak2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(macontextconfiginit):
  proc macontextconfiginit*(): macontextconfig_436208188 {.cdecl,
      importc: "ma_context_config_init".}
else:
  static :
    hint("Declaration of " & "ma_context_config_init" &
        " already exists, not redeclaring")
when not declared(maencoderconfiginit):
  proc maencoderconfiginit*(encodingformat: maencodingformat_436208028;
                            format: maformat_436208208; channels: mauint32_436208046;
                            samplerate: mauint32_436208046): maencoderconfig_436208162 {.
      cdecl, importc: "ma_encoder_config_init".}
else:
  static :
    hint("Declaration of " & "ma_encoder_config_init" &
        " already exists, not redeclaring")
when not declared(maengineplaysoundex):
  proc maengineplaysoundex*(pengine: ptr maengine_436208154; pfilepath: cstring;
                            pnode: pointer; nodeinputbusindex: mauint32_436208046): maresult_436208042 {.
      cdecl, importc: "ma_engine_play_sound_ex".}
else:
  static :
    hint("Declaration of " & "ma_engine_play_sound_ex" &
        " already exists, not redeclaring")
when not declared(masoundgroupsetfadeinpcmframes):
  proc masoundgroupsetfadeinpcmframes*(pgroup: ptr masoundgroup_436208146;
                                       volumebeg: cfloat; volumeend: cfloat;
                                       fadelengthinframes: mauint64_436208386): void {.
      cdecl, importc: "ma_sound_group_set_fade_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_fade_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(malogcallbackinit):
  proc malogcallbackinit*(onlog: malogcallbackproc_436208164; puserdata: pointer): malogcallback_436207989 {.
      cdecl, importc: "ma_log_callback_init".}
else:
  static :
    hint("Declaration of " & "ma_log_callback_init" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerpostjobquit):
  proc maresourcemanagerpostjobquit*(presourcemanager: ptr maresourcemanager_436208318): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_post_job_quit".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_post_job_quit" &
        " already exists, not redeclaring")
when not declared(marbgetsubbuffersize):
  proc marbgetsubbuffersize*(prb: ptr marb_436208144): csize_t {.cdecl,
      importc: "ma_rb_get_subbuffer_size".}
else:
  static :
    hint("Declaration of " & "ma_rb_get_subbuffer_size" &
        " already exists, not redeclaring")
when not declared(macopyandapplyvolumefactors24):
  proc macopyandapplyvolumefactors24*(psamplesout: pointer; psamplesin: pointer;
                                      samplecount: mauint64_436208386;
                                      factor: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_s24".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_s24" &
        " already exists, not redeclaring")
when not declared(mahishelfnodeinit):
  proc mahishelfnodeinit*(pnodegraph: ptr manodegraph_436207933;
                          pconfig: ptr mahishelfnodeconfig_436208378;
                          pallocationcallbacks: ptr maallocationcallbacks_436208126;
                          pnode: ptr mahishelfnode_436208240): maresult_436208042 {.
      cdecl, importc: "ma_hishelf_node_init".}
else:
  static :
    hint("Declaration of " & "ma_hishelf_node_init" &
        " already exists, not redeclaring")
when not declared(maversionstring):
  proc maversionstring*(): cstring {.cdecl, importc: "ma_version_string".}
else:
  static :
    hint("Declaration of " & "ma_version_string" &
        " already exists, not redeclaring")
when not declared(malpf2init):
  proc malpf2init*(pconfig: ptr malpf2config;
                   pallocationcallbacks: ptr maallocationcallbacks_436208126;
                   plpf: ptr malpf2_436208290): maresult_436208042 {.cdecl,
      importc: "ma_lpf2_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_init" & " already exists, not redeclaring")
when not declared(maresourcemanagerdatasourceinitw):
  proc maresourcemanagerdatasourceinitw*(
      presourcemanager: ptr maresourcemanager_436208318; pname: ptr wchart_436208248;
      flags: mauint32_436208046;
      pnotifications: ptr maresourcemanagerpipelinenotifications_436208268;
      pdatasource: ptr maresourcemanagerdatasource_436208440): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_data_source_init_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_init_w" &
        " already exists, not redeclaring")
when not declared(madecoderinitvfs):
  proc madecoderinitvfs*(pvfs: pointer; pfilepath: cstring;
                         pconfig: ptr madecoderconfig_436208200;
                         pdecoder: ptr madecoder_436208076): maresult_436208042 {.
      cdecl, importc: "ma_decoder_init_vfs".}
else:
  static :
    hint("Declaration of " & "ma_decoder_init_vfs" &
        " already exists, not redeclaring")
when not declared(mahpfgetheapsize):
  proc mahpfgetheapsize*(pconfig: ptr mahpfconfig_436208460;
                         pheapsizeinbytes: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_hpf_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_hpf_get_heap_size" &
        " already exists, not redeclaring")
when not declared(masoundgroupgetcurrentfadevolume):
  proc masoundgroupgetcurrentfadevolume*(pgroup: ptr masoundgroup_436208146): cfloat {.
      cdecl, importc: "ma_sound_group_get_current_fade_volume".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_current_fade_volume" &
        " already exists, not redeclaring")
when not declared(manotchnodeuninit):
  proc manotchnodeuninit*(pnode: ptr manotchnode_436208084;
                          pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_notch_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_notch_node_uninit" &
        " already exists, not redeclaring")
when not declared(masoundgroupgetpositioning):
  proc masoundgroupgetpositioning*(pgroup: ptr masoundgroup_436208146): mapositioning_436208284 {.
      cdecl, importc: "ma_sound_group_get_positioning".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_positioning" &
        " already exists, not redeclaring")
when not declared(marbgetsubbufferptr):
  proc marbgetsubbufferptr*(prb: ptr marb_436208144; subbufferindex: csize_t;
                            pbuffer: pointer): pointer {.cdecl,
      importc: "ma_rb_get_subbuffer_ptr".}
else:
  static :
    hint("Declaration of " & "ma_rb_get_subbuffer_ptr" &
        " already exists, not redeclaring")
when not declared(magetbytespersample):
  proc magetbytespersample*(format: maformat_436208208): mauint32_436208046 {.
      cdecl, importc: "ma_get_bytes_per_sample".}
else:
  static :
    hint("Declaration of " & "ma_get_bytes_per_sample" &
        " already exists, not redeclaring")
when not declared(mahpf1getlatency):
  proc mahpf1getlatency*(phpf: ptr mahpf1_436208096): mauint32_436208046 {.
      cdecl, importc: "ma_hpf1_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_get_latency" &
        " already exists, not redeclaring")
when not declared(macontextgetdeviceinfo):
  proc macontextgetdeviceinfo*(pcontext: ptr macontext_436208478;
                               devicetype: madevicetype_436208060;
                               pdeviceid: ptr madeviceid_436208334;
                               pdeviceinfo: ptr madeviceinfo_436208194): maresult_436208042 {.
      cdecl, importc: "ma_context_get_device_info".}
else:
  static :
    hint("Declaration of " & "ma_context_get_device_info" &
        " already exists, not redeclaring")
when not declared(madataconvertergetrequiredinputframecount):
  proc madataconvertergetrequiredinputframecount*(
      pconverter: ptr madataconverter_436208226; outputframecount: mauint64_436208386;
      pinputframecount: ptr mauint64_436208386): maresult_436208042 {.cdecl,
      importc: "ma_data_converter_get_required_input_frame_count".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_required_input_frame_count" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerdatabufferinitex):
  proc maresourcemanagerdatabufferinitex*(
      presourcemanager: ptr maresourcemanager_436208318;
      pconfig: ptr maresourcemanagerdatasourceconfig_436208322;
      pdatabuffer: ptr maresourcemanagerdatabuffer_436208388): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_data_buffer_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_init_ex" &
        " already exists, not redeclaring")
when not declared(malpf1getheapsize):
  proc malpf1getheapsize*(pconfig: ptr malpf1config_436207991;
                          pheapsizeinbytes: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_lpf1_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_get_heap_size" &
        " already exists, not redeclaring")
when not declared(malpf2clearcache):
  proc malpf2clearcache*(plpf: ptr malpf2_436208290): maresult_436208042 {.
      cdecl, importc: "ma_lpf2_clear_cache".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_clear_cache" &
        " already exists, not redeclaring")
when not declared(mahishelf2processpcmframes):
  proc mahishelf2processpcmframes*(pfilter: ptr mahishelf2_436208192;
                                   pframesout: pointer; pframesin: pointer;
                                   framecount: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_hishelf2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerunregisterdataw):
  proc maresourcemanagerunregisterdataw*(
      presourcemanager: ptr maresourcemanager_436208318; pname: ptr wchart_436208248): maresult_436208042 {.
      cdecl, importc: "ma_resource_manager_unregister_data_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_unregister_data_w" &
        " already exists, not redeclaring")
when not declared(malpfnodereinit):
  proc malpfnodereinit*(pconfig: ptr malpfconfig_436208114; pnode: ptr malpfnode_436208348): maresult_436208042 {.
      cdecl, importc: "ma_lpf_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_lpf_node_reinit" &
        " already exists, not redeclaring")
when not declared(mawaveformsetsamplerate):
  proc mawaveformsetsamplerate*(pwaveform: ptr mawaveform_436208368;
                                samplerate: mauint32_436208046): maresult_436208042 {.
      cdecl, importc: "ma_waveform_set_sample_rate".}
else:
  static :
    hint("Declaration of " & "ma_waveform_set_sample_rate" &
        " already exists, not redeclaring")
when not declared(masoundgroupinitex):
  proc masoundgroupinitex*(pengine: ptr maengine_436208154;
                           pconfig: ptr masoundgroupconfig_436208474;
                           pgroup: ptr masoundgroup_436208146): maresult_436208042 {.
      cdecl, importc: "ma_sound_group_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_init_ex" &
        " already exists, not redeclaring")
when not declared(masoundgroupsetpinnedlistenerindex):
  proc masoundgroupsetpinnedlistenerindex*(pgroup: ptr masoundgroup_436208146;
      listenerindex: mauint32_436208046): void {.cdecl,
      importc: "ma_sound_group_set_pinned_listener_index".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_pinned_listener_index" &
        " already exists, not redeclaring")
when not declared(mavfsopen):
  proc mavfsopen*(pvfs: pointer; pfilepath: cstring; openmode: mauint32_436208046;
                  pfile: ptr mavfsfile_436208308): maresult_436208042 {.cdecl,
      importc: "ma_vfs_open".}
else:
  static :
    hint("Declaration of " & "ma_vfs_open" & " already exists, not redeclaring")
when not declared(madelaysetdry):
  proc madelaysetdry*(pdelay: ptr madelay_436208410; value: cfloat): void {.
      cdecl, importc: "ma_delay_set_dry".}
else:
  static :
    hint("Declaration of " & "ma_delay_set_dry" &
        " already exists, not redeclaring")
when not declared(maconvertframes):
  proc maconvertframes*(pout: pointer; framecountout: mauint64_436208386;
                        formatout: maformat_436208208; channelsout: mauint32_436208046;
                        samplerateout: mauint32_436208046; pin: pointer;
                        framecountin: mauint64_436208386; formatin: maformat_436208208;
                        channelsin: mauint32_436208046; sampleratein: mauint32_436208046): mauint64_436208386 {.
      cdecl, importc: "ma_convert_frames".}
else:
  static :
    hint("Declaration of " & "ma_convert_frames" &
        " already exists, not redeclaring")
when not declared(manodegetheapsize):
  proc manodegetheapsize*(pnodegraph: ptr manodegraph_436207933;
                          pconfig: ptr manodeconfig_436208017;
                          pheapsizeinbytes: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_node_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_node_get_heap_size" &
        " already exists, not redeclaring")
when not declared(manodeinit):
  proc manodeinit*(pnodegraph: ptr manodegraph_436207933;
                   pconfig: ptr manodeconfig_436208017;
                   pallocationcallbacks: ptr maallocationcallbacks_436208126;
                   pnode: pointer): maresult_436208042 {.cdecl,
      importc: "ma_node_init".}
else:
  static :
    hint("Declaration of " & "ma_node_init" & " already exists, not redeclaring")
when not declared(maspatializerlistenersetenabled):
  proc maspatializerlistenersetenabled*(plistener: ptr maspatializerlistener_436208424;
                                        isenabled: mabool32_436207983): void {.
      cdecl, importc: "ma_spatializer_listener_set_enabled".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_enabled" &
        " already exists, not redeclaring")
when not declared(maspatializerlistenergetcone):
  proc maspatializerlistenergetcone*(plistener: ptr maspatializerlistener_436208424;
                                     pinnerangleinradians: ptr cfloat;
                                     pouterangleinradians: ptr cfloat;
                                     poutergain: ptr cfloat): void {.cdecl,
      importc: "ma_spatializer_listener_get_cone".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_cone" &
        " already exists, not redeclaring")
when not declared(maencoderwritepcmframes):
  proc maencoderwritepcmframes*(pencoder: ptr maencoder_436208040;
                                pframesin: pointer; framecount: mauint64_436208386;
                                pframeswritten: ptr mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_encoder_write_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_encoder_write_pcm_frames" &
        " already exists, not redeclaring")
when not declared(madevicejobthreadconfiginit):
  proc madevicejobthreadconfiginit*(): madevicejobthreadconfig_436208182 {.
      cdecl, importc: "ma_device_job_thread_config_init".}
else:
  static :
    hint("Declaration of " & "ma_device_job_thread_config_init" &
        " already exists, not redeclaring")
when not declared(Masizemax):
  when 4294967295 is static:
    const
      Masizemax* = 4294967295'i64 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3733:13
  else:
    let Masizemax* = 4294967295'i64 ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3733:13
else:
  static :
    hint("Declaration of " & "MA_SIZE_MAX" & " already exists, not redeclaring")
when not declared(mahpf1uninit):
  proc mahpf1uninit*(phpf: ptr mahpf1_436208096;
                     pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_hpf1_uninit".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_uninit" &
        " already exists, not redeclaring")
when not declared(mapcmf32tos24):
  proc mapcmf32tos24*(pout: pointer; pin: pointer; count: mauint64_436208386;
                      dithermode: madithermode_436208168): void {.cdecl,
      importc: "ma_pcm_f32_to_s24".}
else:
  static :
    hint("Declaration of " & "ma_pcm_f32_to_s24" &
        " already exists, not redeclaring")
when not declared(maloguninit):
  proc maloguninit*(plog: ptr malog_436207937): void {.cdecl,
      importc: "ma_log_uninit".}
else:
  static :
    hint("Declaration of " & "ma_log_uninit" &
        " already exists, not redeclaring")
when not declared(mafree):
  proc mafree*(p: pointer; pallocationcallbacks: ptr maallocationcallbacks_436208126): void {.
      cdecl, importc: "ma_free".}
else:
  static :
    hint("Declaration of " & "ma_free" & " already exists, not redeclaring")
when not declared(masoundsetfadeinpcmframes):
  proc masoundsetfadeinpcmframes*(psound: ptr masound_436208210;
                                  volumebeg: cfloat; volumeend: cfloat;
                                  fadelengthinframes: mauint64_436208386): void {.
      cdecl, importc: "ma_sound_set_fade_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_fade_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(Matrue):
  when 1 is static:
    const
      Matrue* = 1            ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3714:9
  else:
    let Matrue* = 1          ## Generated based on /home/jason/Documents/miniaudio/src/miniaudio/miniaudio.h:3714:9
else:
  static :
    hint("Declaration of " & "MA_TRUE" & " already exists, not redeclaring")
when not declared(mapcms24tou8):
  proc mapcms24tou8*(pout: pointer; pin: pointer; count: mauint64_436208386;
                     dithermode: madithermode_436208168): void {.cdecl,
      importc: "ma_pcm_s24_to_u8".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s24_to_u8" &
        " already exists, not redeclaring")
when not declared(masoundgetdataformat):
  proc masoundgetdataformat*(psound: ptr masound_436208210;
                             pformat: ptr maformat_436208208;
                             pchannels: ptr mauint32_436208046;
                             psamplerate: ptr mauint32_436208046;
                             pchannelmap: ptr machannel_436208128;
                             channelmapcap: csize_t): maresult_436208042 {.
      cdecl, importc: "ma_sound_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_data_format" &
        " already exists, not redeclaring")
when not declared(maspatializergetrelativepositionanddirection):
  proc maspatializergetrelativepositionanddirection*(
      pspatializer: ptr maspatializer_436207979;
      plistener: ptr maspatializerlistener_436208424; prelativepos: ptr mavec3f_436208100;
      prelativedir: ptr mavec3f_436208100): void {.cdecl,
      importc: "ma_spatializer_get_relative_position_and_direction".}
else:
  static :
    hint("Declaration of " &
        "ma_spatializer_get_relative_position_and_direction" &
        " already exists, not redeclaring")
when not declared(malpf2getheapsize):
  proc malpf2getheapsize*(pconfig: ptr malpf2config;
                          pheapsizeinbytes: ptr csize_t): maresult_436208042 {.
      cdecl, importc: "ma_lpf2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(manotch2reinit):
  proc manotch2reinit*(pconfig: ptr manotch2config_436208132;
                       pfilter: ptr manotch2_436208244): maresult_436208042 {.
      cdecl, importc: "ma_notch2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_notch2_reinit" &
        " already exists, not redeclaring")
when not declared(maspatializerlistenersetdirection):
  proc maspatializerlistenersetdirection*(plistener: ptr maspatializerlistener_436208424;
      x: cfloat; y: cfloat; z: cfloat): void {.cdecl,
      importc: "ma_spatializer_listener_set_direction".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_direction" &
        " already exists, not redeclaring")
when not declared(maspatializersetvelocity):
  proc maspatializersetvelocity*(pspatializer: ptr maspatializer_436207979;
                                 x: cfloat; y: cfloat; z: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_velocity".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_velocity" &
        " already exists, not redeclaring")
when not declared(maresamplerinit):
  proc maresamplerinit*(pconfig: ptr maresamplerconfig_436208178;
                        pallocationcallbacks: ptr maallocationcallbacks_436208126;
                        presampler: ptr maresampler_436207965): maresult_436208042 {.
      cdecl, importc: "ma_resampler_init".}
else:
  static :
    hint("Declaration of " & "ma_resampler_init" &
        " already exists, not redeclaring")
when not declared(maconvertpcmframesformat):
  proc maconvertpcmframesformat*(pout: pointer; formatout: maformat_436208208;
                                 pin: pointer; formatin: maformat_436208208;
                                 framecount: mauint64_436208386;
                                 channels: mauint32_436208046;
                                 dithermode: madithermode_436208168): void {.
      cdecl, importc: "ma_convert_pcm_frames_format".}
else:
  static :
    hint("Declaration of " & "ma_convert_pcm_frames_format" &
        " already exists, not redeclaring")
when not declared(mahishelf2init):
  proc mahishelf2init*(pconfig: ptr mahishelf2config_436208252;
                       pallocationcallbacks: ptr maallocationcallbacks_436208126;
                       pfilter: ptr mahishelf2_436208192): maresult_436208042 {.
      cdecl, importc: "ma_hishelf2_init".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_init" &
        " already exists, not redeclaring")
when not declared(madatasourceseektopcmframe):
  proc madatasourceseektopcmframe*(pdatasource: pointer; frameindex: mauint64_436208386): maresult_436208042 {.
      cdecl, importc: "ma_data_source_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_data_source_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(marealloc):
  proc marealloc*(p: pointer; sz: csize_t;
                  pallocationcallbacks: ptr maallocationcallbacks_436208126): pointer {.
      cdecl, importc: "ma_realloc".}
else:
  static :
    hint("Declaration of " & "ma_realloc" & " already exists, not redeclaring")
when not declared(maresourcemanagerdatastreamseektopcmframe):
  proc maresourcemanagerdatastreamseektopcmframe*(
      pdatastream: ptr maresourcemanagerdatastream_436207993;
      frameindex: mauint64_436208386): maresult_436208042 {.cdecl,
      importc: "ma_resource_manager_data_stream_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(maaudiobufferallocandinit):
  proc maaudiobufferallocandinit*(pconfig: ptr maaudiobufferconfig_436208102;
                                  ppaudiobuffer: ptr ptr maaudiobuffer_436208298): maresult_436208042 {.
      cdecl, importc: "ma_audio_buffer_alloc_and_init".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_alloc_and_init" &
        " already exists, not redeclaring")
when not declared(maresourcemanagerconfiginit):
  proc maresourcemanagerconfiginit*(): maresourcemanagerconfig_436208152 {.
      cdecl, importc: "ma_resource_manager_config_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_config_init" &
        " already exists, not redeclaring")
when not declared(maloshelfnodeconfiginit):
  proc maloshelfnodeconfiginit*(channels: mauint32_436208046;
                                samplerate: mauint32_436208046; gaindb: cdouble;
                                q: cdouble; frequency: cdouble): maloshelfnodeconfig_436208288 {.
      cdecl, importc: "ma_loshelf_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_loshelf_node_config_init" &
        " already exists, not redeclaring")
when not declared(maspatializerlistenerconfiginit):
  proc maspatializerlistenerconfiginit*(channelsout: mauint32_436208046): maspatializerlistenerconfig_436208336 {.
      cdecl, importc: "ma_spatializer_listener_config_init".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_config_init" &
        " already exists, not redeclaring")
when not declared(mavfstell):
  proc mavfstell*(pvfs: pointer; file: mavfsfile_436208308; pcursor: ptr maint64_436208330): maresult_436208042 {.
      cdecl, importc: "ma_vfs_tell".}
else:
  static :
    hint("Declaration of " & "ma_vfs_tell" & " already exists, not redeclaring")
when not declared(masoundgetmingain):
  proc masoundgetmingain*(psound: ptr masound_436208210): cfloat {.cdecl,
      importc: "ma_sound_get_min_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_min_gain" &
        " already exists, not redeclaring")
when not declared(masoundgroupuninit):
  proc masoundgroupuninit*(pgroup: ptr masoundgroup_436208146): void {.cdecl,
      importc: "ma_sound_group_uninit".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_uninit" &
        " already exists, not redeclaring")
when not declared(macopyandapplyvolumeandclipsampless24):
  proc macopyandapplyvolumeandclipsampless24*(pdst: ptr mauint8_436207941;
      psrc: ptr maint64_436208330; count: mauint64_436208386; volume: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_and_clip_samples_s24".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_and_clip_samples_s24" &
        " already exists, not redeclaring")
when not declared(maapplyvolumefactors16):
  proc maapplyvolumefactors16*(psamples: ptr maint16_436207975;
                               samplecount: mauint64_436208386; factor: cfloat): void {.
      cdecl, importc: "ma_apply_volume_factor_s16".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_s16" &
        " already exists, not redeclaring")
when not declared(mahpf1initpreallocated):
  proc mahpf1initpreallocated*(pconfig: ptr mahpf1config_436208228;
                               pheap: pointer; plpf: ptr mahpf1_436208096): maresult_436208042 {.
      cdecl, importc: "ma_hpf1_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_init_preallocated" &
        " already exists, not redeclaring")
when not declared(maresamplersetrateratio):
  proc maresamplersetrateratio*(presampler: ptr maresampler_436207965;
                                ratio: cfloat): maresult_436208042 {.cdecl,
      importc: "ma_resampler_set_rate_ratio".}
else:
  static :
    hint("Declaration of " & "ma_resampler_set_rate_ratio" &
        " already exists, not redeclaring")
when not declared(maasyncnotificationeventinit):
  proc maasyncnotificationeventinit*(pnotificationevent: ptr maasyncnotificationevent_436208468): maresult_436208042 {.
      cdecl, importc: "ma_async_notification_event_init".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_event_init" &
        " already exists, not redeclaring")
when not declared(mapeak2reinit):
  proc mapeak2reinit*(pconfig: ptr mapeak2config_436208196; pfilter: ptr mapeak2_436208426): maresult_436208042 {.
      cdecl, importc: "ma_peak2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_peak2_reinit" &
        " already exists, not redeclaring")
when not declared(manodegetnodegraph):
  proc manodegetnodegraph*(pnode: pointer): ptr manodegraph_436207933 {.cdecl,
      importc: "ma_node_get_node_graph".}
else:
  static :
    hint("Declaration of " & "ma_node_get_node_graph" &
        " already exists, not redeclaring")
when not declared(madelaysetwet):
  proc madelaysetwet*(pdelay: ptr madelay_436208410; value: cfloat): void {.
      cdecl, importc: "ma_delay_set_wet".}
else:
  static :
    hint("Declaration of " & "ma_delay_set_wet" &
        " already exists, not redeclaring")
when not declared(maapplyvolumefactorpcmframesf32):
  proc maapplyvolumefactorpcmframesf32*(pframes: ptr cfloat;
                                        framecount: mauint64_436208386;
                                        channels: mauint32_436208046;
                                        factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_pcm_frames_f32".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_pcm_frames_f32" &
        " already exists, not redeclaring")
when not declared(manodedetachalloutputbuses):
  proc manodedetachalloutputbuses*(pnode: pointer): maresult_436208042 {.cdecl,
      importc: "ma_node_detach_all_output_buses".}
else:
  static :
    hint("Declaration of " & "ma_node_detach_all_output_buses" &
        " already exists, not redeclaring")
when not declared(mafadergetdataformat):
  proc mafadergetdataformat*(pfader: ptr mafader_436208030;
                             pformat: ptr maformat_436208208;
                             pchannels: ptr mauint32_436208046;
                             psamplerate: ptr mauint32_436208046): void {.cdecl,
      importc: "ma_fader_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_fader_get_data_format" &
        " already exists, not redeclaring")
when not declared(masoundisspatializationenabled):
  proc masoundisspatializationenabled*(psound: ptr masound_436208210): mabool32_436207983 {.
      cdecl, importc: "ma_sound_is_spatialization_enabled".}
else:
  static :
    hint("Declaration of " & "ma_sound_is_spatialization_enabled" &
        " already exists, not redeclaring")
when not declared(magetformatname):
  proc magetformatname*(format: maformat_436208208): cstring {.cdecl,
      importc: "ma_get_format_name".}
else:
  static :
    hint("Declaration of " & "ma_get_format_name" &
        " already exists, not redeclaring")
