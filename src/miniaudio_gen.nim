
{.warning[UnusedImport]: off.}
{.hint[XDeclaredButNotUsed]: off.}
from macros import hint, warning, newLit, getSize

from os import parentDir

when not declared(ownSizeOf):
  macro ownSizeof(x: typed): untyped =
    newLit(x.getSize)

type
  enum_ma_log_level_553648656* {.size: sizeof(cuint).} = enum
    MA_LOG_LEVEL_ERROR = 1, MA_LOG_LEVEL_WARNING = 2, MA_LOG_LEVEL_INFO = 3,
    MA_LOG_LEVEL_DEBUG = 4
type
  enum_ma_channel_position_553648670* {.size: sizeof(cuint).} = enum
    MA_CHANNEL_NONE = 0, MA_CHANNEL_MONO = 1, MA_CHANNEL_FRONT_LEFT = 2,
    MA_CHANNEL_FRONT_RIGHT = 3, MA_CHANNEL_FRONT_CENTER = 4, MA_CHANNEL_LFE = 5,
    MA_CHANNEL_BACK_LEFT = 6, MA_CHANNEL_BACK_RIGHT = 7,
    MA_CHANNEL_FRONT_LEFT_CENTER = 8, MA_CHANNEL_FRONT_RIGHT_CENTER = 9,
    MA_CHANNEL_BACK_CENTER = 10, MA_CHANNEL_SIDE_LEFT = 11,
    MA_CHANNEL_SIDE_RIGHT = 12, MA_CHANNEL_TOP_CENTER = 13,
    MA_CHANNEL_TOP_FRONT_LEFT = 14, MA_CHANNEL_TOP_FRONT_CENTER = 15,
    MA_CHANNEL_TOP_FRONT_RIGHT = 16, MA_CHANNEL_TOP_BACK_LEFT = 17,
    MA_CHANNEL_TOP_BACK_CENTER = 18, MA_CHANNEL_TOP_BACK_RIGHT = 19,
    MA_CHANNEL_AUX_0 = 20, MA_CHANNEL_AUX_1 = 21, MA_CHANNEL_AUX_2 = 22,
    MA_CHANNEL_AUX_3 = 23, MA_CHANNEL_AUX_4 = 24, MA_CHANNEL_AUX_5 = 25,
    MA_CHANNEL_AUX_6 = 26, MA_CHANNEL_AUX_7 = 27, MA_CHANNEL_AUX_8 = 28,
    MA_CHANNEL_AUX_9 = 29, MA_CHANNEL_AUX_10 = 30, MA_CHANNEL_AUX_11 = 31,
    MA_CHANNEL_AUX_12 = 32, MA_CHANNEL_AUX_13 = 33, MA_CHANNEL_AUX_14 = 34,
    MA_CHANNEL_AUX_15 = 35, MA_CHANNEL_AUX_16 = 36, MA_CHANNEL_AUX_17 = 37,
    MA_CHANNEL_AUX_18 = 38, MA_CHANNEL_AUX_19 = 39, MA_CHANNEL_AUX_20 = 40,
    MA_CHANNEL_AUX_21 = 41, MA_CHANNEL_AUX_22 = 42, MA_CHANNEL_AUX_23 = 43,
    MA_CHANNEL_AUX_24 = 44, MA_CHANNEL_AUX_25 = 45, MA_CHANNEL_AUX_26 = 46,
    MA_CHANNEL_AUX_27 = 47, MA_CHANNEL_AUX_28 = 48, MA_CHANNEL_AUX_29 = 49,
    MA_CHANNEL_AUX_30 = 50, MA_CHANNEL_AUX_31 = 51,
    MA_CHANNEL_POSITION_COUNT = 52
when not declared(MA_CHANNEL_LEFT):
  const
    MA_CHANNEL_LEFT* = enum_ma_channel_position_553648670.MA_CHANNEL_FRONT_LEFT
else:
  static :
    hint("Declaration of " & "MA_CHANNEL_LEFT" &
        " already exists, not redeclaring")
when not declared(MA_CHANNEL_RIGHT):
  const
    MA_CHANNEL_RIGHT* = enum_ma_channel_position_553648670.MA_CHANNEL_FRONT_RIGHT
else:
  static :
    hint("Declaration of " & "MA_CHANNEL_RIGHT" &
        " already exists, not redeclaring")
type
  enum_ma_result_553648674* {.size: sizeof(cint).} = enum
    MA_FAILED_TO_STOP_BACKEND_DEVICE = -403,
    MA_FAILED_TO_START_BACKEND_DEVICE = -402,
    MA_FAILED_TO_OPEN_BACKEND_DEVICE = -401, MA_FAILED_TO_INIT_BACKEND = -400,
    MA_DEVICE_NOT_STOPPED = -303, MA_DEVICE_NOT_STARTED = -302,
    MA_DEVICE_ALREADY_INITIALIZED = -301, MA_DEVICE_NOT_INITIALIZED = -300,
    MA_BACKEND_NOT_ENABLED = -208, MA_LOOP = -207,
    MA_INVALID_DEVICE_CONFIG = -206, MA_API_NOT_FOUND = -205,
    MA_NO_DEVICE = -204, MA_NO_BACKEND = -203,
    MA_SHARE_MODE_NOT_SUPPORTED = -202, MA_DEVICE_TYPE_NOT_SUPPORTED = -201,
    MA_FORMAT_NOT_SUPPORTED = -200, MA_CRC_MISMATCH = -100,
    MA_MEMORY_ALREADY_MAPPED = -52, MA_CANCELLED = -51, MA_IN_PROGRESS = -50,
    MA_NO_HOST = -49, MA_CONNECTION_REFUSED = -48, MA_NOT_CONNECTED = -47,
    MA_ALREADY_CONNECTED = -46, MA_CONNECTION_RESET = -45,
    MA_SOCKET_NOT_SUPPORTED = -44, MA_ADDRESS_FAMILY_NOT_SUPPORTED = -43,
    MA_PROTOCOL_FAMILY_NOT_SUPPORTED = -42, MA_PROTOCOL_NOT_SUPPORTED = -41,
    MA_PROTOCOL_UNAVAILABLE = -40, MA_BAD_PROTOCOL = -39, MA_NO_ADDRESS = -38,
    MA_NOT_SOCKET = -37, MA_NOT_UNIQUE = -36, MA_NO_NETWORK = -35,
    MA_TIMEOUT = -34, MA_INVALID_DATA = -33, MA_NO_DATA_AVAILABLE = -32,
    MA_BAD_MESSAGE = -31, MA_NO_MESSAGE = -30, MA_NOT_IMPLEMENTED = -29,
    MA_TOO_MANY_LINKS = -28, MA_DEADLOCK = -27, MA_BAD_PIPE = -26,
    MA_BAD_SEEK = -25, MA_BAD_ADDRESS = -24, MA_ALREADY_IN_USE = -23,
    MA_UNAVAILABLE = -22, MA_INTERRUPT = -21, MA_IO_ERROR = -20, MA_BUSY = -19,
    MA_NO_SPACE = -18, MA_AT_END = -17, MA_DIRECTORY_NOT_EMPTY = -16,
    MA_IS_DIRECTORY = -15, MA_NOT_DIRECTORY = -14, MA_NAME_TOO_LONG = -13,
    MA_PATH_TOO_LONG = -12, MA_TOO_BIG = -11, MA_INVALID_FILE = -10,
    MA_TOO_MANY_OPEN_FILES = -9, MA_ALREADY_EXISTS = -8, MA_DOES_NOT_EXIST = -7,
    MA_ACCESS_DENIED = -6, MA_OUT_OF_RANGE = -5, MA_OUT_OF_MEMORY = -4,
    MA_INVALID_OPERATION = -3, MA_INVALID_ARGS = -2, MA_ERROR = -1,
    MA_SUCCESS = 0
type
  enum_ma_stream_format_553648678* {.size: sizeof(cuint).} = enum
    ma_stream_format_pcm = 0
type
  enum_ma_stream_layout_553648682* {.size: sizeof(cuint).} = enum
    ma_stream_layout_interleaved = 0, ma_stream_layout_deinterleaved = 1
type
  enum_ma_dither_mode_553648693* {.size: sizeof(cuint).} = enum
    ma_dither_mode_none = 0, ma_dither_mode_rectangle = 1,
    ma_dither_mode_triangle = 2
type
  enum_ma_format_553648697* {.size: sizeof(cuint).} = enum
    ma_format_unknown = 0, ma_format_u8 = 1, ma_format_s16 = 2,
    ma_format_s24 = 3, ma_format_s32 = 4, ma_format_f32 = 5, ma_format_count = 6
type
  enum_ma_standard_sample_rate_553648701* {.size: sizeof(cuint).} = enum
    ma_standard_sample_rate_count = 14, ma_standard_sample_rate_8000 = 8000,
    ma_standard_sample_rate_11025 = 11025,
    ma_standard_sample_rate_16000 = 16000,
    ma_standard_sample_rate_22050 = 22050,
    ma_standard_sample_rate_24000 = 24000,
    ma_standard_sample_rate_32000 = 32000,
    ma_standard_sample_rate_44100 = 44100,
    ma_standard_sample_rate_48000 = 48000,
    ma_standard_sample_rate_88200 = 88200,
    ma_standard_sample_rate_96000 = 96000,
    ma_standard_sample_rate_176400 = 176400,
    ma_standard_sample_rate_192000 = 192000,
    ma_standard_sample_rate_352800 = 352800,
    ma_standard_sample_rate_384000 = 384000
when not declared(ma_standard_sample_rate_min):
  const
    ma_standard_sample_rate_min* = enum_ma_standard_sample_rate_553648701.ma_standard_sample_rate_8000
else:
  static :
    hint("Declaration of " & "ma_standard_sample_rate_min" &
        " already exists, not redeclaring")
when not declared(ma_standard_sample_rate_max):
  const
    ma_standard_sample_rate_max* = enum_ma_standard_sample_rate_553648701.ma_standard_sample_rate_384000
else:
  static :
    hint("Declaration of " & "ma_standard_sample_rate_max" &
        " already exists, not redeclaring")
type
  enum_ma_channel_mix_mode_553648705* {.size: sizeof(cuint).} = enum
    ma_channel_mix_mode_rectangular = 0, ma_channel_mix_mode_simple = 1,
    ma_channel_mix_mode_custom_weights = 2
when not declared(ma_channel_mix_mode_default):
  const
    ma_channel_mix_mode_default* = enum_ma_channel_mix_mode_553648705.ma_channel_mix_mode_rectangular
else:
  static :
    hint("Declaration of " & "ma_channel_mix_mode_default" &
        " already exists, not redeclaring")
type
  enum_ma_standard_channel_map_553648709* {.size: sizeof(cuint).} = enum
    ma_standard_channel_map_microsoft = 0, ma_standard_channel_map_alsa = 1,
    ma_standard_channel_map_rfc3551 = 2, ma_standard_channel_map_flac = 3,
    ma_standard_channel_map_vorbis = 4, ma_standard_channel_map_sound4 = 5,
    ma_standard_channel_map_sndio = 6
when not declared(ma_standard_channel_map_webaudio):
  const
    ma_standard_channel_map_webaudio* = enum_ma_standard_channel_map_553648709.ma_standard_channel_map_flac
else:
  static :
    hint("Declaration of " & "ma_standard_channel_map_webaudio" &
        " already exists, not redeclaring")
when not declared(ma_standard_channel_map_default):
  const
    ma_standard_channel_map_default* = enum_ma_standard_channel_map_553648709.ma_standard_channel_map_microsoft
else:
  static :
    hint("Declaration of " & "ma_standard_channel_map_default" &
        " already exists, not redeclaring")
type
  enum_ma_performance_profile_553648713* {.size: sizeof(cuint).} = enum
    ma_performance_profile_low_latency = 0,
    ma_performance_profile_conservative = 1
type
  enum_ma_thread_priority_553648747* {.size: sizeof(cint).} = enum
    ma_thread_priority_idle = -5, ma_thread_priority_lowest = -4,
    ma_thread_priority_low = -3, ma_thread_priority_normal = -2,
    ma_thread_priority_high = -1, ma_thread_priority_highest = 0,
    ma_thread_priority_realtime = 1
when not declared(ma_thread_priority_default):
  const
    ma_thread_priority_default* = enum_ma_thread_priority_553648747.ma_thread_priority_highest
else:
  static :
    hint("Declaration of " & "ma_thread_priority_default" &
        " already exists, not redeclaring")
type
  enum_ma_pan_mode_553648901* {.size: sizeof(cuint).} = enum
    ma_pan_mode_balance = 0, ma_pan_mode_pan = 1
type
  enum_ma_attenuation_model_553648929* {.size: sizeof(cuint).} = enum
    ma_attenuation_model_none = 0, ma_attenuation_model_inverse = 1,
    ma_attenuation_model_linear = 2, ma_attenuation_model_exponential = 3
type
  enum_ma_positioning_553648933* {.size: sizeof(cuint).} = enum
    ma_positioning_absolute = 0, ma_positioning_relative = 1
type
  enum_ma_handedness_553648937* {.size: sizeof(cuint).} = enum
    ma_handedness_right = 0, ma_handedness_left = 1
type
  enum_ma_resample_algorithm_553648975* {.size: sizeof(cuint).} = enum
    ma_resample_algorithm_linear = 0, ma_resample_algorithm_custom = 1
type
  enum_ma_channel_conversion_path_553648983* {.size: sizeof(cuint).} = enum
    ma_channel_conversion_path_unknown = 0,
    ma_channel_conversion_path_passthrough = 1,
    ma_channel_conversion_path_mono_out = 2,
    ma_channel_conversion_path_mono_in = 3,
    ma_channel_conversion_path_shuffle = 4,
    ma_channel_conversion_path_weights = 5
type
  enum_ma_mono_expansion_mode_553648987* {.size: sizeof(cuint).} = enum
    ma_mono_expansion_mode_duplicate = 0, ma_mono_expansion_mode_average = 1,
    ma_mono_expansion_mode_stereo_only = 2
when not declared(ma_mono_expansion_mode_default):
  const
    ma_mono_expansion_mode_default* = enum_ma_mono_expansion_mode_553648987.ma_mono_expansion_mode_duplicate
else:
  static :
    hint("Declaration of " & "ma_mono_expansion_mode_default" &
        " already exists, not redeclaring")
type
  enum_ma_data_converter_execution_path_553649003* {.size: sizeof(cuint).} = enum
    ma_data_converter_execution_path_passthrough = 0,
    ma_data_converter_execution_path_format_only = 1,
    ma_data_converter_execution_path_channels_only = 2,
    ma_data_converter_execution_path_resample_only = 3,
    ma_data_converter_execution_path_resample_first = 4,
    ma_data_converter_execution_path_channels_first = 5
type
  enum_ma_job_type_553649101* {.size: sizeof(cuint).} = enum
    MA_JOB_TYPE_QUIT = 0, MA_JOB_TYPE_CUSTOM = 1,
    MA_JOB_TYPE_RESOURCE_MANAGER_LOAD_DATA_BUFFER_NODE = 2,
    MA_JOB_TYPE_RESOURCE_MANAGER_FREE_DATA_BUFFER_NODE = 3,
    MA_JOB_TYPE_RESOURCE_MANAGER_PAGE_DATA_BUFFER_NODE = 4,
    MA_JOB_TYPE_RESOURCE_MANAGER_LOAD_DATA_BUFFER = 5,
    MA_JOB_TYPE_RESOURCE_MANAGER_FREE_DATA_BUFFER = 6,
    MA_JOB_TYPE_RESOURCE_MANAGER_LOAD_DATA_STREAM = 7,
    MA_JOB_TYPE_RESOURCE_MANAGER_FREE_DATA_STREAM = 8,
    MA_JOB_TYPE_RESOURCE_MANAGER_PAGE_DATA_STREAM = 9,
    MA_JOB_TYPE_RESOURCE_MANAGER_SEEK_DATA_STREAM = 10,
    MA_JOB_TYPE_DEVICE_AAUDIO_REROUTE = 11, MA_JOB_TYPE_COUNT = 12
type
  enum_ma_job_queue_flags_553649107* {.size: sizeof(cuint).} = enum
    MA_JOB_QUEUE_FLAG_NON_BLOCKING = 1
type
  enum_ma_device_state_553649115* {.size: sizeof(cuint).} = enum
    ma_device_state_uninitialized = 0, ma_device_state_stopped = 1,
    ma_device_state_started = 2, ma_device_state_starting = 3,
    ma_device_state_stopping = 4
type
  enum_ma_backend_553649123* {.size: sizeof(cuint).} = enum
    ma_backend_wasapi = 0, ma_backend_dsound = 1, ma_backend_winmm = 2,
    ma_backend_coreaudio = 3, ma_backend_sndio = 4, ma_backend_audio4 = 5,
    ma_backend_oss = 6, ma_backend_pulseaudio = 7, ma_backend_alsa = 8,
    ma_backend_jack = 9, ma_backend_aaudio = 10, ma_backend_opensl = 11,
    ma_backend_webaudio = 12, ma_backend_custom = 13, ma_backend_null = 14
type
  enum_ma_device_notification_type_553649135* {.size: sizeof(cuint).} = enum
    ma_device_notification_type_started = 0,
    ma_device_notification_type_stopped = 1,
    ma_device_notification_type_rerouted = 2,
    ma_device_notification_type_interruption_began = 3,
    ma_device_notification_type_interruption_ended = 4,
    ma_device_notification_type_unlocked = 5
type
  enum_ma_device_type_553649149* {.size: sizeof(cuint).} = enum
    ma_device_type_playback = 1, ma_device_type_capture = 2,
    ma_device_type_duplex = 3, ma_device_type_loopback = 4
type
  enum_ma_share_mode_553649153* {.size: sizeof(cuint).} = enum
    ma_share_mode_shared = 0, ma_share_mode_exclusive = 1
type
  enum_ma_ios_session_category_553649157* {.size: sizeof(cuint).} = enum
    ma_ios_session_category_default = 0, ma_ios_session_category_none = 1,
    ma_ios_session_category_ambient = 2,
    ma_ios_session_category_solo_ambient = 3,
    ma_ios_session_category_playback = 4, ma_ios_session_category_record = 5,
    ma_ios_session_category_play_and_record = 6,
    ma_ios_session_category_multi_route = 7
type
  enum_ma_ios_session_category_option_553649161* {.size: sizeof(cuint).} = enum
    ma_ios_session_category_option_mix_with_others = 1,
    ma_ios_session_category_option_duck_others = 2,
    ma_ios_session_category_option_allow_bluetooth = 4,
    ma_ios_session_category_option_default_to_speaker = 8, ma_ios_session_category_option_interrupt_spoken_audio_and_mix_with_others = 17,
    ma_ios_session_category_option_allow_bluetooth_a2dp = 32,
    ma_ios_session_category_option_allow_air_play = 64
type
  enum_ma_opensl_stream_type_553649165* {.size: sizeof(cuint).} = enum
    ma_opensl_stream_type_default = 0, ma_opensl_stream_type_voice = 1,
    ma_opensl_stream_type_system = 2, ma_opensl_stream_type_ring = 3,
    ma_opensl_stream_type_media = 4, ma_opensl_stream_type_alarm = 5,
    ma_opensl_stream_type_notification = 6
type
  enum_ma_opensl_recording_preset_553649169* {.size: sizeof(cuint).} = enum
    ma_opensl_recording_preset_default = 0,
    ma_opensl_recording_preset_generic = 1,
    ma_opensl_recording_preset_camcorder = 2,
    ma_opensl_recording_preset_voice_recognition = 3,
    ma_opensl_recording_preset_voice_communication = 4,
    ma_opensl_recording_preset_voice_unprocessed = 5
type
  enum_ma_wasapi_usage_553649173* {.size: sizeof(cuint).} = enum
    ma_wasapi_usage_default = 0, ma_wasapi_usage_games = 1,
    ma_wasapi_usage_pro_audio = 2
type
  enum_ma_aaudio_usage_553649177* {.size: sizeof(cuint).} = enum
    ma_aaudio_usage_default = 0, ma_aaudio_usage_media = 1,
    ma_aaudio_usage_voice_communication = 2,
    ma_aaudio_usage_voice_communication_signalling = 3,
    ma_aaudio_usage_alarm = 4, ma_aaudio_usage_notification = 5,
    ma_aaudio_usage_notification_ringtone = 6,
    ma_aaudio_usage_notification_event = 7,
    ma_aaudio_usage_assistance_accessibility = 8,
    ma_aaudio_usage_assistance_navigation_guidance = 9,
    ma_aaudio_usage_assistance_sonification = 10, ma_aaudio_usage_game = 11,
    ma_aaudio_usage_assitant = 12, ma_aaudio_usage_emergency = 13,
    ma_aaudio_usage_safety = 14, ma_aaudio_usage_vehicle_status = 15,
    ma_aaudio_usage_announcement = 16
type
  enum_ma_aaudio_content_type_553649181* {.size: sizeof(cuint).} = enum
    ma_aaudio_content_type_default = 0, ma_aaudio_content_type_speech = 1,
    ma_aaudio_content_type_music = 2, ma_aaudio_content_type_movie = 3,
    ma_aaudio_content_type_sonification = 4
type
  enum_ma_aaudio_input_preset_553649185* {.size: sizeof(cuint).} = enum
    ma_aaudio_input_preset_default = 0, ma_aaudio_input_preset_generic = 1,
    ma_aaudio_input_preset_camcorder = 2,
    ma_aaudio_input_preset_voice_recognition = 3,
    ma_aaudio_input_preset_voice_communication = 4,
    ma_aaudio_input_preset_unprocessed = 5,
    ma_aaudio_input_preset_voice_performance = 6
type
  enum_ma_aaudio_allowed_capture_policy_553649189* {.size: sizeof(cuint).} = enum
    ma_aaudio_allow_capture_default = 0, ma_aaudio_allow_capture_by_all = 1,
    ma_aaudio_allow_capture_by_system = 2, ma_aaudio_allow_capture_by_none = 3
type
  enum_ma_open_mode_flags_553649231* {.size: sizeof(cuint).} = enum
    MA_OPEN_MODE_READ = 1, MA_OPEN_MODE_WRITE = 2
type
  enum_ma_seek_origin_553649235* {.size: sizeof(cuint).} = enum
    ma_seek_origin_start = 0, ma_seek_origin_current = 1, ma_seek_origin_end = 2
type
  enum_ma_encoding_format_553649257* {.size: sizeof(cuint).} = enum
    ma_encoding_format_unknown = 0, ma_encoding_format_wav = 1,
    ma_encoding_format_flac = 2, ma_encoding_format_mp3 = 3,
    ma_encoding_format_vorbis = 4
type
  enum_ma_waveform_type_553649301* {.size: sizeof(cuint).} = enum
    ma_waveform_type_sine = 0, ma_waveform_type_square = 1,
    ma_waveform_type_triangle = 2, ma_waveform_type_sawtooth = 3
type
  enum_ma_noise_type_553649321* {.size: sizeof(cuint).} = enum
    ma_noise_type_white = 0, ma_noise_type_pink = 1, ma_noise_type_brownian = 2
type
  enum_ma_resource_manager_data_source_flags_553649353* {.size: sizeof(cuint).} = enum
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_STREAM = 1,
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_DECODE = 2,
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_ASYNC = 4,
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_WAIT_INIT = 8,
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_UNKNOWN_LENGTH = 16,
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_LOOPING = 32
type
  enum_ma_resource_manager_flags_553649365* {.size: sizeof(cuint).} = enum
    MA_RESOURCE_MANAGER_FLAG_NON_BLOCKING = 1,
    MA_RESOURCE_MANAGER_FLAG_NO_THREADING = 2
type
  enum_ma_resource_manager_data_supply_type_553649373* {.size: sizeof(cuint).} = enum
    ma_resource_manager_data_supply_type_unknown = 0,
    ma_resource_manager_data_supply_type_encoded = 1,
    ma_resource_manager_data_supply_type_decoded = 2,
    ma_resource_manager_data_supply_type_decoded_paged = 3
type
  enum_ma_node_flags_553649395* {.size: sizeof(cuint).} = enum
    MA_NODE_FLAG_PASSTHROUGH = 1, MA_NODE_FLAG_CONTINUOUS_PROCESSING = 2,
    MA_NODE_FLAG_ALLOW_NULL_INPUT = 4,
    MA_NODE_FLAG_DIFFERENT_PROCESSING_RATES = 8, MA_NODE_FLAG_SILENT_OUTPUT = 16
type
  enum_ma_node_state_553649399* {.size: sizeof(cuint).} = enum
    ma_node_state_started = 0, ma_node_state_stopped = 1
type
  enum_ma_sound_flags_553649523* {.size: sizeof(cuint).} = enum
    MA_SOUND_FLAG_STREAM = 1, MA_SOUND_FLAG_DECODE = 2, MA_SOUND_FLAG_ASYNC = 4,
    MA_SOUND_FLAG_WAIT_INIT = 8, MA_SOUND_FLAG_UNKNOWN_LENGTH = 16,
    MA_SOUND_FLAG_LOOPING = 32, MA_SOUND_FLAG_NO_DEFAULT_ATTACHMENT = 4096,
    MA_SOUND_FLAG_NO_PITCH = 8192, MA_SOUND_FLAG_NO_SPATIALIZATION = 16384
type
  enum_ma_engine_node_type_553649527* {.size: sizeof(cuint).} = enum
    ma_engine_node_type_sound = 0, ma_engine_node_type_group = 1
when not declared(extern):
  type
    extern* = object
else:
  static :
    hint("Declaration of " & "extern" & " already exists, not redeclaring")
when not declared(inline):
  type
    inline* = object
else:
  static :
    hint("Declaration of " & "inline" & " already exists, not redeclaring")
type
  ma_job_553648604 = struct_ma_job_553649098 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6356:23
  ma_job_queue_config_553648606 = struct_ma_job_queue_config_553649112 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6526:3
  ma_job_queue_553648608 = struct_ma_job_queue_553649114 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6549:3
  ma_int8_553648610 = cschar ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3790:37
  ma_uint8_553648612 = uint8 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3791:37
  ma_int16_553648614 = cshort ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3792:37
  ma_uint16_553648616 = cushort ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3793:37
  ma_int32_553648618 = cint  ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3794:37
  ma_uint32_553648620 = cuint ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3795:37
  ma_int64_553648622 = clonglong ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3807:37
  ma_uint64_553648624 = culonglong ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3808:37
  ma_uintptr_553648626 = ma_uint64_553648625 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3816:33
  ma_bool8_553648628 = ma_uint8_553648613 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3821:21
  ma_bool32_553648630 = ma_uint32_553648621 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3822:21
  ma_float_553648632 = cfloat ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3827:21
  ma_double_553648634 = cdouble ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3828:21
  ma_handle_553648636 = pointer ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3830:15
  ma_ptr_553648638 = pointer ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3831:15
  ma_proc_553648640 = proc (): void {.cdecl.} ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3840:16
  ma_pthread_t_553648642 = pthread_t_553648645 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3884:33
  pthread_t_553648644 = culong ## Generated based on /usr/include/bits/pthreadtypes.h:27:27
  ma_pthread_mutex_t_553648646 = pthread_mutex_t_553648649 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3885:33
  pthread_mutex_t_553648648 = union_pthread_mutex_t_553649560 ## Generated based on /usr/include/bits/pthreadtypes.h:72:3
  ma_pthread_cond_t_553648650 = pthread_cond_t_553648653 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3886:33
  pthread_cond_t_553648652 = union_pthread_cond_t_553649562 ## Generated based on /usr/include/bits/pthreadtypes.h:80:3
  ma_wchar_win32_553648654 = ma_uint16_553648617 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4034:21
  ma_log_level_553648658 = enum_ma_log_level_553648657 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4069:3
  ma_context_553648660 = struct_ma_context_553648663 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4098:27
  struct_ma_context_anon0_t_alsa_t {.pure, inheritable, bycopy.} = object
    asoundSO*: ma_handle_553648637
    snd_pcm_open*: ma_proc_553648641
    snd_pcm_close*: ma_proc_553648641
    snd_pcm_hw_params_sizeof*: ma_proc_553648641
    snd_pcm_hw_params_any*: ma_proc_553648641
    snd_pcm_hw_params_set_format*: ma_proc_553648641
    snd_pcm_hw_params_set_format_first*: ma_proc_553648641
    snd_pcm_hw_params_get_format_mask*: ma_proc_553648641
    snd_pcm_hw_params_set_channels*: ma_proc_553648641
    snd_pcm_hw_params_set_channels_near*: ma_proc_553648641
    snd_pcm_hw_params_set_channels_minmax*: ma_proc_553648641
    snd_pcm_hw_params_set_rate_resample*: ma_proc_553648641
    snd_pcm_hw_params_set_rate*: ma_proc_553648641
    snd_pcm_hw_params_set_rate_near*: ma_proc_553648641
    snd_pcm_hw_params_set_buffer_size_near*: ma_proc_553648641
    snd_pcm_hw_params_set_periods_near*: ma_proc_553648641
    snd_pcm_hw_params_set_access*: ma_proc_553648641
    snd_pcm_hw_params_get_format*: ma_proc_553648641
    snd_pcm_hw_params_get_channels*: ma_proc_553648641
    snd_pcm_hw_params_get_channels_min*: ma_proc_553648641
    snd_pcm_hw_params_get_channels_max*: ma_proc_553648641
    snd_pcm_hw_params_get_rate*: ma_proc_553648641
    snd_pcm_hw_params_get_rate_min*: ma_proc_553648641
    snd_pcm_hw_params_get_rate_max*: ma_proc_553648641
    snd_pcm_hw_params_get_buffer_size*: ma_proc_553648641
    snd_pcm_hw_params_get_periods*: ma_proc_553648641
    snd_pcm_hw_params_get_access*: ma_proc_553648641
    snd_pcm_hw_params_test_format*: ma_proc_553648641
    snd_pcm_hw_params_test_channels*: ma_proc_553648641
    snd_pcm_hw_params_test_rate*: ma_proc_553648641
    snd_pcm_hw_params*: ma_proc_553648641
    snd_pcm_sw_params_sizeof*: ma_proc_553648641
    snd_pcm_sw_params_current*: ma_proc_553648641
    snd_pcm_sw_params_get_boundary*: ma_proc_553648641
    snd_pcm_sw_params_set_avail_min*: ma_proc_553648641
    snd_pcm_sw_params_set_start_threshold*: ma_proc_553648641
    snd_pcm_sw_params_set_stop_threshold*: ma_proc_553648641
    snd_pcm_sw_params*: ma_proc_553648641
    snd_pcm_format_mask_sizeof*: ma_proc_553648641
    snd_pcm_format_mask_test*: ma_proc_553648641
    snd_pcm_get_chmap*: ma_proc_553648641
    snd_pcm_state*: ma_proc_553648641
    snd_pcm_prepare*: ma_proc_553648641
    snd_pcm_start*: ma_proc_553648641
    snd_pcm_drop*: ma_proc_553648641
    snd_pcm_drain*: ma_proc_553648641
    snd_pcm_reset*: ma_proc_553648641
    snd_device_name_hint*: ma_proc_553648641
    snd_device_name_get_hint*: ma_proc_553648641
    snd_card_get_index*: ma_proc_553648641
    snd_device_name_free_hint*: ma_proc_553648641
    snd_pcm_mmap_begin*: ma_proc_553648641
    snd_pcm_mmap_commit*: ma_proc_553648641
    snd_pcm_recover*: ma_proc_553648641
    snd_pcm_readi*: ma_proc_553648641
    snd_pcm_writei*: ma_proc_553648641
    snd_pcm_avail*: ma_proc_553648641
    snd_pcm_avail_update*: ma_proc_553648641
    snd_pcm_wait*: ma_proc_553648641
    snd_pcm_nonblock*: ma_proc_553648641
    snd_pcm_info*: ma_proc_553648641
    snd_pcm_info_sizeof*: ma_proc_553648641
    snd_pcm_info_get_name*: ma_proc_553648641
    snd_pcm_poll_descriptors*: ma_proc_553648641
    snd_pcm_poll_descriptors_count*: ma_proc_553648641
    snd_pcm_poll_descriptors_revents*: ma_proc_553648641
    snd_config_update_free_global*: ma_proc_553648641
    internalDeviceEnumLock*: ma_mutex_553648754
    useVerboseDeviceEnumeration*: ma_bool32_553648631
  struct_ma_context_anon0_t_pulse_t {.pure, inheritable, bycopy.} = object
    pulseSO*: ma_handle_553648637
    pa_mainloop_new*: ma_proc_553648641
    pa_mainloop_free*: ma_proc_553648641
    pa_mainloop_quit*: ma_proc_553648641
    pa_mainloop_get_api*: ma_proc_553648641
    pa_mainloop_iterate*: ma_proc_553648641
    pa_mainloop_wakeup*: ma_proc_553648641
    pa_threaded_mainloop_new*: ma_proc_553648641
    pa_threaded_mainloop_free*: ma_proc_553648641
    pa_threaded_mainloop_start*: ma_proc_553648641
    pa_threaded_mainloop_stop*: ma_proc_553648641
    pa_threaded_mainloop_lock*: ma_proc_553648641
    pa_threaded_mainloop_unlock*: ma_proc_553648641
    pa_threaded_mainloop_wait*: ma_proc_553648641
    pa_threaded_mainloop_signal*: ma_proc_553648641
    pa_threaded_mainloop_accept*: ma_proc_553648641
    pa_threaded_mainloop_get_retval*: ma_proc_553648641
    pa_threaded_mainloop_get_api*: ma_proc_553648641
    pa_threaded_mainloop_in_thread*: ma_proc_553648641
    pa_threaded_mainloop_set_name*: ma_proc_553648641
    pa_context_new*: ma_proc_553648641
    pa_context_unref*: ma_proc_553648641
    pa_context_connect*: ma_proc_553648641
    pa_context_disconnect*: ma_proc_553648641
    pa_context_set_state_callback*: ma_proc_553648641
    pa_context_get_state*: ma_proc_553648641
    pa_context_get_sink_info_list*: ma_proc_553648641
    pa_context_get_source_info_list*: ma_proc_553648641
    pa_context_get_sink_info_by_name*: ma_proc_553648641
    pa_context_get_source_info_by_name*: ma_proc_553648641
    pa_operation_unref*: ma_proc_553648641
    pa_operation_get_state*: ma_proc_553648641
    pa_channel_map_init_extend*: ma_proc_553648641
    pa_channel_map_valid*: ma_proc_553648641
    pa_channel_map_compatible*: ma_proc_553648641
    pa_stream_new*: ma_proc_553648641
    pa_stream_unref*: ma_proc_553648641
    pa_stream_connect_playback*: ma_proc_553648641
    pa_stream_connect_record*: ma_proc_553648641
    pa_stream_disconnect*: ma_proc_553648641
    pa_stream_get_state*: ma_proc_553648641
    pa_stream_get_sample_spec*: ma_proc_553648641
    pa_stream_get_channel_map*: ma_proc_553648641
    pa_stream_get_buffer_attr*: ma_proc_553648641
    pa_stream_set_buffer_attr*: ma_proc_553648641
    pa_stream_get_device_name*: ma_proc_553648641
    pa_stream_set_write_callback*: ma_proc_553648641
    pa_stream_set_read_callback*: ma_proc_553648641
    pa_stream_set_suspended_callback*: ma_proc_553648641
    pa_stream_set_moved_callback*: ma_proc_553648641
    pa_stream_is_suspended*: ma_proc_553648641
    pa_stream_flush*: ma_proc_553648641
    pa_stream_drain*: ma_proc_553648641
    pa_stream_is_corked*: ma_proc_553648641
    pa_stream_cork*: ma_proc_553648641
    pa_stream_trigger*: ma_proc_553648641
    pa_stream_begin_write*: ma_proc_553648641
    pa_stream_write*: ma_proc_553648641
    pa_stream_peek*: ma_proc_553648641
    pa_stream_drop*: ma_proc_553648641
    pa_stream_writable_size*: ma_proc_553648641
    pa_stream_readable_size*: ma_proc_553648641
    pMainLoop*: ma_ptr_553648639
    pPulseContext*: ma_ptr_553648639
    pApplicationName*: cstring
    pServerName*: cstring
  struct_ma_context_anon0_t_jack_t {.pure, inheritable, bycopy.} = object
    jackSO*: ma_handle_553648637
    jack_client_open*: ma_proc_553648641
    jack_client_close*: ma_proc_553648641
    jack_client_name_size*: ma_proc_553648641
    jack_set_process_callback*: ma_proc_553648641
    jack_set_buffer_size_callback*: ma_proc_553648641
    jack_on_shutdown*: ma_proc_553648641
    jack_get_sample_rate*: ma_proc_553648641
    jack_get_buffer_size*: ma_proc_553648641
    jack_get_ports*: ma_proc_553648641
    jack_activate*: ma_proc_553648641
    jack_deactivate*: ma_proc_553648641
    jack_connect*: ma_proc_553648641
    jack_port_register*: ma_proc_553648641
    jack_port_name*: ma_proc_553648641
    jack_port_get_buffer*: ma_proc_553648641
    jack_free*: ma_proc_553648641
    pClientName*: cstring
    tryStartServer*: ma_bool32_553648631
  struct_ma_context_anon0_t_null_backend_t {.pure, inheritable, bycopy.} = object
    internal_unused*: cint
  struct_ma_context_anon0_t {.union, bycopy.} = object
    alsa*: struct_ma_context_anon0_t_alsa_t
    pulse*: struct_ma_context_anon0_t_pulse_t
    jack*: struct_ma_context_anon0_t_jack_t
    null_backend*: struct_ma_context_anon0_t_null_backend_t
  struct_ma_context_anon1_t_posix_t {.pure, inheritable, bycopy.} = object
    internal_unused*: cint
  struct_ma_context_anon1_t {.union, bycopy.} = object
    posix*: struct_ma_context_anon1_t_posix_t
    internal_unused*: cint
  struct_ma_context_553648662 {.pure, inheritable, bycopy.} = object
    callbacks*: ma_backend_callbacks_553649210 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:7343:8
    backend*: ma_backend_553649126
    pLog*: ptr ma_log_553648772
    log*: ma_log_553648772
    threadPriority*: ma_thread_priority_553648750
    threadStackSize*: csize_t
    pUserData*: pointer
    allocationCallbacks*: ma_allocation_callbacks_553648720
    deviceEnumLock*: ma_mutex_553648754
    deviceInfoLock*: ma_mutex_553648754
    deviceInfoCapacity*: ma_uint32_553648621
    playbackDeviceInfoCount*: ma_uint32_553648621
    captureDeviceInfoCount*: ma_uint32_553648621
    pDeviceInfos*: ptr ma_device_info_553649216
    anon0*: struct_ma_context_anon0_t
    anon1*: struct_ma_context_anon1_t
  ma_device_553648664 = struct_ma_device_553648667 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4099:26
  struct_ma_device_resampling_t_linear_t {.pure, inheritable, bycopy.} = object
    lpfOrder*: ma_uint32_553648621
  struct_ma_device_resampling_t {.pure, inheritable, bycopy.} = object
    algorithm*: ma_resample_algorithm_553648978
    pBackendVTable*: ptr ma_resampling_backend_vtable_553648974
    pBackendUserData*: pointer
    linear*: struct_ma_device_resampling_t_linear_t
  struct_ma_device_playback_t {.pure, inheritable, bycopy.} = object
    pID*: ptr ma_device_id_553649200
    id*: ma_device_id_553649200
    name*: array[256'i64, cschar]
    shareMode*: ma_share_mode_553649156
    format*: ma_format_553648700
    channels*: ma_uint32_553648621
    channelMap*: array[254'i64, ma_channel_553648669]
    internalFormat*: ma_format_553648700
    internalChannels*: ma_uint32_553648621
    internalSampleRate*: ma_uint32_553648621
    internalChannelMap*: array[254'i64, ma_channel_553648669]
    internalPeriodSizeInFrames*: ma_uint32_553648621
    internalPeriods*: ma_uint32_553648621
    channelMixMode*: ma_channel_mix_mode_553648708
    calculateLFEFromSpatialChannels*: ma_bool32_553648631
    converter_field*: ma_data_converter_553649010
    pIntermediaryBuffer*: pointer
    intermediaryBufferCap*: ma_uint32_553648621
    intermediaryBufferLen*: ma_uint32_553648621
    pInputCache*: pointer
    inputCacheCap*: ma_uint64_553648625
    inputCacheConsumed*: ma_uint64_553648625
    inputCacheRemaining*: ma_uint64_553648625
  struct_ma_device_capture_t {.pure, inheritable, bycopy.} = object
    pID*: ptr ma_device_id_553649200
    id*: ma_device_id_553649200
    name*: array[256'i64, cschar]
    shareMode*: ma_share_mode_553649156
    format*: ma_format_553648700
    channels*: ma_uint32_553648621
    channelMap*: array[254'i64, ma_channel_553648669]
    internalFormat*: ma_format_553648700
    internalChannels*: ma_uint32_553648621
    internalSampleRate*: ma_uint32_553648621
    internalChannelMap*: array[254'i64, ma_channel_553648669]
    internalPeriodSizeInFrames*: ma_uint32_553648621
    internalPeriods*: ma_uint32_553648621
    channelMixMode*: ma_channel_mix_mode_553648708
    calculateLFEFromSpatialChannels*: ma_bool32_553648631
    converter_field*: ma_data_converter_553649010
    pIntermediaryBuffer*: pointer
    intermediaryBufferCap*: ma_uint32_553648621
    intermediaryBufferLen*: ma_uint32_553648621
  struct_ma_device_anon0_t_alsa_t {.pure, inheritable, bycopy.} = object
    pPCMPlayback*: ma_ptr_553648639
    pPCMCapture*: ma_ptr_553648639
    pPollDescriptorsPlayback*: pointer
    pPollDescriptorsCapture*: pointer
    pollDescriptorCountPlayback*: cint
    pollDescriptorCountCapture*: cint
    wakeupfdPlayback*: cint
    wakeupfdCapture*: cint
    isUsingMMapPlayback*: ma_bool8_553648629
    isUsingMMapCapture*: ma_bool8_553648629
  struct_ma_device_anon0_t_pulse_t {.pure, inheritable, bycopy.} = object
    pMainLoop*: ma_ptr_553648639
    pPulseContext*: ma_ptr_553648639
    pStreamPlayback*: ma_ptr_553648639
    pStreamCapture*: ma_ptr_553648639
  struct_ma_device_anon0_t_jack_t {.pure, inheritable, bycopy.} = object
    pClient*: ma_ptr_553648639
    ppPortsPlayback*: ptr ma_ptr_553648639
    ppPortsCapture*: ptr ma_ptr_553648639
    pIntermediaryBufferPlayback*: ptr cfloat
    pIntermediaryBufferCapture*: ptr cfloat
  struct_ma_device_anon0_t_null_device_t {.pure, inheritable, bycopy.} = object
    deviceThread*: ma_thread_553648752
    operationEvent*: ma_event_553648758
    operationCompletionEvent*: ma_event_553648758
    operationSemaphore*: ma_semaphore_553648762
    operation*: ma_uint32_553648621
    operationResult*: ma_result_553648677
    timer*: ma_timer_553649196
    priorRunTime*: cdouble
    currentPeriodFramesRemainingPlayback*: ma_uint32_553648621
    currentPeriodFramesRemainingCapture*: ma_uint32_553648621
    lastProcessedFramePlayback*: ma_uint64_553648625
    lastProcessedFrameCapture*: ma_uint64_553648625
    isStarted*: ma_atomic_bool32_553648744
  struct_ma_device_anon0_t {.union, bycopy.} = object
    alsa*: struct_ma_device_anon0_t_alsa_t
    pulse*: struct_ma_device_anon0_t_pulse_t
    jack*: struct_ma_device_anon0_t_jack_t
    null_device*: struct_ma_device_anon0_t_null_device_t
  struct_ma_device_553648666 {.pure, inheritable, bycopy.} = object
    pContext*: ptr ma_context_553648661 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:7751:8
    type_field*: ma_device_type_553649152
    sampleRate*: ma_uint32_553648621
    state*: ma_atomic_device_state_553649122
    onData*: ma_device_data_proc_553649146
    onNotification*: ma_device_notification_proc_553649144
    onStop*: ma_stop_proc_553649148
    pUserData*: pointer
    startStopLock*: ma_mutex_553648754
    wakeupEvent*: ma_event_553648758
    startEvent*: ma_event_553648758
    stopEvent*: ma_event_553648758
    thread*: ma_thread_553648752
    workResult*: ma_result_553648677
    isOwnerOfContext*: ma_bool8_553648629
    noPreSilencedOutputBuffer*: ma_bool8_553648629
    noClip*: ma_bool8_553648629
    noDisableDenormals*: ma_bool8_553648629
    noFixedSizedCallback*: ma_bool8_553648629
    masterVolumeFactor*: ma_atomic_float_553648740
    duplexRB*: ma_duplex_rb_553649066
    resampling*: struct_ma_device_resampling_t
    playback*: struct_ma_device_playback_t
    capture*: struct_ma_device_capture_t
    anon0*: struct_ma_device_anon0_t
  ma_channel_553648668 = ma_uint8_553648613 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4101:18
  internal_ma_channel_position_553648672 = enum_ma_channel_position_553648671 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4159:3
  ma_result_553648676 = enum_ma_result_553648675 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4242:3
  ma_stream_format_553648680 = enum_ma_stream_format_553648679 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4257:3
  ma_stream_layout_553648684 = enum_ma_stream_layout_553648683 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4263:3
  ma_dither_mode_553648695 = enum_ma_dither_mode_553648694 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4270:3
  ma_format_553648699 = enum_ma_format_553648698 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4285:3
  ma_standard_sample_rate_553648703 = enum_ma_standard_sample_rate_553648702 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4312:3
  ma_channel_mix_mode_553648707 = enum_ma_channel_mix_mode_553648706 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4321:3
  ma_standard_channel_map_553648711 = enum_ma_standard_channel_map_553648710 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4334:3
  ma_performance_profile_553648715 = enum_ma_performance_profile_553648714 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4340:3
  struct_ma_allocation_callbacks_553648717 {.pure, inheritable, bycopy.} = object
    pUserData*: pointer      ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4343:9
    onMalloc*: proc (a0: csize_t; a1: pointer): pointer {.cdecl.}
    onRealloc*: proc (a0: pointer; a1: csize_t; a2: pointer): pointer {.cdecl.}
    onFree*: proc (a0: pointer; a1: pointer): void {.cdecl.}
  ma_allocation_callbacks_553648719 = struct_ma_allocation_callbacks_553648718 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4349:3
  struct_ma_lcg_553648721 {.pure, inheritable, bycopy.} = object
    state*: ma_int32_553648619 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4351:9
  ma_lcg_553648723 = struct_ma_lcg_553648722 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4354:3
  struct_ma_atomic_uint32_553648725 {.pure, inheritable, bycopy.} = object
    value*: ma_uint32_553648621 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4407:1
  ma_atomic_uint32_553648727 = struct_ma_atomic_uint32_553648726 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4407:1
  struct_ma_atomic_int32_553648729 {.pure, inheritable, bycopy.} = object
    value*: ma_int32_553648619 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4408:1
  ma_atomic_int32_553648731 = struct_ma_atomic_int32_553648730 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4408:1
  struct_ma_atomic_uint64_553648733 {.pure, inheritable, bycopy.} = object
    value*: ma_uint64_553648625 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4409:1
  ma_atomic_uint64_553648735 = struct_ma_atomic_uint64_553648734 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4409:1
  struct_ma_atomic_float_553648737 {.pure, inheritable, bycopy.} = object
    value*: ma_float_553648633 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4410:1
  ma_atomic_float_553648739 = struct_ma_atomic_float_553648738 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4410:1
  struct_ma_atomic_bool32_553648741 {.pure, inheritable, bycopy.} = object
    value*: ma_bool32_553648631 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4411:1
  ma_atomic_bool32_553648743 = struct_ma_atomic_bool32_553648742 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4411:1
  ma_spinlock_553648745 = ma_uint32_553648621 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4415:19
  ma_thread_priority_553648749 = enum_ma_thread_priority_553648748 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4429:7
  ma_thread_553648751 = ma_pthread_t_553648643 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4432:30
  ma_mutex_553648753 = ma_pthread_mutex_t_553648647 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4438:36
  struct_ma_event_553648755 {.pure, inheritable, bycopy.} = object
    value*: ma_uint32_553648621 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4444:17
    lock*: ma_pthread_mutex_t_553648647
    cond*: ma_pthread_cond_t_553648651
  ma_event_553648757 = struct_ma_event_553648756 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4449:11
  struct_ma_semaphore_553648759 {.pure, inheritable, bycopy.} = object
    value*: cint             ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4455:17
    lock*: ma_pthread_mutex_t_553648647
    cond*: ma_pthread_cond_t_553648651
  ma_semaphore_553648761 = struct_ma_semaphore_553648760 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4460:11
  ma_log_callback_proc_553648763 = proc (a0: pointer; a1: ma_uint32_553648621;
      a2: cstring): void {.cdecl.} ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4528:17
  struct_ma_log_callback_553648765 {.pure, inheritable, bycopy.} = object
    onLog*: ma_log_callback_proc_553648764 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4530:9
    pUserData*: pointer
  ma_log_callback_553648767 = struct_ma_log_callback_553648766 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4534:3
  struct_ma_log_553648769 {.pure, inheritable, bycopy.} = object
    callbacks*: array[4'i64, ma_log_callback_553648768] ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4539:9
    callbackCount*: ma_uint32_553648621
    allocationCallbacks*: ma_allocation_callbacks_553648720
    lock*: ma_mutex_553648754
  ma_log_553648771 = struct_ma_log_553648770 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4547:3
  union_ma_biquad_coefficient_553648773 {.union, bycopy.} = object
    f32*: cfloat             ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4563:9
    s32*: ma_int32_553648619
  ma_biquad_coefficient_553648775 = union_ma_biquad_coefficient_553648774 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4567:3
  struct_ma_biquad_config_553648777 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4569:9
    channels*: ma_uint32_553648621
    b0*: cdouble
    b1*: cdouble
    b2*: cdouble
    a0*: cdouble
    a1*: cdouble
    a2*: cdouble
  ma_biquad_config_553648779 = struct_ma_biquad_config_553648778 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4579:3
  struct_ma_biquad_553648781 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4583:9
    channels*: ma_uint32_553648621
    b0*: ma_biquad_coefficient_553648776
    b1*: ma_biquad_coefficient_553648776
    b2*: ma_biquad_coefficient_553648776
    a1*: ma_biquad_coefficient_553648776
    a2*: ma_biquad_coefficient_553648776
    pR1*: ptr ma_biquad_coefficient_553648776
    pR2*: ptr ma_biquad_coefficient_553648776
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_553648631
  ma_biquad_553648783 = struct_ma_biquad_553648782 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4598:3
  struct_ma_lpf1_config_553648785 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4615:9
    channels*: ma_uint32_553648621
    sampleRate*: ma_uint32_553648621
    cutoffFrequency*: cdouble
    q*: cdouble
  ma_lpf1_config_553648787 = struct_ma_lpf1_config_553648786 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4622:3
  ma_lpf2_config_553648789 = struct_ma_lpf1_config_553648786 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4622:19
  struct_ma_lpf1_553648791 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4627:9
    channels*: ma_uint32_553648621
    a*: ma_biquad_coefficient_553648776
    pR1*: ptr ma_biquad_coefficient_553648776
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_553648631
  ma_lpf1_553648793 = struct_ma_lpf1_553648792 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4637:3
  struct_ma_lpf2_553648795 {.pure, inheritable, bycopy.} = object
    bq*: ma_biquad_553648784 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4648:9
  ma_lpf2_553648797 = struct_ma_lpf2_553648796 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4651:3
  struct_ma_lpf_config_553648799 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4663:9
    channels*: ma_uint32_553648621
    sampleRate*: ma_uint32_553648621
    cutoffFrequency*: cdouble
    order*: ma_uint32_553648621
  ma_lpf_config_553648801 = struct_ma_lpf_config_553648800 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4670:3
  struct_ma_lpf_553648803 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4674:9
    channels*: ma_uint32_553648621
    sampleRate*: ma_uint32_553648621
    lpf1Count*: ma_uint32_553648621
    lpf2Count*: ma_uint32_553648621
    pLPF1*: ptr ma_lpf1_553648794
    pLPF2*: ptr ma_lpf2_553648798
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_553648631
  ma_lpf_553648805 = struct_ma_lpf_553648804 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4687:3
  struct_ma_hpf1_config_553648807 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4704:9
    channels*: ma_uint32_553648621
    sampleRate*: ma_uint32_553648621
    cutoffFrequency*: cdouble
    q*: cdouble
  ma_hpf1_config_553648809 = struct_ma_hpf1_config_553648808 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4711:3
  ma_hpf2_config_553648811 = struct_ma_hpf1_config_553648808 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4711:19
  struct_ma_hpf1_553648813 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4716:9
    channels*: ma_uint32_553648621
    a*: ma_biquad_coefficient_553648776
    pR1*: ptr ma_biquad_coefficient_553648776
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_553648631
  ma_hpf1_553648815 = struct_ma_hpf1_553648814 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4726:3
  struct_ma_hpf2_553648817 {.pure, inheritable, bycopy.} = object
    bq*: ma_biquad_553648784 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4736:9
  ma_hpf2_553648819 = struct_ma_hpf2_553648818 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4739:3
  struct_ma_hpf_config_553648821 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4750:9
    channels*: ma_uint32_553648621
    sampleRate*: ma_uint32_553648621
    cutoffFrequency*: cdouble
    order*: ma_uint32_553648621
  ma_hpf_config_553648823 = struct_ma_hpf_config_553648822 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4757:3
  struct_ma_hpf_553648825 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4761:9
    channels*: ma_uint32_553648621
    sampleRate*: ma_uint32_553648621
    hpf1Count*: ma_uint32_553648621
    hpf2Count*: ma_uint32_553648621
    pHPF1*: ptr ma_hpf1_553648816
    pHPF2*: ptr ma_hpf2_553648820
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_553648631
  ma_hpf_553648827 = struct_ma_hpf_553648826 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4774:3
  struct_ma_bpf2_config_553648829 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4790:9
    channels*: ma_uint32_553648621
    sampleRate*: ma_uint32_553648621
    cutoffFrequency*: cdouble
    q*: cdouble
  ma_bpf2_config_553648831 = struct_ma_bpf2_config_553648830 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4797:3
  struct_ma_bpf2_553648833 {.pure, inheritable, bycopy.} = object
    bq*: ma_biquad_553648784 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4801:9
  ma_bpf2_553648835 = struct_ma_bpf2_553648834 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4804:3
  struct_ma_bpf_config_553648837 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4815:9
    channels*: ma_uint32_553648621
    sampleRate*: ma_uint32_553648621
    cutoffFrequency*: cdouble
    order*: ma_uint32_553648621
  ma_bpf_config_553648839 = struct_ma_bpf_config_553648838 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4822:3
  struct_ma_bpf_553648841 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4826:9
    channels*: ma_uint32_553648621
    bpf2Count*: ma_uint32_553648621
    pBPF2*: ptr ma_bpf2_553648836
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_553648631
  ma_bpf_553648843 = struct_ma_bpf_553648842 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4836:3
  struct_ma_notch2_config_553648845 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4852:9
    channels*: ma_uint32_553648621
    sampleRate*: ma_uint32_553648621
    q*: cdouble
    frequency*: cdouble
  ma_notch2_config_553648847 = struct_ma_notch2_config_553648846 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4859:3
  ma_notch_config_553648849 = struct_ma_notch2_config_553648846 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4859:21
  struct_ma_notch2_553648851 {.pure, inheritable, bycopy.} = object
    bq*: ma_biquad_553648784 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4863:9
  ma_notch2_553648853 = struct_ma_notch2_553648852 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4866:3
  struct_ma_peak2_config_553648855 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4882:9
    channels*: ma_uint32_553648621
    sampleRate*: ma_uint32_553648621
    gainDB*: cdouble
    q*: cdouble
    frequency*: cdouble
  ma_peak2_config_553648857 = struct_ma_peak2_config_553648856 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4890:3
  ma_peak_config_553648859 = struct_ma_peak2_config_553648856 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4890:20
  struct_ma_peak2_553648861 {.pure, inheritable, bycopy.} = object
    bq*: ma_biquad_553648784 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4894:9
  ma_peak2_553648863 = struct_ma_peak2_553648862 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4897:3
  struct_ma_loshelf2_config_553648865 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4913:9
    channels*: ma_uint32_553648621
    sampleRate*: ma_uint32_553648621
    gainDB*: cdouble
    shelfSlope*: cdouble
    frequency*: cdouble
  ma_loshelf2_config_553648867 = struct_ma_loshelf2_config_553648866 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4921:3
  ma_loshelf_config_553648869 = struct_ma_loshelf2_config_553648866 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4921:23
  struct_ma_loshelf2_553648871 {.pure, inheritable, bycopy.} = object
    bq*: ma_biquad_553648784 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4925:9
  ma_loshelf2_553648873 = struct_ma_loshelf2_553648872 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4928:3
  struct_ma_hishelf2_config_553648875 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4944:9
    channels*: ma_uint32_553648621
    sampleRate*: ma_uint32_553648621
    gainDB*: cdouble
    shelfSlope*: cdouble
    frequency*: cdouble
  ma_hishelf2_config_553648877 = struct_ma_hishelf2_config_553648876 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4952:3
  ma_hishelf_config_553648879 = struct_ma_hishelf2_config_553648876 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4952:23
  struct_ma_hishelf2_553648881 {.pure, inheritable, bycopy.} = object
    bq*: ma_biquad_553648784 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4956:9
  ma_hishelf2_553648883 = struct_ma_hishelf2_553648882 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4959:3
  struct_ma_delay_config_553648885 {.pure, inheritable, bycopy.} = object
    channels*: ma_uint32_553648621 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4974:9
    sampleRate*: ma_uint32_553648621
    delayInFrames*: ma_uint32_553648621
    delayStart*: ma_bool32_553648631
    wet*: cfloat
    dry*: cfloat
    decay*: cfloat
  ma_delay_config_553648887 = struct_ma_delay_config_553648886 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4983:3
  struct_ma_delay_553648889 {.pure, inheritable, bycopy.} = object
    config*: ma_delay_config_553648888 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4988:9
    cursor*: ma_uint32_553648621
    bufferSizeInFrames*: ma_uint32_553648621
    pBuffer*: ptr cfloat
  ma_delay_553648891 = struct_ma_delay_553648890 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4994:3
  struct_ma_gainer_config_553648893 {.pure, inheritable, bycopy.} = object
    channels*: ma_uint32_553648621 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5008:9
    smoothTimeInFrames*: ma_uint32_553648621
  ma_gainer_config_553648895 = struct_ma_gainer_config_553648894 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5012:3
  struct_ma_gainer_553648897 {.pure, inheritable, bycopy.} = object
    config*: ma_gainer_config_553648896 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5017:9
    t*: ma_uint32_553648621
    masterVolume*: cfloat
    pOldGains*: ptr cfloat
    pNewGains*: ptr cfloat
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_553648631
  ma_gainer_553648899 = struct_ma_gainer_553648898 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5028:3
  ma_pan_mode_553648903 = enum_ma_pan_mode_553648902 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5047:3
  struct_ma_panner_config_553648905 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5049:9
    channels*: ma_uint32_553648621
    mode*: ma_pan_mode_553648904
    pan*: cfloat
  ma_panner_config_553648907 = struct_ma_panner_config_553648906 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5055:3
  struct_ma_panner_553648909 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5060:9
    channels*: ma_uint32_553648621
    mode*: ma_pan_mode_553648904
    pan*: cfloat
  ma_panner_553648911 = struct_ma_panner_553648910 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5066:3
  struct_ma_fader_config_553648913 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5078:9
    channels*: ma_uint32_553648621
    sampleRate*: ma_uint32_553648621
  ma_fader_config_553648915 = struct_ma_fader_config_553648914 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5083:3
  struct_ma_fader_553648917 {.pure, inheritable, bycopy.} = object
    config*: ma_fader_config_553648916 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5087:9
    volumeBeg*: cfloat
    volumeEnd*: cfloat
    lengthInFrames*: ma_uint64_553648625
    cursorInFrames*: ma_int64_553648623
  ma_fader_553648919 = struct_ma_fader_553648918 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5094:3
  struct_ma_vec3f_553648921 {.pure, inheritable, bycopy.} = object
    x*: cfloat               ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5106:9
    y*: cfloat
    z*: cfloat
  ma_vec3f_553648923 = struct_ma_vec3f_553648922 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5111:3
  struct_ma_atomic_vec3f_553648925 {.pure, inheritable, bycopy.} = object
    v*: ma_vec3f_553648924   ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5113:9
    lock*: ma_spinlock_553648746
  ma_atomic_vec3f_553648927 = struct_ma_atomic_vec3f_553648926 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5117:3
  ma_attenuation_model_553648931 = enum_ma_attenuation_model_553648930 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5125:3
  ma_positioning_553648935 = enum_ma_positioning_553648934 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5131:3
  ma_handedness_553648939 = enum_ma_handedness_553648938 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5137:3
  struct_ma_spatializer_listener_config_553648941 {.pure, inheritable, bycopy.} = object
    channelsOut*: ma_uint32_553648621 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5140:9
    pChannelMapOut*: ptr ma_channel_553648669
    handedness*: ma_handedness_553648940
    coneInnerAngleInRadians*: cfloat
    coneOuterAngleInRadians*: cfloat
    coneOuterGain*: cfloat
    speedOfSound*: cfloat
    worldUp*: ma_vec3f_553648924
  ma_spatializer_listener_config_553648943 = struct_ma_spatializer_listener_config_553648942 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5150:3
  struct_ma_spatializer_listener_553648945 {.pure, inheritable, bycopy.} = object
    config*: ma_spatializer_listener_config_553648944 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5155:9
    position*: ma_atomic_vec3f_553648928
    direction*: ma_atomic_vec3f_553648928
    velocity*: ma_atomic_vec3f_553648928
    isEnabled*: ma_bool32_553648631
    internal_ownsHeap*: ma_bool32_553648631
    internal_pHeap*: pointer
  ma_spatializer_listener_553648947 = struct_ma_spatializer_listener_553648946 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5166:3
  struct_ma_spatializer_config_553648949 {.pure, inheritable, bycopy.} = object
    channelsIn*: ma_uint32_553648621 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5189:9
    channelsOut*: ma_uint32_553648621
    pChannelMapIn*: ptr ma_channel_553648669
    attenuationModel*: ma_attenuation_model_553648932
    positioning*: ma_positioning_553648936
    handedness*: ma_handedness_553648940
    minGain*: cfloat
    maxGain*: cfloat
    minDistance*: cfloat
    maxDistance*: cfloat
    rolloff*: cfloat
    coneInnerAngleInRadians*: cfloat
    coneOuterAngleInRadians*: cfloat
    coneOuterGain*: cfloat
    dopplerFactor*: cfloat
    directionalAttenuationFactor*: cfloat
    minSpatializationChannelGain*: cfloat
    gainSmoothTimeInFrames*: ma_uint32_553648621
  ma_spatializer_config_553648951 = struct_ma_spatializer_config_553648950 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5209:3
  struct_ma_spatializer_553648953 {.pure, inheritable, bycopy.} = object
    channelsIn*: ma_uint32_553648621 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5214:9
    channelsOut*: ma_uint32_553648621
    pChannelMapIn*: ptr ma_channel_553648669
    attenuationModel*: ma_attenuation_model_553648932
    positioning*: ma_positioning_553648936
    handedness*: ma_handedness_553648940
    minGain*: cfloat
    maxGain*: cfloat
    minDistance*: cfloat
    maxDistance*: cfloat
    rolloff*: cfloat
    coneInnerAngleInRadians*: cfloat
    coneOuterAngleInRadians*: cfloat
    coneOuterGain*: cfloat
    dopplerFactor*: cfloat
    directionalAttenuationFactor*: cfloat
    gainSmoothTimeInFrames*: ma_uint32_553648621
    position*: ma_atomic_vec3f_553648928
    direction*: ma_atomic_vec3f_553648928
    velocity*: ma_atomic_vec3f_553648928
    dopplerPitch*: cfloat
    minSpatializationChannelGain*: cfloat
    gainer*: ma_gainer_553648900
    pNewChannelGainsOut*: ptr cfloat
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_553648631
  ma_spatializer_553648955 = struct_ma_spatializer_553648954 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5244:3
  struct_ma_linear_resampler_config_553648957 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5301:9
    channels*: ma_uint32_553648621
    sampleRateIn*: ma_uint32_553648621
    sampleRateOut*: ma_uint32_553648621
    lpfOrder*: ma_uint32_553648621
    lpfNyquistFactor*: cdouble
  ma_linear_resampler_config_553648959 = struct_ma_linear_resampler_config_553648958 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5309:3
  struct_ma_linear_resampler_x0_t {.union, bycopy.} = object
    f32*: ptr cfloat
    s16*: ptr ma_int16_553648615
  struct_ma_linear_resampler_x1_t {.union, bycopy.} = object
    f32*: ptr cfloat
    s16*: ptr ma_int16_553648615
  struct_ma_linear_resampler_553648961 {.pure, inheritable, bycopy.} = object
    config*: ma_linear_resampler_config_553648960 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5313:9
    inAdvanceInt*: ma_uint32_553648621
    inAdvanceFrac*: ma_uint32_553648621
    inTimeInt*: ma_uint32_553648621
    inTimeFrac*: ma_uint32_553648621
    x0*: struct_ma_linear_resampler_x0_t
    x1*: struct_ma_linear_resampler_x1_t
    lpf*: ma_lpf_553648806
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_553648631
  ma_linear_resampler_553648963 = struct_ma_linear_resampler_553648962 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5335:3
  ma_resampler_config_553648965 = struct_ma_resampler_config_553648968 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5351:36
  struct_ma_resampler_config_linear_t {.pure, inheritable, bycopy.} = object
    lpfOrder*: ma_uint32_553648621
  struct_ma_resampler_config_553648967 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5374:8
    channels*: ma_uint32_553648621
    sampleRateIn*: ma_uint32_553648621
    sampleRateOut*: ma_uint32_553648621
    algorithm*: ma_resample_algorithm_553648978
    pBackendVTable*: ptr ma_resampling_backend_vtable_553648974
    pBackendUserData*: pointer
    linear*: struct_ma_resampler_config_linear_t
  struct_ma_resampling_backend_vtable_553648971 {.pure, inheritable, bycopy.} = object
    onGetHeapSize*: proc (a0: pointer; a1: ptr ma_resampler_config_553648966;
                          a2: ptr csize_t): ma_result_553648677 {.cdecl.} ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5354:9
    onInit*: proc (a0: pointer; a1: ptr ma_resampler_config_553648966;
                   a2: pointer; a3: ptr pointer): ma_result_553648677 {.cdecl.}
    onUninit*: proc (a0: pointer; a1: pointer; a2: ptr ma_allocation_callbacks_553648720): void {.
        cdecl.}
    onProcess*: proc (a0: pointer; a1: pointer; a2: pointer; a3: ptr ma_uint64_553648625;
                      a4: pointer; a5: ptr ma_uint64_553648625): ma_result_553648677 {.
        cdecl.}
    onSetRate*: proc (a0: pointer; a1: pointer; a2: ma_uint32_553648621;
                      a3: ma_uint32_553648621): ma_result_553648677 {.cdecl.}
    onGetInputLatency*: proc (a0: pointer; a1: pointer): ma_uint64_553648625 {.
        cdecl.}
    onGetOutputLatency*: proc (a0: pointer; a1: pointer): ma_uint64_553648625 {.
        cdecl.}
    onGetRequiredInputFrameCount*: proc (a0: pointer; a1: pointer;
        a2: ma_uint64_553648625; a3: ptr ma_uint64_553648625): ma_result_553648677 {.
        cdecl.}
    onGetExpectedOutputFrameCount*: proc (a0: pointer; a1: pointer;
        a2: ma_uint64_553648625; a3: ptr ma_uint64_553648625): ma_result_553648677 {.
        cdecl.}
    onReset*: proc (a0: pointer; a1: pointer): ma_result_553648677 {.cdecl.}
  ma_resampling_backend_vtable_553648973 = struct_ma_resampling_backend_vtable_553648972 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5366:3
  ma_resample_algorithm_553648977 = enum_ma_resample_algorithm_553648976 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5372:3
  struct_ma_resampler_state_t {.union, bycopy.} = object
    linear*: ma_linear_resampler_553648964
  struct_ma_resampler_553648979 {.pure, inheritable, bycopy.} = object
    pBackend*: pointer       ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5391:9
    pBackendVTable*: ptr ma_resampling_backend_vtable_553648974
    pBackendUserData*: pointer
    format*: ma_format_553648700
    channels*: ma_uint32_553648621
    sampleRateIn*: ma_uint32_553648621
    sampleRateOut*: ma_uint32_553648621
    state*: struct_ma_resampler_state_t
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_553648631
  ma_resampler_553648981 = struct_ma_resampler_553648980 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5408:3
  ma_channel_conversion_path_553648985 = enum_ma_channel_conversion_path_553648984 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5504:3
  ma_mono_expansion_mode_553648989 = enum_ma_mono_expansion_mode_553648988 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5512:3
  struct_ma_channel_converter_config_553648991 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5514:9
    channelsIn*: ma_uint32_553648621
    channelsOut*: ma_uint32_553648621
    pChannelMapIn*: ptr ma_channel_553648669
    pChannelMapOut*: ptr ma_channel_553648669
    mixingMode*: ma_channel_mix_mode_553648708
    calculateLFEFromSpatialChannels*: ma_bool32_553648631
    ppWeights*: ptr ptr cfloat
  ma_channel_converter_config_553648993 = struct_ma_channel_converter_config_553648992 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5524:3
  struct_ma_channel_converter_weights_t {.union, bycopy.} = object
    f32*: ptr ptr cfloat
    s16*: ptr ptr ma_int32_553648619
  struct_ma_channel_converter_553648995 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5528:9
    channelsIn*: ma_uint32_553648621
    channelsOut*: ma_uint32_553648621
    mixingMode*: ma_channel_mix_mode_553648708
    conversionPath*: ma_channel_conversion_path_553648986
    pChannelMapIn*: ptr ma_channel_553648669
    pChannelMapOut*: ptr ma_channel_553648669
    pShuffleTable*: ptr ma_uint8_553648613
    weights*: struct_ma_channel_converter_weights_t
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_553648631
  ma_channel_converter_553648997 = struct_ma_channel_converter_553648996 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5547:3
  struct_ma_data_converter_config_553648999 {.pure, inheritable, bycopy.} = object
    formatIn*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5563:9
    formatOut*: ma_format_553648700
    channelsIn*: ma_uint32_553648621
    channelsOut*: ma_uint32_553648621
    sampleRateIn*: ma_uint32_553648621
    sampleRateOut*: ma_uint32_553648621
    pChannelMapIn*: ptr ma_channel_553648669
    pChannelMapOut*: ptr ma_channel_553648669
    ditherMode*: ma_dither_mode_553648696
    channelMixMode*: ma_channel_mix_mode_553648708
    calculateLFEFromSpatialChannels*: ma_bool32_553648631
    ppChannelWeights*: ptr ptr cfloat
    allowDynamicSampleRate*: ma_bool32_553648631
    resampling*: ma_resampler_config_553648966
  ma_data_converter_config_553649001 = struct_ma_data_converter_config_553649000 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5579:3
  ma_data_converter_execution_path_553649005 = enum_ma_data_converter_execution_path_553649004 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5593:3
  struct_ma_data_converter_553649007 {.pure, inheritable, bycopy.} = object
    formatIn*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5595:9
    formatOut*: ma_format_553648700
    channelsIn*: ma_uint32_553648621
    channelsOut*: ma_uint32_553648621
    sampleRateIn*: ma_uint32_553648621
    sampleRateOut*: ma_uint32_553648621
    ditherMode*: ma_dither_mode_553648696
    executionPath*: ma_data_converter_execution_path_553649006
    channelConverter*: ma_channel_converter_553648998
    resampler*: ma_resampler_553648982
    hasPreFormatConversion*: ma_bool8_553648629
    hasPostFormatConversion*: ma_bool8_553648629
    hasChannelConverter*: ma_bool8_553648629
    hasResampler*: ma_bool8_553648629
    isPassthrough*: ma_bool8_553648629
    internal_ownsHeap*: ma_bool8_553648629
    internal_pHeap*: pointer
  ma_data_converter_553649009 = struct_ma_data_converter_553649008 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5616:3
  struct_ma_data_source_vtable_553649013 {.pure, inheritable, bycopy.} = object
    onRead*: proc (a0: pointer; a1: pointer; a2: ma_uint64_553648625;
                   a3: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl.} ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5807:9
    onSeek*: proc (a0: pointer; a1: ma_uint64_553648625): ma_result_553648677 {.
        cdecl.}
    onGetDataFormat*: proc (a0: pointer; a1: ptr ma_format_553648700;
                            a2: ptr ma_uint32_553648621; a3: ptr ma_uint32_553648621;
                            a4: ptr ma_channel_553648669; a5: csize_t): ma_result_553648677 {.
        cdecl.}
    onGetCursor*: proc (a0: pointer; a1: ptr ma_uint64_553648625): ma_result_553648677 {.
        cdecl.}
    onGetLength*: proc (a0: pointer; a1: ptr ma_uint64_553648625): ma_result_553648677 {.
        cdecl.}
    onSetLooping*: proc (a0: pointer; a1: ma_bool32_553648631): ma_result_553648677 {.
        cdecl.}
    flags*: ma_uint32_553648621
  ma_data_source_vtable_553649015 = struct_ma_data_source_vtable_553649014 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5816:3
  ma_data_source_get_next_proc_553649017 = proc (a0: pointer): pointer {.cdecl.} ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5818:28
  struct_ma_data_source_config_553649019 {.pure, inheritable, bycopy.} = object
    vtable*: ptr ma_data_source_vtable_553649016 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5820:9
  ma_data_source_config_553649021 = struct_ma_data_source_config_553649020 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5823:3
  struct_ma_data_source_base_553649023 {.pure, inheritable, bycopy.} = object
    vtable*: ptr ma_data_source_vtable_553649016 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5828:9
    rangeBegInFrames*: ma_uint64_553648625
    rangeEndInFrames*: ma_uint64_553648625
    loopBegInFrames*: ma_uint64_553648625
    loopEndInFrames*: ma_uint64_553648625
    pCurrent*: pointer
    pNext*: pointer
    onGetNext*: ma_data_source_get_next_proc_553649018
    isLooping*: ma_bool32_553648631
  ma_data_source_base_553649025 = struct_ma_data_source_base_553649024 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5839:3
  struct_ma_audio_buffer_ref_553649027 {.pure, inheritable, bycopy.} = object
    ds*: ma_data_source_base_553649026 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5867:9
    format*: ma_format_553648700
    channels*: ma_uint32_553648621
    sampleRate*: ma_uint32_553648621
    cursor*: ma_uint64_553648625
    sizeInFrames*: ma_uint64_553648625
    pData*: pointer
  ma_audio_buffer_ref_553649029 = struct_ma_audio_buffer_ref_553649028 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5876:3
  struct_ma_audio_buffer_config_553649031 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5892:9
    channels*: ma_uint32_553648621
    sampleRate*: ma_uint32_553648621
    sizeInFrames*: ma_uint64_553648625
    pData*: pointer
    allocationCallbacks*: ma_allocation_callbacks_553648720
  ma_audio_buffer_config_553649033 = struct_ma_audio_buffer_config_553649032 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5900:3
  struct_ma_audio_buffer_553649035 {.pure, inheritable, bycopy.} = object
    ref_field*: ma_audio_buffer_ref_553649030 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5904:9
    allocationCallbacks*: ma_allocation_callbacks_553648720
    ownsData*: ma_bool32_553648631
    internal_pExtraData*: array[1'i64, ma_uint8_553648613]
  ma_audio_buffer_553649037 = struct_ma_audio_buffer_553649036 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5910:3
  ma_paged_audio_buffer_page_553649039 = struct_ma_paged_audio_buffer_page_553649042 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5938:43
  struct_ma_paged_audio_buffer_page_553649041 {.pure, inheritable, bycopy.} = object
    pNext*: ptr ma_paged_audio_buffer_page_553649040 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5939:8
    sizeInFrames*: ma_uint64_553648625
    pAudioData*: array[1'i64, ma_uint8_553648613]
  struct_ma_paged_audio_buffer_data_553649043 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5946:9
    channels*: ma_uint32_553648621
    head*: ma_paged_audio_buffer_page_553649040
    pTail*: ptr ma_paged_audio_buffer_page_553649040
  ma_paged_audio_buffer_data_553649045 = struct_ma_paged_audio_buffer_data_553649044 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5952:3
  struct_ma_paged_audio_buffer_config_553649047 {.pure, inheritable, bycopy.} = object
    pData*: ptr ma_paged_audio_buffer_data_553649046 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5965:9
  ma_paged_audio_buffer_config_553649049 = struct_ma_paged_audio_buffer_config_553649048 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5968:3
  struct_ma_paged_audio_buffer_553649051 {.pure, inheritable, bycopy.} = object
    ds*: ma_data_source_base_553649026 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5973:9
    pData*: ptr ma_paged_audio_buffer_data_553649046
    pCurrent*: ptr ma_paged_audio_buffer_page_553649040
    relativeCursor*: ma_uint64_553648625
    absoluteCursor*: ma_uint64_553648625
  ma_paged_audio_buffer_553649053 = struct_ma_paged_audio_buffer_553649052 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5980:3
  struct_ma_rb_553649055 {.pure, inheritable, bycopy.} = object
    pBuffer*: pointer        ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5996:9
    subbufferSizeInBytes*: ma_uint32_553648621
    subbufferCount*: ma_uint32_553648621
    subbufferStrideInBytes*: ma_uint32_553648621
    encodedReadOffset*: ma_uint32_553648621
    encodedWriteOffset*: ma_uint32_553648621
    ownsBuffer*: ma_bool8_553648629
    clearOnWriteAcquire*: ma_bool8_553648629
    allocationCallbacks*: ma_allocation_callbacks_553648720
  ma_rb_553649057 = struct_ma_rb_553649056 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6007:3
  struct_ma_pcm_rb_553649059 {.pure, inheritable, bycopy.} = object
    ds*: ma_data_source_base_553649026 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6028:9
    rb*: ma_rb_553649058
    format*: ma_format_553648700
    channels*: ma_uint32_553648621
    sampleRate*: ma_uint32_553648621
  ma_pcm_rb_553649061 = struct_ma_pcm_rb_553649060 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6035:3
  struct_ma_duplex_rb_553649063 {.pure, inheritable, bycopy.} = object
    rb*: ma_pcm_rb_553649062 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6070:9
  ma_duplex_rb_553649065 = struct_ma_duplex_rb_553649064 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6073:3
  struct_ma_fence_553649067 {.pure, inheritable, bycopy.} = object
    e*: ma_event_553648758   ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6236:9
    counter*: ma_uint32_553648621
  ma_fence_553649069 = struct_ma_fence_553649068 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6242:3
  struct_ma_async_notification_callbacks_553649073 {.pure, inheritable, bycopy.} = object
    onSignal*: proc (a0: pointer): void {.cdecl.} ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6257:9
  ma_async_notification_callbacks_553649075 = struct_ma_async_notification_callbacks_553649074 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6260:3
  struct_ma_async_notification_poll_553649077 {.pure, inheritable, bycopy.} = object
    cb*: ma_async_notification_callbacks_553649076 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6270:9
    signalled*: ma_bool32_553648631
  ma_async_notification_poll_553649079 = struct_ma_async_notification_poll_553649078 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6274:3
  struct_ma_async_notification_event_553649081 {.pure, inheritable, bycopy.} = object
    cb*: ma_async_notification_callbacks_553649076 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6285:9
    e*: ma_event_553648758
  ma_async_notification_event_553649083 = struct_ma_async_notification_event_553649082 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6291:3
  struct_ma_slot_allocator_config_553649085 {.pure, inheritable, bycopy.} = object
    capacity*: ma_uint32_553648621 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6323:9
  ma_slot_allocator_config_553649087 = struct_ma_slot_allocator_config_553649086 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6326:3
  struct_ma_slot_allocator_group_553649089 {.pure, inheritable, bycopy.} = object
    bitfield*: ma_uint32_553648621 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6331:9
  ma_slot_allocator_group_553649091 = struct_ma_slot_allocator_group_553649090 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6334:3
  struct_ma_slot_allocator_553649093 {.pure, inheritable, bycopy.} = object
    pGroups*: ptr ma_slot_allocator_group_553649092 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6336:9
    pSlots*: ptr ma_uint32_553648621
    count*: ma_uint32_553648621
    capacity*: ma_uint32_553648621
    internal_ownsHeap*: ma_bool32_553648631
    internal_pHeap*: pointer
  ma_slot_allocator_553649095 = struct_ma_slot_allocator_553649094 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6346:3
  struct_ma_job_toc_t_breakup_t {.pure, inheritable, bycopy.} = object
    code*: ma_uint16_553648617
    slot*: ma_uint16_553648617
    refcount*: ma_uint32_553648621
  struct_ma_job_toc_t {.union, bycopy.} = object
    breakup*: struct_ma_job_toc_t_breakup_t
    allocation*: ma_uint64_553648625
  struct_ma_job_data_t_custom_t {.pure, inheritable, bycopy.} = object
    proc_field*: ma_job_proc_553649100
    data0*: ma_uintptr_553648627
    data1*: ma_uintptr_553648627
  struct_ma_job_data_t_resourceManager_t_loadDataBufferNode_t {.pure,
      inheritable, bycopy.} = object
    pResourceManager*: pointer
    pDataBufferNode*: pointer
    pFilePath*: cstring
    pFilePathW*: ptr wchar_t_553649106
    flags*: ma_uint32_553648621
    pInitNotification*: pointer
    pDoneNotification*: pointer
    pInitFence*: ptr ma_fence_553649070
    pDoneFence*: ptr ma_fence_553649070
  struct_ma_job_data_t_resourceManager_t_freeDataBufferNode_t {.pure,
      inheritable, bycopy.} = object
    pResourceManager*: pointer
    pDataBufferNode*: pointer
    pDoneNotification*: pointer
    pDoneFence*: ptr ma_fence_553649070
  struct_ma_job_data_t_resourceManager_t_pageDataBufferNode_t {.pure,
      inheritable, bycopy.} = object
    pResourceManager*: pointer
    pDataBufferNode*: pointer
    pDecoder*: pointer
    pDoneNotification*: pointer
    pDoneFence*: ptr ma_fence_553649070
  struct_ma_job_data_t_resourceManager_t_loadDataBuffer_t {.pure, inheritable,
      bycopy.} = object
    pDataBuffer*: pointer
    pInitNotification*: pointer
    pDoneNotification*: pointer
    pInitFence*: ptr ma_fence_553649070
    pDoneFence*: ptr ma_fence_553649070
    rangeBegInPCMFrames*: ma_uint64_553648625
    rangeEndInPCMFrames*: ma_uint64_553648625
    loopPointBegInPCMFrames*: ma_uint64_553648625
    loopPointEndInPCMFrames*: ma_uint64_553648625
    isLooping*: ma_uint32_553648621
  struct_ma_job_data_t_resourceManager_t_freeDataBuffer_t {.pure, inheritable,
      bycopy.} = object
    pDataBuffer*: pointer
    pDoneNotification*: pointer
    pDoneFence*: ptr ma_fence_553649070
  struct_ma_job_data_t_resourceManager_t_loadDataStream_t {.pure, inheritable,
      bycopy.} = object
    pDataStream*: pointer
    pFilePath*: cstring
    pFilePathW*: ptr wchar_t_553649106
    initialSeekPoint*: ma_uint64_553648625
    pInitNotification*: pointer
    pInitFence*: ptr ma_fence_553649070
  struct_ma_job_data_t_resourceManager_t_freeDataStream_t {.pure, inheritable,
      bycopy.} = object
    pDataStream*: pointer
    pDoneNotification*: pointer
    pDoneFence*: ptr ma_fence_553649070
  struct_ma_job_data_t_resourceManager_t_pageDataStream_t {.pure, inheritable,
      bycopy.} = object
    pDataStream*: pointer
    pageIndex*: ma_uint32_553648621
  struct_ma_job_data_t_resourceManager_t_seekDataStream_t {.pure, inheritable,
      bycopy.} = object
    pDataStream*: pointer
    frameIndex*: ma_uint64_553648625
  struct_ma_job_data_t_resourceManager_t {.union, bycopy.} = object
    loadDataBufferNode*: struct_ma_job_data_t_resourceManager_t_loadDataBufferNode_t
    freeDataBufferNode*: struct_ma_job_data_t_resourceManager_t_freeDataBufferNode_t
    pageDataBufferNode*: struct_ma_job_data_t_resourceManager_t_pageDataBufferNode_t
    loadDataBuffer*: struct_ma_job_data_t_resourceManager_t_loadDataBuffer_t
    freeDataBuffer*: struct_ma_job_data_t_resourceManager_t_freeDataBuffer_t
    loadDataStream*: struct_ma_job_data_t_resourceManager_t_loadDataStream_t
    freeDataStream*: struct_ma_job_data_t_resourceManager_t_freeDataStream_t
    pageDataStream*: struct_ma_job_data_t_resourceManager_t_pageDataStream_t
    seekDataStream*: struct_ma_job_data_t_resourceManager_t_seekDataStream_t
  struct_ma_job_data_t_device_t_aaudio_t_reroute_t {.pure, inheritable, bycopy.} = object
    pDevice*: pointer
    deviceType*: ma_uint32_553648621
  struct_ma_job_data_t_device_t_aaudio_t {.union, bycopy.} = object
    reroute*: struct_ma_job_data_t_device_t_aaudio_t_reroute_t
  struct_ma_job_data_t_device_t {.union, bycopy.} = object
    aaudio*: struct_ma_job_data_t_device_t_aaudio_t
  struct_ma_job_data_t {.union, bycopy.} = object
    custom*: struct_ma_job_data_t_custom_t
    resourceManager*: struct_ma_job_data_t_resourceManager_t
    device*: struct_ma_job_data_t_device_t
  struct_ma_job_553649097 {.pure, inheritable, bycopy.} = object
    toc*: struct_ma_job_toc_t ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6389:8
    next*: ma_uint64_553648625
    order*: ma_uint32_553648621
    data*: struct_ma_job_data_t
  ma_job_proc_553649099 = proc (a0: ptr ma_job_553648605): ma_result_553648677 {.
      cdecl.}                ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6362:22
  ma_job_type_553649103 = enum_ma_job_type_553649102 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6387:3
  wchar_t_553649105 = cint   ## Generated based on /usr/lib/clang/20/include/__stddef_wchar_t.h:24:24
  ma_job_queue_flags_553649109 = enum_ma_job_queue_flags_553649108 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6520:3
  struct_ma_job_queue_config_553649111 {.pure, inheritable, bycopy.} = object
    flags*: ma_uint32_553648621 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6522:9
    capacity*: ma_uint32_553648621
  struct_ma_job_queue_553649113 {.pure, inheritable, bycopy.} = object
    flags*: ma_uint32_553648621 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6531:9
    capacity*: ma_uint32_553648621
    head*: ma_uint64_553648625
    tail*: ma_uint64_553648625
    sem*: ma_semaphore_553648762
    allocator*: ma_slot_allocator_553649096
    pJobs*: ptr ma_job_553648605
    lock*: ma_spinlock_553648746
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_553648631
  ma_device_state_553649117 = enum_ma_device_state_553649116 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6678:3
  struct_ma_atomic_device_state_553649119 {.pure, inheritable, bycopy.} = object
    value*: ma_device_state_553649118 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6680:1
  ma_atomic_device_state_553649121 = struct_ma_atomic_device_state_553649120 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6680:1
  ma_backend_553649125 = enum_ma_backend_553649124 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6711:3
  struct_ma_device_job_thread_config_553649127 {.pure, inheritable, bycopy.} = object
    noThread*: ma_bool32_553648631 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6723:9
    jobQueueCapacity*: ma_uint32_553648621
    jobQueueFlags*: ma_uint32_553648621
  ma_device_job_thread_config_553649129 = struct_ma_device_job_thread_config_553649128 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6728:3
  struct_ma_device_job_thread_553649131 {.pure, inheritable, bycopy.} = object
    thread*: ma_thread_553648752 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6732:9
    jobQueue*: ma_job_queue_553648609
    internal_hasThread*: ma_bool32_553648631
  ma_device_job_thread_553649133 = struct_ma_device_job_thread_553649132 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6737:3
  ma_device_notification_type_553649137 = enum_ma_device_notification_type_553649136 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6755:3
  struct_ma_device_notification_data_t_started_t {.pure, inheritable, bycopy.} = object
    internal_unused*: cint
  struct_ma_device_notification_data_t_stopped_t {.pure, inheritable, bycopy.} = object
    internal_unused*: cint
  struct_ma_device_notification_data_t_rerouted_t {.pure, inheritable, bycopy.} = object
    internal_unused*: cint
  struct_ma_device_notification_data_t_interruption_t {.pure, inheritable,
      bycopy.} = object
    internal_unused*: cint
  struct_ma_device_notification_data_t {.union, bycopy.} = object
    started*: struct_ma_device_notification_data_t_started_t
    stopped*: struct_ma_device_notification_data_t_stopped_t
    rerouted*: struct_ma_device_notification_data_t_rerouted_t
    interruption*: struct_ma_device_notification_data_t_interruption_t
  struct_ma_device_notification_553649139 {.pure, inheritable, bycopy.} = object
    pDevice*: ptr ma_device_553648665 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6757:9
    type_field*: ma_device_notification_type_553649138
    data*: struct_ma_device_notification_data_t
  ma_device_notification_553649141 = struct_ma_device_notification_553649140 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6780:3
  ma_device_notification_proc_553649143 = proc (a0: ptr ma_device_notification_553649142): void {.
      cdecl.}                ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6822:17
  ma_device_data_proc_553649145 = proc (a0: ptr ma_device_553648665;
                                        a1: pointer; a2: pointer; a3: ma_uint32_553648621): void {.
      cdecl.}                ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6865:17
  ma_stop_proc_553649147 = proc (a0: ptr ma_device_553648665): void {.cdecl.} ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6889:17
  ma_device_type_553649151 = enum_ma_device_type_553649150 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6897:3
  ma_share_mode_553649155 = enum_ma_share_mode_553649154 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6903:3
  ma_ios_session_category_553649159 = enum_ma_ios_session_category_553649158 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6916:3
  ma_ios_session_category_option_553649163 = enum_ma_ios_session_category_option_553649162 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6928:3
  ma_opensl_stream_type_553649167 = enum_ma_opensl_stream_type_553649166 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6940:3
  ma_opensl_recording_preset_553649171 = enum_ma_opensl_recording_preset_553649170 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6951:3
  ma_wasapi_usage_553649175 = enum_ma_wasapi_usage_553649174 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6959:3
  ma_aaudio_usage_553649179 = enum_ma_aaudio_usage_553649178 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6981:3
  ma_aaudio_content_type_553649183 = enum_ma_aaudio_content_type_553649182 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:6991:3
  ma_aaudio_input_preset_553649187 = enum_ma_aaudio_input_preset_553649186 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:7003:3
  ma_aaudio_allowed_capture_policy_553649191 = enum_ma_aaudio_allowed_capture_policy_553649190 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:7011:3
  union_ma_timer_553649193 {.union, bycopy.} = object
    counter*: ma_int64_553648623 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:7013:9
    counterD*: cdouble
  ma_timer_553649195 = union_ma_timer_553649194 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:7017:3
  union_ma_device_id_custom_t {.union, bycopy.} = object
    i*: cint
    s*: array[256'i64, cschar]
    p*: pointer
  union_ma_device_id_553649197 {.union, bycopy.} = object
    wasapi*: array[64'i64, ma_wchar_win32_553648655] ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:7019:9
    dsound*: array[16'i64, ma_uint8_553648613]
    winmm*: ma_uint32_553648621
    alsa*: array[256'i64, cschar]
    pulse*: array[256'i64, cschar]
    jack*: cint
    coreaudio*: array[256'i64, cschar]
    sndio*: array[256'i64, cschar]
    audio4*: array[256'i64, cschar]
    oss*: array[64'i64, cschar]
    aaudio*: ma_int32_553648619
    opensl*: ma_uint32_553648621
    webaudio*: array[32'i64, cschar]
    custom*: union_ma_device_id_custom_t
    nullbackend*: cint
  ma_device_id_553649199 = union_ma_device_id_553649198 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:7041:3
  ma_context_config_553649201 = struct_ma_context_config_553649204 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:7046:37
  struct_ma_context_config_dsound_t {.pure, inheritable, bycopy.} = object
    hWnd*: ma_handle_553648637
  struct_ma_context_config_alsa_t {.pure, inheritable, bycopy.} = object
    useVerboseDeviceEnumeration*: ma_bool32_553648631
  struct_ma_context_config_pulse_t {.pure, inheritable, bycopy.} = object
    pApplicationName*: cstring
    pServerName*: cstring
    tryAutoSpawn*: ma_bool32_553648631
  struct_ma_context_config_coreaudio_t {.pure, inheritable, bycopy.} = object
    sessionCategory*: ma_ios_session_category_553649160
    sessionCategoryOptions*: ma_uint32_553648621
    noAudioSessionActivate*: ma_bool32_553648631
    noAudioSessionDeactivate*: ma_bool32_553648631
  struct_ma_context_config_jack_t {.pure, inheritable, bycopy.} = object
    pClientName*: cstring
    tryStartServer*: ma_bool32_553648631
  struct_ma_context_config_553649203 {.pure, inheritable, bycopy.} = object
    pLog*: ptr ma_log_553648772 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:7281:8
    threadPriority*: ma_thread_priority_553648750
    threadStackSize*: csize_t
    pUserData*: pointer
    allocationCallbacks*: ma_allocation_callbacks_553648720
    dsound*: struct_ma_context_config_dsound_t
    alsa*: struct_ma_context_config_alsa_t
    pulse*: struct_ma_context_config_pulse_t
    coreaudio*: struct_ma_context_config_coreaudio_t
    jack*: struct_ma_context_config_jack_t
    custom*: ma_backend_callbacks_553649210
  ma_device_config_553649205 = struct_ma_device_config_553649208 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:7047:37
  struct_ma_device_config_playback_t {.pure, inheritable, bycopy.} = object
    pDeviceID*: ptr ma_device_id_553649200
    format*: ma_format_553648700
    channels*: ma_uint32_553648621
    pChannelMap*: ptr ma_channel_553648669
    channelMixMode*: ma_channel_mix_mode_553648708
    calculateLFEFromSpatialChannels*: ma_bool32_553648631
    shareMode*: ma_share_mode_553649156
  struct_ma_device_config_capture_t {.pure, inheritable, bycopy.} = object
    pDeviceID*: ptr ma_device_id_553649200
    format*: ma_format_553648700
    channels*: ma_uint32_553648621
    pChannelMap*: ptr ma_channel_553648669
    channelMixMode*: ma_channel_mix_mode_553648708
    calculateLFEFromSpatialChannels*: ma_bool32_553648631
    shareMode*: ma_share_mode_553649156
  struct_ma_device_config_wasapi_t {.pure, inheritable, bycopy.} = object
    usage*: ma_wasapi_usage_553649176
    noAutoConvertSRC*: ma_bool8_553648629
    noDefaultQualitySRC*: ma_bool8_553648629
    noAutoStreamRouting*: ma_bool8_553648629
    noHardwareOffloading*: ma_bool8_553648629
    loopbackProcessID*: ma_uint32_553648621
    loopbackProcessExclude*: ma_bool8_553648629
  struct_ma_device_config_alsa_t {.pure, inheritable, bycopy.} = object
    noMMap*: ma_bool32_553648631
    noAutoFormat*: ma_bool32_553648631
    noAutoChannels*: ma_bool32_553648631
    noAutoResample*: ma_bool32_553648631
  struct_ma_device_config_pulse_t {.pure, inheritable, bycopy.} = object
    pStreamNamePlayback*: cstring
    pStreamNameCapture*: cstring
    channelMap*: cint
  struct_ma_device_config_coreaudio_t {.pure, inheritable, bycopy.} = object
    allowNominalSampleRateChange*: ma_bool32_553648631
  struct_ma_device_config_opensl_t {.pure, inheritable, bycopy.} = object
    streamType*: ma_opensl_stream_type_553649168
    recordingPreset*: ma_opensl_recording_preset_553649172
    enableCompatibilityWorkarounds*: ma_bool32_553648631
  struct_ma_device_config_aaudio_t {.pure, inheritable, bycopy.} = object
    usage*: ma_aaudio_usage_553649180
    contentType*: ma_aaudio_content_type_553649184
    inputPreset*: ma_aaudio_input_preset_553649188
    allowedCapturePolicy*: ma_aaudio_allowed_capture_policy_553649192
    noAutoStartAfterReroute*: ma_bool32_553648631
    enableCompatibilityWorkarounds*: ma_bool32_553648631
    allowSetBufferCapacity*: ma_bool32_553648631
  struct_ma_device_config_553649207 {.pure, inheritable, bycopy.} = object
    deviceType*: ma_device_type_553649152 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:7073:8
    sampleRate*: ma_uint32_553648621
    periodSizeInFrames*: ma_uint32_553648621
    periodSizeInMilliseconds*: ma_uint32_553648621
    periods*: ma_uint32_553648621
    performanceProfile*: ma_performance_profile_553648716
    noPreSilencedOutputBuffer*: ma_bool8_553648629
    noClip*: ma_bool8_553648629
    noDisableDenormals*: ma_bool8_553648629
    noFixedSizedCallback*: ma_bool8_553648629
    dataCallback*: ma_device_data_proc_553649146
    notificationCallback*: ma_device_notification_proc_553649144
    stopCallback*: ma_stop_proc_553649148
    pUserData*: pointer
    resampling*: ma_resampler_config_553648966
    playback*: struct_ma_device_config_playback_t
    capture*: struct_ma_device_config_capture_t
    wasapi*: struct_ma_device_config_wasapi_t
    alsa*: struct_ma_device_config_alsa_t
    pulse*: struct_ma_device_config_pulse_t
    coreaudio*: struct_ma_device_config_coreaudio_t
    opensl*: struct_ma_device_config_opensl_t
    aaudio*: struct_ma_device_config_aaudio_t
  ma_backend_callbacks_553649209 = struct_ma_backend_callbacks_553649212 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:7048:37
  struct_ma_backend_callbacks_553649211 {.pure, inheritable, bycopy.} = object
    onContextInit*: proc (a0: ptr ma_context_553648661;
                          a1: ptr ma_context_config_553649202;
                          a2: ptr ma_backend_callbacks_553649210): ma_result_553648677 {.
        cdecl.}              ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:7264:8
    onContextUninit*: proc (a0: ptr ma_context_553648661): ma_result_553648677 {.
        cdecl.}
    onContextEnumerateDevices*: proc (a0: ptr ma_context_553648661;
                                      a1: ma_enum_devices_callback_proc_553649218;
                                      a2: pointer): ma_result_553648677 {.cdecl.}
    onContextGetDeviceInfo*: proc (a0: ptr ma_context_553648661;
                                   a1: ma_device_type_553649152;
                                   a2: ptr ma_device_id_553649200;
                                   a3: ptr ma_device_info_553649216): ma_result_553648677 {.
        cdecl.}
    onDeviceInit*: proc (a0: ptr ma_device_553648665; a1: ptr ma_device_config_553649206;
                         a2: ptr ma_device_descriptor_553649222;
                         a3: ptr ma_device_descriptor_553649222): ma_result_553648677 {.
        cdecl.}
    onDeviceUninit*: proc (a0: ptr ma_device_553648665): ma_result_553648677 {.
        cdecl.}
    onDeviceStart*: proc (a0: ptr ma_device_553648665): ma_result_553648677 {.
        cdecl.}
    onDeviceStop*: proc (a0: ptr ma_device_553648665): ma_result_553648677 {.
        cdecl.}
    onDeviceRead*: proc (a0: ptr ma_device_553648665; a1: pointer;
                         a2: ma_uint32_553648621; a3: ptr ma_uint32_553648621): ma_result_553648677 {.
        cdecl.}
    onDeviceWrite*: proc (a0: ptr ma_device_553648665; a1: pointer;
                          a2: ma_uint32_553648621; a3: ptr ma_uint32_553648621): ma_result_553648677 {.
        cdecl.}
    onDeviceDataLoop*: proc (a0: ptr ma_device_553648665): ma_result_553648677 {.
        cdecl.}
    onDeviceDataLoopWakeup*: proc (a0: ptr ma_device_553648665): ma_result_553648677 {.
        cdecl.}
    onDeviceGetInfo*: proc (a0: ptr ma_device_553648665; a1: ma_device_type_553649152;
                            a2: ptr ma_device_info_553649216): ma_result_553648677 {.
        cdecl.}
  struct_ma_device_info_nativeDataFormats_t {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700
    channels*: ma_uint32_553648621
    sampleRate*: ma_uint32_553648621
    flags*: ma_uint32_553648621
  struct_ma_device_info_553649213 {.pure, inheritable, bycopy.} = object
    id*: ma_device_id_553649200 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:7056:9
    name*: array[256'i64, cschar]
    isDefault*: ma_bool32_553648631
    nativeDataFormatCount*: ma_uint32_553648621
    nativeDataFormats*: array[64'i64, struct_ma_device_info_nativeDataFormats_t]
  ma_device_info_553649215 = struct_ma_device_info_553649214 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:7071:3
  ma_enum_devices_callback_proc_553649217 = proc (a0: ptr ma_context_553648661;
      a1: ma_device_type_553649152; a2: ptr ma_device_info_553649216;
      a3: pointer): ma_bool32_553648631 {.cdecl.} ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:7177:22
  struct_ma_device_descriptor_553649219 {.pure, inheritable, bycopy.} = object
    pDeviceID*: ptr ma_device_id_553649200 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:7183:9
    shareMode*: ma_share_mode_553649156
    format*: ma_format_553648700
    channels*: ma_uint32_553648621
    sampleRate*: ma_uint32_553648621
    channelMap*: array[254'i64, ma_channel_553648669]
    periodSizeInFrames*: ma_uint32_553648621
    periodSizeInMilliseconds*: ma_uint32_553648621
    periodCount*: ma_uint32_553648621
  ma_device_descriptor_553649221 = struct_ma_device_descriptor_553649220 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:7194:3
  struct_ma_context_command_wasapi_data_t_quit_t {.pure, inheritable, bycopy.} = object
    internal_unused*: cint
  struct_ma_context_command_wasapi_data_t_createAudioClient_t {.pure,
      inheritable, bycopy.} = object
    deviceType*: ma_device_type_553649152
    pAudioClient*: pointer
    ppAudioClientService*: ptr pointer
    pResult*: ptr ma_result_553648677
  struct_ma_context_command_wasapi_data_t_releaseAudioClient_t {.pure,
      inheritable, bycopy.} = object
    pDevice*: ptr ma_device_553648665
    deviceType*: ma_device_type_553649152
  struct_ma_context_command_wasapi_data_t {.union, bycopy.} = object
    quit*: struct_ma_context_command_wasapi_data_t_quit_t
    createAudioClient*: struct_ma_context_command_wasapi_data_t_createAudioClient_t
    releaseAudioClient*: struct_ma_context_command_wasapi_data_t_releaseAudioClient_t
  struct_ma_context_command_wasapi_553649223 {.pure, inheritable, bycopy.} = object
    code*: cint              ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:7318:9
    pEvent*: ptr ma_event_553648758
    data*: struct_ma_context_command_wasapi_data_t
  ma_context_command_wasapi_553649225 = struct_ma_context_command_wasapi_553649224 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:7341:3
  ma_vfs_file_553649229 = ma_handle_553648637 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:9845:19
  ma_open_mode_flags_553649233 = enum_ma_open_mode_flags_553649232 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:9851:3
  ma_seek_origin_553649237 = enum_ma_seek_origin_553649236 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:9858:3
  struct_ma_file_info_553649239 {.pure, inheritable, bycopy.} = object
    sizeInBytes*: ma_uint64_553648625 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:9860:9
  ma_file_info_553649241 = struct_ma_file_info_553649240 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:9863:3
  struct_ma_vfs_callbacks_553649243 {.pure, inheritable, bycopy.} = object
    onOpen*: proc (a0: pointer; a1: cstring; a2: ma_uint32_553648621;
                   a3: ptr ma_vfs_file_553649230): ma_result_553648677 {.cdecl.} ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:9865:9
    onOpenW*: proc (a0: pointer; a1: ptr wchar_t_553649106; a2: ma_uint32_553648621;
                    a3: ptr ma_vfs_file_553649230): ma_result_553648677 {.cdecl.}
    onClose*: proc (a0: pointer; a1: ma_vfs_file_553649230): ma_result_553648677 {.
        cdecl.}
    onRead*: proc (a0: pointer; a1: ma_vfs_file_553649230; a2: pointer;
                   a3: csize_t; a4: ptr csize_t): ma_result_553648677 {.cdecl.}
    onWrite*: proc (a0: pointer; a1: ma_vfs_file_553649230; a2: pointer;
                    a3: csize_t; a4: ptr csize_t): ma_result_553648677 {.cdecl.}
    onSeek*: proc (a0: pointer; a1: ma_vfs_file_553649230; a2: ma_int64_553648623;
                   a3: ma_seek_origin_553649238): ma_result_553648677 {.cdecl.}
    onTell*: proc (a0: pointer; a1: ma_vfs_file_553649230; a2: ptr ma_int64_553648623): ma_result_553648677 {.
        cdecl.}
    onInfo*: proc (a0: pointer; a1: ma_vfs_file_553649230; a2: ptr ma_file_info_553649242): ma_result_553648677 {.
        cdecl.}
  ma_vfs_callbacks_553649245 = struct_ma_vfs_callbacks_553649244 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:9875:3
  struct_ma_default_vfs_553649247 {.pure, inheritable, bycopy.} = object
    cb*: ma_vfs_callbacks_553649246 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:9887:9
    allocationCallbacks*: ma_allocation_callbacks_553648720
  ma_default_vfs_553649249 = struct_ma_default_vfs_553649248 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:9891:3
  ma_read_proc_553649251 = proc (a0: pointer; a1: pointer; a2: csize_t;
                                 a3: ptr csize_t): ma_result_553648677 {.cdecl.} ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:9897:22
  ma_seek_proc_553649253 = proc (a0: pointer; a1: ma_int64_553648623;
                                 a2: ma_seek_origin_553649238): ma_result_553648677 {.
      cdecl.}                ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:9898:22
  ma_tell_proc_553649255 = proc (a0: pointer; a1: ptr ma_int64_553648623): ma_result_553648677 {.
      cdecl.}                ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:9899:22
  ma_encoding_format_553649259 = enum_ma_encoding_format_553649258 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:9911:3
  ma_decoder_553649261 = struct_ma_decoder_553649264 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:9924:27
  struct_ma_decoder_data_t_vfs_t {.pure, inheritable, bycopy.} = object
    pVFS*: pointer
    file*: ma_vfs_file_553649230
  struct_ma_decoder_data_t_memory_t {.pure, inheritable, bycopy.} = object
    pData*: ptr ma_uint8_553648613
    dataSize*: csize_t
    currentReadPos*: csize_t
  struct_ma_decoder_data_t {.union, bycopy.} = object
    vfs*: struct_ma_decoder_data_t_vfs_t
    memory*: struct_ma_decoder_data_t_memory_t
  struct_ma_decoder_553649263 {.pure, inheritable, bycopy.} = object
    ds*: ma_data_source_base_553649026 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:9967:8
    pBackend*: pointer
    pBackendVTable*: ptr ma_decoding_backend_vtable_553649272
    pBackendUserData*: pointer
    onRead*: ma_decoder_read_proc_553649274
    onSeek*: ma_decoder_seek_proc_553649276
    onTell*: ma_decoder_tell_proc_553649278
    pUserData*: pointer
    readPointerInPCMFrames*: ma_uint64_553648625
    outputFormat*: ma_format_553648700
    outputChannels*: ma_uint32_553648621
    outputSampleRate*: ma_uint32_553648621
    converter_field*: ma_data_converter_553649010
    pInputCache*: pointer
    inputCacheCap*: ma_uint64_553648625
    inputCacheConsumed*: ma_uint64_553648625
    inputCacheRemaining*: ma_uint64_553648625
    allocationCallbacks*: ma_allocation_callbacks_553648720
    data*: struct_ma_decoder_data_t
  struct_ma_decoding_backend_config_553649265 {.pure, inheritable, bycopy.} = object
    preferredFormat*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:9927:9
    seekPointCount*: ma_uint32_553648621
  ma_decoding_backend_config_553649267 = struct_ma_decoding_backend_config_553649266 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:9931:3
  struct_ma_decoding_backend_vtable_553649269 {.pure, inheritable, bycopy.} = object
    onInit*: proc (a0: pointer; a1: ma_read_proc_553649252; a2: ma_seek_proc_553649254;
                   a3: ma_tell_proc_553649256; a4: pointer;
                   a5: ptr ma_decoding_backend_config_553649268;
                   a6: ptr ma_allocation_callbacks_553648720; a7: ptr pointer): ma_result_553648677 {.
        cdecl.}              ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:9936:9
    onInitFile*: proc (a0: pointer; a1: cstring;
                       a2: ptr ma_decoding_backend_config_553649268;
                       a3: ptr ma_allocation_callbacks_553648720;
                       a4: ptr pointer): ma_result_553648677 {.cdecl.}
    onInitFileW*: proc (a0: pointer; a1: ptr wchar_t_553649106;
                        a2: ptr ma_decoding_backend_config_553649268;
                        a3: ptr ma_allocation_callbacks_553648720;
                        a4: ptr pointer): ma_result_553648677 {.cdecl.}
    onInitMemory*: proc (a0: pointer; a1: pointer; a2: csize_t;
                         a3: ptr ma_decoding_backend_config_553649268;
                         a4: ptr ma_allocation_callbacks_553648720;
                         a5: ptr pointer): ma_result_553648677 {.cdecl.}
    onUninit*: proc (a0: pointer; a1: pointer; a2: ptr ma_allocation_callbacks_553648720): void {.
        cdecl.}
  ma_decoding_backend_vtable_553649271 = struct_ma_decoding_backend_vtable_553649270 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:9943:3
  ma_decoder_read_proc_553649273 = proc (a0: ptr ma_decoder_553649262;
      a1: pointer; a2: csize_t; a3: ptr csize_t): ma_result_553648677 {.cdecl.} ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:9946:22
  ma_decoder_seek_proc_553649275 = proc (a0: ptr ma_decoder_553649262;
      a1: ma_int64_553648623; a2: ma_seek_origin_553649238): ma_result_553648677 {.
      cdecl.}                ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:9947:22
  ma_decoder_tell_proc_553649277 = proc (a0: ptr ma_decoder_553649262;
      a1: ptr ma_int64_553648623): ma_result_553648677 {.cdecl.} ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:9948:22
  struct_ma_decoder_config_553649279 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:9950:9
    channels*: ma_uint32_553648621
    sampleRate*: ma_uint32_553648621
    pChannelMap*: ptr ma_channel_553648669
    channelMixMode*: ma_channel_mix_mode_553648708
    ditherMode*: ma_dither_mode_553648696
    resampling*: ma_resampler_config_553648966
    allocationCallbacks*: ma_allocation_callbacks_553648720
    encodingFormat*: ma_encoding_format_553649260
    seekPointCount*: ma_uint32_553648621
    ppCustomBackendVTables*: ptr ptr ma_decoding_backend_vtable_553649272
    customBackendCount*: ma_uint32_553648621
    pCustomBackendUserData*: pointer
  ma_decoder_config_553649281 = struct_ma_decoder_config_553649280 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:9965:3
  ma_encoder_553649283 = struct_ma_encoder_553649286 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10089:27
  struct_ma_encoder_data_t_vfs_t {.pure, inheritable, bycopy.} = object
    pVFS*: pointer
    file*: ma_vfs_file_553649230
  struct_ma_encoder_data_t {.union, bycopy.} = object
    vfs*: struct_ma_encoder_data_t_vfs_t
  struct_ma_encoder_553649285 {.pure, inheritable, bycopy.} = object
    config*: ma_encoder_config_553649300 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10108:8
    onWrite*: ma_encoder_write_proc_553649288
    onSeek*: ma_encoder_seek_proc_553649290
    onInit*: ma_encoder_init_proc_553649292
    onUninit*: ma_encoder_uninit_proc_553649294
    onWritePCMFrames*: ma_encoder_write_pcm_frames_proc_553649296
    pUserData*: pointer
    pInternalEncoder*: pointer
    data*: struct_ma_encoder_data_t
  ma_encoder_write_proc_553649287 = proc (a0: ptr ma_encoder_553649284;
      a1: pointer; a2: csize_t; a3: ptr csize_t): ma_result_553648677 {.cdecl.} ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10091:22
  ma_encoder_seek_proc_553649289 = proc (a0: ptr ma_encoder_553649284;
      a1: ma_int64_553648623; a2: ma_seek_origin_553649238): ma_result_553648677 {.
      cdecl.}                ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10092:22
  ma_encoder_init_proc_553649291 = proc (a0: ptr ma_encoder_553649284): ma_result_553648677 {.
      cdecl.}                ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10093:22
  ma_encoder_uninit_proc_553649293 = proc (a0: ptr ma_encoder_553649284): void {.
      cdecl.}                ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10094:22
  ma_encoder_write_pcm_frames_proc_553649295 = proc (a0: ptr ma_encoder_553649284;
      a1: pointer; a2: ma_uint64_553648625; a3: ptr ma_uint64_553648625): ma_result_553648677 {.
      cdecl.}                ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10095:22
  struct_ma_encoder_config_553649297 {.pure, inheritable, bycopy.} = object
    encodingFormat*: ma_encoding_format_553649260 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10097:9
    format*: ma_format_553648700
    channels*: ma_uint32_553648621
    sampleRate*: ma_uint32_553648621
    allocationCallbacks*: ma_allocation_callbacks_553648720
  ma_encoder_config_553649299 = struct_ma_encoder_config_553649298 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10104:3
  ma_waveform_type_553649303 = enum_ma_waveform_type_553649302 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10151:3
  struct_ma_waveform_config_553649305 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10153:9
    channels*: ma_uint32_553648621
    sampleRate*: ma_uint32_553648621
    type_field*: ma_waveform_type_553649304
    amplitude*: cdouble
    frequency*: cdouble
  ma_waveform_config_553649307 = struct_ma_waveform_config_553649306 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10161:3
  struct_ma_waveform_553649309 {.pure, inheritable, bycopy.} = object
    ds*: ma_data_source_base_553649026 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10165:9
    config*: ma_waveform_config_553649308
    advance*: cdouble
    time*: cdouble
  ma_waveform_553649311 = struct_ma_waveform_553649310 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10171:3
  struct_ma_pulsewave_config_553649313 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10182:9
    channels*: ma_uint32_553648621
    sampleRate*: ma_uint32_553648621
    dutyCycle*: cdouble
    amplitude*: cdouble
    frequency*: cdouble
  ma_pulsewave_config_553649315 = struct_ma_pulsewave_config_553649314 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10190:3
  struct_ma_pulsewave_553649317 {.pure, inheritable, bycopy.} = object
    waveform*: ma_waveform_553649312 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10194:9
    config*: ma_pulsewave_config_553649316
  ma_pulsewave_553649319 = struct_ma_pulsewave_553649318 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10198:3
  ma_noise_type_553649323 = enum_ma_noise_type_553649322 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10214:3
  struct_ma_noise_config_553649325 {.pure, inheritable, bycopy.} = object
    format*: ma_format_553648700 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10217:9
    channels*: ma_uint32_553648621
    type_field*: ma_noise_type_553649324
    seed*: ma_int32_553648619
    amplitude*: cdouble
    duplicateChannels*: ma_bool32_553648631
  ma_noise_config_553649327 = struct_ma_noise_config_553649326 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10225:3
  struct_ma_noise_state_t_pink_t {.pure, inheritable, bycopy.} = object
    bin*: ptr ptr cdouble
    accumulation*: ptr cdouble
    counter*: ptr ma_uint32_553648621
  struct_ma_noise_state_t_brownian_t {.pure, inheritable, bycopy.} = object
    accumulation*: ptr cdouble
  struct_ma_noise_state_t {.union, bycopy.} = object
    pink*: struct_ma_noise_state_t_pink_t
    brownian*: struct_ma_noise_state_t_brownian_t
  struct_ma_noise_553649329 {.pure, inheritable, bycopy.} = object
    ds*: ma_data_source_base_553649026 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10229:9
    config*: ma_noise_config_553649328
    lcg*: ma_lcg_553648724
    state*: struct_ma_noise_state_t
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_553648631
  ma_noise_553649331 = struct_ma_noise_553649330 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10251:3
  ma_resource_manager_553649333 = struct_ma_resource_manager_553649336 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10277:53
  struct_ma_resource_manager_553649335 {.pure, inheritable, bycopy.} = object
    config*: ma_resource_manager_config_553649384 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10496:8
    pRootDataBufferNode*: ptr ma_resource_manager_data_buffer_node_553649338
    dataBufferBSTLock*: ma_mutex_553648754
    jobThreads*: array[64'i64, ma_thread_553648752]
    jobQueue*: ma_job_queue_553648609
    defaultVFS*: ma_default_vfs_553649250
    log*: ma_log_553648772
  ma_resource_manager_data_buffer_node_553649337 = struct_ma_resource_manager_data_buffer_node_553649340 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10278:53
  struct_ma_resource_manager_data_buffer_node_553649339 {.pure, inheritable,
      bycopy.} = object
    hashedName32*: ma_uint32_553648621 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10401:8
    refCount*: ma_uint32_553648621
    result*: ma_result_553648677
    executionCounter*: ma_uint32_553648621
    executionPointer*: ma_uint32_553648621
    isDataOwnedByResourceManager*: ma_bool32_553648631
    data*: ma_resource_manager_data_supply_553649380
    pParent*: ptr ma_resource_manager_data_buffer_node_553649338
    pChildLo*: ptr ma_resource_manager_data_buffer_node_553649338
    pChildHi*: ptr ma_resource_manager_data_buffer_node_553649338
  ma_resource_manager_data_buffer_553649341 = struct_ma_resource_manager_data_buffer_553649344 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10279:53
  struct_ma_resource_manager_data_buffer_connector_t {.union, bycopy.} = object
    decoder*: ma_decoder_553649262
    buffer*: ma_audio_buffer_553649038
    pagedBuffer*: ma_paged_audio_buffer_553649054
  struct_ma_resource_manager_data_buffer_553649343 {.pure, inheritable, bycopy.} = object
    ds*: ma_data_source_base_553649026 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10415:8
    pResourceManager*: ptr ma_resource_manager_553649334
    pNode*: ptr ma_resource_manager_data_buffer_node_553649338
    flags*: ma_uint32_553648621
    executionCounter*: ma_uint32_553648621
    executionPointer*: ma_uint32_553648621
    seekTargetInPCMFrames*: ma_uint64_553648625
    seekToCursorOnNextRead*: ma_bool32_553648631
    result*: ma_result_553648677
    isLooping*: ma_bool32_553648631
    isConnectorInitialized*: ma_atomic_bool32_553648744
    connector*: struct_ma_resource_manager_data_buffer_connector_t
  ma_resource_manager_data_stream_553649345 = struct_ma_resource_manager_data_stream_553649348 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10280:53
  struct_ma_resource_manager_data_stream_553649347 {.pure, inheritable, bycopy.} = object
    ds*: ma_data_source_base_553649026 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10436:8
    pResourceManager*: ptr ma_resource_manager_553649334
    flags*: ma_uint32_553648621
    decoder*: ma_decoder_553649262
    isDecoderInitialized*: ma_bool32_553648631
    totalLengthInPCMFrames*: ma_uint64_553648625
    relativeCursor*: ma_uint32_553648621
    absoluteCursor*: ma_uint64_553648625
    currentPageIndex*: ma_uint32_553648621
    executionCounter*: ma_uint32_553648621
    executionPointer*: ma_uint32_553648621
    isLooping*: ma_bool32_553648631
    pPageData*: pointer
    pageFrameCount*: array[2'i64, ma_uint32_553648621]
    result*: ma_result_553648677
    isDecoderAtEnd*: ma_bool32_553648631
    isPageValid*: array[2'i64, ma_bool32_553648631]
    seekCounter*: ma_bool32_553648631
  ma_resource_manager_data_source_553649349 = struct_ma_resource_manager_data_source_553649352 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10281:53
  struct_ma_resource_manager_data_source_backend_t {.union, bycopy.} = object
    buffer*: ma_resource_manager_data_buffer_553649342
    stream*: ma_resource_manager_data_stream_553649346
  struct_ma_resource_manager_data_source_553649351 {.pure, inheritable, bycopy.} = object
    backend*: struct_ma_resource_manager_data_source_backend_t ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10464:8
    flags*: ma_uint32_553648621
    executionCounter*: ma_uint32_553648621
    executionPointer*: ma_uint32_553648621
  ma_resource_manager_data_source_flags_553649355 = enum_ma_resource_manager_data_source_flags_553649354 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10291:3
  struct_ma_resource_manager_pipeline_stage_notification_553649357 {.pure,
      inheritable, bycopy.} = object
    pNotification*: pointer  ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10297:9
    pFence*: ptr ma_fence_553649070
  ma_resource_manager_pipeline_stage_notification_553649359 = struct_ma_resource_manager_pipeline_stage_notification_553649358 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10301:3
  struct_ma_resource_manager_pipeline_notifications_553649361 {.pure,
      inheritable, bycopy.} = object
    init*: ma_resource_manager_pipeline_stage_notification_553649360 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10303:9
    done*: ma_resource_manager_pipeline_stage_notification_553649360
  ma_resource_manager_pipeline_notifications_553649363 = struct_ma_resource_manager_pipeline_notifications_553649362 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10307:3
  ma_resource_manager_flags_553649367 = enum_ma_resource_manager_flags_553649366 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10346:3
  struct_ma_resource_manager_data_source_config_553649369 {.pure, inheritable,
      bycopy.} = object
    pFilePath*: cstring      ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10348:9
    pFilePathW*: ptr wchar_t_553649106
    pNotifications*: ptr ma_resource_manager_pipeline_notifications_553649364
    initialSeekPointInPCMFrames*: ma_uint64_553648625
    rangeBegInPCMFrames*: ma_uint64_553648625
    rangeEndInPCMFrames*: ma_uint64_553648625
    loopPointBegInPCMFrames*: ma_uint64_553648625
    loopPointEndInPCMFrames*: ma_uint64_553648625
    flags*: ma_uint32_553648621
    isLooping*: ma_bool32_553648631
  ma_resource_manager_data_source_config_553649371 = struct_ma_resource_manager_data_source_config_553649370 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10360:3
  ma_resource_manager_data_supply_type_553649375 = enum_ma_resource_manager_data_supply_type_553649374 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10371:3
  struct_ma_resource_manager_data_supply_backend_t_encoded_t {.pure,
      inheritable, bycopy.} = object
    pData*: pointer
    sizeInBytes*: csize_t
  struct_ma_resource_manager_data_supply_backend_t_decoded_t {.pure,
      inheritable, bycopy.} = object
    pData*: pointer
    totalFrameCount*: ma_uint64_553648625
    decodedFrameCount*: ma_uint64_553648625
    format*: ma_format_553648700
    channels*: ma_uint32_553648621
    sampleRate*: ma_uint32_553648621
  struct_ma_resource_manager_data_supply_backend_t_decodedPaged_t {.pure,
      inheritable, bycopy.} = object
    data*: ma_paged_audio_buffer_data_553649046
    decodedFrameCount*: ma_uint64_553648625
    sampleRate*: ma_uint32_553648621
  struct_ma_resource_manager_data_supply_backend_t {.union, bycopy.} = object
    encoded*: struct_ma_resource_manager_data_supply_backend_t_encoded_t
    decoded*: struct_ma_resource_manager_data_supply_backend_t_decoded_t
    decodedPaged*: struct_ma_resource_manager_data_supply_backend_t_decodedPaged_t
  struct_ma_resource_manager_data_supply_553649377 {.pure, inheritable, bycopy.} = object
    type_field*: ma_resource_manager_data_supply_type_553649376 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10373:9
    backend*: struct_ma_resource_manager_data_supply_backend_t
  ma_resource_manager_data_supply_553649379 = struct_ma_resource_manager_data_supply_553649378 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10399:3
  struct_ma_resource_manager_config_553649381 {.pure, inheritable, bycopy.} = object
    allocationCallbacks*: ma_allocation_callbacks_553648720 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10477:9
    pLog*: ptr ma_log_553648772
    decodedFormat*: ma_format_553648700
    decodedChannels*: ma_uint32_553648621
    decodedSampleRate*: ma_uint32_553648621
    jobThreadCount*: ma_uint32_553648621
    jobThreadStackSize*: csize_t
    jobQueueCapacity*: ma_uint32_553648621
    flags*: ma_uint32_553648621
    pVFS*: pointer
    ppCustomDecodingBackendVTables*: ptr ptr ma_decoding_backend_vtable_553649272
    customDecodingBackendCount*: ma_uint32_553648621
    pCustomDecodingBackendUserData*: pointer
  ma_resource_manager_config_553649383 = struct_ma_resource_manager_config_553649382 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10492:3
  struct_ma_stack_553649385 {.pure, inheritable, bycopy.} = object
    offset*: csize_t         ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10604:9
    sizeInBytes*: csize_t
    internal_data*: array[1'i64, uint8]
  ma_stack_553649387 = struct_ma_stack_553649386 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10609:3
  ma_node_graph_553649389 = struct_ma_node_graph_553649392 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10612:30
  struct_ma_node_graph_553649391 {.pure, inheritable, bycopy.} = object
    base*: ma_node_base_553649420 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10796:8
    endpoint*: ma_node_base_553649420
    pProcessingCache*: ptr cfloat
    processingCacheFramesRemaining*: ma_uint32_553648621
    processingSizeInFrames*: ma_uint32_553648621
    isReading*: ma_bool32_553648631
    pPreMixStack*: ptr ma_stack_553649388
  ma_node_flags_553649397 = enum_ma_node_flags_553649396 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10624:3
  ma_node_state_553649401 = enum_ma_node_state_553649400 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10632:3
  struct_ma_node_vtable_553649403 {.pure, inheritable, bycopy.} = object
    onProcess*: proc (a0: pointer; a1: ptr ptr cfloat; a2: ptr ma_uint32_553648621;
                      a3: ptr ptr cfloat; a4: ptr ma_uint32_553648621): void {.
        cdecl.}              ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10635:9
    onGetRequiredInputFrameCount*: proc (a0: pointer; a1: ma_uint32_553648621;
        a2: ptr ma_uint32_553648621): ma_result_553648677 {.cdecl.}
    inputBusCount*: ma_uint8_553648613
    outputBusCount*: ma_uint8_553648613
    flags*: ma_uint32_553648621
  ma_node_vtable_553649405 = struct_ma_node_vtable_553649404 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10676:3
  struct_ma_node_config_553649407 {.pure, inheritable, bycopy.} = object
    vtable*: ptr ma_node_vtable_553649406 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10678:9
    initialState*: ma_node_state_553649402
    inputBusCount*: ma_uint32_553648621
    outputBusCount*: ma_uint32_553648621
    pInputChannels*: ptr ma_uint32_553648621
    pOutputChannels*: ptr ma_uint32_553648621
  ma_node_config_553649409 = struct_ma_node_config_553649408 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10686:3
  ma_node_output_bus_553649411 = struct_ma_node_output_bus_553649414 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10695:35
  struct_ma_node_output_bus_553649413 {.pure, inheritable, bycopy.} = object
    pNode*: pointer          ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10696:8
    outputBusIndex*: ma_uint8_553648613
    channels*: ma_uint8_553648613
    inputNodeInputBusIndex*: ma_uint8_553648613
    flags*: ma_uint32_553648621
    refCount*: ma_uint32_553648621
    isAttached*: ma_bool32_553648631
    lock*: ma_spinlock_553648746
    volume*: cfloat
    pNext*: ptr ma_node_output_bus_553649412
    pPrev*: ptr ma_node_output_bus_553649412
    pInputNode*: pointer
  ma_node_input_bus_553649415 = struct_ma_node_input_bus_553649418 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10719:34
  struct_ma_node_input_bus_553649417 {.pure, inheritable, bycopy.} = object
    head*: ma_node_output_bus_553649412 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10720:8
    nextCounter*: ma_uint32_553648621
    lock*: ma_spinlock_553648746
    channels*: ma_uint8_553648613
  ma_node_base_553649419 = struct_ma_node_base_553649422 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10732:29
  struct_ma_node_base_553649421 {.pure, inheritable, bycopy.} = object
    pNodeGraph*: ptr ma_node_graph_553649390 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10733:8
    vtable*: ptr ma_node_vtable_553649406
    inputBusCount*: ma_uint32_553648621
    outputBusCount*: ma_uint32_553648621
    pInputBuses*: ptr ma_node_input_bus_553649416
    pOutputBuses*: ptr ma_node_output_bus_553649412
    pCachedData*: ptr cfloat
    cachedDataCapInFramesPerBus*: ma_uint16_553648617
    cachedFrameCountOut*: ma_uint16_553648617
    cachedFrameCountIn*: ma_uint16_553648617
    consumedFrameCountIn*: ma_uint16_553648617
    state*: ma_node_state_553649402
    stateTimes*: array[2'i64, ma_uint64_553648625]
    localTime*: ma_uint64_553648625
    internal_inputBuses*: array[2'i64, ma_node_input_bus_553649416]
    internal_outputBuses*: array[2'i64, ma_node_output_bus_553649412]
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_553648631
  struct_ma_node_graph_config_553649423 {.pure, inheritable, bycopy.} = object
    channels*: ma_uint32_553648621 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10786:9
    processingSizeInFrames*: ma_uint32_553648621
    preMixStackSizeInBytes*: csize_t
  ma_node_graph_config_553649425 = struct_ma_node_graph_config_553649424 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10791:3
  struct_ma_data_source_node_config_553649427 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_553649410 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10823:9
    pDataSource*: pointer
  ma_data_source_node_config_553649429 = struct_ma_data_source_node_config_553649428 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10827:3
  struct_ma_data_source_node_553649431 {.pure, inheritable, bycopy.} = object
    base*: ma_node_base_553649420 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10832:9
    pDataSource*: pointer
  ma_data_source_node_553649433 = struct_ma_data_source_node_553649432 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10836:3
  struct_ma_splitter_node_config_553649435 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_553649410 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10845:9
    channels*: ma_uint32_553648621
    outputBusCount*: ma_uint32_553648621
  ma_splitter_node_config_553649437 = struct_ma_splitter_node_config_553649436 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10850:3
  struct_ma_splitter_node_553649439 {.pure, inheritable, bycopy.} = object
    base*: ma_node_base_553649420 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10855:9
  ma_splitter_node_553649441 = struct_ma_splitter_node_553649440 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10858:3
  struct_ma_biquad_node_config_553649443 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_553649410 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10867:9
    biquad*: ma_biquad_config_553648780
  ma_biquad_node_config_553649445 = struct_ma_biquad_node_config_553649444 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10871:3
  struct_ma_biquad_node_553649447 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_553649420 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10876:9
    biquad*: ma_biquad_553648784
  ma_biquad_node_553649449 = struct_ma_biquad_node_553649448 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10880:3
  struct_ma_lpf_node_config_553649451 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_553649410 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10890:9
    lpf*: ma_lpf_config_553648802
  ma_lpf_node_config_553649453 = struct_ma_lpf_node_config_553649452 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10894:3
  struct_ma_lpf_node_553649455 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_553649420 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10899:9
    lpf*: ma_lpf_553648806
  ma_lpf_node_553649457 = struct_ma_lpf_node_553649456 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10903:3
  struct_ma_hpf_node_config_553649459 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_553649410 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10913:9
    hpf*: ma_hpf_config_553648824
  ma_hpf_node_config_553649461 = struct_ma_hpf_node_config_553649460 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10917:3
  struct_ma_hpf_node_553649463 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_553649420 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10922:9
    hpf*: ma_hpf_553648828
  ma_hpf_node_553649465 = struct_ma_hpf_node_553649464 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10926:3
  struct_ma_bpf_node_config_553649467 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_553649410 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10936:9
    bpf*: ma_bpf_config_553648840
  ma_bpf_node_config_553649469 = struct_ma_bpf_node_config_553649468 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10940:3
  struct_ma_bpf_node_553649471 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_553649420 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10945:9
    bpf*: ma_bpf_553648844
  ma_bpf_node_553649473 = struct_ma_bpf_node_553649472 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10949:3
  struct_ma_notch_node_config_553649475 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_553649410 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10959:9
    notch*: ma_notch_config_553648850
  ma_notch_node_config_553649477 = struct_ma_notch_node_config_553649476 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10963:3
  struct_ma_notch_node_553649479 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_553649420 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10968:9
    notch*: ma_notch2_553648854
  ma_notch_node_553649481 = struct_ma_notch_node_553649480 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10972:3
  struct_ma_peak_node_config_553649483 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_553649410 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10982:9
    peak*: ma_peak_config_553648860
  ma_peak_node_config_553649485 = struct_ma_peak_node_config_553649484 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10986:3
  struct_ma_peak_node_553649487 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_553649420 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10991:9
    peak*: ma_peak2_553648864
  ma_peak_node_553649489 = struct_ma_peak_node_553649488 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10995:3
  struct_ma_loshelf_node_config_553649491 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_553649410 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11005:9
    loshelf*: ma_loshelf_config_553648870
  ma_loshelf_node_config_553649493 = struct_ma_loshelf_node_config_553649492 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11009:3
  struct_ma_loshelf_node_553649495 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_553649420 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11014:9
    loshelf*: ma_loshelf2_553648874
  ma_loshelf_node_553649497 = struct_ma_loshelf_node_553649496 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11018:3
  struct_ma_hishelf_node_config_553649499 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_553649410 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11028:9
    hishelf*: ma_hishelf_config_553648880
  ma_hishelf_node_config_553649501 = struct_ma_hishelf_node_config_553649500 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11032:3
  struct_ma_hishelf_node_553649503 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_553649420 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11037:9
    hishelf*: ma_hishelf2_553648884
  ma_hishelf_node_553649505 = struct_ma_hishelf_node_553649504 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11041:3
  struct_ma_delay_node_config_553649507 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_553649410 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11048:9
    delay*: ma_delay_config_553648888
  ma_delay_node_config_553649509 = struct_ma_delay_node_config_553649508 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11052:3
  struct_ma_delay_node_553649511 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_553649420 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11057:9
    delay*: ma_delay_553648892
  ma_delay_node_553649513 = struct_ma_delay_node_553649512 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11061:3
  ma_engine_553649515 = struct_ma_engine_553649518 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11081:26
  struct_ma_engine_553649517 {.pure, inheritable, bycopy.} = object
    nodeGraph*: ma_node_graph_553649390 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11277:8
    pResourceManager*: ptr ma_resource_manager_553649334
    pDevice*: ptr ma_device_553648665
    pLog*: ptr ma_log_553648772
    sampleRate*: ma_uint32_553648621
    listenerCount*: ma_uint32_553648621
    listeners*: array[4'i64, ma_spatializer_listener_553648948]
    allocationCallbacks*: ma_allocation_callbacks_553648720
    ownsResourceManager*: ma_bool8_553648629
    ownsDevice*: ma_bool8_553648629
    inlinedSoundLock*: ma_spinlock_553648746
    pInlinedSoundHead*: ptr ma_sound_inlined_553649546
    inlinedSoundCount*: ma_uint32_553648621
    gainSmoothTimeInFrames*: ma_uint32_553648621
    defaultVolumeSmoothTimeInPCMFrames*: ma_uint32_553648621
    monoExpansionMode*: ma_mono_expansion_mode_553648990
    onProcess*: ma_engine_process_proc_553649554
    pProcessUserData*: pointer
  ma_sound_553649519 = struct_ma_sound_553649522 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11082:26
  struct_ma_sound_553649521 {.pure, inheritable, bycopy.} = object
    engineNode*: ma_engine_node_553649538 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11206:8
    pDataSource*: pointer
    seekTarget*: ma_uint64_553648625
    atEnd*: ma_bool32_553648631
    endCallback*: ma_sound_end_proc_553649540
    pEndCallbackUserData*: pointer
    ownsDataSource*: ma_bool8_553648629
    pResourceManagerDataSource*: ptr ma_resource_manager_data_source_553649350
  ma_sound_flags_553649525 = enum_ma_sound_flags_553649524 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11100:3
  ma_engine_node_type_553649529 = enum_ma_engine_node_type_553649528 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11112:3
  struct_ma_engine_node_config_553649531 {.pure, inheritable, bycopy.} = object
    pEngine*: ptr ma_engine_553649516 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11114:9
    type_field*: ma_engine_node_type_553649530
    channelsIn*: ma_uint32_553648621
    channelsOut*: ma_uint32_553648621
    sampleRate*: ma_uint32_553648621
    volumeSmoothTimeInPCMFrames*: ma_uint32_553648621
    monoExpansionMode*: ma_mono_expansion_mode_553648990
    isPitchDisabled*: ma_bool8_553648629
    isSpatializationDisabled*: ma_bool8_553648629
    pinnedListenerIndex*: ma_uint8_553648613
  ma_engine_node_config_553649533 = struct_ma_engine_node_config_553649532 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11126:3
  struct_ma_engine_node_fadeSettings_t {.pure, inheritable, bycopy.} = object
    volumeBeg*: ma_atomic_float_553648740
    volumeEnd*: ma_atomic_float_553648740
    fadeLengthInFrames*: ma_atomic_uint64_553648736
    absoluteGlobalTimeInFrames*: ma_atomic_uint64_553648736
  struct_ma_engine_node_553649535 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_553649420 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11132:9
    pEngine*: ptr ma_engine_553649516
    sampleRate*: ma_uint32_553648621
    volumeSmoothTimeInPCMFrames*: ma_uint32_553648621
    monoExpansionMode*: ma_mono_expansion_mode_553648990
    fader*: ma_fader_553648920
    resampler*: ma_linear_resampler_553648964
    spatializer*: ma_spatializer_553648956
    panner*: ma_panner_553648912
    volumeGainer*: ma_gainer_553648900
    volume*: ma_atomic_float_553648740
    pitch*: cfloat
    oldPitch*: cfloat
    oldDopplerPitch*: cfloat
    isPitchDisabled*: ma_bool32_553648631
    isSpatializationDisabled*: ma_bool32_553648631
    pinnedListenerIndex*: ma_uint32_553648621
    fadeSettings*: struct_ma_engine_node_fadeSettings_t
    internal_ownsHeap*: ma_bool8_553648629
    internal_pHeap*: pointer
  ma_engine_node_553649537 = struct_ma_engine_node_553649536 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11164:3
  ma_sound_end_proc_553649539 = proc (a0: pointer; a1: ptr ma_sound_553649520): void {.
      cdecl.}                ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11175:17
  struct_ma_sound_config_553649541 {.pure, inheritable, bycopy.} = object
    pFilePath*: cstring      ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11177:9
    pFilePathW*: ptr wchar_t_553649106
    pDataSource*: pointer
    pInitialAttachment*: pointer
    initialAttachmentInputBusIndex*: ma_uint32_553648621
    channelsIn*: ma_uint32_553648621
    channelsOut*: ma_uint32_553648621
    monoExpansionMode*: ma_mono_expansion_mode_553648990
    flags*: ma_uint32_553648621
    volumeSmoothTimeInPCMFrames*: ma_uint32_553648621
    initialSeekPointInPCMFrames*: ma_uint64_553648625
    rangeBegInPCMFrames*: ma_uint64_553648625
    rangeEndInPCMFrames*: ma_uint64_553648625
    loopPointBegInPCMFrames*: ma_uint64_553648625
    loopPointEndInPCMFrames*: ma_uint64_553648625
    endCallback*: ma_sound_end_proc_553649540
    pEndCallbackUserData*: pointer
    initNotifications*: ma_resource_manager_pipeline_notifications_553649364
    pDoneFence*: ptr ma_fence_553649070
    isLooping*: ma_bool32_553648631
  ma_sound_config_553649543 = struct_ma_sound_config_553649542 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11201:3
  ma_sound_inlined_553649545 = struct_ma_sound_inlined_553649548 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11226:33
  struct_ma_sound_inlined_553649547 {.pure, inheritable, bycopy.} = object
    sound*: ma_sound_553649520 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11227:8
    pNext*: ptr ma_sound_inlined_553649546
    pPrev*: ptr ma_sound_inlined_553649546
  ma_sound_group_config_553649549 = ma_sound_config_553649544 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11235:25
  ma_sound_group_553649551 = ma_sound_553649520 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11236:25
  ma_engine_process_proc_553649553 = proc (a0: pointer; a1: ptr cfloat;
      a2: ma_uint64_553648625): void {.cdecl.} ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11241:17
  struct_ma_engine_config_553649555 {.pure, inheritable, bycopy.} = object
    pResourceManager*: ptr ma_resource_manager_553649334 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11243:9
    pContext*: ptr ma_context_553648661
    pDevice*: ptr ma_device_553648665
    pPlaybackDeviceID*: ptr ma_device_id_553649200
    dataCallback*: ma_device_data_proc_553649146
    notificationCallback*: ma_device_notification_proc_553649144
    pLog*: ptr ma_log_553648772
    listenerCount*: ma_uint32_553648621
    channels*: ma_uint32_553648621
    sampleRate*: ma_uint32_553648621
    periodSizeInFrames*: ma_uint32_553648621
    periodSizeInMilliseconds*: ma_uint32_553648621
    gainSmoothTimeInFrames*: ma_uint32_553648621
    gainSmoothTimeInMilliseconds*: ma_uint32_553648621
    defaultVolumeSmoothTimeInPCMFrames*: ma_uint32_553648621
    preMixStackSizeInBytes*: ma_uint32_553648621
    allocationCallbacks*: ma_allocation_callbacks_553648720
    noAutoStart*: ma_bool32_553648631
    noDevice*: ma_bool32_553648631
    monoExpansionMode*: ma_mono_expansion_mode_553648990
    pResourceManagerVFS*: pointer
    onProcess*: ma_engine_process_proc_553649554
    pProcessUserData*: pointer
  ma_engine_config_553649557 = struct_ma_engine_config_553649556 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11272:3
  union_pthread_mutex_t_553649559 {.union, bycopy.} = object
    compiler_data*: struct_pthread_mutex_s_553649564 ## Generated based on /usr/include/bits/pthreadtypes.h:67:9
    compiler_size*: array[40'i64, cschar]
    compiler_align*: clong
  union_pthread_cond_t_553649561 {.union, bycopy.} = object
    compiler_data*: struct_pthread_cond_s_553649566 ## Generated based on /usr/include/bits/pthreadtypes.h:75:9
    compiler_size*: array[48'i64, cschar]
    compiler_align*: clonglong
  struct_pthread_mutex_s_553649563 {.pure, inheritable, bycopy.} = object
    compiler_lock*: cint     ## Generated based on /usr/include/bits/struct_mutex.h:22:8
    compiler_count*: cuint
    compiler_owner*: cint
    compiler_nusers*: cuint
    compiler_kind*: cint
    compiler_spins*: cshort
    compiler_elision*: cshort
    compiler_list*: compiler_pthread_list_t_553649568
  struct_pthread_cond_s_553649565 {.pure, inheritable, bycopy.} = object
    compiler_wseq*: compiler_atomic_wide_counter_553649570 ## Generated based on /usr/include/bits/thread-shared-types.h:94:8
    compiler_g1_start*: compiler_atomic_wide_counter_553649570
    compiler_g_size*: array[2'i64, cuint]
    compiler_g1_orig_size*: cuint
    compiler_wrefs*: cuint
    compiler_g_signals*: array[2'i64, cuint]
    compiler_unused_initialized_1*: cuint
    compiler_unused_initialized_2*: cuint
  compiler_pthread_list_t_553649567 = struct_pthread_internal_list_553649572 ## Generated based on /usr/include/bits/thread-shared-types.h:55:3
  compiler_atomic_wide_counter_553649569 = union_atomic_wide_counter_553649574 ## Generated based on /usr/include/bits/atomic_wide_counter.h:33:3
  struct_pthread_internal_list_553649571 {.pure, inheritable, bycopy.} = object
    compiler_prev*: ptr struct_pthread_internal_list_553649572 ## Generated based on /usr/include/bits/thread-shared-types.h:51:16
    compiler_next*: ptr struct_pthread_internal_list_553649572
  union_atomic_wide_counter_compiler_value32_t {.pure, inheritable, bycopy.} = object
    compiler_low*: cuint
    compiler_high*: cuint
  union_atomic_wide_counter_553649573 {.union, bycopy.} = object
    compiler_value64*: culonglong ## Generated based on /usr/include/bits/atomic_wide_counter.h:25:9
    compiler_value32*: union_atomic_wide_counter_compiler_value32_t
  ma_pulsewave_553649320 = (when declared(ma_pulsewave):
    when ownSizeof(ma_pulsewave) != ownSizeof(ma_pulsewave_553649319):
      static :
        warning("Declaration of " & "ma_pulsewave" &
            " exists but with different size")
    ma_pulsewave
  else:
    ma_pulsewave_553649319)
  ma_waveform_config_553649308 = (when declared(ma_waveform_config):
    when ownSizeof(ma_waveform_config) != ownSizeof(ma_waveform_config_553649307):
      static :
        warning("Declaration of " & "ma_waveform_config" &
            " exists but with different size")
    ma_waveform_config
  else:
    ma_waveform_config_553649307)
  enum_ma_resource_manager_data_supply_type_553649374 = (when declared(
      enum_ma_resource_manager_data_supply_type):
    when ownSizeof(enum_ma_resource_manager_data_supply_type) !=
        ownSizeof(enum_ma_resource_manager_data_supply_type_553649373):
      static :
        warning("Declaration of " & "enum_ma_resource_manager_data_supply_type" &
            " exists but with different size")
    enum_ma_resource_manager_data_supply_type
  else:
    enum_ma_resource_manager_data_supply_type_553649373)
  struct_ma_data_converter_config_553649000 = (when declared(
      struct_ma_data_converter_config):
    when ownSizeof(struct_ma_data_converter_config) !=
        ownSizeof(struct_ma_data_converter_config_553648999):
      static :
        warning("Declaration of " & "struct_ma_data_converter_config" &
            " exists but with different size")
    struct_ma_data_converter_config
  else:
    struct_ma_data_converter_config_553648999)
  ma_bpf2_553648836 = (when declared(ma_bpf2):
    when ownSizeof(ma_bpf2) != ownSizeof(ma_bpf2_553648835):
      static :
        warning("Declaration of " & "ma_bpf2" &
            " exists but with different size")
    ma_bpf2
  else:
    ma_bpf2_553648835)
  union_ma_device_id_553649198 = (when declared(union_ma_device_id):
    when ownSizeof(union_ma_device_id) != ownSizeof(union_ma_device_id_553649197):
      static :
        warning("Declaration of " & "union_ma_device_id" &
            " exists but with different size")
    union_ma_device_id
  else:
    union_ma_device_id_553649197)
  ma_device_descriptor_553649222 = (when declared(ma_device_descriptor):
    when ownSizeof(ma_device_descriptor) != ownSizeof(ma_device_descriptor_553649221):
      static :
        warning("Declaration of " & "ma_device_descriptor" &
            " exists but with different size")
    ma_device_descriptor
  else:
    ma_device_descriptor_553649221)
  struct_ma_event_553648756 = (when declared(struct_ma_event):
    when ownSizeof(struct_ma_event) != ownSizeof(struct_ma_event_553648755):
      static :
        warning("Declaration of " & "struct_ma_event" &
            " exists but with different size")
    struct_ma_event
  else:
    struct_ma_event_553648755)
  struct_pthread_cond_s_553649566 = (when declared(struct_pthread_cond_s):
    when ownSizeof(struct_pthread_cond_s) != ownSizeof(struct_pthread_cond_s_553649565):
      static :
        warning("Declaration of " & "struct_pthread_cond_s" &
            " exists but with different size")
    struct_pthread_cond_s
  else:
    struct_pthread_cond_s_553649565)
  ma_read_proc_553649252 = (when declared(ma_read_proc):
    when ownSizeof(ma_read_proc) != ownSizeof(ma_read_proc_553649251):
      static :
        warning("Declaration of " & "ma_read_proc" &
            " exists but with different size")
    ma_read_proc
  else:
    ma_read_proc_553649251)
  ma_ptr_553648639 = (when declared(ma_ptr):
    when ownSizeof(ma_ptr) != ownSizeof(ma_ptr_553648638):
      static :
        warning("Declaration of " & "ma_ptr" & " exists but with different size")
    ma_ptr
  else:
    ma_ptr_553648638)
  struct_ma_lpf1_config_553648786 = (when declared(struct_ma_lpf1_config):
    when ownSizeof(struct_ma_lpf1_config) != ownSizeof(struct_ma_lpf1_config_553648785):
      static :
        warning("Declaration of " & "struct_ma_lpf1_config" &
            " exists but with different size")
    struct_ma_lpf1_config
  else:
    struct_ma_lpf1_config_553648785)
  ma_channel_converter_553648998 = (when declared(ma_channel_converter):
    when ownSizeof(ma_channel_converter) != ownSizeof(ma_channel_converter_553648997):
      static :
        warning("Declaration of " & "ma_channel_converter" &
            " exists but with different size")
    ma_channel_converter
  else:
    ma_channel_converter_553648997)
  struct_ma_stack_553649386 = (when declared(struct_ma_stack):
    when ownSizeof(struct_ma_stack) != ownSizeof(struct_ma_stack_553649385):
      static :
        warning("Declaration of " & "struct_ma_stack" &
            " exists but with different size")
    struct_ma_stack
  else:
    struct_ma_stack_553649385)
  ma_log_553648772 = (when declared(ma_log):
    when ownSizeof(ma_log) != ownSizeof(ma_log_553648771):
      static :
        warning("Declaration of " & "ma_log" & " exists but with different size")
    ma_log
  else:
    ma_log_553648771)
  ma_fader_553648920 = (when declared(ma_fader):
    when ownSizeof(ma_fader) != ownSizeof(ma_fader_553648919):
      static :
        warning("Declaration of " & "ma_fader" &
            " exists but with different size")
    ma_fader
  else:
    ma_fader_553648919)
  struct_ma_lpf_553648804 = (when declared(struct_ma_lpf):
    when ownSizeof(struct_ma_lpf) != ownSizeof(struct_ma_lpf_553648803):
      static :
        warning("Declaration of " & "struct_ma_lpf" &
            " exists but with different size")
    struct_ma_lpf
  else:
    struct_ma_lpf_553648803)
  struct_ma_lpf_node_config_553649452 = (when declared(struct_ma_lpf_node_config):
    when ownSizeof(struct_ma_lpf_node_config) !=
        ownSizeof(struct_ma_lpf_node_config_553649451):
      static :
        warning("Declaration of " & "struct_ma_lpf_node_config" &
            " exists but with different size")
    struct_ma_lpf_node_config
  else:
    struct_ma_lpf_node_config_553649451)
  struct_ma_panner_config_553648906 = (when declared(struct_ma_panner_config):
    when ownSizeof(struct_ma_panner_config) !=
        ownSizeof(struct_ma_panner_config_553648905):
      static :
        warning("Declaration of " & "struct_ma_panner_config" &
            " exists but with different size")
    struct_ma_panner_config
  else:
    struct_ma_panner_config_553648905)
  struct_ma_sound_inlined_553649548 = (when declared(struct_ma_sound_inlined):
    when ownSizeof(struct_ma_sound_inlined) !=
        ownSizeof(struct_ma_sound_inlined_553649547):
      static :
        warning("Declaration of " & "struct_ma_sound_inlined" &
            " exists but with different size")
    struct_ma_sound_inlined
  else:
    struct_ma_sound_inlined_553649547)
  ma_job_553648605 = (when declared(ma_job):
    when ownSizeof(ma_job) != ownSizeof(ma_job_553648604):
      static :
        warning("Declaration of " & "ma_job" & " exists but with different size")
    ma_job
  else:
    ma_job_553648604)
  ma_slot_allocator_553649096 = (when declared(ma_slot_allocator):
    when ownSizeof(ma_slot_allocator) != ownSizeof(ma_slot_allocator_553649095):
      static :
        warning("Declaration of " & "ma_slot_allocator" &
            " exists but with different size")
    ma_slot_allocator
  else:
    ma_slot_allocator_553649095)
  struct_ma_gainer_553648898 = (when declared(struct_ma_gainer):
    when ownSizeof(struct_ma_gainer) != ownSizeof(struct_ma_gainer_553648897):
      static :
        warning("Declaration of " & "struct_ma_gainer" &
            " exists but with different size")
    struct_ma_gainer
  else:
    struct_ma_gainer_553648897)
  ma_proc_553648641 = (when declared(ma_proc):
    when ownSizeof(ma_proc) != ownSizeof(ma_proc_553648640):
      static :
        warning("Declaration of " & "ma_proc" &
            " exists but with different size")
    ma_proc
  else:
    ma_proc_553648640)
  ma_node_graph_config_553649426 = (when declared(ma_node_graph_config):
    when ownSizeof(ma_node_graph_config) != ownSizeof(ma_node_graph_config_553649425):
      static :
        warning("Declaration of " & "ma_node_graph_config" &
            " exists but with different size")
    ma_node_graph_config
  else:
    ma_node_graph_config_553649425)
  ma_biquad_node_553649450 = (when declared(ma_biquad_node):
    when ownSizeof(ma_biquad_node) != ownSizeof(ma_biquad_node_553649449):
      static :
        warning("Declaration of " & "ma_biquad_node" &
            " exists but with different size")
    ma_biquad_node
  else:
    ma_biquad_node_553649449)
  enum_ma_seek_origin_553649236 = (when declared(enum_ma_seek_origin):
    when ownSizeof(enum_ma_seek_origin) != ownSizeof(enum_ma_seek_origin_553649235):
      static :
        warning("Declaration of " & "enum_ma_seek_origin" &
            " exists but with different size")
    enum_ma_seek_origin
  else:
    enum_ma_seek_origin_553649235)
  enum_ma_noise_type_553649322 = (when declared(enum_ma_noise_type):
    when ownSizeof(enum_ma_noise_type) != ownSizeof(enum_ma_noise_type_553649321):
      static :
        warning("Declaration of " & "enum_ma_noise_type" &
            " exists but with different size")
    enum_ma_noise_type
  else:
    enum_ma_noise_type_553649321)
  struct_ma_engine_node_config_553649532 = (when declared(
      struct_ma_engine_node_config):
    when ownSizeof(struct_ma_engine_node_config) !=
        ownSizeof(struct_ma_engine_node_config_553649531):
      static :
        warning("Declaration of " & "struct_ma_engine_node_config" &
            " exists but with different size")
    struct_ma_engine_node_config
  else:
    struct_ma_engine_node_config_553649531)
  enum_ma_standard_channel_map_553648710 = (when declared(
      enum_ma_standard_channel_map):
    when ownSizeof(enum_ma_standard_channel_map) !=
        ownSizeof(enum_ma_standard_channel_map_553648709):
      static :
        warning("Declaration of " & "enum_ma_standard_channel_map" &
            " exists but with different size")
    enum_ma_standard_channel_map
  else:
    enum_ma_standard_channel_map_553648709)
  struct_ma_hpf1_553648814 = (when declared(struct_ma_hpf1):
    when ownSizeof(struct_ma_hpf1) != ownSizeof(struct_ma_hpf1_553648813):
      static :
        warning("Declaration of " & "struct_ma_hpf1" &
            " exists but with different size")
    struct_ma_hpf1
  else:
    struct_ma_hpf1_553648813)
  struct_ma_data_source_config_553649020 = (when declared(
      struct_ma_data_source_config):
    when ownSizeof(struct_ma_data_source_config) !=
        ownSizeof(struct_ma_data_source_config_553649019):
      static :
        warning("Declaration of " & "struct_ma_data_source_config" &
            " exists but with different size")
    struct_ma_data_source_config
  else:
    struct_ma_data_source_config_553649019)
  enum_ma_channel_mix_mode_553648706 = (when declared(enum_ma_channel_mix_mode):
    when ownSizeof(enum_ma_channel_mix_mode) !=
        ownSizeof(enum_ma_channel_mix_mode_553648705):
      static :
        warning("Declaration of " & "enum_ma_channel_mix_mode" &
            " exists but with different size")
    enum_ma_channel_mix_mode
  else:
    enum_ma_channel_mix_mode_553648705)
  struct_ma_delay_config_553648886 = (when declared(struct_ma_delay_config):
    when ownSizeof(struct_ma_delay_config) != ownSizeof(struct_ma_delay_config_553648885):
      static :
        warning("Declaration of " & "struct_ma_delay_config" &
            " exists but with different size")
    struct_ma_delay_config
  else:
    struct_ma_delay_config_553648885)
  ma_panner_config_553648908 = (when declared(ma_panner_config):
    when ownSizeof(ma_panner_config) != ownSizeof(ma_panner_config_553648907):
      static :
        warning("Declaration of " & "ma_panner_config" &
            " exists but with different size")
    ma_panner_config
  else:
    ma_panner_config_553648907)
  enum_ma_positioning_553648934 = (when declared(enum_ma_positioning):
    when ownSizeof(enum_ma_positioning) != ownSizeof(enum_ma_positioning_553648933):
      static :
        warning("Declaration of " & "enum_ma_positioning" &
            " exists but with different size")
    enum_ma_positioning
  else:
    enum_ma_positioning_553648933)
  struct_ma_audio_buffer_config_553649032 = (when declared(
      struct_ma_audio_buffer_config):
    when ownSizeof(struct_ma_audio_buffer_config) !=
        ownSizeof(struct_ma_audio_buffer_config_553649031):
      static :
        warning("Declaration of " & "struct_ma_audio_buffer_config" &
            " exists but with different size")
    struct_ma_audio_buffer_config
  else:
    struct_ma_audio_buffer_config_553649031)
  ma_atomic_device_state_553649122 = (when declared(ma_atomic_device_state):
    when ownSizeof(ma_atomic_device_state) != ownSizeof(ma_atomic_device_state_553649121):
      static :
        warning("Declaration of " & "ma_atomic_device_state" &
            " exists but with different size")
    ma_atomic_device_state
  else:
    ma_atomic_device_state_553649121)
  ma_device_info_553649216 = (when declared(ma_device_info):
    when ownSizeof(ma_device_info) != ownSizeof(ma_device_info_553649215):
      static :
        warning("Declaration of " & "ma_device_info" &
            " exists but with different size")
    ma_device_info
  else:
    ma_device_info_553649215)
  ma_encoder_uninit_proc_553649294 = (when declared(ma_encoder_uninit_proc):
    when ownSizeof(ma_encoder_uninit_proc) != ownSizeof(ma_encoder_uninit_proc_553649293):
      static :
        warning("Declaration of " & "ma_encoder_uninit_proc" &
            " exists but with different size")
    ma_encoder_uninit_proc
  else:
    ma_encoder_uninit_proc_553649293)
  ma_hpf2_config_553648812 = (when declared(ma_hpf2_config):
    when ownSizeof(ma_hpf2_config) != ownSizeof(ma_hpf2_config_553648811):
      static :
        warning("Declaration of " & "ma_hpf2_config" &
            " exists but with different size")
    ma_hpf2_config
  else:
    ma_hpf2_config_553648811)
  ma_job_proc_553649100 = (when declared(ma_job_proc):
    when ownSizeof(ma_job_proc) != ownSizeof(ma_job_proc_553649099):
      static :
        warning("Declaration of " & "ma_job_proc" &
            " exists but with different size")
    ma_job_proc
  else:
    ma_job_proc_553649099)
  ma_uint64_553648625 = (when declared(ma_uint64):
    when ownSizeof(ma_uint64) != ownSizeof(ma_uint64_553648624):
      static :
        warning("Declaration of " & "ma_uint64" &
            " exists but with different size")
    ma_uint64
  else:
    ma_uint64_553648624)
  struct_ma_fader_553648918 = (when declared(struct_ma_fader):
    when ownSizeof(struct_ma_fader) != ownSizeof(struct_ma_fader_553648917):
      static :
        warning("Declaration of " & "struct_ma_fader" &
            " exists but with different size")
    struct_ma_fader
  else:
    struct_ma_fader_553648917)
  ma_audio_buffer_config_553649034 = (when declared(ma_audio_buffer_config):
    when ownSizeof(ma_audio_buffer_config) != ownSizeof(ma_audio_buffer_config_553649033):
      static :
        warning("Declaration of " & "ma_audio_buffer_config" &
            " exists but with different size")
    ma_audio_buffer_config
  else:
    ma_audio_buffer_config_553649033)
  struct_ma_hpf_node_553649464 = (when declared(struct_ma_hpf_node):
    when ownSizeof(struct_ma_hpf_node) != ownSizeof(struct_ma_hpf_node_553649463):
      static :
        warning("Declaration of " & "struct_ma_hpf_node" &
            " exists but with different size")
    struct_ma_hpf_node
  else:
    struct_ma_hpf_node_553649463)
  ma_int16_553648615 = (when declared(ma_int16):
    when ownSizeof(ma_int16) != ownSizeof(ma_int16_553648614):
      static :
        warning("Declaration of " & "ma_int16" &
            " exists but with different size")
    ma_int16
  else:
    ma_int16_553648614)
  ma_channel_converter_config_553648994 = (when declared(
      ma_channel_converter_config):
    when ownSizeof(ma_channel_converter_config) !=
        ownSizeof(ma_channel_converter_config_553648993):
      static :
        warning("Declaration of " & "ma_channel_converter_config" &
            " exists but with different size")
    ma_channel_converter_config
  else:
    ma_channel_converter_config_553648993)
  ma_audio_buffer_ref_553649030 = (when declared(ma_audio_buffer_ref):
    when ownSizeof(ma_audio_buffer_ref) != ownSizeof(ma_audio_buffer_ref_553649029):
      static :
        warning("Declaration of " & "ma_audio_buffer_ref" &
            " exists but with different size")
    ma_audio_buffer_ref
  else:
    ma_audio_buffer_ref_553649029)
  struct_ma_fence_553649068 = (when declared(struct_ma_fence):
    when ownSizeof(struct_ma_fence) != ownSizeof(struct_ma_fence_553649067):
      static :
        warning("Declaration of " & "struct_ma_fence" &
            " exists but with different size")
    struct_ma_fence
  else:
    struct_ma_fence_553649067)
  struct_ma_hpf_config_553648822 = (when declared(struct_ma_hpf_config):
    when ownSizeof(struct_ma_hpf_config) != ownSizeof(struct_ma_hpf_config_553648821):
      static :
        warning("Declaration of " & "struct_ma_hpf_config" &
            " exists but with different size")
    struct_ma_hpf_config
  else:
    struct_ma_hpf_config_553648821)
  struct_ma_default_vfs_553649248 = (when declared(struct_ma_default_vfs):
    when ownSizeof(struct_ma_default_vfs) != ownSizeof(struct_ma_default_vfs_553649247):
      static :
        warning("Declaration of " & "struct_ma_default_vfs" &
            " exists but with different size")
    struct_ma_default_vfs
  else:
    struct_ma_default_vfs_553649247)
  ma_stream_layout_553648685 = (when declared(ma_stream_layout):
    when ownSizeof(ma_stream_layout) != ownSizeof(ma_stream_layout_553648684):
      static :
        warning("Declaration of " & "ma_stream_layout" &
            " exists but with different size")
    ma_stream_layout
  else:
    ma_stream_layout_553648684)
  ma_decoder_read_proc_553649274 = (when declared(ma_decoder_read_proc):
    when ownSizeof(ma_decoder_read_proc) != ownSizeof(ma_decoder_read_proc_553649273):
      static :
        warning("Declaration of " & "ma_decoder_read_proc" &
            " exists but with different size")
    ma_decoder_read_proc
  else:
    ma_decoder_read_proc_553649273)
  struct_ma_atomic_vec3f_553648926 = (when declared(struct_ma_atomic_vec3f):
    when ownSizeof(struct_ma_atomic_vec3f) != ownSizeof(struct_ma_atomic_vec3f_553648925):
      static :
        warning("Declaration of " & "struct_ma_atomic_vec3f" &
            " exists but with different size")
    struct_ma_atomic_vec3f
  else:
    struct_ma_atomic_vec3f_553648925)
  ma_loshelf2_553648874 = (when declared(ma_loshelf2):
    when ownSizeof(ma_loshelf2) != ownSizeof(ma_loshelf2_553648873):
      static :
        warning("Declaration of " & "ma_loshelf2" &
            " exists but with different size")
    ma_loshelf2
  else:
    ma_loshelf2_553648873)
  struct_ma_slot_allocator_config_553649086 = (when declared(
      struct_ma_slot_allocator_config):
    when ownSizeof(struct_ma_slot_allocator_config) !=
        ownSizeof(struct_ma_slot_allocator_config_553649085):
      static :
        warning("Declaration of " & "struct_ma_slot_allocator_config" &
            " exists but with different size")
    struct_ma_slot_allocator_config
  else:
    struct_ma_slot_allocator_config_553649085)
  ma_decoder_config_553649282 = (when declared(ma_decoder_config):
    when ownSizeof(ma_decoder_config) != ownSizeof(ma_decoder_config_553649281):
      static :
        warning("Declaration of " & "ma_decoder_config" &
            " exists but with different size")
    ma_decoder_config
  else:
    ma_decoder_config_553649281)
  ma_resource_manager_flags_553649368 = (when declared(ma_resource_manager_flags):
    when ownSizeof(ma_resource_manager_flags) !=
        ownSizeof(ma_resource_manager_flags_553649367):
      static :
        warning("Declaration of " & "ma_resource_manager_flags" &
            " exists but with different size")
    ma_resource_manager_flags
  else:
    ma_resource_manager_flags_553649367)
  ma_lpf_config_553648802 = (when declared(ma_lpf_config):
    when ownSizeof(ma_lpf_config) != ownSizeof(ma_lpf_config_553648801):
      static :
        warning("Declaration of " & "ma_lpf_config" &
            " exists but with different size")
    ma_lpf_config
  else:
    ma_lpf_config_553648801)
  ma_resource_manager_config_553649384 = (when declared(
      ma_resource_manager_config):
    when ownSizeof(ma_resource_manager_config) !=
        ownSizeof(ma_resource_manager_config_553649383):
      static :
        warning("Declaration of " & "ma_resource_manager_config" &
            " exists but with different size")
    ma_resource_manager_config
  else:
    ma_resource_manager_config_553649383)
  ma_node_flags_553649398 = (when declared(ma_node_flags):
    when ownSizeof(ma_node_flags) != ownSizeof(ma_node_flags_553649397):
      static :
        warning("Declaration of " & "ma_node_flags" &
            " exists but with different size")
    ma_node_flags
  else:
    ma_node_flags_553649397)
  ma_semaphore_553648762 = (when declared(ma_semaphore):
    when ownSizeof(ma_semaphore) != ownSizeof(ma_semaphore_553648761):
      static :
        warning("Declaration of " & "ma_semaphore" &
            " exists but with different size")
    ma_semaphore
  else:
    ma_semaphore_553648761)
  struct_ma_context_command_wasapi_553649224 = (when declared(
      struct_ma_context_command_wasapi):
    when ownSizeof(struct_ma_context_command_wasapi) !=
        ownSizeof(struct_ma_context_command_wasapi_553649223):
      static :
        warning("Declaration of " & "struct_ma_context_command_wasapi" &
            " exists but with different size")
    struct_ma_context_command_wasapi
  else:
    struct_ma_context_command_wasapi_553649223)
  ma_loshelf_node_config_553649494 = (when declared(ma_loshelf_node_config):
    when ownSizeof(ma_loshelf_node_config) != ownSizeof(ma_loshelf_node_config_553649493):
      static :
        warning("Declaration of " & "ma_loshelf_node_config" &
            " exists but with different size")
    ma_loshelf_node_config
  else:
    ma_loshelf_node_config_553649493)
  struct_ma_resource_manager_553649336 = (when declared(
      struct_ma_resource_manager):
    when ownSizeof(struct_ma_resource_manager) !=
        ownSizeof(struct_ma_resource_manager_553649335):
      static :
        warning("Declaration of " & "struct_ma_resource_manager" &
            " exists but with different size")
    struct_ma_resource_manager
  else:
    struct_ma_resource_manager_553649335)
  ma_resource_manager_data_buffer_node_553649338 = (when declared(
      ma_resource_manager_data_buffer_node):
    when ownSizeof(ma_resource_manager_data_buffer_node) !=
        ownSizeof(ma_resource_manager_data_buffer_node_553649337):
      static :
        warning("Declaration of " & "ma_resource_manager_data_buffer_node" &
            " exists but with different size")
    ma_resource_manager_data_buffer_node
  else:
    ma_resource_manager_data_buffer_node_553649337)
  ma_resource_manager_pipeline_notifications_553649364 = (when declared(
      ma_resource_manager_pipeline_notifications):
    when ownSizeof(ma_resource_manager_pipeline_notifications) !=
        ownSizeof(ma_resource_manager_pipeline_notifications_553649363):
      static :
        warning("Declaration of " & "ma_resource_manager_pipeline_notifications" &
            " exists but with different size")
    ma_resource_manager_pipeline_notifications
  else:
    ma_resource_manager_pipeline_notifications_553649363)
  ma_pthread_mutex_t_553648647 = (when declared(ma_pthread_mutex_t):
    when ownSizeof(ma_pthread_mutex_t) != ownSizeof(ma_pthread_mutex_t_553648646):
      static :
        warning("Declaration of " & "ma_pthread_mutex_t" &
            " exists but with different size")
    ma_pthread_mutex_t
  else:
    ma_pthread_mutex_t_553648646)
  ma_atomic_uint32_553648728 = (when declared(ma_atomic_uint32):
    when ownSizeof(ma_atomic_uint32) != ownSizeof(ma_atomic_uint32_553648727):
      static :
        warning("Declaration of " & "ma_atomic_uint32" &
            " exists but with different size")
    ma_atomic_uint32
  else:
    ma_atomic_uint32_553648727)
  struct_ma_node_vtable_553649404 = (when declared(struct_ma_node_vtable):
    when ownSizeof(struct_ma_node_vtable) != ownSizeof(struct_ma_node_vtable_553649403):
      static :
        warning("Declaration of " & "struct_ma_node_vtable" &
            " exists but with different size")
    struct_ma_node_vtable
  else:
    struct_ma_node_vtable_553649403)
  struct_ma_engine_node_553649536 = (when declared(struct_ma_engine_node):
    when ownSizeof(struct_ma_engine_node) != ownSizeof(struct_ma_engine_node_553649535):
      static :
        warning("Declaration of " & "struct_ma_engine_node" &
            " exists but with different size")
    struct_ma_engine_node
  else:
    struct_ma_engine_node_553649535)
  ma_backend_callbacks_553649210 = (when declared(ma_backend_callbacks):
    when ownSizeof(ma_backend_callbacks) != ownSizeof(ma_backend_callbacks_553649209):
      static :
        warning("Declaration of " & "ma_backend_callbacks" &
            " exists but with different size")
    ma_backend_callbacks
  else:
    ma_backend_callbacks_553649209)
  ma_context_config_553649202 = (when declared(ma_context_config):
    when ownSizeof(ma_context_config) != ownSizeof(ma_context_config_553649201):
      static :
        warning("Declaration of " & "ma_context_config" &
            " exists but with different size")
    ma_context_config
  else:
    ma_context_config_553649201)
  ma_uint32_553648621 = (when declared(ma_uint32):
    when ownSizeof(ma_uint32) != ownSizeof(ma_uint32_553648620):
      static :
        warning("Declaration of " & "ma_uint32" &
            " exists but with different size")
    ma_uint32
  else:
    ma_uint32_553648620)
  ma_hishelf2_553648884 = (when declared(ma_hishelf2):
    when ownSizeof(ma_hishelf2) != ownSizeof(ma_hishelf2_553648883):
      static :
        warning("Declaration of " & "ma_hishelf2" &
            " exists but with different size")
    ma_hishelf2
  else:
    ma_hishelf2_553648883)
  struct_ma_paged_audio_buffer_config_553649048 = (when declared(
      struct_ma_paged_audio_buffer_config):
    when ownSizeof(struct_ma_paged_audio_buffer_config) !=
        ownSizeof(struct_ma_paged_audio_buffer_config_553649047):
      static :
        warning("Declaration of " & "struct_ma_paged_audio_buffer_config" &
            " exists but with different size")
    struct_ma_paged_audio_buffer_config
  else:
    struct_ma_paged_audio_buffer_config_553649047)
  struct_ma_pulsewave_553649318 = (when declared(struct_ma_pulsewave):
    when ownSizeof(struct_ma_pulsewave) != ownSizeof(struct_ma_pulsewave_553649317):
      static :
        warning("Declaration of " & "struct_ma_pulsewave" &
            " exists but with different size")
    struct_ma_pulsewave
  else:
    struct_ma_pulsewave_553649317)
  ma_decoder_553649262 = (when declared(ma_decoder):
    when ownSizeof(ma_decoder) != ownSizeof(ma_decoder_553649261):
      static :
        warning("Declaration of " & "ma_decoder" &
            " exists but with different size")
    ma_decoder
  else:
    ma_decoder_553649261)
  pthread_t_553648645 = (when declared(pthread_t):
    when ownSizeof(pthread_t) != ownSizeof(pthread_t_553648644):
      static :
        warning("Declaration of " & "pthread_t" &
            " exists but with different size")
    pthread_t
  else:
    pthread_t_553648644)
  struct_ma_resource_manager_data_stream_553649348 = (when declared(
      struct_ma_resource_manager_data_stream):
    when ownSizeof(struct_ma_resource_manager_data_stream) !=
        ownSizeof(struct_ma_resource_manager_data_stream_553649347):
      static :
        warning("Declaration of " & "struct_ma_resource_manager_data_stream" &
            " exists but with different size")
    struct_ma_resource_manager_data_stream
  else:
    struct_ma_resource_manager_data_stream_553649347)
  ma_loshelf_node_553649498 = (when declared(ma_loshelf_node):
    when ownSizeof(ma_loshelf_node) != ownSizeof(ma_loshelf_node_553649497):
      static :
        warning("Declaration of " & "ma_loshelf_node" &
            " exists but with different size")
    ma_loshelf_node
  else:
    ma_loshelf_node_553649497)
  struct_ma_async_notification_poll_553649078 = (when declared(
      struct_ma_async_notification_poll):
    when ownSizeof(struct_ma_async_notification_poll) !=
        ownSizeof(struct_ma_async_notification_poll_553649077):
      static :
        warning("Declaration of " & "struct_ma_async_notification_poll" &
            " exists but with different size")
    struct_ma_async_notification_poll
  else:
    struct_ma_async_notification_poll_553649077)
  ma_sound_flags_553649526 = (when declared(ma_sound_flags):
    when ownSizeof(ma_sound_flags) != ownSizeof(ma_sound_flags_553649525):
      static :
        warning("Declaration of " & "ma_sound_flags" &
            " exists but with different size")
    ma_sound_flags
  else:
    ma_sound_flags_553649525)
  ma_device_notification_553649142 = (when declared(ma_device_notification):
    when ownSizeof(ma_device_notification) != ownSizeof(ma_device_notification_553649141):
      static :
        warning("Declaration of " & "ma_device_notification" &
            " exists but with different size")
    ma_device_notification
  else:
    ma_device_notification_553649141)
  ma_fader_config_553648916 = (when declared(ma_fader_config):
    when ownSizeof(ma_fader_config) != ownSizeof(ma_fader_config_553648915):
      static :
        warning("Declaration of " & "ma_fader_config" &
            " exists but with different size")
    ma_fader_config
  else:
    ma_fader_config_553648915)
  ma_loshelf2_config_553648868 = (when declared(ma_loshelf2_config):
    when ownSizeof(ma_loshelf2_config) != ownSizeof(ma_loshelf2_config_553648867):
      static :
        warning("Declaration of " & "ma_loshelf2_config" &
            " exists but with different size")
    ma_loshelf2_config
  else:
    ma_loshelf2_config_553648867)
  ma_paged_audio_buffer_553649054 = (when declared(ma_paged_audio_buffer):
    when ownSizeof(ma_paged_audio_buffer) != ownSizeof(ma_paged_audio_buffer_553649053):
      static :
        warning("Declaration of " & "ma_paged_audio_buffer" &
            " exists but with different size")
    ma_paged_audio_buffer
  else:
    ma_paged_audio_buffer_553649053)
  ma_atomic_int32_553648732 = (when declared(ma_atomic_int32):
    when ownSizeof(ma_atomic_int32) != ownSizeof(ma_atomic_int32_553648731):
      static :
        warning("Declaration of " & "ma_atomic_int32" &
            " exists but with different size")
    ma_atomic_int32
  else:
    ma_atomic_int32_553648731)
  ma_pthread_cond_t_553648651 = (when declared(ma_pthread_cond_t):
    when ownSizeof(ma_pthread_cond_t) != ownSizeof(ma_pthread_cond_t_553648650):
      static :
        warning("Declaration of " & "ma_pthread_cond_t" &
            " exists but with different size")
    ma_pthread_cond_t
  else:
    ma_pthread_cond_t_553648650)
  struct_ma_biquad_553648782 = (when declared(struct_ma_biquad):
    when ownSizeof(struct_ma_biquad) != ownSizeof(struct_ma_biquad_553648781):
      static :
        warning("Declaration of " & "struct_ma_biquad" &
            " exists but with different size")
    struct_ma_biquad
  else:
    struct_ma_biquad_553648781)
  struct_ma_lpf2_553648796 = (when declared(struct_ma_lpf2):
    when ownSizeof(struct_ma_lpf2) != ownSizeof(struct_ma_lpf2_553648795):
      static :
        warning("Declaration of " & "struct_ma_lpf2" &
            " exists but with different size")
    struct_ma_lpf2
  else:
    struct_ma_lpf2_553648795)
  struct_ma_atomic_uint32_553648726 = (when declared(struct_ma_atomic_uint32):
    when ownSizeof(struct_ma_atomic_uint32) !=
        ownSizeof(struct_ma_atomic_uint32_553648725):
      static :
        warning("Declaration of " & "struct_ma_atomic_uint32" &
            " exists but with different size")
    struct_ma_atomic_uint32
  else:
    struct_ma_atomic_uint32_553648725)
  struct_ma_hishelf2_553648882 = (when declared(struct_ma_hishelf2):
    when ownSizeof(struct_ma_hishelf2) != ownSizeof(struct_ma_hishelf2_553648881):
      static :
        warning("Declaration of " & "struct_ma_hishelf2" &
            " exists but with different size")
    struct_ma_hishelf2
  else:
    struct_ma_hishelf2_553648881)
  ma_async_notification_event_553649084 = (when declared(
      ma_async_notification_event):
    when ownSizeof(ma_async_notification_event) !=
        ownSizeof(ma_async_notification_event_553649083):
      static :
        warning("Declaration of " & "ma_async_notification_event" &
            " exists but with different size")
    ma_async_notification_event
  else:
    ma_async_notification_event_553649083)
  ma_delay_node_553649514 = (when declared(ma_delay_node):
    when ownSizeof(ma_delay_node) != ownSizeof(ma_delay_node_553649513):
      static :
        warning("Declaration of " & "ma_delay_node" &
            " exists but with different size")
    ma_delay_node
  else:
    ma_delay_node_553649513)
  struct_ma_hishelf_node_553649504 = (when declared(struct_ma_hishelf_node):
    when ownSizeof(struct_ma_hishelf_node) != ownSizeof(struct_ma_hishelf_node_553649503):
      static :
        warning("Declaration of " & "struct_ma_hishelf_node" &
            " exists but with different size")
    struct_ma_hishelf_node
  else:
    struct_ma_hishelf_node_553649503)
  struct_ma_loshelf2_553648872 = (when declared(struct_ma_loshelf2):
    when ownSizeof(struct_ma_loshelf2) != ownSizeof(struct_ma_loshelf2_553648871):
      static :
        warning("Declaration of " & "struct_ma_loshelf2" &
            " exists but with different size")
    struct_ma_loshelf2
  else:
    struct_ma_loshelf2_553648871)
  ma_device_type_553649152 = (when declared(ma_device_type):
    when ownSizeof(ma_device_type) != ownSizeof(ma_device_type_553649151):
      static :
        warning("Declaration of " & "ma_device_type" &
            " exists but with different size")
    ma_device_type
  else:
    ma_device_type_553649151)
  enum_ma_resample_algorithm_553648976 = (when declared(
      enum_ma_resample_algorithm):
    when ownSizeof(enum_ma_resample_algorithm) !=
        ownSizeof(enum_ma_resample_algorithm_553648975):
      static :
        warning("Declaration of " & "enum_ma_resample_algorithm" &
            " exists but with different size")
    enum_ma_resample_algorithm
  else:
    enum_ma_resample_algorithm_553648975)
  ma_panner_553648912 = (when declared(ma_panner):
    when ownSizeof(ma_panner) != ownSizeof(ma_panner_553648911):
      static :
        warning("Declaration of " & "ma_panner" &
            " exists but with different size")
    ma_panner
  else:
    ma_panner_553648911)
  ma_resource_manager_pipeline_stage_notification_553649360 = (when declared(
      ma_resource_manager_pipeline_stage_notification):
    when ownSizeof(ma_resource_manager_pipeline_stage_notification) !=
        ownSizeof(ma_resource_manager_pipeline_stage_notification_553649359):
      static :
        warning("Declaration of " &
            "ma_resource_manager_pipeline_stage_notification" &
            " exists but with different size")
    ma_resource_manager_pipeline_stage_notification
  else:
    ma_resource_manager_pipeline_stage_notification_553649359)
  struct_ma_resource_manager_data_source_config_553649370 = (when declared(
      struct_ma_resource_manager_data_source_config):
    when ownSizeof(struct_ma_resource_manager_data_source_config) !=
        ownSizeof(struct_ma_resource_manager_data_source_config_553649369):
      static :
        warning("Declaration of " &
            "struct_ma_resource_manager_data_source_config" &
            " exists but with different size")
    struct_ma_resource_manager_data_source_config
  else:
    struct_ma_resource_manager_data_source_config_553649369)
  struct_ma_linear_resampler_config_553648958 = (when declared(
      struct_ma_linear_resampler_config):
    when ownSizeof(struct_ma_linear_resampler_config) !=
        ownSizeof(struct_ma_linear_resampler_config_553648957):
      static :
        warning("Declaration of " & "struct_ma_linear_resampler_config" &
            " exists but with different size")
    struct_ma_linear_resampler_config
  else:
    struct_ma_linear_resampler_config_553648957)
  ma_rb_553649058 = (when declared(ma_rb):
    when ownSizeof(ma_rb) != ownSizeof(ma_rb_553649057):
      static :
        warning("Declaration of " & "ma_rb" & " exists but with different size")
    ma_rb
  else:
    ma_rb_553649057)
  ma_hpf_config_553648824 = (when declared(ma_hpf_config):
    when ownSizeof(ma_hpf_config) != ownSizeof(ma_hpf_config_553648823):
      static :
        warning("Declaration of " & "ma_hpf_config" &
            " exists but with different size")
    ma_hpf_config
  else:
    ma_hpf_config_553648823)
  ma_peak_node_config_553649486 = (when declared(ma_peak_node_config):
    when ownSizeof(ma_peak_node_config) != ownSizeof(ma_peak_node_config_553649485):
      static :
        warning("Declaration of " & "ma_peak_node_config" &
            " exists but with different size")
    ma_peak_node_config
  else:
    ma_peak_node_config_553649485)
  ma_device_state_553649118 = (when declared(ma_device_state):
    when ownSizeof(ma_device_state) != ownSizeof(ma_device_state_553649117):
      static :
        warning("Declaration of " & "ma_device_state" &
            " exists but with different size")
    ma_device_state
  else:
    ma_device_state_553649117)
  ma_log_level_553648659 = (when declared(ma_log_level):
    when ownSizeof(ma_log_level) != ownSizeof(ma_log_level_553648658):
      static :
        warning("Declaration of " & "ma_log_level" &
            " exists but with different size")
    ma_log_level
  else:
    ma_log_level_553648658)
  enum_ma_resource_manager_data_source_flags_553649354 = (when declared(
      enum_ma_resource_manager_data_source_flags):
    when ownSizeof(enum_ma_resource_manager_data_source_flags) !=
        ownSizeof(enum_ma_resource_manager_data_source_flags_553649353):
      static :
        warning("Declaration of " & "enum_ma_resource_manager_data_source_flags" &
            " exists but with different size")
    enum_ma_resource_manager_data_source_flags
  else:
    enum_ma_resource_manager_data_source_flags_553649353)
  ma_data_source_vtable_553649016 = (when declared(ma_data_source_vtable):
    when ownSizeof(ma_data_source_vtable) != ownSizeof(ma_data_source_vtable_553649015):
      static :
        warning("Declaration of " & "ma_data_source_vtable" &
            " exists but with different size")
    ma_data_source_vtable
  else:
    ma_data_source_vtable_553649015)
  enum_ma_sound_flags_553649524 = (when declared(enum_ma_sound_flags):
    when ownSizeof(enum_ma_sound_flags) != ownSizeof(enum_ma_sound_flags_553649523):
      static :
        warning("Declaration of " & "enum_ma_sound_flags" &
            " exists but with different size")
    enum_ma_sound_flags
  else:
    enum_ma_sound_flags_553649523)
  struct_ma_bpf_553648842 = (when declared(struct_ma_bpf):
    when ownSizeof(struct_ma_bpf) != ownSizeof(struct_ma_bpf_553648841):
      static :
        warning("Declaration of " & "struct_ma_bpf" &
            " exists but with different size")
    struct_ma_bpf
  else:
    struct_ma_bpf_553648841)
  struct_ma_pulsewave_config_553649314 = (when declared(
      struct_ma_pulsewave_config):
    when ownSizeof(struct_ma_pulsewave_config) !=
        ownSizeof(struct_ma_pulsewave_config_553649313):
      static :
        warning("Declaration of " & "struct_ma_pulsewave_config" &
            " exists but with different size")
    struct_ma_pulsewave_config
  else:
    struct_ma_pulsewave_config_553649313)
  enum_ma_aaudio_content_type_553649182 = (when declared(
      enum_ma_aaudio_content_type):
    when ownSizeof(enum_ma_aaudio_content_type) !=
        ownSizeof(enum_ma_aaudio_content_type_553649181):
      static :
        warning("Declaration of " & "enum_ma_aaudio_content_type" &
            " exists but with different size")
    enum_ma_aaudio_content_type
  else:
    enum_ma_aaudio_content_type_553649181)
  ma_peak_config_553648860 = (when declared(ma_peak_config):
    when ownSizeof(ma_peak_config) != ownSizeof(ma_peak_config_553648859):
      static :
        warning("Declaration of " & "ma_peak_config" &
            " exists but with different size")
    ma_peak_config
  else:
    ma_peak_config_553648859)
  ma_noise_config_553649328 = (when declared(ma_noise_config):
    when ownSizeof(ma_noise_config) != ownSizeof(ma_noise_config_553649327):
      static :
        warning("Declaration of " & "ma_noise_config" &
            " exists but with different size")
    ma_noise_config
  else:
    ma_noise_config_553649327)
  union_pthread_mutex_t_553649560 = (when declared(union_pthread_mutex_t):
    when ownSizeof(union_pthread_mutex_t) != ownSizeof(union_pthread_mutex_t_553649559):
      static :
        warning("Declaration of " & "union_pthread_mutex_t" &
            " exists but with different size")
    union_pthread_mutex_t
  else:
    union_pthread_mutex_t_553649559)
  ma_context_command_wasapi_553649226 = (when declared(ma_context_command_wasapi):
    when ownSizeof(ma_context_command_wasapi) !=
        ownSizeof(ma_context_command_wasapi_553649225):
      static :
        warning("Declaration of " & "ma_context_command_wasapi" &
            " exists but with different size")
    ma_context_command_wasapi
  else:
    ma_context_command_wasapi_553649225)
  struct_ma_job_queue_553649114 = (when declared(struct_ma_job_queue):
    when ownSizeof(struct_ma_job_queue) != ownSizeof(struct_ma_job_queue_553649113):
      static :
        warning("Declaration of " & "struct_ma_job_queue" &
            " exists but with different size")
    struct_ma_job_queue
  else:
    struct_ma_job_queue_553649113)
  struct_pthread_internal_list_553649572 = (when declared(
      struct_pthread_internal_list):
    when ownSizeof(struct_pthread_internal_list) !=
        ownSizeof(struct_pthread_internal_list_553649571):
      static :
        warning("Declaration of " & "struct_pthread_internal_list" &
            " exists but with different size")
    struct_pthread_internal_list
  else:
    struct_pthread_internal_list_553649571)
  ma_data_source_node_config_553649430 = (when declared(
      ma_data_source_node_config):
    when ownSizeof(ma_data_source_node_config) !=
        ownSizeof(ma_data_source_node_config_553649429):
      static :
        warning("Declaration of " & "ma_data_source_node_config" &
            " exists but with different size")
    ma_data_source_node_config
  else:
    ma_data_source_node_config_553649429)
  ma_resource_manager_data_source_flags_553649356 = (when declared(
      ma_resource_manager_data_source_flags):
    when ownSizeof(ma_resource_manager_data_source_flags) !=
        ownSizeof(ma_resource_manager_data_source_flags_553649355):
      static :
        warning("Declaration of " & "ma_resource_manager_data_source_flags" &
            " exists but with different size")
    ma_resource_manager_data_source_flags
  else:
    ma_resource_manager_data_source_flags_553649355)
  struct_ma_atomic_device_state_553649120 = (when declared(
      struct_ma_atomic_device_state):
    when ownSizeof(struct_ma_atomic_device_state) !=
        ownSizeof(struct_ma_atomic_device_state_553649119):
      static :
        warning("Declaration of " & "struct_ma_atomic_device_state" &
            " exists but with different size")
    struct_ma_atomic_device_state
  else:
    struct_ma_atomic_device_state_553649119)
  ma_sound_553649520 = (when declared(ma_sound):
    when ownSizeof(ma_sound) != ownSizeof(ma_sound_553649519):
      static :
        warning("Declaration of " & "ma_sound" &
            " exists but with different size")
    ma_sound
  else:
    ma_sound_553649519)
  struct_ma_notch_node_config_553649476 = (when declared(
      struct_ma_notch_node_config):
    when ownSizeof(struct_ma_notch_node_config) !=
        ownSizeof(struct_ma_notch_node_config_553649475):
      static :
        warning("Declaration of " & "struct_ma_notch_node_config" &
            " exists but with different size")
    struct_ma_notch_node_config
  else:
    struct_ma_notch_node_config_553649475)
  enum_ma_result_553648675 = (when declared(enum_ma_result):
    when ownSizeof(enum_ma_result) != ownSizeof(enum_ma_result_553648674):
      static :
        warning("Declaration of " & "enum_ma_result" &
            " exists but with different size")
    enum_ma_result
  else:
    enum_ma_result_553648674)
  enum_ma_share_mode_553649154 = (when declared(enum_ma_share_mode):
    when ownSizeof(enum_ma_share_mode) != ownSizeof(enum_ma_share_mode_553649153):
      static :
        warning("Declaration of " & "enum_ma_share_mode" &
            " exists but with different size")
    enum_ma_share_mode
  else:
    enum_ma_share_mode_553649153)
  struct_ma_resource_manager_data_buffer_553649344 = (when declared(
      struct_ma_resource_manager_data_buffer):
    when ownSizeof(struct_ma_resource_manager_data_buffer) !=
        ownSizeof(struct_ma_resource_manager_data_buffer_553649343):
      static :
        warning("Declaration of " & "struct_ma_resource_manager_data_buffer" &
            " exists but with different size")
    struct_ma_resource_manager_data_buffer
  else:
    struct_ma_resource_manager_data_buffer_553649343)
  ma_gainer_config_553648896 = (when declared(ma_gainer_config):
    when ownSizeof(ma_gainer_config) != ownSizeof(ma_gainer_config_553648895):
      static :
        warning("Declaration of " & "ma_gainer_config" &
            " exists but with different size")
    ma_gainer_config
  else:
    ma_gainer_config_553648895)
  ma_notch_config_553648850 = (when declared(ma_notch_config):
    when ownSizeof(ma_notch_config) != ownSizeof(ma_notch_config_553648849):
      static :
        warning("Declaration of " & "ma_notch_config" &
            " exists but with different size")
    ma_notch_config
  else:
    ma_notch_config_553648849)
  ma_lpf_node_553649458 = (when declared(ma_lpf_node):
    when ownSizeof(ma_lpf_node) != ownSizeof(ma_lpf_node_553649457):
      static :
        warning("Declaration of " & "ma_lpf_node" &
            " exists but with different size")
    ma_lpf_node
  else:
    ma_lpf_node_553649457)
  enum_ma_performance_profile_553648714 = (when declared(
      enum_ma_performance_profile):
    when ownSizeof(enum_ma_performance_profile) !=
        ownSizeof(enum_ma_performance_profile_553648713):
      static :
        warning("Declaration of " & "enum_ma_performance_profile" &
            " exists but with different size")
    enum_ma_performance_profile
  else:
    enum_ma_performance_profile_553648713)
  ma_aaudio_input_preset_553649188 = (when declared(ma_aaudio_input_preset):
    when ownSizeof(ma_aaudio_input_preset) != ownSizeof(ma_aaudio_input_preset_553649187):
      static :
        warning("Declaration of " & "ma_aaudio_input_preset" &
            " exists but with different size")
    ma_aaudio_input_preset
  else:
    ma_aaudio_input_preset_553649187)
  enum_ma_device_state_553649116 = (when declared(enum_ma_device_state):
    when ownSizeof(enum_ma_device_state) != ownSizeof(enum_ma_device_state_553649115):
      static :
        warning("Declaration of " & "enum_ma_device_state" &
            " exists but with different size")
    enum_ma_device_state
  else:
    enum_ma_device_state_553649115)
  ma_enum_devices_callback_proc_553649218 = (when declared(
      ma_enum_devices_callback_proc):
    when ownSizeof(ma_enum_devices_callback_proc) !=
        ownSizeof(ma_enum_devices_callback_proc_553649217):
      static :
        warning("Declaration of " & "ma_enum_devices_callback_proc" &
            " exists but with different size")
    ma_enum_devices_callback_proc
  else:
    ma_enum_devices_callback_proc_553649217)
  struct_ma_lpf1_553648792 = (when declared(struct_ma_lpf1):
    when ownSizeof(struct_ma_lpf1) != ownSizeof(struct_ma_lpf1_553648791):
      static :
        warning("Declaration of " & "struct_ma_lpf1" &
            " exists but with different size")
    struct_ma_lpf1
  else:
    struct_ma_lpf1_553648791)
  enum_ma_channel_position_553648671 = (when declared(enum_ma_channel_position):
    when ownSizeof(enum_ma_channel_position) !=
        ownSizeof(enum_ma_channel_position_553648670):
      static :
        warning("Declaration of " & "enum_ma_channel_position" &
            " exists but with different size")
    enum_ma_channel_position
  else:
    enum_ma_channel_position_553648670)
  ma_opensl_recording_preset_553649172 = (when declared(
      ma_opensl_recording_preset):
    when ownSizeof(ma_opensl_recording_preset) !=
        ownSizeof(ma_opensl_recording_preset_553649171):
      static :
        warning("Declaration of " & "ma_opensl_recording_preset" &
            " exists but with different size")
    ma_opensl_recording_preset
  else:
    ma_opensl_recording_preset_553649171)
  ma_stack_553649388 = (when declared(ma_stack):
    when ownSizeof(ma_stack) != ownSizeof(ma_stack_553649387):
      static :
        warning("Declaration of " & "ma_stack" &
            " exists but with different size")
    ma_stack
  else:
    ma_stack_553649387)
  ma_resampling_backend_vtable_553648974 = (when declared(
      ma_resampling_backend_vtable):
    when ownSizeof(ma_resampling_backend_vtable) !=
        ownSizeof(ma_resampling_backend_vtable_553648973):
      static :
        warning("Declaration of " & "ma_resampling_backend_vtable" &
            " exists but with different size")
    ma_resampling_backend_vtable
  else:
    ma_resampling_backend_vtable_553648973)
  struct_ma_spatializer_553648954 = (when declared(struct_ma_spatializer):
    when ownSizeof(struct_ma_spatializer) != ownSizeof(struct_ma_spatializer_553648953):
      static :
        warning("Declaration of " & "struct_ma_spatializer" &
            " exists but with different size")
    struct_ma_spatializer
  else:
    struct_ma_spatializer_553648953)
  ma_float_553648633 = (when declared(ma_float):
    when ownSizeof(ma_float) != ownSizeof(ma_float_553648632):
      static :
        warning("Declaration of " & "ma_float" &
            " exists but with different size")
    ma_float
  else:
    ma_float_553648632)
  ma_mutex_553648754 = (when declared(ma_mutex):
    when ownSizeof(ma_mutex) != ownSizeof(ma_mutex_553648753):
      static :
        warning("Declaration of " & "ma_mutex" &
            " exists but with different size")
    ma_mutex
  else:
    ma_mutex_553648753)
  ma_log_callback_proc_553648764 = (when declared(ma_log_callback_proc):
    when ownSizeof(ma_log_callback_proc) != ownSizeof(ma_log_callback_proc_553648763):
      static :
        warning("Declaration of " & "ma_log_callback_proc" &
            " exists but with different size")
    ma_log_callback_proc
  else:
    ma_log_callback_proc_553648763)
  ma_pthread_t_553648643 = (when declared(ma_pthread_t):
    when ownSizeof(ma_pthread_t) != ownSizeof(ma_pthread_t_553648642):
      static :
        warning("Declaration of " & "ma_pthread_t" &
            " exists but with different size")
    ma_pthread_t
  else:
    ma_pthread_t_553648642)
  pthread_cond_t_553648653 = (when declared(pthread_cond_t):
    when ownSizeof(pthread_cond_t) != ownSizeof(pthread_cond_t_553648652):
      static :
        warning("Declaration of " & "pthread_cond_t" &
            " exists but with different size")
    pthread_cond_t
  else:
    pthread_cond_t_553648652)
  ma_handedness_553648940 = (when declared(ma_handedness):
    when ownSizeof(ma_handedness) != ownSizeof(ma_handedness_553648939):
      static :
        warning("Declaration of " & "ma_handedness" &
            " exists but with different size")
    ma_handedness
  else:
    ma_handedness_553648939)
  ma_channel_conversion_path_553648986 = (when declared(
      ma_channel_conversion_path):
    when ownSizeof(ma_channel_conversion_path) !=
        ownSizeof(ma_channel_conversion_path_553648985):
      static :
        warning("Declaration of " & "ma_channel_conversion_path" &
            " exists but with different size")
    ma_channel_conversion_path
  else:
    ma_channel_conversion_path_553648985)
  ma_data_source_config_553649022 = (when declared(ma_data_source_config):
    when ownSizeof(ma_data_source_config) != ownSizeof(ma_data_source_config_553649021):
      static :
        warning("Declaration of " & "ma_data_source_config" &
            " exists but with different size")
    ma_data_source_config
  else:
    ma_data_source_config_553649021)
  ma_standard_sample_rate_553648704 = (when declared(ma_standard_sample_rate):
    when ownSizeof(ma_standard_sample_rate) !=
        ownSizeof(ma_standard_sample_rate_553648703):
      static :
        warning("Declaration of " & "ma_standard_sample_rate" &
            " exists but with different size")
    ma_standard_sample_rate
  else:
    ma_standard_sample_rate_553648703)
  struct_ma_linear_resampler_553648962 = (when declared(
      struct_ma_linear_resampler):
    when ownSizeof(struct_ma_linear_resampler) !=
        ownSizeof(struct_ma_linear_resampler_553648961):
      static :
        warning("Declaration of " & "struct_ma_linear_resampler" &
            " exists but with different size")
    struct_ma_linear_resampler
  else:
    struct_ma_linear_resampler_553648961)
  struct_ma_rb_553649056 = (when declared(struct_ma_rb):
    when ownSizeof(struct_ma_rb) != ownSizeof(struct_ma_rb_553649055):
      static :
        warning("Declaration of " & "struct_ma_rb" &
            " exists but with different size")
    struct_ma_rb
  else:
    struct_ma_rb_553649055)
  struct_ma_encoder_config_553649298 = (when declared(struct_ma_encoder_config):
    when ownSizeof(struct_ma_encoder_config) !=
        ownSizeof(struct_ma_encoder_config_553649297):
      static :
        warning("Declaration of " & "struct_ma_encoder_config" &
            " exists but with different size")
    struct_ma_encoder_config
  else:
    struct_ma_encoder_config_553649297)
  ma_bpf_553648844 = (when declared(ma_bpf):
    when ownSizeof(ma_bpf) != ownSizeof(ma_bpf_553648843):
      static :
        warning("Declaration of " & "ma_bpf" & " exists but with different size")
    ma_bpf
  else:
    ma_bpf_553648843)
  struct_ma_sound_553649522 = (when declared(struct_ma_sound):
    when ownSizeof(struct_ma_sound) != ownSizeof(struct_ma_sound_553649521):
      static :
        warning("Declaration of " & "struct_ma_sound" &
            " exists but with different size")
    struct_ma_sound
  else:
    struct_ma_sound_553649521)
  enum_ma_open_mode_flags_553649232 = (when declared(enum_ma_open_mode_flags):
    when ownSizeof(enum_ma_open_mode_flags) !=
        ownSizeof(enum_ma_open_mode_flags_553649231):
      static :
        warning("Declaration of " & "enum_ma_open_mode_flags" &
            " exists but with different size")
    enum_ma_open_mode_flags
  else:
    enum_ma_open_mode_flags_553649231)
  ma_spatializer_config_553648952 = (when declared(ma_spatializer_config):
    when ownSizeof(ma_spatializer_config) != ownSizeof(ma_spatializer_config_553648951):
      static :
        warning("Declaration of " & "ma_spatializer_config" &
            " exists but with different size")
    ma_spatializer_config
  else:
    ma_spatializer_config_553648951)
  ma_double_553648635 = (when declared(ma_double):
    when ownSizeof(ma_double) != ownSizeof(ma_double_553648634):
      static :
        warning("Declaration of " & "ma_double" &
            " exists but with different size")
    ma_double
  else:
    ma_double_553648634)
  enum_ma_aaudio_input_preset_553649186 = (when declared(
      enum_ma_aaudio_input_preset):
    when ownSizeof(enum_ma_aaudio_input_preset) !=
        ownSizeof(enum_ma_aaudio_input_preset_553649185):
      static :
        warning("Declaration of " & "enum_ma_aaudio_input_preset" &
            " exists but with different size")
    enum_ma_aaudio_input_preset
  else:
    enum_ma_aaudio_input_preset_553649185)
  struct_ma_splitter_node_553649440 = (when declared(struct_ma_splitter_node):
    when ownSizeof(struct_ma_splitter_node) !=
        ownSizeof(struct_ma_splitter_node_553649439):
      static :
        warning("Declaration of " & "struct_ma_splitter_node" &
            " exists but with different size")
    struct_ma_splitter_node
  else:
    struct_ma_splitter_node_553649439)
  ma_int8_553648611 = (when declared(ma_int8):
    when ownSizeof(ma_int8) != ownSizeof(ma_int8_553648610):
      static :
        warning("Declaration of " & "ma_int8" &
            " exists but with different size")
    ma_int8
  else:
    ma_int8_553648610)
  ma_hpf1_config_553648810 = (when declared(ma_hpf1_config):
    when ownSizeof(ma_hpf1_config) != ownSizeof(ma_hpf1_config_553648809):
      static :
        warning("Declaration of " & "ma_hpf1_config" &
            " exists but with different size")
    ma_hpf1_config
  else:
    ma_hpf1_config_553648809)
  struct_ma_peak_node_config_553649484 = (when declared(
      struct_ma_peak_node_config):
    when ownSizeof(struct_ma_peak_node_config) !=
        ownSizeof(struct_ma_peak_node_config_553649483):
      static :
        warning("Declaration of " & "struct_ma_peak_node_config" &
            " exists but with different size")
    struct_ma_peak_node_config
  else:
    struct_ma_peak_node_config_553649483)
  ma_atomic_bool32_553648744 = (when declared(ma_atomic_bool32):
    when ownSizeof(ma_atomic_bool32) != ownSizeof(ma_atomic_bool32_553648743):
      static :
        warning("Declaration of " & "ma_atomic_bool32" &
            " exists but with different size")
    ma_atomic_bool32
  else:
    ma_atomic_bool32_553648743)
  enum_ma_node_state_553649400 = (when declared(enum_ma_node_state):
    when ownSizeof(enum_ma_node_state) != ownSizeof(enum_ma_node_state_553649399):
      static :
        warning("Declaration of " & "enum_ma_node_state" &
            " exists but with different size")
    enum_ma_node_state
  else:
    enum_ma_node_state_553649399)
  struct_ma_device_info_553649214 = (when declared(struct_ma_device_info):
    when ownSizeof(struct_ma_device_info) != ownSizeof(struct_ma_device_info_553649213):
      static :
        warning("Declaration of " & "struct_ma_device_info" &
            " exists but with different size")
    struct_ma_device_info
  else:
    struct_ma_device_info_553649213)
  ma_file_info_553649242 = (when declared(ma_file_info):
    when ownSizeof(ma_file_info) != ownSizeof(ma_file_info_553649241):
      static :
        warning("Declaration of " & "ma_file_info" &
            " exists but with different size")
    ma_file_info
  else:
    ma_file_info_553649241)
  struct_ma_job_553649098 = (when declared(struct_ma_job):
    when ownSizeof(struct_ma_job) != ownSizeof(struct_ma_job_553649097):
      static :
        warning("Declaration of " & "struct_ma_job" &
            " exists but with different size")
    struct_ma_job
  else:
    struct_ma_job_553649097)
  ma_bpf2_config_553648832 = (when declared(ma_bpf2_config):
    when ownSizeof(ma_bpf2_config) != ownSizeof(ma_bpf2_config_553648831):
      static :
        warning("Declaration of " & "ma_bpf2_config" &
            " exists but with different size")
    ma_bpf2_config
  else:
    ma_bpf2_config_553648831)
  ma_data_source_get_next_proc_553649018 = (when declared(
      ma_data_source_get_next_proc):
    when ownSizeof(ma_data_source_get_next_proc) !=
        ownSizeof(ma_data_source_get_next_proc_553649017):
      static :
        warning("Declaration of " & "ma_data_source_get_next_proc" &
            " exists but with different size")
    ma_data_source_get_next_proc
  else:
    ma_data_source_get_next_proc_553649017)
  struct_ma_splitter_node_config_553649436 = (when declared(
      struct_ma_splitter_node_config):
    when ownSizeof(struct_ma_splitter_node_config) !=
        ownSizeof(struct_ma_splitter_node_config_553649435):
      static :
        warning("Declaration of " & "struct_ma_splitter_node_config" &
            " exists but with different size")
    struct_ma_splitter_node_config
  else:
    struct_ma_splitter_node_config_553649435)
  ma_uintptr_553648627 = (when declared(ma_uintptr):
    when ownSizeof(ma_uintptr) != ownSizeof(ma_uintptr_553648626):
      static :
        warning("Declaration of " & "ma_uintptr" &
            " exists but with different size")
    ma_uintptr
  else:
    ma_uintptr_553648626)
  ma_seek_proc_553649254 = (when declared(ma_seek_proc):
    when ownSizeof(ma_seek_proc) != ownSizeof(ma_seek_proc_553649253):
      static :
        warning("Declaration of " & "ma_seek_proc" &
            " exists but with different size")
    ma_seek_proc
  else:
    ma_seek_proc_553649253)
  ma_paged_audio_buffer_data_553649046 = (when declared(
      ma_paged_audio_buffer_data):
    when ownSizeof(ma_paged_audio_buffer_data) !=
        ownSizeof(ma_paged_audio_buffer_data_553649045):
      static :
        warning("Declaration of " & "ma_paged_audio_buffer_data" &
            " exists but with different size")
    ma_paged_audio_buffer_data
  else:
    ma_paged_audio_buffer_data_553649045)
  struct_ma_noise_553649330 = (when declared(struct_ma_noise):
    when ownSizeof(struct_ma_noise) != ownSizeof(struct_ma_noise_553649329):
      static :
        warning("Declaration of " & "struct_ma_noise" &
            " exists but with different size")
    struct_ma_noise
  else:
    struct_ma_noise_553649329)
  struct_ma_notch2_553648852 = (when declared(struct_ma_notch2):
    when ownSizeof(struct_ma_notch2) != ownSizeof(struct_ma_notch2_553648851):
      static :
        warning("Declaration of " & "struct_ma_notch2" &
            " exists but with different size")
    struct_ma_notch2
  else:
    struct_ma_notch2_553648851)
  enum_ma_opensl_stream_type_553649166 = (when declared(
      enum_ma_opensl_stream_type):
    when ownSizeof(enum_ma_opensl_stream_type) !=
        ownSizeof(enum_ma_opensl_stream_type_553649165):
      static :
        warning("Declaration of " & "enum_ma_opensl_stream_type" &
            " exists but with different size")
    enum_ma_opensl_stream_type
  else:
    enum_ma_opensl_stream_type_553649165)
  union_ma_biquad_coefficient_553648774 = (when declared(
      union_ma_biquad_coefficient):
    when ownSizeof(union_ma_biquad_coefficient) !=
        ownSizeof(union_ma_biquad_coefficient_553648773):
      static :
        warning("Declaration of " & "union_ma_biquad_coefficient" &
            " exists but with different size")
    union_ma_biquad_coefficient
  else:
    union_ma_biquad_coefficient_553648773)
  ma_data_source_node_553649434 = (when declared(ma_data_source_node):
    when ownSizeof(ma_data_source_node) != ownSizeof(ma_data_source_node_553649433):
      static :
        warning("Declaration of " & "ma_data_source_node" &
            " exists but with different size")
    ma_data_source_node
  else:
    ma_data_source_node_553649433)
  ma_notch_node_config_553649478 = (when declared(ma_notch_node_config):
    when ownSizeof(ma_notch_node_config) != ownSizeof(ma_notch_node_config_553649477):
      static :
        warning("Declaration of " & "ma_notch_node_config" &
            " exists but with different size")
    ma_notch_node_config
  else:
    ma_notch_node_config_553649477)
  struct_ma_spatializer_config_553648950 = (when declared(
      struct_ma_spatializer_config):
    when ownSizeof(struct_ma_spatializer_config) !=
        ownSizeof(struct_ma_spatializer_config_553648949):
      static :
        warning("Declaration of " & "struct_ma_spatializer_config" &
            " exists but with different size")
    struct_ma_spatializer_config
  else:
    struct_ma_spatializer_config_553648949)
  struct_ma_channel_converter_config_553648992 = (when declared(
      struct_ma_channel_converter_config):
    when ownSizeof(struct_ma_channel_converter_config) !=
        ownSizeof(struct_ma_channel_converter_config_553648991):
      static :
        warning("Declaration of " & "struct_ma_channel_converter_config" &
            " exists but with different size")
    struct_ma_channel_converter_config
  else:
    struct_ma_channel_converter_config_553648991)
  ma_sound_config_553649544 = (when declared(ma_sound_config):
    when ownSizeof(ma_sound_config) != ownSizeof(ma_sound_config_553649543):
      static :
        warning("Declaration of " & "ma_sound_config" &
            " exists but with different size")
    ma_sound_config
  else:
    ma_sound_config_553649543)
  ma_backend_553649126 = (when declared(ma_backend):
    when ownSizeof(ma_backend) != ownSizeof(ma_backend_553649125):
      static :
        warning("Declaration of " & "ma_backend" &
            " exists but with different size")
    ma_backend
  else:
    ma_backend_553649125)
  ma_wasapi_usage_553649176 = (when declared(ma_wasapi_usage):
    when ownSizeof(ma_wasapi_usage) != ownSizeof(ma_wasapi_usage_553649175):
      static :
        warning("Declaration of " & "ma_wasapi_usage" &
            " exists but with different size")
    ma_wasapi_usage
  else:
    ma_wasapi_usage_553649175)
  ma_biquad_553648784 = (when declared(ma_biquad):
    when ownSizeof(ma_biquad) != ownSizeof(ma_biquad_553648783):
      static :
        warning("Declaration of " & "ma_biquad" &
            " exists but with different size")
    ma_biquad
  else:
    ma_biquad_553648783)
  struct_ma_hpf_node_config_553649460 = (when declared(struct_ma_hpf_node_config):
    when ownSizeof(struct_ma_hpf_node_config) !=
        ownSizeof(struct_ma_hpf_node_config_553649459):
      static :
        warning("Declaration of " & "struct_ma_hpf_node_config" &
            " exists but with different size")
    struct_ma_hpf_node_config
  else:
    struct_ma_hpf_node_config_553649459)
  struct_ma_peak_node_553649488 = (when declared(struct_ma_peak_node):
    when ownSizeof(struct_ma_peak_node) != ownSizeof(struct_ma_peak_node_553649487):
      static :
        warning("Declaration of " & "struct_ma_peak_node" &
            " exists but with different size")
    struct_ma_peak_node
  else:
    struct_ma_peak_node_553649487)
  struct_ma_resource_manager_data_buffer_node_553649340 = (when declared(
      struct_ma_resource_manager_data_buffer_node):
    when ownSizeof(struct_ma_resource_manager_data_buffer_node) !=
        ownSizeof(struct_ma_resource_manager_data_buffer_node_553649339):
      static :
        warning("Declaration of " &
            "struct_ma_resource_manager_data_buffer_node" &
            " exists but with different size")
    struct_ma_resource_manager_data_buffer_node
  else:
    struct_ma_resource_manager_data_buffer_node_553649339)
  struct_ma_node_input_bus_553649418 = (when declared(struct_ma_node_input_bus):
    when ownSizeof(struct_ma_node_input_bus) !=
        ownSizeof(struct_ma_node_input_bus_553649417):
      static :
        warning("Declaration of " & "struct_ma_node_input_bus" &
            " exists but with different size")
    struct_ma_node_input_bus
  else:
    struct_ma_node_input_bus_553649417)
  ma_resampler_553648982 = (when declared(ma_resampler):
    when ownSizeof(ma_resampler) != ownSizeof(ma_resampler_553648981):
      static :
        warning("Declaration of " & "ma_resampler" &
            " exists but with different size")
    ma_resampler
  else:
    ma_resampler_553648981)
  ma_paged_audio_buffer_config_553649050 = (when declared(
      ma_paged_audio_buffer_config):
    when ownSizeof(ma_paged_audio_buffer_config) !=
        ownSizeof(ma_paged_audio_buffer_config_553649049):
      static :
        warning("Declaration of " & "ma_paged_audio_buffer_config" &
            " exists but with different size")
    ma_paged_audio_buffer_config
  else:
    ma_paged_audio_buffer_config_553649049)
  ma_data_source_base_553649026 = (when declared(ma_data_source_base):
    when ownSizeof(ma_data_source_base) != ownSizeof(ma_data_source_base_553649025):
      static :
        warning("Declaration of " & "ma_data_source_base" &
            " exists but with different size")
    ma_data_source_base
  else:
    ma_data_source_base_553649025)
  ma_job_type_553649104 = (when declared(ma_job_type):
    when ownSizeof(ma_job_type) != ownSizeof(ma_job_type_553649103):
      static :
        warning("Declaration of " & "ma_job_type" &
            " exists but with different size")
    ma_job_type
  else:
    ma_job_type_553649103)
  ma_slot_allocator_group_553649092 = (when declared(ma_slot_allocator_group):
    when ownSizeof(ma_slot_allocator_group) !=
        ownSizeof(ma_slot_allocator_group_553649091):
      static :
        warning("Declaration of " & "ma_slot_allocator_group" &
            " exists but with different size")
    ma_slot_allocator_group
  else:
    ma_slot_allocator_group_553649091)
  struct_ma_resource_manager_config_553649382 = (when declared(
      struct_ma_resource_manager_config):
    when ownSizeof(struct_ma_resource_manager_config) !=
        ownSizeof(struct_ma_resource_manager_config_553649381):
      static :
        warning("Declaration of " & "struct_ma_resource_manager_config" &
            " exists but with different size")
    struct_ma_resource_manager_config
  else:
    struct_ma_resource_manager_config_553649381)
  struct_ma_node_graph_553649392 = (when declared(struct_ma_node_graph):
    when ownSizeof(struct_ma_node_graph) != ownSizeof(struct_ma_node_graph_553649391):
      static :
        warning("Declaration of " & "struct_ma_node_graph" &
            " exists but with different size")
    struct_ma_node_graph
  else:
    struct_ma_node_graph_553649391)
  enum_ma_job_queue_flags_553649108 = (when declared(enum_ma_job_queue_flags):
    when ownSizeof(enum_ma_job_queue_flags) !=
        ownSizeof(enum_ma_job_queue_flags_553649107):
      static :
        warning("Declaration of " & "enum_ma_job_queue_flags" &
            " exists but with different size")
    enum_ma_job_queue_flags
  else:
    enum_ma_job_queue_flags_553649107)
  struct_ma_peak2_553648862 = (when declared(struct_ma_peak2):
    when ownSizeof(struct_ma_peak2) != ownSizeof(struct_ma_peak2_553648861):
      static :
        warning("Declaration of " & "struct_ma_peak2" &
            " exists but with different size")
    struct_ma_peak2
  else:
    struct_ma_peak2_553648861)
  ma_share_mode_553649156 = (when declared(ma_share_mode):
    when ownSizeof(ma_share_mode) != ownSizeof(ma_share_mode_553649155):
      static :
        warning("Declaration of " & "ma_share_mode" &
            " exists but with different size")
    ma_share_mode
  else:
    ma_share_mode_553649155)
  ma_ios_session_category_553649160 = (when declared(ma_ios_session_category):
    when ownSizeof(ma_ios_session_category) !=
        ownSizeof(ma_ios_session_category_553649159):
      static :
        warning("Declaration of " & "ma_ios_session_category" &
            " exists but with different size")
    ma_ios_session_category
  else:
    ma_ios_session_category_553649159)
  ma_loshelf_config_553648870 = (when declared(ma_loshelf_config):
    when ownSizeof(ma_loshelf_config) != ownSizeof(ma_loshelf_config_553648869):
      static :
        warning("Declaration of " & "ma_loshelf_config" &
            " exists but with different size")
    ma_loshelf_config
  else:
    ma_loshelf_config_553648869)
  struct_ma_duplex_rb_553649064 = (when declared(struct_ma_duplex_rb):
    when ownSizeof(struct_ma_duplex_rb) != ownSizeof(struct_ma_duplex_rb_553649063):
      static :
        warning("Declaration of " & "struct_ma_duplex_rb" &
            " exists but with different size")
    struct_ma_duplex_rb
  else:
    struct_ma_duplex_rb_553649063)
  struct_ma_semaphore_553648760 = (when declared(struct_ma_semaphore):
    when ownSizeof(struct_ma_semaphore) != ownSizeof(struct_ma_semaphore_553648759):
      static :
        warning("Declaration of " & "struct_ma_semaphore" &
            " exists but with different size")
    struct_ma_semaphore
  else:
    struct_ma_semaphore_553648759)
  ma_node_graph_553649390 = (when declared(ma_node_graph):
    when ownSizeof(ma_node_graph) != ownSizeof(ma_node_graph_553649389):
      static :
        warning("Declaration of " & "ma_node_graph" &
            " exists but with different size")
    ma_node_graph
  else:
    ma_node_graph_553649389)
  struct_ma_bpf_node_config_553649468 = (when declared(struct_ma_bpf_node_config):
    when ownSizeof(struct_ma_bpf_node_config) !=
        ownSizeof(struct_ma_bpf_node_config_553649467):
      static :
        warning("Declaration of " & "struct_ma_bpf_node_config" &
            " exists but with different size")
    struct_ma_bpf_node_config
  else:
    struct_ma_bpf_node_config_553649467)
  ma_job_queue_flags_553649110 = (when declared(ma_job_queue_flags):
    when ownSizeof(ma_job_queue_flags) != ownSizeof(ma_job_queue_flags_553649109):
      static :
        warning("Declaration of " & "ma_job_queue_flags" &
            " exists but with different size")
    ma_job_queue_flags
  else:
    ma_job_queue_flags_553649109)
  struct_ma_resampling_backend_vtable_553648972 = (when declared(
      struct_ma_resampling_backend_vtable):
    when ownSizeof(struct_ma_resampling_backend_vtable) !=
        ownSizeof(struct_ma_resampling_backend_vtable_553648971):
      static :
        warning("Declaration of " & "struct_ma_resampling_backend_vtable" &
            " exists but with different size")
    struct_ma_resampling_backend_vtable
  else:
    struct_ma_resampling_backend_vtable_553648971)
  enum_ma_backend_553649124 = (when declared(enum_ma_backend):
    when ownSizeof(enum_ma_backend) != ownSizeof(enum_ma_backend_553649123):
      static :
        warning("Declaration of " & "enum_ma_backend" &
            " exists but with different size")
    enum_ma_backend
  else:
    enum_ma_backend_553649123)
  struct_ma_gainer_config_553648894 = (when declared(struct_ma_gainer_config):
    when ownSizeof(struct_ma_gainer_config) !=
        ownSizeof(struct_ma_gainer_config_553648893):
      static :
        warning("Declaration of " & "struct_ma_gainer_config" &
            " exists but with different size")
    struct_ma_gainer_config
  else:
    struct_ma_gainer_config_553648893)
  enum_ma_device_notification_type_553649136 = (when declared(
      enum_ma_device_notification_type):
    when ownSizeof(enum_ma_device_notification_type) !=
        ownSizeof(enum_ma_device_notification_type_553649135):
      static :
        warning("Declaration of " & "enum_ma_device_notification_type" &
            " exists but with different size")
    enum_ma_device_notification_type
  else:
    enum_ma_device_notification_type_553649135)
  ma_biquad_coefficient_553648776 = (when declared(ma_biquad_coefficient):
    when ownSizeof(ma_biquad_coefficient) != ownSizeof(ma_biquad_coefficient_553648775):
      static :
        warning("Declaration of " & "ma_biquad_coefficient" &
            " exists but with different size")
    ma_biquad_coefficient
  else:
    ma_biquad_coefficient_553648775)
  ma_resource_manager_data_supply_553649380 = (when declared(
      ma_resource_manager_data_supply):
    when ownSizeof(ma_resource_manager_data_supply) !=
        ownSizeof(ma_resource_manager_data_supply_553649379):
      static :
        warning("Declaration of " & "ma_resource_manager_data_supply" &
            " exists but with different size")
    ma_resource_manager_data_supply
  else:
    ma_resource_manager_data_supply_553649379)
  ma_async_notification_callbacks_553649076 = (when declared(
      ma_async_notification_callbacks):
    when ownSizeof(ma_async_notification_callbacks) !=
        ownSizeof(ma_async_notification_callbacks_553649075):
      static :
        warning("Declaration of " & "ma_async_notification_callbacks" &
            " exists but with different size")
    ma_async_notification_callbacks
  else:
    ma_async_notification_callbacks_553649075)
  ma_device_553648665 = (when declared(ma_device):
    when ownSizeof(ma_device) != ownSizeof(ma_device_553648664):
      static :
        warning("Declaration of " & "ma_device" &
            " exists but with different size")
    ma_device
  else:
    ma_device_553648664)
  ma_engine_node_type_553649530 = (when declared(ma_engine_node_type):
    when ownSizeof(ma_engine_node_type) != ownSizeof(ma_engine_node_type_553649529):
      static :
        warning("Declaration of " & "ma_engine_node_type" &
            " exists but with different size")
    ma_engine_node_type
  else:
    ma_engine_node_type_553649529)
  enum_ma_wasapi_usage_553649174 = (when declared(enum_ma_wasapi_usage):
    when ownSizeof(enum_ma_wasapi_usage) != ownSizeof(enum_ma_wasapi_usage_553649173):
      static :
        warning("Declaration of " & "enum_ma_wasapi_usage" &
            " exists but with different size")
    enum_ma_wasapi_usage
  else:
    enum_ma_wasapi_usage_553649173)
  struct_ma_bpf2_config_553648830 = (when declared(struct_ma_bpf2_config):
    when ownSizeof(struct_ma_bpf2_config) != ownSizeof(struct_ma_bpf2_config_553648829):
      static :
        warning("Declaration of " & "struct_ma_bpf2_config" &
            " exists but with different size")
    struct_ma_bpf2_config
  else:
    struct_ma_bpf2_config_553648829)
  struct_ma_decoding_backend_config_553649266 = (when declared(
      struct_ma_decoding_backend_config):
    when ownSizeof(struct_ma_decoding_backend_config) !=
        ownSizeof(struct_ma_decoding_backend_config_553649265):
      static :
        warning("Declaration of " & "struct_ma_decoding_backend_config" &
            " exists but with different size")
    struct_ma_decoding_backend_config
  else:
    struct_ma_decoding_backend_config_553649265)
  enum_ma_ios_session_category_553649158 = (when declared(
      enum_ma_ios_session_category):
    when ownSizeof(enum_ma_ios_session_category) !=
        ownSizeof(enum_ma_ios_session_category_553649157):
      static :
        warning("Declaration of " & "enum_ma_ios_session_category" &
            " exists but with different size")
    enum_ma_ios_session_category
  else:
    enum_ma_ios_session_category_553649157)
  struct_ma_atomic_uint64_553648734 = (when declared(struct_ma_atomic_uint64):
    when ownSizeof(struct_ma_atomic_uint64) !=
        ownSizeof(struct_ma_atomic_uint64_553648733):
      static :
        warning("Declaration of " & "struct_ma_atomic_uint64" &
            " exists but with different size")
    struct_ma_atomic_uint64
  else:
    struct_ma_atomic_uint64_553648733)
  struct_ma_vfs_callbacks_553649244 = (when declared(struct_ma_vfs_callbacks):
    when ownSizeof(struct_ma_vfs_callbacks) !=
        ownSizeof(struct_ma_vfs_callbacks_553649243):
      static :
        warning("Declaration of " & "struct_ma_vfs_callbacks" &
            " exists but with different size")
    struct_ma_vfs_callbacks
  else:
    struct_ma_vfs_callbacks_553649243)
  struct_ma_audio_buffer_553649036 = (when declared(struct_ma_audio_buffer):
    when ownSizeof(struct_ma_audio_buffer) != ownSizeof(struct_ma_audio_buffer_553649035):
      static :
        warning("Declaration of " & "struct_ma_audio_buffer" &
            " exists but with different size")
    struct_ma_audio_buffer
  else:
    struct_ma_audio_buffer_553649035)
  struct_ma_paged_audio_buffer_data_553649044 = (when declared(
      struct_ma_paged_audio_buffer_data):
    when ownSizeof(struct_ma_paged_audio_buffer_data) !=
        ownSizeof(struct_ma_paged_audio_buffer_data_553649043):
      static :
        warning("Declaration of " & "struct_ma_paged_audio_buffer_data" &
            " exists but with different size")
    struct_ma_paged_audio_buffer_data
  else:
    struct_ma_paged_audio_buffer_data_553649043)
  ma_handle_553648637 = (when declared(ma_handle):
    when ownSizeof(ma_handle) != ownSizeof(ma_handle_553648636):
      static :
        warning("Declaration of " & "ma_handle" &
            " exists but with different size")
    ma_handle
  else:
    ma_handle_553648636)
  enum_ma_resource_manager_flags_553649366 = (when declared(
      enum_ma_resource_manager_flags):
    when ownSizeof(enum_ma_resource_manager_flags) !=
        ownSizeof(enum_ma_resource_manager_flags_553649365):
      static :
        warning("Declaration of " & "enum_ma_resource_manager_flags" &
            " exists but with different size")
    enum_ma_resource_manager_flags
  else:
    enum_ma_resource_manager_flags_553649365)
  struct_ma_waveform_config_553649306 = (when declared(struct_ma_waveform_config):
    when ownSizeof(struct_ma_waveform_config) !=
        ownSizeof(struct_ma_waveform_config_553649305):
      static :
        warning("Declaration of " & "struct_ma_waveform_config" &
            " exists but with different size")
    struct_ma_waveform_config
  else:
    struct_ma_waveform_config_553649305)
  ma_format_553648700 = (when declared(ma_format):
    when ownSizeof(ma_format) != ownSizeof(ma_format_553648699):
      static :
        warning("Declaration of " & "ma_format" &
            " exists but with different size")
    ma_format
  else:
    ma_format_553648699)
  ma_decoding_backend_vtable_553649272 = (when declared(
      ma_decoding_backend_vtable):
    when ownSizeof(ma_decoding_backend_vtable) !=
        ownSizeof(ma_decoding_backend_vtable_553649271):
      static :
        warning("Declaration of " & "ma_decoding_backend_vtable" &
            " exists but with different size")
    ma_decoding_backend_vtable
  else:
    ma_decoding_backend_vtable_553649271)
  ma_resource_manager_data_stream_553649346 = (when declared(
      ma_resource_manager_data_stream):
    when ownSizeof(ma_resource_manager_data_stream) !=
        ownSizeof(ma_resource_manager_data_stream_553649345):
      static :
        warning("Declaration of " & "ma_resource_manager_data_stream" &
            " exists but with different size")
    ma_resource_manager_data_stream
  else:
    ma_resource_manager_data_stream_553649345)
  ma_channel_mix_mode_553648708 = (when declared(ma_channel_mix_mode):
    when ownSizeof(ma_channel_mix_mode) != ownSizeof(ma_channel_mix_mode_553648707):
      static :
        warning("Declaration of " & "ma_channel_mix_mode" &
            " exists but with different size")
    ma_channel_mix_mode
  else:
    ma_channel_mix_mode_553648707)
  struct_ma_peak2_config_553648856 = (when declared(struct_ma_peak2_config):
    when ownSizeof(struct_ma_peak2_config) != ownSizeof(struct_ma_peak2_config_553648855):
      static :
        warning("Declaration of " & "struct_ma_peak2_config" &
            " exists but with different size")
    struct_ma_peak2_config
  else:
    struct_ma_peak2_config_553648855)
  struct_ma_panner_553648910 = (when declared(struct_ma_panner):
    when ownSizeof(struct_ma_panner) != ownSizeof(struct_ma_panner_553648909):
      static :
        warning("Declaration of " & "struct_ma_panner" &
            " exists but with different size")
    struct_ma_panner
  else:
    struct_ma_panner_553648909)
  enum_ma_data_converter_execution_path_553649004 = (when declared(
      enum_ma_data_converter_execution_path):
    when ownSizeof(enum_ma_data_converter_execution_path) !=
        ownSizeof(enum_ma_data_converter_execution_path_553649003):
      static :
        warning("Declaration of " & "enum_ma_data_converter_execution_path" &
            " exists but with different size")
    enum_ma_data_converter_execution_path
  else:
    enum_ma_data_converter_execution_path_553649003)
  struct_ma_loshelf_node_config_553649492 = (when declared(
      struct_ma_loshelf_node_config):
    when ownSizeof(struct_ma_loshelf_node_config) !=
        ownSizeof(struct_ma_loshelf_node_config_553649491):
      static :
        warning("Declaration of " & "struct_ma_loshelf_node_config" &
            " exists but with different size")
    struct_ma_loshelf_node_config
  else:
    struct_ma_loshelf_node_config_553649491)
  enum_ma_stream_layout_553648683 = (when declared(enum_ma_stream_layout):
    when ownSizeof(enum_ma_stream_layout) != ownSizeof(enum_ma_stream_layout_553648682):
      static :
        warning("Declaration of " & "enum_ma_stream_layout" &
            " exists but with different size")
    enum_ma_stream_layout
  else:
    enum_ma_stream_layout_553648682)
  ma_performance_profile_553648716 = (when declared(ma_performance_profile):
    when ownSizeof(ma_performance_profile) != ownSizeof(ma_performance_profile_553648715):
      static :
        warning("Declaration of " & "ma_performance_profile" &
            " exists but with different size")
    ma_performance_profile
  else:
    ma_performance_profile_553648715)
  ma_encoder_init_proc_553649292 = (when declared(ma_encoder_init_proc):
    when ownSizeof(ma_encoder_init_proc) != ownSizeof(ma_encoder_init_proc_553649291):
      static :
        warning("Declaration of " & "ma_encoder_init_proc" &
            " exists but with different size")
    ma_encoder_init_proc
  else:
    ma_encoder_init_proc_553649291)
  enum_ma_waveform_type_553649302 = (when declared(enum_ma_waveform_type):
    when ownSizeof(enum_ma_waveform_type) != ownSizeof(enum_ma_waveform_type_553649301):
      static :
        warning("Declaration of " & "enum_ma_waveform_type" &
            " exists but with different size")
    enum_ma_waveform_type
  else:
    enum_ma_waveform_type_553649301)
  ma_int64_553648623 = (when declared(ma_int64):
    when ownSizeof(ma_int64) != ownSizeof(ma_int64_553648622):
      static :
        warning("Declaration of " & "ma_int64" &
            " exists but with different size")
    ma_int64
  else:
    ma_int64_553648622)
  struct_ma_resource_manager_data_source_553649352 = (when declared(
      struct_ma_resource_manager_data_source):
    when ownSizeof(struct_ma_resource_manager_data_source) !=
        ownSizeof(struct_ma_resource_manager_data_source_553649351):
      static :
        warning("Declaration of " & "struct_ma_resource_manager_data_source" &
            " exists but with different size")
    struct_ma_resource_manager_data_source
  else:
    struct_ma_resource_manager_data_source_553649351)
  ma_resource_manager_data_supply_type_553649376 = (when declared(
      ma_resource_manager_data_supply_type):
    when ownSizeof(ma_resource_manager_data_supply_type) !=
        ownSizeof(ma_resource_manager_data_supply_type_553649375):
      static :
        warning("Declaration of " & "ma_resource_manager_data_supply_type" &
            " exists but with different size")
    ma_resource_manager_data_supply_type
  else:
    ma_resource_manager_data_supply_type_553649375)
  ma_node_input_bus_553649416 = (when declared(ma_node_input_bus):
    when ownSizeof(ma_node_input_bus) != ownSizeof(ma_node_input_bus_553649415):
      static :
        warning("Declaration of " & "ma_node_input_bus" &
            " exists but with different size")
    ma_node_input_bus
  else:
    ma_node_input_bus_553649415)
  ma_async_notification_poll_553649080 = (when declared(
      ma_async_notification_poll):
    when ownSizeof(ma_async_notification_poll) !=
        ownSizeof(ma_async_notification_poll_553649079):
      static :
        warning("Declaration of " & "ma_async_notification_poll" &
            " exists but with different size")
    ma_async_notification_poll
  else:
    ma_async_notification_poll_553649079)
  struct_ma_device_config_553649208 = (when declared(struct_ma_device_config):
    when ownSizeof(struct_ma_device_config) !=
        ownSizeof(struct_ma_device_config_553649207):
      static :
        warning("Declaration of " & "struct_ma_device_config" &
            " exists but with different size")
    struct_ma_device_config
  else:
    struct_ma_device_config_553649207)
  struct_ma_lpf_node_553649456 = (when declared(struct_ma_lpf_node):
    when ownSizeof(struct_ma_lpf_node) != ownSizeof(struct_ma_lpf_node_553649455):
      static :
        warning("Declaration of " & "struct_ma_lpf_node" &
            " exists but with different size")
    struct_ma_lpf_node
  else:
    struct_ma_lpf_node_553649455)
  enum_ma_handedness_553648938 = (when declared(enum_ma_handedness):
    when ownSizeof(enum_ma_handedness) != ownSizeof(enum_ma_handedness_553648937):
      static :
        warning("Declaration of " & "enum_ma_handedness" &
            " exists but with different size")
    enum_ma_handedness
  else:
    enum_ma_handedness_553648937)
  struct_ma_bpf_node_553649472 = (when declared(struct_ma_bpf_node):
    when ownSizeof(struct_ma_bpf_node) != ownSizeof(struct_ma_bpf_node_553649471):
      static :
        warning("Declaration of " & "struct_ma_bpf_node" &
            " exists but with different size")
    struct_ma_bpf_node
  else:
    struct_ma_bpf_node_553649471)
  struct_ma_device_553648667 = (when declared(struct_ma_device):
    when ownSizeof(struct_ma_device) != ownSizeof(struct_ma_device_553648666):
      static :
        warning("Declaration of " & "struct_ma_device" &
            " exists but with different size")
    struct_ma_device
  else:
    struct_ma_device_553648666)
  ma_dither_mode_553648696 = (when declared(ma_dither_mode):
    when ownSizeof(ma_dither_mode) != ownSizeof(ma_dither_mode_553648695):
      static :
        warning("Declaration of " & "ma_dither_mode" &
            " exists but with different size")
    ma_dither_mode
  else:
    ma_dither_mode_553648695)
  struct_ma_channel_converter_553648996 = (when declared(
      struct_ma_channel_converter):
    when ownSizeof(struct_ma_channel_converter) !=
        ownSizeof(struct_ma_channel_converter_553648995):
      static :
        warning("Declaration of " & "struct_ma_channel_converter" &
            " exists but with different size")
    struct_ma_channel_converter
  else:
    struct_ma_channel_converter_553648995)
  ma_data_converter_execution_path_553649006 = (when declared(
      ma_data_converter_execution_path):
    when ownSizeof(ma_data_converter_execution_path) !=
        ownSizeof(ma_data_converter_execution_path_553649005):
      static :
        warning("Declaration of " & "ma_data_converter_execution_path" &
            " exists but with different size")
    ma_data_converter_execution_path
  else:
    ma_data_converter_execution_path_553649005)
  ma_tell_proc_553649256 = (when declared(ma_tell_proc):
    when ownSizeof(ma_tell_proc) != ownSizeof(ma_tell_proc_553649255):
      static :
        warning("Declaration of " & "ma_tell_proc" &
            " exists but with different size")
    ma_tell_proc
  else:
    ma_tell_proc_553649255)
  ma_resource_manager_data_source_config_553649372 = (when declared(
      ma_resource_manager_data_source_config):
    when ownSizeof(ma_resource_manager_data_source_config) !=
        ownSizeof(ma_resource_manager_data_source_config_553649371):
      static :
        warning("Declaration of " & "ma_resource_manager_data_source_config" &
            " exists but with different size")
    ma_resource_manager_data_source_config
  else:
    ma_resource_manager_data_source_config_553649371)
  ma_thread_priority_553648750 = (when declared(ma_thread_priority):
    when ownSizeof(ma_thread_priority) != ownSizeof(ma_thread_priority_553648749):
      static :
        warning("Declaration of " & "ma_thread_priority" &
            " exists but with different size")
    ma_thread_priority
  else:
    ma_thread_priority_553648749)
  struct_ma_data_source_base_553649024 = (when declared(
      struct_ma_data_source_base):
    when ownSizeof(struct_ma_data_source_base) !=
        ownSizeof(struct_ma_data_source_base_553649023):
      static :
        warning("Declaration of " & "struct_ma_data_source_base" &
            " exists but with different size")
    struct_ma_data_source_base
  else:
    struct_ma_data_source_base_553649023)
  struct_ma_paged_audio_buffer_553649052 = (when declared(
      struct_ma_paged_audio_buffer):
    when ownSizeof(struct_ma_paged_audio_buffer) !=
        ownSizeof(struct_ma_paged_audio_buffer_553649051):
      static :
        warning("Declaration of " & "struct_ma_paged_audio_buffer" &
            " exists but with different size")
    struct_ma_paged_audio_buffer
  else:
    struct_ma_paged_audio_buffer_553649051)
  struct_ma_resource_manager_pipeline_stage_notification_553649358 = (when declared(
      struct_ma_resource_manager_pipeline_stage_notification):
    when ownSizeof(struct_ma_resource_manager_pipeline_stage_notification) !=
        ownSizeof(struct_ma_resource_manager_pipeline_stage_notification_553649357):
      static :
        warning("Declaration of " &
            "struct_ma_resource_manager_pipeline_stage_notification" &
            " exists but with different size")
    struct_ma_resource_manager_pipeline_stage_notification
  else:
    struct_ma_resource_manager_pipeline_stage_notification_553649357)
  struct_ma_data_source_vtable_553649014 = (when declared(
      struct_ma_data_source_vtable):
    when ownSizeof(struct_ma_data_source_vtable) !=
        ownSizeof(struct_ma_data_source_vtable_553649013):
      static :
        warning("Declaration of " & "struct_ma_data_source_vtable" &
            " exists but with different size")
    struct_ma_data_source_vtable
  else:
    struct_ma_data_source_vtable_553649013)
  ma_positioning_553648936 = (when declared(ma_positioning):
    when ownSizeof(ma_positioning) != ownSizeof(ma_positioning_553648935):
      static :
        warning("Declaration of " & "ma_positioning" &
            " exists but with different size")
    ma_positioning
  else:
    ma_positioning_553648935)
  ma_log_callback_553648768 = (when declared(ma_log_callback):
    when ownSizeof(ma_log_callback) != ownSizeof(ma_log_callback_553648767):
      static :
        warning("Declaration of " & "ma_log_callback" &
            " exists but with different size")
    ma_log_callback
  else:
    ma_log_callback_553648767)
  ma_device_id_553649200 = (when declared(ma_device_id):
    when ownSizeof(ma_device_id) != ownSizeof(ma_device_id_553649199):
      static :
        warning("Declaration of " & "ma_device_id" &
            " exists but with different size")
    ma_device_id
  else:
    ma_device_id_553649199)
  ma_node_state_553649402 = (when declared(ma_node_state):
    when ownSizeof(ma_node_state) != ownSizeof(ma_node_state_553649401):
      static :
        warning("Declaration of " & "ma_node_state" &
            " exists but with different size")
    ma_node_state
  else:
    ma_node_state_553649401)
  struct_ma_spatializer_listener_config_553648942 = (when declared(
      struct_ma_spatializer_listener_config):
    when ownSizeof(struct_ma_spatializer_listener_config) !=
        ownSizeof(struct_ma_spatializer_listener_config_553648941):
      static :
        warning("Declaration of " & "struct_ma_spatializer_listener_config" &
            " exists but with different size")
    struct_ma_spatializer_listener_config
  else:
    struct_ma_spatializer_listener_config_553648941)
  ma_delay_553648892 = (when declared(ma_delay):
    when ownSizeof(ma_delay) != ownSizeof(ma_delay_553648891):
      static :
        warning("Declaration of " & "ma_delay" &
            " exists but with different size")
    ma_delay
  else:
    ma_delay_553648891)
  struct_ma_device_notification_553649140 = (when declared(
      struct_ma_device_notification):
    when ownSizeof(struct_ma_device_notification) !=
        ownSizeof(struct_ma_device_notification_553649139):
      static :
        warning("Declaration of " & "struct_ma_device_notification" &
            " exists but with different size")
    struct_ma_device_notification
  else:
    struct_ma_device_notification_553649139)
  ma_encoding_format_553649260 = (when declared(ma_encoding_format):
    when ownSizeof(ma_encoding_format) != ownSizeof(ma_encoding_format_553649259):
      static :
        warning("Declaration of " & "ma_encoding_format" &
            " exists but with different size")
    ma_encoding_format
  else:
    ma_encoding_format_553649259)
  ma_int32_553648619 = (when declared(ma_int32):
    when ownSizeof(ma_int32) != ownSizeof(ma_int32_553648618):
      static :
        warning("Declaration of " & "ma_int32" &
            " exists but with different size")
    ma_int32
  else:
    ma_int32_553648618)
  struct_ma_engine_config_553649556 = (when declared(struct_ma_engine_config):
    when ownSizeof(struct_ma_engine_config) !=
        ownSizeof(struct_ma_engine_config_553649555):
      static :
        warning("Declaration of " & "struct_ma_engine_config" &
            " exists but with different size")
    struct_ma_engine_config
  else:
    struct_ma_engine_config_553649555)
  ma_node_output_bus_553649412 = (when declared(ma_node_output_bus):
    when ownSizeof(ma_node_output_bus) != ownSizeof(ma_node_output_bus_553649411):
      static :
        warning("Declaration of " & "ma_node_output_bus" &
            " exists but with different size")
    ma_node_output_bus
  else:
    ma_node_output_bus_553649411)
  enum_ma_thread_priority_553648748 = (when declared(enum_ma_thread_priority):
    when ownSizeof(enum_ma_thread_priority) !=
        ownSizeof(enum_ma_thread_priority_553648747):
      static :
        warning("Declaration of " & "enum_ma_thread_priority" &
            " exists but with different size")
    enum_ma_thread_priority
  else:
    enum_ma_thread_priority_553648747)
  ma_peak2_config_553648858 = (when declared(ma_peak2_config):
    when ownSizeof(ma_peak2_config) != ownSizeof(ma_peak2_config_553648857):
      static :
        warning("Declaration of " & "ma_peak2_config" &
            " exists but with different size")
    ma_peak2_config
  else:
    ma_peak2_config_553648857)
  struct_ma_device_job_thread_config_553649128 = (when declared(
      struct_ma_device_job_thread_config):
    when ownSizeof(struct_ma_device_job_thread_config) !=
        ownSizeof(struct_ma_device_job_thread_config_553649127):
      static :
        warning("Declaration of " & "struct_ma_device_job_thread_config" &
            " exists but with different size")
    struct_ma_device_job_thread_config
  else:
    struct_ma_device_job_thread_config_553649127)
  ma_decoder_tell_proc_553649278 = (when declared(ma_decoder_tell_proc):
    when ownSizeof(ma_decoder_tell_proc) != ownSizeof(ma_decoder_tell_proc_553649277):
      static :
        warning("Declaration of " & "ma_decoder_tell_proc" &
            " exists but with different size")
    ma_decoder_tell_proc
  else:
    ma_decoder_tell_proc_553649277)
  enum_ma_engine_node_type_553649528 = (when declared(enum_ma_engine_node_type):
    when ownSizeof(enum_ma_engine_node_type) !=
        ownSizeof(enum_ma_engine_node_type_553649527):
      static :
        warning("Declaration of " & "enum_ma_engine_node_type" &
            " exists but with different size")
    enum_ma_engine_node_type
  else:
    enum_ma_engine_node_type_553649527)
  struct_ma_atomic_bool32_553648742 = (when declared(struct_ma_atomic_bool32):
    when ownSizeof(struct_ma_atomic_bool32) !=
        ownSizeof(struct_ma_atomic_bool32_553648741):
      static :
        warning("Declaration of " & "struct_ma_atomic_bool32" &
            " exists but with different size")
    struct_ma_atomic_bool32
  else:
    struct_ma_atomic_bool32_553648741)
  ma_duplex_rb_553649066 = (when declared(ma_duplex_rb):
    when ownSizeof(ma_duplex_rb) != ownSizeof(ma_duplex_rb_553649065):
      static :
        warning("Declaration of " & "ma_duplex_rb" &
            " exists but with different size")
    ma_duplex_rb
  else:
    ma_duplex_rb_553649065)
  ma_vfs_file_553649230 = (when declared(ma_vfs_file):
    when ownSizeof(ma_vfs_file) != ownSizeof(ma_vfs_file_553649229):
      static :
        warning("Declaration of " & "ma_vfs_file" &
            " exists but with different size")
    ma_vfs_file
  else:
    ma_vfs_file_553649229)
  ma_encoder_config_553649300 = (when declared(ma_encoder_config):
    when ownSizeof(ma_encoder_config) != ownSizeof(ma_encoder_config_553649299):
      static :
        warning("Declaration of " & "ma_encoder_config" &
            " exists but with different size")
    ma_encoder_config
  else:
    ma_encoder_config_553649299)
  struct_ma_node_output_bus_553649414 = (when declared(struct_ma_node_output_bus):
    when ownSizeof(struct_ma_node_output_bus) !=
        ownSizeof(struct_ma_node_output_bus_553649413):
      static :
        warning("Declaration of " & "struct_ma_node_output_bus" &
            " exists but with different size")
    struct_ma_node_output_bus
  else:
    struct_ma_node_output_bus_553649413)
  ma_lpf_553648806 = (when declared(ma_lpf):
    when ownSizeof(ma_lpf) != ownSizeof(ma_lpf_553648805):
      static :
        warning("Declaration of " & "ma_lpf" & " exists but with different size")
    ma_lpf
  else:
    ma_lpf_553648805)
  ma_hpf_node_553649466 = (when declared(ma_hpf_node):
    when ownSizeof(ma_hpf_node) != ownSizeof(ma_hpf_node_553649465):
      static :
        warning("Declaration of " & "ma_hpf_node" &
            " exists but with different size")
    ma_hpf_node
  else:
    ma_hpf_node_553649465)
  ma_pulsewave_config_553649316 = (when declared(ma_pulsewave_config):
    when ownSizeof(ma_pulsewave_config) != ownSizeof(ma_pulsewave_config_553649315):
      static :
        warning("Declaration of " & "ma_pulsewave_config" &
            " exists but with different size")
    ma_pulsewave_config
  else:
    ma_pulsewave_config_553649315)
  ma_job_queue_config_553648607 = (when declared(ma_job_queue_config):
    when ownSizeof(ma_job_queue_config) != ownSizeof(ma_job_queue_config_553648606):
      static :
        warning("Declaration of " & "ma_job_queue_config" &
            " exists but with different size")
    ma_job_queue_config
  else:
    ma_job_queue_config_553648606)
  struct_ma_decoder_config_553649280 = (when declared(struct_ma_decoder_config):
    when ownSizeof(struct_ma_decoder_config) !=
        ownSizeof(struct_ma_decoder_config_553649279):
      static :
        warning("Declaration of " & "struct_ma_decoder_config" &
            " exists but with different size")
    struct_ma_decoder_config
  else:
    struct_ma_decoder_config_553649279)
  struct_ma_hpf2_553648818 = (when declared(struct_ma_hpf2):
    when ownSizeof(struct_ma_hpf2) != ownSizeof(struct_ma_hpf2_553648817):
      static :
        warning("Declaration of " & "struct_ma_hpf2" &
            " exists but with different size")
    struct_ma_hpf2
  else:
    struct_ma_hpf2_553648817)
  struct_ma_pcm_rb_553649060 = (when declared(struct_ma_pcm_rb):
    when ownSizeof(struct_ma_pcm_rb) != ownSizeof(struct_ma_pcm_rb_553649059):
      static :
        warning("Declaration of " & "struct_ma_pcm_rb" &
            " exists but with different size")
    struct_ma_pcm_rb
  else:
    struct_ma_pcm_rb_553649059)
  struct_ma_decoder_553649264 = (when declared(struct_ma_decoder):
    when ownSizeof(struct_ma_decoder) != ownSizeof(struct_ma_decoder_553649263):
      static :
        warning("Declaration of " & "struct_ma_decoder" &
            " exists but with different size")
    struct_ma_decoder
  else:
    struct_ma_decoder_553649263)
  ma_resource_manager_553649334 = (when declared(ma_resource_manager):
    when ownSizeof(ma_resource_manager) != ownSizeof(ma_resource_manager_553649333):
      static :
        warning("Declaration of " & "ma_resource_manager" &
            " exists but with different size")
    ma_resource_manager
  else:
    ma_resource_manager_553649333)
  ma_spatializer_553648956 = (when declared(ma_spatializer):
    when ownSizeof(ma_spatializer) != ownSizeof(ma_spatializer_553648955):
      static :
        warning("Declaration of " & "ma_spatializer" &
            " exists but with different size")
    ma_spatializer
  else:
    ma_spatializer_553648955)
  ma_channel_553648669 = (when declared(ma_channel):
    when ownSizeof(ma_channel) != ownSizeof(ma_channel_553648668):
      static :
        warning("Declaration of " & "ma_channel" &
            " exists but with different size")
    ma_channel
  else:
    ma_channel_553648668)
  struct_ma_resampler_553648980 = (when declared(struct_ma_resampler):
    when ownSizeof(struct_ma_resampler) != ownSizeof(struct_ma_resampler_553648979):
      static :
        warning("Declaration of " & "struct_ma_resampler" &
            " exists but with different size")
    struct_ma_resampler
  else:
    struct_ma_resampler_553648979)
  struct_ma_audio_buffer_ref_553649028 = (when declared(
      struct_ma_audio_buffer_ref):
    when ownSizeof(struct_ma_audio_buffer_ref) !=
        ownSizeof(struct_ma_audio_buffer_ref_553649027):
      static :
        warning("Declaration of " & "struct_ma_audio_buffer_ref" &
            " exists but with different size")
    struct_ma_audio_buffer_ref
  else:
    struct_ma_audio_buffer_ref_553649027)
  ma_splitter_node_553649442 = (when declared(ma_splitter_node):
    when ownSizeof(ma_splitter_node) != ownSizeof(ma_splitter_node_553649441):
      static :
        warning("Declaration of " & "ma_splitter_node" &
            " exists but with different size")
    ma_splitter_node
  else:
    ma_splitter_node_553649441)
  ma_engine_node_config_553649534 = (when declared(ma_engine_node_config):
    when ownSizeof(ma_engine_node_config) != ownSizeof(ma_engine_node_config_553649533):
      static :
        warning("Declaration of " & "ma_engine_node_config" &
            " exists but with different size")
    ma_engine_node_config
  else:
    ma_engine_node_config_553649533)
  ma_result_553648677 = (when declared(ma_result):
    when ownSizeof(ma_result) != ownSizeof(ma_result_553648676):
      static :
        warning("Declaration of " & "ma_result" &
            " exists but with different size")
    ma_result
  else:
    ma_result_553648676)
  ma_sound_end_proc_553649540 = (when declared(ma_sound_end_proc):
    when ownSizeof(ma_sound_end_proc) != ownSizeof(ma_sound_end_proc_553649539):
      static :
        warning("Declaration of " & "ma_sound_end_proc" &
            " exists but with different size")
    ma_sound_end_proc
  else:
    ma_sound_end_proc_553649539)
  ma_spatializer_listener_config_553648944 = (when declared(
      ma_spatializer_listener_config):
    when ownSizeof(ma_spatializer_listener_config) !=
        ownSizeof(ma_spatializer_listener_config_553648943):
      static :
        warning("Declaration of " & "ma_spatializer_listener_config" &
            " exists but with different size")
    ma_spatializer_listener_config
  else:
    ma_spatializer_listener_config_553648943)
  enum_ma_format_553648698 = (when declared(enum_ma_format):
    when ownSizeof(enum_ma_format) != ownSizeof(enum_ma_format_553648697):
      static :
        warning("Declaration of " & "enum_ma_format" &
            " exists but with different size")
    enum_ma_format
  else:
    enum_ma_format_553648697)
  compiler_atomic_wide_counter_553649570 = (when declared(
      compiler_atomic_wide_counter):
    when ownSizeof(compiler_atomic_wide_counter) !=
        ownSizeof(compiler_atomic_wide_counter_553649569):
      static :
        warning("Declaration of " & "compiler_atomic_wide_counter" &
            " exists but with different size")
    compiler_atomic_wide_counter
  else:
    compiler_atomic_wide_counter_553649569)
  ma_gainer_553648900 = (when declared(ma_gainer):
    when ownSizeof(ma_gainer) != ownSizeof(ma_gainer_553648899):
      static :
        warning("Declaration of " & "ma_gainer" &
            " exists but with different size")
    ma_gainer
  else:
    ma_gainer_553648899)
  ma_notch_node_553649482 = (when declared(ma_notch_node):
    when ownSizeof(ma_notch_node) != ownSizeof(ma_notch_node_553649481):
      static :
        warning("Declaration of " & "ma_notch_node" &
            " exists but with different size")
    ma_notch_node
  else:
    ma_notch_node_553649481)
  enum_ma_encoding_format_553649258 = (when declared(enum_ma_encoding_format):
    when ownSizeof(enum_ma_encoding_format) !=
        ownSizeof(enum_ma_encoding_format_553649257):
      static :
        warning("Declaration of " & "enum_ma_encoding_format" &
            " exists but with different size")
    enum_ma_encoding_format
  else:
    enum_ma_encoding_format_553649257)
  ma_splitter_node_config_553649438 = (when declared(ma_splitter_node_config):
    when ownSizeof(ma_splitter_node_config) !=
        ownSizeof(ma_splitter_node_config_553649437):
      static :
        warning("Declaration of " & "ma_splitter_node_config" &
            " exists but with different size")
    ma_splitter_node_config
  else:
    ma_splitter_node_config_553649437)
  ma_delay_config_553648888 = (when declared(ma_delay_config):
    when ownSizeof(ma_delay_config) != ownSizeof(ma_delay_config_553648887):
      static :
        warning("Declaration of " & "ma_delay_config" &
            " exists but with different size")
    ma_delay_config
  else:
    ma_delay_config_553648887)
  enum_ma_channel_conversion_path_553648984 = (when declared(
      enum_ma_channel_conversion_path):
    when ownSizeof(enum_ma_channel_conversion_path) !=
        ownSizeof(enum_ma_channel_conversion_path_553648983):
      static :
        warning("Declaration of " & "enum_ma_channel_conversion_path" &
            " exists but with different size")
    enum_ma_channel_conversion_path
  else:
    enum_ma_channel_conversion_path_553648983)
  struct_ma_context_config_553649204 = (when declared(struct_ma_context_config):
    when ownSizeof(struct_ma_context_config) !=
        ownSizeof(struct_ma_context_config_553649203):
      static :
        warning("Declaration of " & "struct_ma_context_config" &
            " exists but with different size")
    struct_ma_context_config
  else:
    struct_ma_context_config_553649203)
  ma_stop_proc_553649148 = (when declared(ma_stop_proc):
    when ownSizeof(ma_stop_proc) != ownSizeof(ma_stop_proc_553649147):
      static :
        warning("Declaration of " & "ma_stop_proc" &
            " exists but with different size")
    ma_stop_proc
  else:
    ma_stop_proc_553649147)
  ma_bool32_553648631 = (when declared(ma_bool32):
    when ownSizeof(ma_bool32) != ownSizeof(ma_bool32_553648630):
      static :
        warning("Declaration of " & "ma_bool32" &
            " exists but with different size")
    ma_bool32
  else:
    ma_bool32_553648630)
  ma_context_553648661 = (when declared(ma_context):
    when ownSizeof(ma_context) != ownSizeof(ma_context_553648660):
      static :
        warning("Declaration of " & "ma_context" &
            " exists but with different size")
    ma_context
  else:
    ma_context_553648660)
  ma_biquad_config_553648780 = (when declared(ma_biquad_config):
    when ownSizeof(ma_biquad_config) != ownSizeof(ma_biquad_config_553648779):
      static :
        warning("Declaration of " & "ma_biquad_config" &
            " exists but with different size")
    ma_biquad_config
  else:
    ma_biquad_config_553648779)
  struct_ma_hpf1_config_553648808 = (when declared(struct_ma_hpf1_config):
    when ownSizeof(struct_ma_hpf1_config) != ownSizeof(struct_ma_hpf1_config_553648807):
      static :
        warning("Declaration of " & "struct_ma_hpf1_config" &
            " exists but with different size")
    struct_ma_hpf1_config
  else:
    struct_ma_hpf1_config_553648807)
  struct_ma_job_queue_config_553649112 = (when declared(
      struct_ma_job_queue_config):
    when ownSizeof(struct_ma_job_queue_config) !=
        ownSizeof(struct_ma_job_queue_config_553649111):
      static :
        warning("Declaration of " & "struct_ma_job_queue_config" &
            " exists but with different size")
    struct_ma_job_queue_config
  else:
    struct_ma_job_queue_config_553649111)
  struct_ma_decoding_backend_vtable_553649270 = (when declared(
      struct_ma_decoding_backend_vtable):
    when ownSizeof(struct_ma_decoding_backend_vtable) !=
        ownSizeof(struct_ma_decoding_backend_vtable_553649269):
      static :
        warning("Declaration of " & "struct_ma_decoding_backend_vtable" &
            " exists but with different size")
    struct_ma_decoding_backend_vtable
  else:
    struct_ma_decoding_backend_vtable_553649269)
  struct_ma_node_graph_config_553649424 = (when declared(
      struct_ma_node_graph_config):
    when ownSizeof(struct_ma_node_graph_config) !=
        ownSizeof(struct_ma_node_graph_config_553649423):
      static :
        warning("Declaration of " & "struct_ma_node_graph_config" &
            " exists but with different size")
    struct_ma_node_graph_config
  else:
    struct_ma_node_graph_config_553649423)
  ma_peak_node_553649490 = (when declared(ma_peak_node):
    when ownSizeof(ma_peak_node) != ownSizeof(ma_peak_node_553649489):
      static :
        warning("Declaration of " & "ma_peak_node" &
            " exists but with different size")
    ma_peak_node
  else:
    ma_peak_node_553649489)
  ma_resampler_config_553648966 = (when declared(ma_resampler_config):
    when ownSizeof(ma_resampler_config) != ownSizeof(ma_resampler_config_553648965):
      static :
        warning("Declaration of " & "ma_resampler_config" &
            " exists but with different size")
    ma_resampler_config
  else:
    ma_resampler_config_553648965)
  struct_ma_notch2_config_553648846 = (when declared(struct_ma_notch2_config):
    when ownSizeof(struct_ma_notch2_config) !=
        ownSizeof(struct_ma_notch2_config_553648845):
      static :
        warning("Declaration of " & "struct_ma_notch2_config" &
            " exists but with different size")
    struct_ma_notch2_config
  else:
    struct_ma_notch2_config_553648845)
  ma_notch2_553648854 = (when declared(ma_notch2):
    when ownSizeof(ma_notch2) != ownSizeof(ma_notch2_553648853):
      static :
        warning("Declaration of " & "ma_notch2" &
            " exists but with different size")
    ma_notch2
  else:
    ma_notch2_553648853)
  ma_hpf_node_config_553649462 = (when declared(ma_hpf_node_config):
    when ownSizeof(ma_hpf_node_config) != ownSizeof(ma_hpf_node_config_553649461):
      static :
        warning("Declaration of " & "ma_hpf_node_config" &
            " exists but with different size")
    ma_hpf_node_config
  else:
    ma_hpf_node_config_553649461)
  ma_device_config_553649206 = (when declared(ma_device_config):
    when ownSizeof(ma_device_config) != ownSizeof(ma_device_config_553649205):
      static :
        warning("Declaration of " & "ma_device_config" &
            " exists but with different size")
    ma_device_config
  else:
    ma_device_config_553649205)
  ma_sound_group_config_553649550 = (when declared(ma_sound_group_config):
    when ownSizeof(ma_sound_group_config) != ownSizeof(ma_sound_group_config_553649549):
      static :
        warning("Declaration of " & "ma_sound_group_config" &
            " exists but with different size")
    ma_sound_group_config
  else:
    ma_sound_group_config_553649549)
  pthread_mutex_t_553648649 = (when declared(pthread_mutex_t):
    when ownSizeof(pthread_mutex_t) != ownSizeof(pthread_mutex_t_553648648):
      static :
        warning("Declaration of " & "pthread_mutex_t" &
            " exists but with different size")
    pthread_mutex_t
  else:
    pthread_mutex_t_553648648)
  ma_lpf1_config_553648788 = (when declared(ma_lpf1_config):
    when ownSizeof(ma_lpf1_config) != ownSizeof(ma_lpf1_config_553648787):
      static :
        warning("Declaration of " & "ma_lpf1_config" &
            " exists but with different size")
    ma_lpf1_config
  else:
    ma_lpf1_config_553648787)
  struct_ma_biquad_node_553649448 = (when declared(struct_ma_biquad_node):
    when ownSizeof(struct_ma_biquad_node) != ownSizeof(struct_ma_biquad_node_553649447):
      static :
        warning("Declaration of " & "struct_ma_biquad_node" &
            " exists but with different size")
    struct_ma_biquad_node
  else:
    struct_ma_biquad_node_553649447)
  struct_ma_node_base_553649422 = (when declared(struct_ma_node_base):
    when ownSizeof(struct_ma_node_base) != ownSizeof(struct_ma_node_base_553649421):
      static :
        warning("Declaration of " & "struct_ma_node_base" &
            " exists but with different size")
    struct_ma_node_base
  else:
    struct_ma_node_base_553649421)
  union_atomic_wide_counter_553649574 = (when declared(union_atomic_wide_counter):
    when ownSizeof(union_atomic_wide_counter) !=
        ownSizeof(union_atomic_wide_counter_553649573):
      static :
        warning("Declaration of " & "union_atomic_wide_counter" &
            " exists but with different size")
    union_atomic_wide_counter
  else:
    union_atomic_wide_counter_553649573)
  ma_fence_553649070 = (when declared(ma_fence):
    when ownSizeof(ma_fence) != ownSizeof(ma_fence_553649069):
      static :
        warning("Declaration of " & "ma_fence" &
            " exists but with different size")
    ma_fence
  else:
    ma_fence_553649069)
  ma_hpf1_553648816 = (when declared(ma_hpf1):
    when ownSizeof(ma_hpf1) != ownSizeof(ma_hpf1_553648815):
      static :
        warning("Declaration of " & "ma_hpf1" &
            " exists but with different size")
    ma_hpf1
  else:
    ma_hpf1_553648815)
  struct_ma_resource_manager_pipeline_notifications_553649362 = (when declared(
      struct_ma_resource_manager_pipeline_notifications):
    when ownSizeof(struct_ma_resource_manager_pipeline_notifications) !=
        ownSizeof(struct_ma_resource_manager_pipeline_notifications_553649361):
      static :
        warning("Declaration of " &
            "struct_ma_resource_manager_pipeline_notifications" &
            " exists but with different size")
    struct_ma_resource_manager_pipeline_notifications
  else:
    struct_ma_resource_manager_pipeline_notifications_553649361)
  ma_device_data_proc_553649146 = (when declared(ma_device_data_proc):
    when ownSizeof(ma_device_data_proc) != ownSizeof(ma_device_data_proc_553649145):
      static :
        warning("Declaration of " & "ma_device_data_proc" &
            " exists but with different size")
    ma_device_data_proc
  else:
    ma_device_data_proc_553649145)
  ma_hishelf2_config_553648878 = (when declared(ma_hishelf2_config):
    when ownSizeof(ma_hishelf2_config) != ownSizeof(ma_hishelf2_config_553648877):
      static :
        warning("Declaration of " & "ma_hishelf2_config" &
            " exists but with different size")
    ma_hishelf2_config
  else:
    ma_hishelf2_config_553648877)
  ma_device_job_thread_553649134 = (when declared(ma_device_job_thread):
    when ownSizeof(ma_device_job_thread) != ownSizeof(ma_device_job_thread_553649133):
      static :
        warning("Declaration of " & "ma_device_job_thread" &
            " exists but with different size")
    ma_device_job_thread
  else:
    ma_device_job_thread_553649133)
  ma_bool8_553648629 = (when declared(ma_bool8):
    when ownSizeof(ma_bool8) != ownSizeof(ma_bool8_553648628):
      static :
        warning("Declaration of " & "ma_bool8" &
            " exists but with different size")
    ma_bool8
  else:
    ma_bool8_553648628)
  ma_aaudio_usage_553649180 = (when declared(ma_aaudio_usage):
    when ownSizeof(ma_aaudio_usage) != ownSizeof(ma_aaudio_usage_553649179):
      static :
        warning("Declaration of " & "ma_aaudio_usage" &
            " exists but with different size")
    ma_aaudio_usage
  else:
    ma_aaudio_usage_553649179)
  ma_node_config_553649410 = (when declared(ma_node_config):
    when ownSizeof(ma_node_config) != ownSizeof(ma_node_config_553649409):
      static :
        warning("Declaration of " & "ma_node_config" &
            " exists but with different size")
    ma_node_config
  else:
    ma_node_config_553649409)
  ma_lpf_node_config_553649454 = (when declared(ma_lpf_node_config):
    when ownSizeof(ma_lpf_node_config) != ownSizeof(ma_lpf_node_config_553649453):
      static :
        warning("Declaration of " & "ma_lpf_node_config" &
            " exists but with different size")
    ma_lpf_node_config
  else:
    ma_lpf_node_config_553649453)
  ma_uint16_553648617 = (when declared(ma_uint16):
    when ownSizeof(ma_uint16) != ownSizeof(ma_uint16_553648616):
      static :
        warning("Declaration of " & "ma_uint16" &
            " exists but with different size")
    ma_uint16
  else:
    ma_uint16_553648616)
  ma_lpf2_553648798 = (when declared(ma_lpf2):
    when ownSizeof(ma_lpf2) != ownSizeof(ma_lpf2_553648797):
      static :
        warning("Declaration of " & "ma_lpf2" &
            " exists but with different size")
    ma_lpf2
  else:
    ma_lpf2_553648797)
  struct_ma_notch_node_553649480 = (when declared(struct_ma_notch_node):
    when ownSizeof(struct_ma_notch_node) != ownSizeof(struct_ma_notch_node_553649479):
      static :
        warning("Declaration of " & "struct_ma_notch_node" &
            " exists but with different size")
    struct_ma_notch_node
  else:
    struct_ma_notch_node_553649479)
  struct_ma_atomic_int32_553648730 = (when declared(struct_ma_atomic_int32):
    when ownSizeof(struct_ma_atomic_int32) != ownSizeof(struct_ma_atomic_int32_553648729):
      static :
        warning("Declaration of " & "struct_ma_atomic_int32" &
            " exists but with different size")
    struct_ma_atomic_int32
  else:
    struct_ma_atomic_int32_553648729)
  ma_data_converter_553649010 = (when declared(ma_data_converter):
    when ownSizeof(ma_data_converter) != ownSizeof(ma_data_converter_553649009):
      static :
        warning("Declaration of " & "ma_data_converter" &
            " exists but with different size")
    ma_data_converter
  else:
    ma_data_converter_553649009)
  ma_atomic_uint64_553648736 = (when declared(ma_atomic_uint64):
    when ownSizeof(ma_atomic_uint64) != ownSizeof(ma_atomic_uint64_553648735):
      static :
        warning("Declaration of " & "ma_atomic_uint64" &
            " exists but with different size")
    ma_atomic_uint64
  else:
    ma_atomic_uint64_553648735)
  ma_hishelf_node_config_553649502 = (when declared(ma_hishelf_node_config):
    when ownSizeof(ma_hishelf_node_config) != ownSizeof(ma_hishelf_node_config_553649501):
      static :
        warning("Declaration of " & "ma_hishelf_node_config" &
            " exists but with different size")
    ma_hishelf_node_config
  else:
    ma_hishelf_node_config_553649501)
  ma_pcm_rb_553649062 = (when declared(ma_pcm_rb):
    when ownSizeof(ma_pcm_rb) != ownSizeof(ma_pcm_rb_553649061):
      static :
        warning("Declaration of " & "ma_pcm_rb" &
            " exists but with different size")
    ma_pcm_rb
  else:
    ma_pcm_rb_553649061)
  ma_thread_553648752 = (when declared(ma_thread):
    when ownSizeof(ma_thread) != ownSizeof(ma_thread_553648751):
      static :
        warning("Declaration of " & "ma_thread" &
            " exists but with different size")
    ma_thread
  else:
    ma_thread_553648751)
  struct_ma_async_notification_callbacks_553649074 = (when declared(
      struct_ma_async_notification_callbacks):
    when ownSizeof(struct_ma_async_notification_callbacks) !=
        ownSizeof(struct_ma_async_notification_callbacks_553649073):
      static :
        warning("Declaration of " & "struct_ma_async_notification_callbacks" &
            " exists but with different size")
    struct_ma_async_notification_callbacks
  else:
    struct_ma_async_notification_callbacks_553649073)
  struct_ma_async_notification_event_553649082 = (when declared(
      struct_ma_async_notification_event):
    when ownSizeof(struct_ma_async_notification_event) !=
        ownSizeof(struct_ma_async_notification_event_553649081):
      static :
        warning("Declaration of " & "struct_ma_async_notification_event" &
            " exists but with different size")
    struct_ma_async_notification_event
  else:
    struct_ma_async_notification_event_553649081)
  ma_decoder_seek_proc_553649276 = (when declared(ma_decoder_seek_proc):
    when ownSizeof(ma_decoder_seek_proc) != ownSizeof(ma_decoder_seek_proc_553649275):
      static :
        warning("Declaration of " & "ma_decoder_seek_proc" &
            " exists but with different size")
    ma_decoder_seek_proc
  else:
    ma_decoder_seek_proc_553649275)
  struct_ma_allocation_callbacks_553648718 = (when declared(
      struct_ma_allocation_callbacks):
    when ownSizeof(struct_ma_allocation_callbacks) !=
        ownSizeof(struct_ma_allocation_callbacks_553648717):
      static :
        warning("Declaration of " & "struct_ma_allocation_callbacks" &
            " exists but with different size")
    struct_ma_allocation_callbacks
  else:
    struct_ma_allocation_callbacks_553648717)
  struct_ma_waveform_553649310 = (when declared(struct_ma_waveform):
    when ownSizeof(struct_ma_waveform) != ownSizeof(struct_ma_waveform_553649309):
      static :
        warning("Declaration of " & "struct_ma_waveform" &
            " exists but with different size")
    struct_ma_waveform
  else:
    struct_ma_waveform_553649309)
  compiler_pthread_list_t_553649568 = (when declared(compiler_pthread_list_t):
    when ownSizeof(compiler_pthread_list_t) !=
        ownSizeof(compiler_pthread_list_t_553649567):
      static :
        warning("Declaration of " & "compiler_pthread_list_t" &
            " exists but with different size")
    compiler_pthread_list_t
  else:
    compiler_pthread_list_t_553649567)
  ma_lpf2_config_553648790 = (when declared(ma_lpf2_config):
    when ownSizeof(ma_lpf2_config) != ownSizeof(ma_lpf2_config_553648789):
      static :
        warning("Declaration of " & "ma_lpf2_config" &
            " exists but with different size")
    ma_lpf2_config
  else:
    ma_lpf2_config_553648789)
  ma_resource_manager_data_source_553649350 = (when declared(
      ma_resource_manager_data_source):
    when ownSizeof(ma_resource_manager_data_source) !=
        ownSizeof(ma_resource_manager_data_source_553649349):
      static :
        warning("Declaration of " & "ma_resource_manager_data_source" &
            " exists but with different size")
    ma_resource_manager_data_source
  else:
    ma_resource_manager_data_source_553649349)
  ma_encoder_write_proc_553649288 = (when declared(ma_encoder_write_proc):
    when ownSizeof(ma_encoder_write_proc) != ownSizeof(ma_encoder_write_proc_553649287):
      static :
        warning("Declaration of " & "ma_encoder_write_proc" &
            " exists but with different size")
    ma_encoder_write_proc
  else:
    ma_encoder_write_proc_553649287)
  ma_timer_553649196 = (when declared(ma_timer):
    when ownSizeof(ma_timer) != ownSizeof(ma_timer_553649195):
      static :
        warning("Declaration of " & "ma_timer" &
            " exists but with different size")
    ma_timer
  else:
    ma_timer_553649195)
  ma_opensl_stream_type_553649168 = (when declared(ma_opensl_stream_type):
    when ownSizeof(ma_opensl_stream_type) != ownSizeof(ma_opensl_stream_type_553649167):
      static :
        warning("Declaration of " & "ma_opensl_stream_type" &
            " exists but with different size")
    ma_opensl_stream_type
  else:
    ma_opensl_stream_type_553649167)
  ma_vfs_callbacks_553649246 = (when declared(ma_vfs_callbacks):
    when ownSizeof(ma_vfs_callbacks) != ownSizeof(ma_vfs_callbacks_553649245):
      static :
        warning("Declaration of " & "ma_vfs_callbacks" &
            " exists but with different size")
    ma_vfs_callbacks
  else:
    ma_vfs_callbacks_553649245)
  struct_ma_paged_audio_buffer_page_553649042 = (when declared(
      struct_ma_paged_audio_buffer_page):
    when ownSizeof(struct_ma_paged_audio_buffer_page) !=
        ownSizeof(struct_ma_paged_audio_buffer_page_553649041):
      static :
        warning("Declaration of " & "struct_ma_paged_audio_buffer_page" &
            " exists but with different size")
    struct_ma_paged_audio_buffer_page
  else:
    struct_ma_paged_audio_buffer_page_553649041)
  ma_aaudio_content_type_553649184 = (when declared(ma_aaudio_content_type):
    when ownSizeof(ma_aaudio_content_type) != ownSizeof(ma_aaudio_content_type_553649183):
      static :
        warning("Declaration of " & "ma_aaudio_content_type" &
            " exists but with different size")
    ma_aaudio_content_type
  else:
    ma_aaudio_content_type_553649183)
  enum_ma_node_flags_553649396 = (when declared(enum_ma_node_flags):
    when ownSizeof(enum_ma_node_flags) != ownSizeof(enum_ma_node_flags_553649395):
      static :
        warning("Declaration of " & "enum_ma_node_flags" &
            " exists but with different size")
    enum_ma_node_flags
  else:
    enum_ma_node_flags_553649395)
  struct_ma_encoder_553649286 = (when declared(struct_ma_encoder):
    when ownSizeof(struct_ma_encoder) != ownSizeof(struct_ma_encoder_553649285):
      static :
        warning("Declaration of " & "struct_ma_encoder" &
            " exists but with different size")
    struct_ma_encoder
  else:
    struct_ma_encoder_553649285)
  enum_ma_stream_format_553648679 = (when declared(enum_ma_stream_format):
    when ownSizeof(enum_ma_stream_format) != ownSizeof(enum_ma_stream_format_553648678):
      static :
        warning("Declaration of " & "enum_ma_stream_format" &
            " exists but with different size")
    enum_ma_stream_format
  else:
    enum_ma_stream_format_553648678)
  struct_ma_hpf_553648826 = (when declared(struct_ma_hpf):
    when ownSizeof(struct_ma_hpf) != ownSizeof(struct_ma_hpf_553648825):
      static :
        warning("Declaration of " & "struct_ma_hpf" &
            " exists but with different size")
    struct_ma_hpf
  else:
    struct_ma_hpf_553648825)
  ma_pan_mode_553648904 = (when declared(ma_pan_mode):
    when ownSizeof(ma_pan_mode) != ownSizeof(ma_pan_mode_553648903):
      static :
        warning("Declaration of " & "ma_pan_mode" &
            " exists but with different size")
    ma_pan_mode
  else:
    ma_pan_mode_553648903)
  internal_ma_channel_position_553648673 = (when declared(
      internal_ma_channel_position):
    when ownSizeof(internal_ma_channel_position) !=
        ownSizeof(internal_ma_channel_position_553648672):
      static :
        warning("Declaration of " & "internal_ma_channel_position" &
            " exists but with different size")
    internal_ma_channel_position
  else:
    internal_ma_channel_position_553648672)
  struct_ma_context_553648663 = (when declared(struct_ma_context):
    when ownSizeof(struct_ma_context) != ownSizeof(struct_ma_context_553648662):
      static :
        warning("Declaration of " & "struct_ma_context" &
            " exists but with different size")
    struct_ma_context
  else:
    struct_ma_context_553648662)
  struct_ma_data_source_node_553649432 = (when declared(
      struct_ma_data_source_node):
    when ownSizeof(struct_ma_data_source_node) !=
        ownSizeof(struct_ma_data_source_node_553649431):
      static :
        warning("Declaration of " & "struct_ma_data_source_node" &
            " exists but with different size")
    struct_ma_data_source_node
  else:
    struct_ma_data_source_node_553649431)
  ma_hishelf_node_553649506 = (when declared(ma_hishelf_node):
    when ownSizeof(ma_hishelf_node) != ownSizeof(ma_hishelf_node_553649505):
      static :
        warning("Declaration of " & "ma_hishelf_node" &
            " exists but with different size")
    ma_hishelf_node
  else:
    ma_hishelf_node_553649505)
  struct_ma_delay_553648890 = (when declared(struct_ma_delay):
    when ownSizeof(struct_ma_delay) != ownSizeof(struct_ma_delay_553648889):
      static :
        warning("Declaration of " & "struct_ma_delay" &
            " exists but with different size")
    struct_ma_delay
  else:
    struct_ma_delay_553648889)
  ma_engine_553649516 = (when declared(ma_engine):
    when ownSizeof(ma_engine) != ownSizeof(ma_engine_553649515):
      static :
        warning("Declaration of " & "ma_engine" &
            " exists but with different size")
    ma_engine
  else:
    ma_engine_553649515)
  ma_engine_node_553649538 = (when declared(ma_engine_node):
    when ownSizeof(ma_engine_node) != ownSizeof(ma_engine_node_553649537):
      static :
        warning("Declaration of " & "ma_engine_node" &
            " exists but with different size")
    ma_engine_node
  else:
    ma_engine_node_553649537)
  ma_allocation_callbacks_553648720 = (when declared(ma_allocation_callbacks):
    when ownSizeof(ma_allocation_callbacks) !=
        ownSizeof(ma_allocation_callbacks_553648719):
      static :
        warning("Declaration of " & "ma_allocation_callbacks" &
            " exists but with different size")
    ma_allocation_callbacks
  else:
    ma_allocation_callbacks_553648719)
  ma_mono_expansion_mode_553648990 = (when declared(ma_mono_expansion_mode):
    when ownSizeof(ma_mono_expansion_mode) != ownSizeof(ma_mono_expansion_mode_553648989):
      static :
        warning("Declaration of " & "ma_mono_expansion_mode" &
            " exists but with different size")
    ma_mono_expansion_mode
  else:
    ma_mono_expansion_mode_553648989)
  ma_encoder_seek_proc_553649290 = (when declared(ma_encoder_seek_proc):
    when ownSizeof(ma_encoder_seek_proc) != ownSizeof(ma_encoder_seek_proc_553649289):
      static :
        warning("Declaration of " & "ma_encoder_seek_proc" &
            " exists but with different size")
    ma_encoder_seek_proc
  else:
    ma_encoder_seek_proc_553649289)
  ma_job_queue_553648609 = (when declared(ma_job_queue):
    when ownSizeof(ma_job_queue) != ownSizeof(ma_job_queue_553648608):
      static :
        warning("Declaration of " & "ma_job_queue" &
            " exists but with different size")
    ma_job_queue
  else:
    ma_job_queue_553648608)
  ma_lcg_553648724 = (when declared(ma_lcg):
    when ownSizeof(ma_lcg) != ownSizeof(ma_lcg_553648723):
      static :
        warning("Declaration of " & "ma_lcg" & " exists but with different size")
    ma_lcg
  else:
    ma_lcg_553648723)
  enum_ma_ios_session_category_option_553649162 = (when declared(
      enum_ma_ios_session_category_option):
    when ownSizeof(enum_ma_ios_session_category_option) !=
        ownSizeof(enum_ma_ios_session_category_option_553649161):
      static :
        warning("Declaration of " & "enum_ma_ios_session_category_option" &
            " exists but with different size")
    enum_ma_ios_session_category_option
  else:
    enum_ma_ios_session_category_option_553649161)
  ma_encoder_write_pcm_frames_proc_553649296 = (when declared(
      ma_encoder_write_pcm_frames_proc):
    when ownSizeof(ma_encoder_write_pcm_frames_proc) !=
        ownSizeof(ma_encoder_write_pcm_frames_proc_553649295):
      static :
        warning("Declaration of " & "ma_encoder_write_pcm_frames_proc" &
            " exists but with different size")
    ma_encoder_write_pcm_frames_proc
  else:
    ma_encoder_write_pcm_frames_proc_553649295)
  ma_default_vfs_553649250 = (when declared(ma_default_vfs):
    when ownSizeof(ma_default_vfs) != ownSizeof(ma_default_vfs_553649249):
      static :
        warning("Declaration of " & "ma_default_vfs" &
            " exists but with different size")
    ma_default_vfs
  else:
    ma_default_vfs_553649249)
  struct_ma_backend_callbacks_553649212 = (when declared(
      struct_ma_backend_callbacks):
    when ownSizeof(struct_ma_backend_callbacks) !=
        ownSizeof(struct_ma_backend_callbacks_553649211):
      static :
        warning("Declaration of " & "struct_ma_backend_callbacks" &
            " exists but with different size")
    struct_ma_backend_callbacks
  else:
    struct_ma_backend_callbacks_553649211)
  ma_resource_manager_data_buffer_553649342 = (when declared(
      ma_resource_manager_data_buffer):
    when ownSizeof(ma_resource_manager_data_buffer) !=
        ownSizeof(ma_resource_manager_data_buffer_553649341):
      static :
        warning("Declaration of " & "ma_resource_manager_data_buffer" &
            " exists but with different size")
    ma_resource_manager_data_buffer
  else:
    ma_resource_manager_data_buffer_553649341)
  struct_ma_delay_node_config_553649508 = (when declared(
      struct_ma_delay_node_config):
    when ownSizeof(struct_ma_delay_node_config) !=
        ownSizeof(struct_ma_delay_node_config_553649507):
      static :
        warning("Declaration of " & "struct_ma_delay_node_config" &
            " exists but with different size")
    struct_ma_delay_node_config
  else:
    struct_ma_delay_node_config_553649507)
  struct_ma_resampler_config_553648968 = (when declared(
      struct_ma_resampler_config):
    when ownSizeof(struct_ma_resampler_config) !=
        ownSizeof(struct_ma_resampler_config_553648967):
      static :
        warning("Declaration of " & "struct_ma_resampler_config" &
            " exists but with different size")
    struct_ma_resampler_config
  else:
    struct_ma_resampler_config_553648967)
  ma_linear_resampler_config_553648960 = (when declared(
      ma_linear_resampler_config):
    when ownSizeof(ma_linear_resampler_config) !=
        ownSizeof(ma_linear_resampler_config_553648959):
      static :
        warning("Declaration of " & "ma_linear_resampler_config" &
            " exists but with different size")
    ma_linear_resampler_config
  else:
    ma_linear_resampler_config_553648959)
  ma_lpf1_553648794 = (when declared(ma_lpf1):
    when ownSizeof(ma_lpf1) != ownSizeof(ma_lpf1_553648793):
      static :
        warning("Declaration of " & "ma_lpf1" &
            " exists but with different size")
    ma_lpf1
  else:
    ma_lpf1_553648793)
  enum_ma_dither_mode_553648694 = (when declared(enum_ma_dither_mode):
    when ownSizeof(enum_ma_dither_mode) != ownSizeof(enum_ma_dither_mode_553648693):
      static :
        warning("Declaration of " & "enum_ma_dither_mode" &
            " exists but with different size")
    enum_ma_dither_mode
  else:
    enum_ma_dither_mode_553648693)
  enum_ma_log_level_553648657 = (when declared(enum_ma_log_level):
    when ownSizeof(enum_ma_log_level) != ownSizeof(enum_ma_log_level_553648656):
      static :
        warning("Declaration of " & "enum_ma_log_level" &
            " exists but with different size")
    enum_ma_log_level
  else:
    enum_ma_log_level_553648656)
  struct_ma_device_job_thread_553649132 = (when declared(
      struct_ma_device_job_thread):
    when ownSizeof(struct_ma_device_job_thread) !=
        ownSizeof(struct_ma_device_job_thread_553649131):
      static :
        warning("Declaration of " & "struct_ma_device_job_thread" &
            " exists but with different size")
    struct_ma_device_job_thread
  else:
    struct_ma_device_job_thread_553649131)
  struct_ma_log_callback_553648766 = (when declared(struct_ma_log_callback):
    when ownSizeof(struct_ma_log_callback) != ownSizeof(struct_ma_log_callback_553648765):
      static :
        warning("Declaration of " & "struct_ma_log_callback" &
            " exists but with different size")
    struct_ma_log_callback
  else:
    struct_ma_log_callback_553648765)
  ma_peak2_553648864 = (when declared(ma_peak2):
    when ownSizeof(ma_peak2) != ownSizeof(ma_peak2_553648863):
      static :
        warning("Declaration of " & "ma_peak2" &
            " exists but with different size")
    ma_peak2
  else:
    ma_peak2_553648863)
  ma_sound_inlined_553649546 = (when declared(ma_sound_inlined):
    when ownSizeof(ma_sound_inlined) != ownSizeof(ma_sound_inlined_553649545):
      static :
        warning("Declaration of " & "ma_sound_inlined" &
            " exists but with different size")
    ma_sound_inlined
  else:
    ma_sound_inlined_553649545)
  struct_ma_vec3f_553648922 = (when declared(struct_ma_vec3f):
    when ownSizeof(struct_ma_vec3f) != ownSizeof(struct_ma_vec3f_553648921):
      static :
        warning("Declaration of " & "struct_ma_vec3f" &
            " exists but with different size")
    struct_ma_vec3f
  else:
    struct_ma_vec3f_553648921)
  ma_device_job_thread_config_553649130 = (when declared(
      ma_device_job_thread_config):
    when ownSizeof(ma_device_job_thread_config) !=
        ownSizeof(ma_device_job_thread_config_553649129):
      static :
        warning("Declaration of " & "ma_device_job_thread_config" &
            " exists but with different size")
    ma_device_job_thread_config
  else:
    ma_device_job_thread_config_553649129)
  ma_encoder_553649284 = (when declared(ma_encoder):
    when ownSizeof(ma_encoder) != ownSizeof(ma_encoder_553649283):
      static :
        warning("Declaration of " & "ma_encoder" &
            " exists but with different size")
    ma_encoder
  else:
    ma_encoder_553649283)
  ma_delay_node_config_553649510 = (when declared(ma_delay_node_config):
    when ownSizeof(ma_delay_node_config) != ownSizeof(ma_delay_node_config_553649509):
      static :
        warning("Declaration of " & "ma_delay_node_config" &
            " exists but with different size")
    ma_delay_node_config
  else:
    ma_delay_node_config_553649509)
  enum_ma_job_type_553649102 = (when declared(enum_ma_job_type):
    when ownSizeof(enum_ma_job_type) != ownSizeof(enum_ma_job_type_553649101):
      static :
        warning("Declaration of " & "enum_ma_job_type" &
            " exists but with different size")
    enum_ma_job_type
  else:
    enum_ma_job_type_553649101)
  enum_ma_aaudio_allowed_capture_policy_553649190 = (when declared(
      enum_ma_aaudio_allowed_capture_policy):
    when ownSizeof(enum_ma_aaudio_allowed_capture_policy) !=
        ownSizeof(enum_ma_aaudio_allowed_capture_policy_553649189):
      static :
        warning("Declaration of " & "enum_ma_aaudio_allowed_capture_policy" &
            " exists but with different size")
    enum_ma_aaudio_allowed_capture_policy
  else:
    enum_ma_aaudio_allowed_capture_policy_553649189)
  enum_ma_aaudio_usage_553649178 = (when declared(enum_ma_aaudio_usage):
    when ownSizeof(enum_ma_aaudio_usage) != ownSizeof(enum_ma_aaudio_usage_553649177):
      static :
        warning("Declaration of " & "enum_ma_aaudio_usage" &
            " exists but with different size")
    enum_ma_aaudio_usage
  else:
    enum_ma_aaudio_usage_553649177)
  ma_spatializer_listener_553648948 = (when declared(ma_spatializer_listener):
    when ownSizeof(ma_spatializer_listener) !=
        ownSizeof(ma_spatializer_listener_553648947):
      static :
        warning("Declaration of " & "ma_spatializer_listener" &
            " exists but with different size")
    ma_spatializer_listener
  else:
    ma_spatializer_listener_553648947)
  struct_ma_data_source_node_config_553649428 = (when declared(
      struct_ma_data_source_node_config):
    when ownSizeof(struct_ma_data_source_node_config) !=
        ownSizeof(struct_ma_data_source_node_config_553649427):
      static :
        warning("Declaration of " & "struct_ma_data_source_node_config" &
            " exists but with different size")
    struct_ma_data_source_node_config
  else:
    struct_ma_data_source_node_config_553649427)
  ma_bpf_node_config_553649470 = (when declared(ma_bpf_node_config):
    when ownSizeof(ma_bpf_node_config) != ownSizeof(ma_bpf_node_config_553649469):
      static :
        warning("Declaration of " & "ma_bpf_node_config" &
            " exists but with different size")
    ma_bpf_node_config
  else:
    ma_bpf_node_config_553649469)
  ma_device_notification_proc_553649144 = (when declared(
      ma_device_notification_proc):
    when ownSizeof(ma_device_notification_proc) !=
        ownSizeof(ma_device_notification_proc_553649143):
      static :
        warning("Declaration of " & "ma_device_notification_proc" &
            " exists but with different size")
    ma_device_notification_proc
  else:
    ma_device_notification_proc_553649143)
  ma_node_vtable_553649406 = (when declared(ma_node_vtable):
    when ownSizeof(ma_node_vtable) != ownSizeof(ma_node_vtable_553649405):
      static :
        warning("Declaration of " & "ma_node_vtable" &
            " exists but with different size")
    ma_node_vtable
  else:
    ma_node_vtable_553649405)
  ma_waveform_type_553649304 = (when declared(ma_waveform_type):
    when ownSizeof(ma_waveform_type) != ownSizeof(ma_waveform_type_553649303):
      static :
        warning("Declaration of " & "ma_waveform_type" &
            " exists but with different size")
    ma_waveform_type
  else:
    ma_waveform_type_553649303)
  ma_bpf_node_553649474 = (when declared(ma_bpf_node):
    when ownSizeof(ma_bpf_node) != ownSizeof(ma_bpf_node_553649473):
      static :
        warning("Declaration of " & "ma_bpf_node" &
            " exists but with different size")
    ma_bpf_node
  else:
    ma_bpf_node_553649473)
  ma_slot_allocator_config_553649088 = (when declared(ma_slot_allocator_config):
    when ownSizeof(ma_slot_allocator_config) !=
        ownSizeof(ma_slot_allocator_config_553649087):
      static :
        warning("Declaration of " & "ma_slot_allocator_config" &
            " exists but with different size")
    ma_slot_allocator_config
  else:
    ma_slot_allocator_config_553649087)
  struct_ma_loshelf2_config_553648866 = (when declared(struct_ma_loshelf2_config):
    when ownSizeof(struct_ma_loshelf2_config) !=
        ownSizeof(struct_ma_loshelf2_config_553648865):
      static :
        warning("Declaration of " & "struct_ma_loshelf2_config" &
            " exists but with different size")
    struct_ma_loshelf2_config
  else:
    struct_ma_loshelf2_config_553648865)
  struct_ma_lcg_553648722 = (when declared(struct_ma_lcg):
    when ownSizeof(struct_ma_lcg) != ownSizeof(struct_ma_lcg_553648721):
      static :
        warning("Declaration of " & "struct_ma_lcg" &
            " exists but with different size")
    struct_ma_lcg
  else:
    struct_ma_lcg_553648721)
  ma_atomic_float_553648740 = (when declared(ma_atomic_float):
    when ownSizeof(ma_atomic_float) != ownSizeof(ma_atomic_float_553648739):
      static :
        warning("Declaration of " & "ma_atomic_float" &
            " exists but with different size")
    ma_atomic_float
  else:
    ma_atomic_float_553648739)
  struct_ma_data_converter_553649008 = (when declared(struct_ma_data_converter):
    when ownSizeof(struct_ma_data_converter) !=
        ownSizeof(struct_ma_data_converter_553649007):
      static :
        warning("Declaration of " & "struct_ma_data_converter" &
            " exists but with different size")
    struct_ma_data_converter
  else:
    struct_ma_data_converter_553649007)
  struct_ma_biquad_node_config_553649444 = (when declared(
      struct_ma_biquad_node_config):
    when ownSizeof(struct_ma_biquad_node_config) !=
        ownSizeof(struct_ma_biquad_node_config_553649443):
      static :
        warning("Declaration of " & "struct_ma_biquad_node_config" &
            " exists but with different size")
    struct_ma_biquad_node_config
  else:
    struct_ma_biquad_node_config_553649443)
  struct_ma_delay_node_553649512 = (when declared(struct_ma_delay_node):
    when ownSizeof(struct_ma_delay_node) != ownSizeof(struct_ma_delay_node_553649511):
      static :
        warning("Declaration of " & "struct_ma_delay_node" &
            " exists but with different size")
    struct_ma_delay_node
  else:
    struct_ma_delay_node_553649511)
  struct_ma_device_descriptor_553649220 = (when declared(
      struct_ma_device_descriptor):
    when ownSizeof(struct_ma_device_descriptor) !=
        ownSizeof(struct_ma_device_descriptor_553649219):
      static :
        warning("Declaration of " & "struct_ma_device_descriptor" &
            " exists but with different size")
    struct_ma_device_descriptor
  else:
    struct_ma_device_descriptor_553649219)
  ma_hpf_553648828 = (when declared(ma_hpf):
    when ownSizeof(ma_hpf) != ownSizeof(ma_hpf_553648827):
      static :
        warning("Declaration of " & "ma_hpf" & " exists but with different size")
    ma_hpf
  else:
    ma_hpf_553648827)
  ma_noise_type_553649324 = (when declared(ma_noise_type):
    when ownSizeof(ma_noise_type) != ownSizeof(ma_noise_type_553649323):
      static :
        warning("Declaration of " & "ma_noise_type" &
            " exists but with different size")
    ma_noise_type
  else:
    ma_noise_type_553649323)
  ma_stream_format_553648681 = (when declared(ma_stream_format):
    when ownSizeof(ma_stream_format) != ownSizeof(ma_stream_format_553648680):
      static :
        warning("Declaration of " & "ma_stream_format" &
            " exists but with different size")
    ma_stream_format
  else:
    ma_stream_format_553648680)
  ma_hishelf_config_553648880 = (when declared(ma_hishelf_config):
    when ownSizeof(ma_hishelf_config) != ownSizeof(ma_hishelf_config_553648879):
      static :
        warning("Declaration of " & "ma_hishelf_config" &
            " exists but with different size")
    ma_hishelf_config
  else:
    ma_hishelf_config_553648879)
  enum_ma_mono_expansion_mode_553648988 = (when declared(
      enum_ma_mono_expansion_mode):
    when ownSizeof(enum_ma_mono_expansion_mode) !=
        ownSizeof(enum_ma_mono_expansion_mode_553648987):
      static :
        warning("Declaration of " & "enum_ma_mono_expansion_mode" &
            " exists but with different size")
    enum_ma_mono_expansion_mode
  else:
    enum_ma_mono_expansion_mode_553648987)
  ma_sound_group_553649552 = (when declared(ma_sound_group):
    when ownSizeof(ma_sound_group) != ownSizeof(ma_sound_group_553649551):
      static :
        warning("Declaration of " & "ma_sound_group" &
            " exists but with different size")
    ma_sound_group
  else:
    ma_sound_group_553649551)
  ma_paged_audio_buffer_page_553649040 = (when declared(
      ma_paged_audio_buffer_page):
    when ownSizeof(ma_paged_audio_buffer_page) !=
        ownSizeof(ma_paged_audio_buffer_page_553649039):
      static :
        warning("Declaration of " & "ma_paged_audio_buffer_page" &
            " exists but with different size")
    ma_paged_audio_buffer_page
  else:
    ma_paged_audio_buffer_page_553649039)
  wchar_t_553649106 = (when declared(wchar_t):
    when ownSizeof(wchar_t) != ownSizeof(wchar_t_553649105):
      static :
        warning("Declaration of " & "wchar_t" &
            " exists but with different size")
    wchar_t
  else:
    wchar_t_553649105)
  struct_ma_slot_allocator_group_553649090 = (when declared(
      struct_ma_slot_allocator_group):
    when ownSizeof(struct_ma_slot_allocator_group) !=
        ownSizeof(struct_ma_slot_allocator_group_553649089):
      static :
        warning("Declaration of " & "struct_ma_slot_allocator_group" &
            " exists but with different size")
    struct_ma_slot_allocator_group
  else:
    struct_ma_slot_allocator_group_553649089)
  ma_seek_origin_553649238 = (when declared(ma_seek_origin):
    when ownSizeof(ma_seek_origin) != ownSizeof(ma_seek_origin_553649237):
      static :
        warning("Declaration of " & "ma_seek_origin" &
            " exists but with different size")
    ma_seek_origin
  else:
    ma_seek_origin_553649237)
  ma_biquad_node_config_553649446 = (when declared(ma_biquad_node_config):
    when ownSizeof(ma_biquad_node_config) != ownSizeof(ma_biquad_node_config_553649445):
      static :
        warning("Declaration of " & "ma_biquad_node_config" &
            " exists but with different size")
    ma_biquad_node_config
  else:
    ma_biquad_node_config_553649445)
  struct_pthread_mutex_s_553649564 = (when declared(struct_pthread_mutex_s):
    when ownSizeof(struct_pthread_mutex_s) != ownSizeof(struct_pthread_mutex_s_553649563):
      static :
        warning("Declaration of " & "struct_pthread_mutex_s" &
            " exists but with different size")
    struct_pthread_mutex_s
  else:
    struct_pthread_mutex_s_553649563)
  ma_node_base_553649420 = (when declared(ma_node_base):
    when ownSizeof(ma_node_base) != ownSizeof(ma_node_base_553649419):
      static :
        warning("Declaration of " & "ma_node_base" &
            " exists but with different size")
    ma_node_base
  else:
    ma_node_base_553649419)
  ma_attenuation_model_553648932 = (when declared(ma_attenuation_model):
    when ownSizeof(ma_attenuation_model) != ownSizeof(ma_attenuation_model_553648931):
      static :
        warning("Declaration of " & "ma_attenuation_model" &
            " exists but with different size")
    ma_attenuation_model
  else:
    ma_attenuation_model_553648931)
  ma_ios_session_category_option_553649164 = (when declared(
      ma_ios_session_category_option):
    when ownSizeof(ma_ios_session_category_option) !=
        ownSizeof(ma_ios_session_category_option_553649163):
      static :
        warning("Declaration of " & "ma_ios_session_category_option" &
            " exists but with different size")
    ma_ios_session_category_option
  else:
    ma_ios_session_category_option_553649163)
  ma_engine_config_553649558 = (when declared(ma_engine_config):
    when ownSizeof(ma_engine_config) != ownSizeof(ma_engine_config_553649557):
      static :
        warning("Declaration of " & "ma_engine_config" &
            " exists but with different size")
    ma_engine_config
  else:
    ma_engine_config_553649557)
  ma_hpf2_553648820 = (when declared(ma_hpf2):
    when ownSizeof(ma_hpf2) != ownSizeof(ma_hpf2_553648819):
      static :
        warning("Declaration of " & "ma_hpf2" &
            " exists but with different size")
    ma_hpf2
  else:
    ma_hpf2_553648819)
  struct_ma_engine_553649518 = (when declared(struct_ma_engine):
    when ownSizeof(struct_ma_engine) != ownSizeof(struct_ma_engine_553649517):
      static :
        warning("Declaration of " & "struct_ma_engine" &
            " exists but with different size")
    struct_ma_engine
  else:
    struct_ma_engine_553649517)
  ma_resample_algorithm_553648978 = (when declared(ma_resample_algorithm):
    when ownSizeof(ma_resample_algorithm) != ownSizeof(ma_resample_algorithm_553648977):
      static :
        warning("Declaration of " & "ma_resample_algorithm" &
            " exists but with different size")
    ma_resample_algorithm
  else:
    ma_resample_algorithm_553648977)
  ma_noise_553649332 = (when declared(ma_noise):
    when ownSizeof(ma_noise) != ownSizeof(ma_noise_553649331):
      static :
        warning("Declaration of " & "ma_noise" &
            " exists but with different size")
    ma_noise
  else:
    ma_noise_553649331)
  ma_uint8_553648613 = (when declared(ma_uint8):
    when ownSizeof(ma_uint8) != ownSizeof(ma_uint8_553648612):
      static :
        warning("Declaration of " & "ma_uint8" &
            " exists but with different size")
    ma_uint8
  else:
    ma_uint8_553648612)
  struct_ma_log_553648770 = (when declared(struct_ma_log):
    when ownSizeof(struct_ma_log) != ownSizeof(struct_ma_log_553648769):
      static :
        warning("Declaration of " & "struct_ma_log" &
            " exists but with different size")
    struct_ma_log
  else:
    struct_ma_log_553648769)
  ma_audio_buffer_553649038 = (when declared(ma_audio_buffer):
    when ownSizeof(ma_audio_buffer) != ownSizeof(ma_audio_buffer_553649037):
      static :
        warning("Declaration of " & "ma_audio_buffer" &
            " exists but with different size")
    ma_audio_buffer
  else:
    ma_audio_buffer_553649037)
  struct_ma_noise_config_553649326 = (when declared(struct_ma_noise_config):
    when ownSizeof(struct_ma_noise_config) != ownSizeof(struct_ma_noise_config_553649325):
      static :
        warning("Declaration of " & "struct_ma_noise_config" &
            " exists but with different size")
    struct_ma_noise_config
  else:
    struct_ma_noise_config_553649325)
  enum_ma_standard_sample_rate_553648702 = (when declared(
      enum_ma_standard_sample_rate):
    when ownSizeof(enum_ma_standard_sample_rate) !=
        ownSizeof(enum_ma_standard_sample_rate_553648701):
      static :
        warning("Declaration of " & "enum_ma_standard_sample_rate" &
            " exists but with different size")
    enum_ma_standard_sample_rate
  else:
    enum_ma_standard_sample_rate_553648701)
  struct_ma_atomic_float_553648738 = (when declared(struct_ma_atomic_float):
    when ownSizeof(struct_ma_atomic_float) != ownSizeof(struct_ma_atomic_float_553648737):
      static :
        warning("Declaration of " & "struct_ma_atomic_float" &
            " exists but with different size")
    struct_ma_atomic_float
  else:
    struct_ma_atomic_float_553648737)
  ma_wchar_win32_553648655 = (when declared(ma_wchar_win32):
    when ownSizeof(ma_wchar_win32) != ownSizeof(ma_wchar_win32_553648654):
      static :
        warning("Declaration of " & "ma_wchar_win32" &
            " exists but with different size")
    ma_wchar_win32
  else:
    ma_wchar_win32_553648654)
  struct_ma_loshelf_node_553649496 = (when declared(struct_ma_loshelf_node):
    when ownSizeof(struct_ma_loshelf_node) != ownSizeof(struct_ma_loshelf_node_553649495):
      static :
        warning("Declaration of " & "struct_ma_loshelf_node" &
            " exists but with different size")
    struct_ma_loshelf_node
  else:
    struct_ma_loshelf_node_553649495)
  enum_ma_device_type_553649150 = (when declared(enum_ma_device_type):
    when ownSizeof(enum_ma_device_type) != ownSizeof(enum_ma_device_type_553649149):
      static :
        warning("Declaration of " & "enum_ma_device_type" &
            " exists but with different size")
    enum_ma_device_type
  else:
    enum_ma_device_type_553649149)
  struct_ma_sound_config_553649542 = (when declared(struct_ma_sound_config):
    when ownSizeof(struct_ma_sound_config) != ownSizeof(struct_ma_sound_config_553649541):
      static :
        warning("Declaration of " & "struct_ma_sound_config" &
            " exists but with different size")
    struct_ma_sound_config
  else:
    struct_ma_sound_config_553649541)
  ma_atomic_vec3f_553648928 = (when declared(ma_atomic_vec3f):
    when ownSizeof(ma_atomic_vec3f) != ownSizeof(ma_atomic_vec3f_553648927):
      static :
        warning("Declaration of " & "ma_atomic_vec3f" &
            " exists but with different size")
    ma_atomic_vec3f
  else:
    ma_atomic_vec3f_553648927)
  struct_ma_hishelf2_config_553648876 = (when declared(struct_ma_hishelf2_config):
    when ownSizeof(struct_ma_hishelf2_config) !=
        ownSizeof(struct_ma_hishelf2_config_553648875):
      static :
        warning("Declaration of " & "struct_ma_hishelf2_config" &
            " exists but with different size")
    struct_ma_hishelf2_config
  else:
    struct_ma_hishelf2_config_553648875)
  struct_ma_fader_config_553648914 = (when declared(struct_ma_fader_config):
    when ownSizeof(struct_ma_fader_config) != ownSizeof(struct_ma_fader_config_553648913):
      static :
        warning("Declaration of " & "struct_ma_fader_config" &
            " exists but with different size")
    struct_ma_fader_config
  else:
    struct_ma_fader_config_553648913)
  ma_standard_channel_map_553648712 = (when declared(ma_standard_channel_map):
    when ownSizeof(ma_standard_channel_map) !=
        ownSizeof(ma_standard_channel_map_553648711):
      static :
        warning("Declaration of " & "ma_standard_channel_map" &
            " exists but with different size")
    ma_standard_channel_map
  else:
    ma_standard_channel_map_553648711)
  struct_ma_node_config_553649408 = (when declared(struct_ma_node_config):
    when ownSizeof(struct_ma_node_config) != ownSizeof(struct_ma_node_config_553649407):
      static :
        warning("Declaration of " & "struct_ma_node_config" &
            " exists but with different size")
    struct_ma_node_config
  else:
    struct_ma_node_config_553649407)
  ma_vec3f_553648924 = (when declared(ma_vec3f):
    when ownSizeof(ma_vec3f) != ownSizeof(ma_vec3f_553648923):
      static :
        warning("Declaration of " & "ma_vec3f" &
            " exists but with different size")
    ma_vec3f
  else:
    ma_vec3f_553648923)
  struct_ma_resource_manager_data_supply_553649378 = (when declared(
      struct_ma_resource_manager_data_supply):
    when ownSizeof(struct_ma_resource_manager_data_supply) !=
        ownSizeof(struct_ma_resource_manager_data_supply_553649377):
      static :
        warning("Declaration of " & "struct_ma_resource_manager_data_supply" &
            " exists but with different size")
    struct_ma_resource_manager_data_supply
  else:
    struct_ma_resource_manager_data_supply_553649377)
  ma_event_553648758 = (when declared(ma_event):
    when ownSizeof(ma_event) != ownSizeof(ma_event_553648757):
      static :
        warning("Declaration of " & "ma_event" &
            " exists but with different size")
    ma_event
  else:
    ma_event_553648757)
  ma_bpf_config_553648840 = (when declared(ma_bpf_config):
    when ownSizeof(ma_bpf_config) != ownSizeof(ma_bpf_config_553648839):
      static :
        warning("Declaration of " & "ma_bpf_config" &
            " exists but with different size")
    ma_bpf_config
  else:
    ma_bpf_config_553648839)
  enum_ma_pan_mode_553648902 = (when declared(enum_ma_pan_mode):
    when ownSizeof(enum_ma_pan_mode) != ownSizeof(enum_ma_pan_mode_553648901):
      static :
        warning("Declaration of " & "enum_ma_pan_mode" &
            " exists but with different size")
    enum_ma_pan_mode
  else:
    enum_ma_pan_mode_553648901)
  ma_waveform_553649312 = (when declared(ma_waveform):
    when ownSizeof(ma_waveform) != ownSizeof(ma_waveform_553649311):
      static :
        warning("Declaration of " & "ma_waveform" &
            " exists but with different size")
    ma_waveform
  else:
    ma_waveform_553649311)
  ma_open_mode_flags_553649234 = (when declared(ma_open_mode_flags):
    when ownSizeof(ma_open_mode_flags) != ownSizeof(ma_open_mode_flags_553649233):
      static :
        warning("Declaration of " & "ma_open_mode_flags" &
            " exists but with different size")
    ma_open_mode_flags
  else:
    ma_open_mode_flags_553649233)
  struct_ma_lpf_config_553648800 = (when declared(struct_ma_lpf_config):
    when ownSizeof(struct_ma_lpf_config) != ownSizeof(struct_ma_lpf_config_553648799):
      static :
        warning("Declaration of " & "struct_ma_lpf_config" &
            " exists but with different size")
    struct_ma_lpf_config
  else:
    struct_ma_lpf_config_553648799)
  struct_ma_bpf2_553648834 = (when declared(struct_ma_bpf2):
    when ownSizeof(struct_ma_bpf2) != ownSizeof(struct_ma_bpf2_553648833):
      static :
        warning("Declaration of " & "struct_ma_bpf2" &
            " exists but with different size")
    struct_ma_bpf2
  else:
    struct_ma_bpf2_553648833)
  ma_engine_process_proc_553649554 = (when declared(ma_engine_process_proc):
    when ownSizeof(ma_engine_process_proc) != ownSizeof(ma_engine_process_proc_553649553):
      static :
        warning("Declaration of " & "ma_engine_process_proc" &
            " exists but with different size")
    ma_engine_process_proc
  else:
    ma_engine_process_proc_553649553)
  struct_ma_biquad_config_553648778 = (when declared(struct_ma_biquad_config):
    when ownSizeof(struct_ma_biquad_config) !=
        ownSizeof(struct_ma_biquad_config_553648777):
      static :
        warning("Declaration of " & "struct_ma_biquad_config" &
            " exists but with different size")
    struct_ma_biquad_config
  else:
    struct_ma_biquad_config_553648777)
  struct_ma_file_info_553649240 = (when declared(struct_ma_file_info):
    when ownSizeof(struct_ma_file_info) != ownSizeof(struct_ma_file_info_553649239):
      static :
        warning("Declaration of " & "struct_ma_file_info" &
            " exists but with different size")
    struct_ma_file_info
  else:
    struct_ma_file_info_553649239)
  ma_data_converter_config_553649002 = (when declared(ma_data_converter_config):
    when ownSizeof(ma_data_converter_config) !=
        ownSizeof(ma_data_converter_config_553649001):
      static :
        warning("Declaration of " & "ma_data_converter_config" &
            " exists but with different size")
    ma_data_converter_config
  else:
    ma_data_converter_config_553649001)
  struct_ma_bpf_config_553648838 = (when declared(struct_ma_bpf_config):
    when ownSizeof(struct_ma_bpf_config) != ownSizeof(struct_ma_bpf_config_553648837):
      static :
        warning("Declaration of " & "struct_ma_bpf_config" &
            " exists but with different size")
    struct_ma_bpf_config
  else:
    struct_ma_bpf_config_553648837)
  union_ma_timer_553649194 = (when declared(union_ma_timer):
    when ownSizeof(union_ma_timer) != ownSizeof(union_ma_timer_553649193):
      static :
        warning("Declaration of " & "union_ma_timer" &
            " exists but with different size")
    union_ma_timer
  else:
    union_ma_timer_553649193)
  ma_linear_resampler_553648964 = (when declared(ma_linear_resampler):
    when ownSizeof(ma_linear_resampler) != ownSizeof(ma_linear_resampler_553648963):
      static :
        warning("Declaration of " & "ma_linear_resampler" &
            " exists but with different size")
    ma_linear_resampler
  else:
    ma_linear_resampler_553648963)
  struct_ma_spatializer_listener_553648946 = (when declared(
      struct_ma_spatializer_listener):
    when ownSizeof(struct_ma_spatializer_listener) !=
        ownSizeof(struct_ma_spatializer_listener_553648945):
      static :
        warning("Declaration of " & "struct_ma_spatializer_listener" &
            " exists but with different size")
    struct_ma_spatializer_listener
  else:
    struct_ma_spatializer_listener_553648945)
  enum_ma_opensl_recording_preset_553649170 = (when declared(
      enum_ma_opensl_recording_preset):
    when ownSizeof(enum_ma_opensl_recording_preset) !=
        ownSizeof(enum_ma_opensl_recording_preset_553649169):
      static :
        warning("Declaration of " & "enum_ma_opensl_recording_preset" &
            " exists but with different size")
    enum_ma_opensl_recording_preset
  else:
    enum_ma_opensl_recording_preset_553649169)
  union_pthread_cond_t_553649562 = (when declared(union_pthread_cond_t):
    when ownSizeof(union_pthread_cond_t) != ownSizeof(union_pthread_cond_t_553649561):
      static :
        warning("Declaration of " & "union_pthread_cond_t" &
            " exists but with different size")
    union_pthread_cond_t
  else:
    union_pthread_cond_t_553649561)
  enum_ma_attenuation_model_553648930 = (when declared(enum_ma_attenuation_model):
    when ownSizeof(enum_ma_attenuation_model) !=
        ownSizeof(enum_ma_attenuation_model_553648929):
      static :
        warning("Declaration of " & "enum_ma_attenuation_model" &
            " exists but with different size")
    enum_ma_attenuation_model
  else:
    enum_ma_attenuation_model_553648929)
  struct_ma_slot_allocator_553649094 = (when declared(struct_ma_slot_allocator):
    when ownSizeof(struct_ma_slot_allocator) !=
        ownSizeof(struct_ma_slot_allocator_553649093):
      static :
        warning("Declaration of " & "struct_ma_slot_allocator" &
            " exists but with different size")
    struct_ma_slot_allocator
  else:
    struct_ma_slot_allocator_553649093)
  ma_spinlock_553648746 = (when declared(ma_spinlock):
    when ownSizeof(ma_spinlock) != ownSizeof(ma_spinlock_553648745):
      static :
        warning("Declaration of " & "ma_spinlock" &
            " exists but with different size")
    ma_spinlock
  else:
    ma_spinlock_553648745)
  ma_notch2_config_553648848 = (when declared(ma_notch2_config):
    when ownSizeof(ma_notch2_config) != ownSizeof(ma_notch2_config_553648847):
      static :
        warning("Declaration of " & "ma_notch2_config" &
            " exists but with different size")
    ma_notch2_config
  else:
    ma_notch2_config_553648847)
  ma_decoding_backend_config_553649268 = (when declared(
      ma_decoding_backend_config):
    when ownSizeof(ma_decoding_backend_config) !=
        ownSizeof(ma_decoding_backend_config_553649267):
      static :
        warning("Declaration of " & "ma_decoding_backend_config" &
            " exists but with different size")
    ma_decoding_backend_config
  else:
    ma_decoding_backend_config_553649267)
  ma_device_notification_type_553649138 = (when declared(
      ma_device_notification_type):
    when ownSizeof(ma_device_notification_type) !=
        ownSizeof(ma_device_notification_type_553649137):
      static :
        warning("Declaration of " & "ma_device_notification_type" &
            " exists but with different size")
    ma_device_notification_type
  else:
    ma_device_notification_type_553649137)
  ma_aaudio_allowed_capture_policy_553649192 = (when declared(
      ma_aaudio_allowed_capture_policy):
    when ownSizeof(ma_aaudio_allowed_capture_policy) !=
        ownSizeof(ma_aaudio_allowed_capture_policy_553649191):
      static :
        warning("Declaration of " & "ma_aaudio_allowed_capture_policy" &
            " exists but with different size")
    ma_aaudio_allowed_capture_policy
  else:
    ma_aaudio_allowed_capture_policy_553649191)
  struct_ma_hishelf_node_config_553649500 = (when declared(
      struct_ma_hishelf_node_config):
    when ownSizeof(struct_ma_hishelf_node_config) !=
        ownSizeof(struct_ma_hishelf_node_config_553649499):
      static :
        warning("Declaration of " & "struct_ma_hishelf_node_config" &
            " exists but with different size")
    struct_ma_hishelf_node_config
  else:
    struct_ma_hishelf_node_config_553649499)
when not declared(ma_pulsewave):
  type
    ma_pulsewave* = ma_pulsewave_553649319
else:
  static :
    hint("Declaration of " & "ma_pulsewave" & " already exists, not redeclaring")
when not declared(ma_waveform_config):
  type
    ma_waveform_config* = ma_waveform_config_553649307
else:
  static :
    hint("Declaration of " & "ma_waveform_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_resource_manager_data_supply_type):
  type
    enum_ma_resource_manager_data_supply_type* = enum_ma_resource_manager_data_supply_type_553649373
else:
  static :
    hint("Declaration of " & "enum_ma_resource_manager_data_supply_type" &
        " already exists, not redeclaring")
when not declared(struct_ma_data_converter_config):
  type
    struct_ma_data_converter_config* = struct_ma_data_converter_config_553648999
else:
  static :
    hint("Declaration of " & "struct_ma_data_converter_config" &
        " already exists, not redeclaring")
when not declared(ma_bpf2):
  type
    ma_bpf2* = ma_bpf2_553648835
else:
  static :
    hint("Declaration of " & "ma_bpf2" & " already exists, not redeclaring")
when not declared(union_ma_device_id):
  type
    union_ma_device_id* = union_ma_device_id_553649197
else:
  static :
    hint("Declaration of " & "union_ma_device_id" &
        " already exists, not redeclaring")
when not declared(ma_device_descriptor):
  type
    ma_device_descriptor* = ma_device_descriptor_553649221
else:
  static :
    hint("Declaration of " & "ma_device_descriptor" &
        " already exists, not redeclaring")
when not declared(struct_ma_event):
  type
    struct_ma_event* = struct_ma_event_553648755
else:
  static :
    hint("Declaration of " & "struct_ma_event" &
        " already exists, not redeclaring")
when not declared(struct_pthread_cond_s):
  type
    struct_pthread_cond_s* = struct_pthread_cond_s_553649565
else:
  static :
    hint("Declaration of " & "struct_pthread_cond_s" &
        " already exists, not redeclaring")
when not declared(ma_read_proc):
  type
    ma_read_proc* = ma_read_proc_553649251
else:
  static :
    hint("Declaration of " & "ma_read_proc" & " already exists, not redeclaring")
when not declared(ma_ptr):
  type
    ma_ptr* = ma_ptr_553648638
else:
  static :
    hint("Declaration of " & "ma_ptr" & " already exists, not redeclaring")
when not declared(struct_ma_lpf1_config):
  type
    struct_ma_lpf1_config* = struct_ma_lpf1_config_553648785
else:
  static :
    hint("Declaration of " & "struct_ma_lpf1_config" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter):
  type
    ma_channel_converter* = ma_channel_converter_553648997
else:
  static :
    hint("Declaration of " & "ma_channel_converter" &
        " already exists, not redeclaring")
when not declared(struct_ma_stack):
  type
    struct_ma_stack* = struct_ma_stack_553649385
else:
  static :
    hint("Declaration of " & "struct_ma_stack" &
        " already exists, not redeclaring")
when not declared(ma_log):
  type
    ma_log* = ma_log_553648771
else:
  static :
    hint("Declaration of " & "ma_log" & " already exists, not redeclaring")
when not declared(ma_fader):
  type
    ma_fader* = ma_fader_553648919
else:
  static :
    hint("Declaration of " & "ma_fader" & " already exists, not redeclaring")
when not declared(struct_ma_lpf):
  type
    struct_ma_lpf* = struct_ma_lpf_553648803
else:
  static :
    hint("Declaration of " & "struct_ma_lpf" &
        " already exists, not redeclaring")
when not declared(struct_ma_lpf_node_config):
  type
    struct_ma_lpf_node_config* = struct_ma_lpf_node_config_553649451
else:
  static :
    hint("Declaration of " & "struct_ma_lpf_node_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_panner_config):
  type
    struct_ma_panner_config* = struct_ma_panner_config_553648905
else:
  static :
    hint("Declaration of " & "struct_ma_panner_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_sound_inlined):
  type
    struct_ma_sound_inlined* = struct_ma_sound_inlined_553649547
else:
  static :
    hint("Declaration of " & "struct_ma_sound_inlined" &
        " already exists, not redeclaring")
when not declared(ma_job):
  type
    ma_job* = ma_job_553648604
else:
  static :
    hint("Declaration of " & "ma_job" & " already exists, not redeclaring")
when not declared(ma_slot_allocator):
  type
    ma_slot_allocator* = ma_slot_allocator_553649095
else:
  static :
    hint("Declaration of " & "ma_slot_allocator" &
        " already exists, not redeclaring")
when not declared(struct_ma_gainer):
  type
    struct_ma_gainer* = struct_ma_gainer_553648897
else:
  static :
    hint("Declaration of " & "struct_ma_gainer" &
        " already exists, not redeclaring")
when not declared(ma_proc):
  type
    ma_proc* = ma_proc_553648640
else:
  static :
    hint("Declaration of " & "ma_proc" & " already exists, not redeclaring")
when not declared(ma_node_graph_config):
  type
    ma_node_graph_config* = ma_node_graph_config_553649425
else:
  static :
    hint("Declaration of " & "ma_node_graph_config" &
        " already exists, not redeclaring")
when not declared(ma_biquad_node):
  type
    ma_biquad_node* = ma_biquad_node_553649449
else:
  static :
    hint("Declaration of " & "ma_biquad_node" &
        " already exists, not redeclaring")
when not declared(enum_ma_seek_origin):
  type
    enum_ma_seek_origin* = enum_ma_seek_origin_553649235
else:
  static :
    hint("Declaration of " & "enum_ma_seek_origin" &
        " already exists, not redeclaring")
when not declared(enum_ma_noise_type):
  type
    enum_ma_noise_type* = enum_ma_noise_type_553649321
else:
  static :
    hint("Declaration of " & "enum_ma_noise_type" &
        " already exists, not redeclaring")
when not declared(struct_ma_engine_node_config):
  type
    struct_ma_engine_node_config* = struct_ma_engine_node_config_553649531
else:
  static :
    hint("Declaration of " & "struct_ma_engine_node_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_standard_channel_map):
  type
    enum_ma_standard_channel_map* = enum_ma_standard_channel_map_553648709
else:
  static :
    hint("Declaration of " & "enum_ma_standard_channel_map" &
        " already exists, not redeclaring")
when not declared(struct_ma_hpf1):
  type
    struct_ma_hpf1* = struct_ma_hpf1_553648813
else:
  static :
    hint("Declaration of " & "struct_ma_hpf1" &
        " already exists, not redeclaring")
when not declared(struct_ma_data_source_config):
  type
    struct_ma_data_source_config* = struct_ma_data_source_config_553649019
else:
  static :
    hint("Declaration of " & "struct_ma_data_source_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_channel_mix_mode):
  type
    enum_ma_channel_mix_mode* = enum_ma_channel_mix_mode_553648705
else:
  static :
    hint("Declaration of " & "enum_ma_channel_mix_mode" &
        " already exists, not redeclaring")
when not declared(struct_ma_delay_config):
  type
    struct_ma_delay_config* = struct_ma_delay_config_553648885
else:
  static :
    hint("Declaration of " & "struct_ma_delay_config" &
        " already exists, not redeclaring")
when not declared(ma_panner_config):
  type
    ma_panner_config* = ma_panner_config_553648907
else:
  static :
    hint("Declaration of " & "ma_panner_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_positioning):
  type
    enum_ma_positioning* = enum_ma_positioning_553648933
else:
  static :
    hint("Declaration of " & "enum_ma_positioning" &
        " already exists, not redeclaring")
when not declared(struct_ma_audio_buffer_config):
  type
    struct_ma_audio_buffer_config* = struct_ma_audio_buffer_config_553649031
else:
  static :
    hint("Declaration of " & "struct_ma_audio_buffer_config" &
        " already exists, not redeclaring")
when not declared(ma_atomic_device_state):
  type
    ma_atomic_device_state* = ma_atomic_device_state_553649121
else:
  static :
    hint("Declaration of " & "ma_atomic_device_state" &
        " already exists, not redeclaring")
when not declared(ma_device_info):
  type
    ma_device_info* = ma_device_info_553649215
else:
  static :
    hint("Declaration of " & "ma_device_info" &
        " already exists, not redeclaring")
when not declared(ma_encoder_uninit_proc):
  type
    ma_encoder_uninit_proc* = ma_encoder_uninit_proc_553649293
else:
  static :
    hint("Declaration of " & "ma_encoder_uninit_proc" &
        " already exists, not redeclaring")
when not declared(ma_hpf2_config):
  type
    ma_hpf2_config* = ma_hpf2_config_553648811
else:
  static :
    hint("Declaration of " & "ma_hpf2_config" &
        " already exists, not redeclaring")
when not declared(ma_job_proc):
  type
    ma_job_proc* = ma_job_proc_553649099
else:
  static :
    hint("Declaration of " & "ma_job_proc" & " already exists, not redeclaring")
when not declared(ma_uint64):
  type
    ma_uint64* = ma_uint64_553648624
else:
  static :
    hint("Declaration of " & "ma_uint64" & " already exists, not redeclaring")
when not declared(struct_ma_fader):
  type
    struct_ma_fader* = struct_ma_fader_553648917
else:
  static :
    hint("Declaration of " & "struct_ma_fader" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_config):
  type
    ma_audio_buffer_config* = ma_audio_buffer_config_553649033
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_hpf_node):
  type
    struct_ma_hpf_node* = struct_ma_hpf_node_553649463
else:
  static :
    hint("Declaration of " & "struct_ma_hpf_node" &
        " already exists, not redeclaring")
when not declared(ma_int16):
  type
    ma_int16* = ma_int16_553648614
else:
  static :
    hint("Declaration of " & "ma_int16" & " already exists, not redeclaring")
when not declared(ma_channel_converter_config):
  type
    ma_channel_converter_config* = ma_channel_converter_config_553648993
else:
  static :
    hint("Declaration of " & "ma_channel_converter_config" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref):
  type
    ma_audio_buffer_ref* = ma_audio_buffer_ref_553649029
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref" &
        " already exists, not redeclaring")
when not declared(struct_ma_fence):
  type
    struct_ma_fence* = struct_ma_fence_553649067
else:
  static :
    hint("Declaration of " & "struct_ma_fence" &
        " already exists, not redeclaring")
when not declared(struct_ma_hpf_config):
  type
    struct_ma_hpf_config* = struct_ma_hpf_config_553648821
else:
  static :
    hint("Declaration of " & "struct_ma_hpf_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_default_vfs):
  type
    struct_ma_default_vfs* = struct_ma_default_vfs_553649247
else:
  static :
    hint("Declaration of " & "struct_ma_default_vfs" &
        " already exists, not redeclaring")
when not declared(ma_stream_layout):
  type
    ma_stream_layout* = ma_stream_layout_553648684
else:
  static :
    hint("Declaration of " & "ma_stream_layout" &
        " already exists, not redeclaring")
when not declared(ma_decoder_read_proc):
  type
    ma_decoder_read_proc* = ma_decoder_read_proc_553649273
else:
  static :
    hint("Declaration of " & "ma_decoder_read_proc" &
        " already exists, not redeclaring")
when not declared(struct_ma_atomic_vec3f):
  type
    struct_ma_atomic_vec3f* = struct_ma_atomic_vec3f_553648925
else:
  static :
    hint("Declaration of " & "struct_ma_atomic_vec3f" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2):
  type
    ma_loshelf2* = ma_loshelf2_553648873
else:
  static :
    hint("Declaration of " & "ma_loshelf2" & " already exists, not redeclaring")
when not declared(struct_ma_slot_allocator_config):
  type
    struct_ma_slot_allocator_config* = struct_ma_slot_allocator_config_553649085
else:
  static :
    hint("Declaration of " & "struct_ma_slot_allocator_config" &
        " already exists, not redeclaring")
when not declared(ma_decoder_config):
  type
    ma_decoder_config* = ma_decoder_config_553649281
else:
  static :
    hint("Declaration of " & "ma_decoder_config" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_flags):
  type
    ma_resource_manager_flags* = ma_resource_manager_flags_553649367
else:
  static :
    hint("Declaration of " & "ma_resource_manager_flags" &
        " already exists, not redeclaring")
when not declared(ma_lpf_config):
  type
    ma_lpf_config* = ma_lpf_config_553648801
else:
  static :
    hint("Declaration of " & "ma_lpf_config" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_config):
  type
    ma_resource_manager_config* = ma_resource_manager_config_553649383
else:
  static :
    hint("Declaration of " & "ma_resource_manager_config" &
        " already exists, not redeclaring")
when not declared(ma_node_flags):
  type
    ma_node_flags* = ma_node_flags_553649397
else:
  static :
    hint("Declaration of " & "ma_node_flags" &
        " already exists, not redeclaring")
when not declared(ma_semaphore):
  type
    ma_semaphore* = ma_semaphore_553648761
else:
  static :
    hint("Declaration of " & "ma_semaphore" & " already exists, not redeclaring")
when not declared(struct_ma_context_command_wasapi):
  type
    struct_ma_context_command_wasapi* = struct_ma_context_command_wasapi_553649223
else:
  static :
    hint("Declaration of " & "struct_ma_context_command_wasapi" &
        " already exists, not redeclaring")
when not declared(ma_loshelf_node_config):
  type
    ma_loshelf_node_config* = ma_loshelf_node_config_553649493
else:
  static :
    hint("Declaration of " & "ma_loshelf_node_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_resource_manager):
  type
    struct_ma_resource_manager* = struct_ma_resource_manager_553649335
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_node):
  type
    ma_resource_manager_data_buffer_node* = ma_resource_manager_data_buffer_node_553649337
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_node" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_pipeline_notifications):
  type
    ma_resource_manager_pipeline_notifications* = ma_resource_manager_pipeline_notifications_553649363
else:
  static :
    hint("Declaration of " & "ma_resource_manager_pipeline_notifications" &
        " already exists, not redeclaring")
when not declared(ma_pthread_mutex_t):
  type
    ma_pthread_mutex_t* = ma_pthread_mutex_t_553648646
else:
  static :
    hint("Declaration of " & "ma_pthread_mutex_t" &
        " already exists, not redeclaring")
when not declared(ma_atomic_uint32):
  type
    ma_atomic_uint32* = ma_atomic_uint32_553648727
else:
  static :
    hint("Declaration of " & "ma_atomic_uint32" &
        " already exists, not redeclaring")
when not declared(struct_ma_node_vtable):
  type
    struct_ma_node_vtable* = struct_ma_node_vtable_553649403
else:
  static :
    hint("Declaration of " & "struct_ma_node_vtable" &
        " already exists, not redeclaring")
when not declared(struct_ma_engine_node):
  type
    struct_ma_engine_node* = struct_ma_engine_node_553649535
else:
  static :
    hint("Declaration of " & "struct_ma_engine_node" &
        " already exists, not redeclaring")
when not declared(ma_backend_callbacks):
  type
    ma_backend_callbacks* = ma_backend_callbacks_553649209
else:
  static :
    hint("Declaration of " & "ma_backend_callbacks" &
        " already exists, not redeclaring")
when not declared(ma_context_config):
  type
    ma_context_config* = ma_context_config_553649201
else:
  static :
    hint("Declaration of " & "ma_context_config" &
        " already exists, not redeclaring")
when not declared(ma_uint32):
  type
    ma_uint32* = ma_uint32_553648620
else:
  static :
    hint("Declaration of " & "ma_uint32" & " already exists, not redeclaring")
when not declared(ma_hishelf2):
  type
    ma_hishelf2* = ma_hishelf2_553648883
else:
  static :
    hint("Declaration of " & "ma_hishelf2" & " already exists, not redeclaring")
when not declared(struct_ma_paged_audio_buffer_config):
  type
    struct_ma_paged_audio_buffer_config* = struct_ma_paged_audio_buffer_config_553649047
else:
  static :
    hint("Declaration of " & "struct_ma_paged_audio_buffer_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_pulsewave):
  type
    struct_ma_pulsewave* = struct_ma_pulsewave_553649317
else:
  static :
    hint("Declaration of " & "struct_ma_pulsewave" &
        " already exists, not redeclaring")
when not declared(ma_decoder):
  type
    ma_decoder* = ma_decoder_553649261
else:
  static :
    hint("Declaration of " & "ma_decoder" & " already exists, not redeclaring")
when not declared(pthread_t):
  type
    pthread_t* = pthread_t_553648644
else:
  static :
    hint("Declaration of " & "pthread_t" & " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_data_stream):
  type
    struct_ma_resource_manager_data_stream* = struct_ma_resource_manager_data_stream_553649347
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_data_stream" &
        " already exists, not redeclaring")
when not declared(ma_loshelf_node):
  type
    ma_loshelf_node* = ma_loshelf_node_553649497
else:
  static :
    hint("Declaration of " & "ma_loshelf_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_async_notification_poll):
  type
    struct_ma_async_notification_poll* = struct_ma_async_notification_poll_553649077
else:
  static :
    hint("Declaration of " & "struct_ma_async_notification_poll" &
        " already exists, not redeclaring")
when not declared(ma_sound_flags):
  type
    ma_sound_flags* = ma_sound_flags_553649525
else:
  static :
    hint("Declaration of " & "ma_sound_flags" &
        " already exists, not redeclaring")
when not declared(ma_device_notification):
  type
    ma_device_notification* = ma_device_notification_553649141
else:
  static :
    hint("Declaration of " & "ma_device_notification" &
        " already exists, not redeclaring")
when not declared(ma_fader_config):
  type
    ma_fader_config* = ma_fader_config_553648915
else:
  static :
    hint("Declaration of " & "ma_fader_config" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_config):
  type
    ma_loshelf2_config* = ma_loshelf2_config_553648867
else:
  static :
    hint("Declaration of " & "ma_loshelf2_config" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer):
  type
    ma_paged_audio_buffer* = ma_paged_audio_buffer_553649053
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer" &
        " already exists, not redeclaring")
when not declared(ma_atomic_int32):
  type
    ma_atomic_int32* = ma_atomic_int32_553648731
else:
  static :
    hint("Declaration of " & "ma_atomic_int32" &
        " already exists, not redeclaring")
when not declared(ma_pthread_cond_t):
  type
    ma_pthread_cond_t* = ma_pthread_cond_t_553648650
else:
  static :
    hint("Declaration of " & "ma_pthread_cond_t" &
        " already exists, not redeclaring")
when not declared(struct_ma_biquad):
  type
    struct_ma_biquad* = struct_ma_biquad_553648781
else:
  static :
    hint("Declaration of " & "struct_ma_biquad" &
        " already exists, not redeclaring")
when not declared(struct_ma_lpf2):
  type
    struct_ma_lpf2* = struct_ma_lpf2_553648795
else:
  static :
    hint("Declaration of " & "struct_ma_lpf2" &
        " already exists, not redeclaring")
when not declared(struct_ma_atomic_uint32):
  type
    struct_ma_atomic_uint32* = struct_ma_atomic_uint32_553648725
else:
  static :
    hint("Declaration of " & "struct_ma_atomic_uint32" &
        " already exists, not redeclaring")
when not declared(struct_ma_hishelf2):
  type
    struct_ma_hishelf2* = struct_ma_hishelf2_553648881
else:
  static :
    hint("Declaration of " & "struct_ma_hishelf2" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_event):
  type
    ma_async_notification_event* = ma_async_notification_event_553649083
else:
  static :
    hint("Declaration of " & "ma_async_notification_event" &
        " already exists, not redeclaring")
when not declared(ma_delay_node):
  type
    ma_delay_node* = ma_delay_node_553649513
else:
  static :
    hint("Declaration of " & "ma_delay_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_hishelf_node):
  type
    struct_ma_hishelf_node* = struct_ma_hishelf_node_553649503
else:
  static :
    hint("Declaration of " & "struct_ma_hishelf_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_loshelf2):
  type
    struct_ma_loshelf2* = struct_ma_loshelf2_553648871
else:
  static :
    hint("Declaration of " & "struct_ma_loshelf2" &
        " already exists, not redeclaring")
when not declared(ma_device_type):
  type
    ma_device_type* = ma_device_type_553649151
else:
  static :
    hint("Declaration of " & "ma_device_type" &
        " already exists, not redeclaring")
when not declared(enum_ma_resample_algorithm):
  type
    enum_ma_resample_algorithm* = enum_ma_resample_algorithm_553648975
else:
  static :
    hint("Declaration of " & "enum_ma_resample_algorithm" &
        " already exists, not redeclaring")
when not declared(ma_panner):
  type
    ma_panner* = ma_panner_553648911
else:
  static :
    hint("Declaration of " & "ma_panner" & " already exists, not redeclaring")
when not declared(ma_resource_manager_pipeline_stage_notification):
  type
    ma_resource_manager_pipeline_stage_notification* = ma_resource_manager_pipeline_stage_notification_553649359
else:
  static :
    hint("Declaration of " & "ma_resource_manager_pipeline_stage_notification" &
        " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_data_source_config):
  type
    struct_ma_resource_manager_data_source_config* = struct_ma_resource_manager_data_source_config_553649369
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_data_source_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_linear_resampler_config):
  type
    struct_ma_linear_resampler_config* = struct_ma_linear_resampler_config_553648957
else:
  static :
    hint("Declaration of " & "struct_ma_linear_resampler_config" &
        " already exists, not redeclaring")
when not declared(ma_rb):
  type
    ma_rb* = ma_rb_553649057
else:
  static :
    hint("Declaration of " & "ma_rb" & " already exists, not redeclaring")
when not declared(ma_hpf_config):
  type
    ma_hpf_config* = ma_hpf_config_553648823
else:
  static :
    hint("Declaration of " & "ma_hpf_config" &
        " already exists, not redeclaring")
when not declared(ma_peak_node_config):
  type
    ma_peak_node_config* = ma_peak_node_config_553649485
else:
  static :
    hint("Declaration of " & "ma_peak_node_config" &
        " already exists, not redeclaring")
when not declared(ma_device_state):
  type
    ma_device_state* = ma_device_state_553649117
else:
  static :
    hint("Declaration of " & "ma_device_state" &
        " already exists, not redeclaring")
when not declared(ma_log_level):
  type
    ma_log_level* = ma_log_level_553648658
else:
  static :
    hint("Declaration of " & "ma_log_level" & " already exists, not redeclaring")
when not declared(enum_ma_resource_manager_data_source_flags):
  type
    enum_ma_resource_manager_data_source_flags* = enum_ma_resource_manager_data_source_flags_553649353
else:
  static :
    hint("Declaration of " & "enum_ma_resource_manager_data_source_flags" &
        " already exists, not redeclaring")
when not declared(ma_data_source_vtable):
  type
    ma_data_source_vtable* = ma_data_source_vtable_553649015
else:
  static :
    hint("Declaration of " & "ma_data_source_vtable" &
        " already exists, not redeclaring")
when not declared(enum_ma_sound_flags):
  type
    enum_ma_sound_flags* = enum_ma_sound_flags_553649523
else:
  static :
    hint("Declaration of " & "enum_ma_sound_flags" &
        " already exists, not redeclaring")
when not declared(struct_ma_bpf):
  type
    struct_ma_bpf* = struct_ma_bpf_553648841
else:
  static :
    hint("Declaration of " & "struct_ma_bpf" &
        " already exists, not redeclaring")
when not declared(struct_ma_pulsewave_config):
  type
    struct_ma_pulsewave_config* = struct_ma_pulsewave_config_553649313
else:
  static :
    hint("Declaration of " & "struct_ma_pulsewave_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_aaudio_content_type):
  type
    enum_ma_aaudio_content_type* = enum_ma_aaudio_content_type_553649181
else:
  static :
    hint("Declaration of " & "enum_ma_aaudio_content_type" &
        " already exists, not redeclaring")
when not declared(ma_peak_config):
  type
    ma_peak_config* = ma_peak_config_553648859
else:
  static :
    hint("Declaration of " & "ma_peak_config" &
        " already exists, not redeclaring")
when not declared(ma_noise_config):
  type
    ma_noise_config* = ma_noise_config_553649327
else:
  static :
    hint("Declaration of " & "ma_noise_config" &
        " already exists, not redeclaring")
when not declared(union_pthread_mutex_t):
  type
    union_pthread_mutex_t* = union_pthread_mutex_t_553649559
else:
  static :
    hint("Declaration of " & "union_pthread_mutex_t" &
        " already exists, not redeclaring")
when not declared(ma_context_command_wasapi):
  type
    ma_context_command_wasapi* = ma_context_command_wasapi_553649225
else:
  static :
    hint("Declaration of " & "ma_context_command_wasapi" &
        " already exists, not redeclaring")
when not declared(struct_ma_job_queue):
  type
    struct_ma_job_queue* = struct_ma_job_queue_553649113
else:
  static :
    hint("Declaration of " & "struct_ma_job_queue" &
        " already exists, not redeclaring")
when not declared(struct_pthread_internal_list):
  type
    struct_pthread_internal_list* = struct_pthread_internal_list_553649571
else:
  static :
    hint("Declaration of " & "struct_pthread_internal_list" &
        " already exists, not redeclaring")
when not declared(ma_data_source_node_config):
  type
    ma_data_source_node_config* = ma_data_source_node_config_553649429
else:
  static :
    hint("Declaration of " & "ma_data_source_node_config" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_flags):
  type
    ma_resource_manager_data_source_flags* = ma_resource_manager_data_source_flags_553649355
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_flags" &
        " already exists, not redeclaring")
when not declared(struct_ma_atomic_device_state):
  type
    struct_ma_atomic_device_state* = struct_ma_atomic_device_state_553649119
else:
  static :
    hint("Declaration of " & "struct_ma_atomic_device_state" &
        " already exists, not redeclaring")
when not declared(ma_sound):
  type
    ma_sound* = ma_sound_553649519
else:
  static :
    hint("Declaration of " & "ma_sound" & " already exists, not redeclaring")
when not declared(struct_ma_notch_node_config):
  type
    struct_ma_notch_node_config* = struct_ma_notch_node_config_553649475
else:
  static :
    hint("Declaration of " & "struct_ma_notch_node_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_result):
  type
    enum_ma_result* = enum_ma_result_553648674
else:
  static :
    hint("Declaration of " & "enum_ma_result" &
        " already exists, not redeclaring")
when not declared(enum_ma_share_mode):
  type
    enum_ma_share_mode* = enum_ma_share_mode_553649153
else:
  static :
    hint("Declaration of " & "enum_ma_share_mode" &
        " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_data_buffer):
  type
    struct_ma_resource_manager_data_buffer* = struct_ma_resource_manager_data_buffer_553649343
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_data_buffer" &
        " already exists, not redeclaring")
when not declared(ma_gainer_config):
  type
    ma_gainer_config* = ma_gainer_config_553648895
else:
  static :
    hint("Declaration of " & "ma_gainer_config" &
        " already exists, not redeclaring")
when not declared(ma_notch_config):
  type
    ma_notch_config* = ma_notch_config_553648849
else:
  static :
    hint("Declaration of " & "ma_notch_config" &
        " already exists, not redeclaring")
when not declared(ma_lpf_node):
  type
    ma_lpf_node* = ma_lpf_node_553649457
else:
  static :
    hint("Declaration of " & "ma_lpf_node" & " already exists, not redeclaring")
when not declared(enum_ma_performance_profile):
  type
    enum_ma_performance_profile* = enum_ma_performance_profile_553648713
else:
  static :
    hint("Declaration of " & "enum_ma_performance_profile" &
        " already exists, not redeclaring")
when not declared(ma_aaudio_input_preset):
  type
    ma_aaudio_input_preset* = ma_aaudio_input_preset_553649187
else:
  static :
    hint("Declaration of " & "ma_aaudio_input_preset" &
        " already exists, not redeclaring")
when not declared(enum_ma_device_state):
  type
    enum_ma_device_state* = enum_ma_device_state_553649115
else:
  static :
    hint("Declaration of " & "enum_ma_device_state" &
        " already exists, not redeclaring")
when not declared(ma_enum_devices_callback_proc):
  type
    ma_enum_devices_callback_proc* = ma_enum_devices_callback_proc_553649217
else:
  static :
    hint("Declaration of " & "ma_enum_devices_callback_proc" &
        " already exists, not redeclaring")
when not declared(struct_ma_lpf1):
  type
    struct_ma_lpf1* = struct_ma_lpf1_553648791
else:
  static :
    hint("Declaration of " & "struct_ma_lpf1" &
        " already exists, not redeclaring")
when not declared(enum_ma_channel_position):
  type
    enum_ma_channel_position* = enum_ma_channel_position_553648670
else:
  static :
    hint("Declaration of " & "enum_ma_channel_position" &
        " already exists, not redeclaring")
when not declared(ma_opensl_recording_preset):
  type
    ma_opensl_recording_preset* = ma_opensl_recording_preset_553649171
else:
  static :
    hint("Declaration of " & "ma_opensl_recording_preset" &
        " already exists, not redeclaring")
when not declared(ma_stack):
  type
    ma_stack* = ma_stack_553649387
else:
  static :
    hint("Declaration of " & "ma_stack" & " already exists, not redeclaring")
when not declared(ma_resampling_backend_vtable):
  type
    ma_resampling_backend_vtable* = ma_resampling_backend_vtable_553648973
else:
  static :
    hint("Declaration of " & "ma_resampling_backend_vtable" &
        " already exists, not redeclaring")
when not declared(struct_ma_spatializer):
  type
    struct_ma_spatializer* = struct_ma_spatializer_553648953
else:
  static :
    hint("Declaration of " & "struct_ma_spatializer" &
        " already exists, not redeclaring")
when not declared(ma_float):
  type
    ma_float* = ma_float_553648632
else:
  static :
    hint("Declaration of " & "ma_float" & " already exists, not redeclaring")
when not declared(ma_mutex):
  type
    ma_mutex* = ma_mutex_553648753
else:
  static :
    hint("Declaration of " & "ma_mutex" & " already exists, not redeclaring")
when not declared(ma_log_callback_proc):
  type
    ma_log_callback_proc* = ma_log_callback_proc_553648763
else:
  static :
    hint("Declaration of " & "ma_log_callback_proc" &
        " already exists, not redeclaring")
when not declared(ma_pthread_t):
  type
    ma_pthread_t* = ma_pthread_t_553648642
else:
  static :
    hint("Declaration of " & "ma_pthread_t" & " already exists, not redeclaring")
when not declared(pthread_cond_t):
  type
    pthread_cond_t* = pthread_cond_t_553648652
else:
  static :
    hint("Declaration of " & "pthread_cond_t" &
        " already exists, not redeclaring")
when not declared(ma_handedness):
  type
    ma_handedness* = ma_handedness_553648939
else:
  static :
    hint("Declaration of " & "ma_handedness" &
        " already exists, not redeclaring")
when not declared(ma_channel_conversion_path):
  type
    ma_channel_conversion_path* = ma_channel_conversion_path_553648985
else:
  static :
    hint("Declaration of " & "ma_channel_conversion_path" &
        " already exists, not redeclaring")
when not declared(ma_data_source_config):
  type
    ma_data_source_config* = ma_data_source_config_553649021
else:
  static :
    hint("Declaration of " & "ma_data_source_config" &
        " already exists, not redeclaring")
when not declared(ma_standard_sample_rate):
  type
    ma_standard_sample_rate* = ma_standard_sample_rate_553648703
else:
  static :
    hint("Declaration of " & "ma_standard_sample_rate" &
        " already exists, not redeclaring")
when not declared(struct_ma_linear_resampler):
  type
    struct_ma_linear_resampler* = struct_ma_linear_resampler_553648961
else:
  static :
    hint("Declaration of " & "struct_ma_linear_resampler" &
        " already exists, not redeclaring")
when not declared(struct_ma_rb):
  type
    struct_ma_rb* = struct_ma_rb_553649055
else:
  static :
    hint("Declaration of " & "struct_ma_rb" & " already exists, not redeclaring")
when not declared(struct_ma_encoder_config):
  type
    struct_ma_encoder_config* = struct_ma_encoder_config_553649297
else:
  static :
    hint("Declaration of " & "struct_ma_encoder_config" &
        " already exists, not redeclaring")
when not declared(ma_bpf):
  type
    ma_bpf* = ma_bpf_553648843
else:
  static :
    hint("Declaration of " & "ma_bpf" & " already exists, not redeclaring")
when not declared(struct_ma_sound):
  type
    struct_ma_sound* = struct_ma_sound_553649521
else:
  static :
    hint("Declaration of " & "struct_ma_sound" &
        " already exists, not redeclaring")
when not declared(enum_ma_open_mode_flags):
  type
    enum_ma_open_mode_flags* = enum_ma_open_mode_flags_553649231
else:
  static :
    hint("Declaration of " & "enum_ma_open_mode_flags" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_config):
  type
    ma_spatializer_config* = ma_spatializer_config_553648951
else:
  static :
    hint("Declaration of " & "ma_spatializer_config" &
        " already exists, not redeclaring")
when not declared(ma_double):
  type
    ma_double* = ma_double_553648634
else:
  static :
    hint("Declaration of " & "ma_double" & " already exists, not redeclaring")
when not declared(enum_ma_aaudio_input_preset):
  type
    enum_ma_aaudio_input_preset* = enum_ma_aaudio_input_preset_553649185
else:
  static :
    hint("Declaration of " & "enum_ma_aaudio_input_preset" &
        " already exists, not redeclaring")
when not declared(struct_ma_splitter_node):
  type
    struct_ma_splitter_node* = struct_ma_splitter_node_553649439
else:
  static :
    hint("Declaration of " & "struct_ma_splitter_node" &
        " already exists, not redeclaring")
when not declared(ma_int8):
  type
    ma_int8* = ma_int8_553648610
else:
  static :
    hint("Declaration of " & "ma_int8" & " already exists, not redeclaring")
when not declared(ma_hpf1_config):
  type
    ma_hpf1_config* = ma_hpf1_config_553648809
else:
  static :
    hint("Declaration of " & "ma_hpf1_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_peak_node_config):
  type
    struct_ma_peak_node_config* = struct_ma_peak_node_config_553649483
else:
  static :
    hint("Declaration of " & "struct_ma_peak_node_config" &
        " already exists, not redeclaring")
when not declared(ma_atomic_bool32):
  type
    ma_atomic_bool32* = ma_atomic_bool32_553648743
else:
  static :
    hint("Declaration of " & "ma_atomic_bool32" &
        " already exists, not redeclaring")
when not declared(enum_ma_node_state):
  type
    enum_ma_node_state* = enum_ma_node_state_553649399
else:
  static :
    hint("Declaration of " & "enum_ma_node_state" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_info):
  type
    struct_ma_device_info* = struct_ma_device_info_553649213
else:
  static :
    hint("Declaration of " & "struct_ma_device_info" &
        " already exists, not redeclaring")
when not declared(ma_file_info):
  type
    ma_file_info* = ma_file_info_553649241
else:
  static :
    hint("Declaration of " & "ma_file_info" & " already exists, not redeclaring")
when not declared(struct_ma_job):
  type
    struct_ma_job* = struct_ma_job_553649097
else:
  static :
    hint("Declaration of " & "struct_ma_job" &
        " already exists, not redeclaring")
when not declared(ma_bpf2_config):
  type
    ma_bpf2_config* = ma_bpf2_config_553648831
else:
  static :
    hint("Declaration of " & "ma_bpf2_config" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_next_proc):
  type
    ma_data_source_get_next_proc* = ma_data_source_get_next_proc_553649017
else:
  static :
    hint("Declaration of " & "ma_data_source_get_next_proc" &
        " already exists, not redeclaring")
when not declared(struct_ma_splitter_node_config):
  type
    struct_ma_splitter_node_config* = struct_ma_splitter_node_config_553649435
else:
  static :
    hint("Declaration of " & "struct_ma_splitter_node_config" &
        " already exists, not redeclaring")
when not declared(ma_uintptr):
  type
    ma_uintptr* = ma_uintptr_553648626
else:
  static :
    hint("Declaration of " & "ma_uintptr" & " already exists, not redeclaring")
when not declared(ma_seek_proc):
  type
    ma_seek_proc* = ma_seek_proc_553649253
else:
  static :
    hint("Declaration of " & "ma_seek_proc" & " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data):
  type
    ma_paged_audio_buffer_data* = ma_paged_audio_buffer_data_553649045
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data" &
        " already exists, not redeclaring")
when not declared(struct_ma_noise):
  type
    struct_ma_noise* = struct_ma_noise_553649329
else:
  static :
    hint("Declaration of " & "struct_ma_noise" &
        " already exists, not redeclaring")
when not declared(struct_ma_notch2):
  type
    struct_ma_notch2* = struct_ma_notch2_553648851
else:
  static :
    hint("Declaration of " & "struct_ma_notch2" &
        " already exists, not redeclaring")
when not declared(enum_ma_opensl_stream_type):
  type
    enum_ma_opensl_stream_type* = enum_ma_opensl_stream_type_553649165
else:
  static :
    hint("Declaration of " & "enum_ma_opensl_stream_type" &
        " already exists, not redeclaring")
when not declared(union_ma_biquad_coefficient):
  type
    union_ma_biquad_coefficient* = union_ma_biquad_coefficient_553648773
else:
  static :
    hint("Declaration of " & "union_ma_biquad_coefficient" &
        " already exists, not redeclaring")
when not declared(ma_data_source_node):
  type
    ma_data_source_node* = ma_data_source_node_553649433
else:
  static :
    hint("Declaration of " & "ma_data_source_node" &
        " already exists, not redeclaring")
when not declared(ma_notch_node_config):
  type
    ma_notch_node_config* = ma_notch_node_config_553649477
else:
  static :
    hint("Declaration of " & "ma_notch_node_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_spatializer_config):
  type
    struct_ma_spatializer_config* = struct_ma_spatializer_config_553648949
else:
  static :
    hint("Declaration of " & "struct_ma_spatializer_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_channel_converter_config):
  type
    struct_ma_channel_converter_config* = struct_ma_channel_converter_config_553648991
else:
  static :
    hint("Declaration of " & "struct_ma_channel_converter_config" &
        " already exists, not redeclaring")
when not declared(ma_sound_config):
  type
    ma_sound_config* = ma_sound_config_553649543
else:
  static :
    hint("Declaration of " & "ma_sound_config" &
        " already exists, not redeclaring")
when not declared(ma_backend):
  type
    ma_backend* = ma_backend_553649125
else:
  static :
    hint("Declaration of " & "ma_backend" & " already exists, not redeclaring")
when not declared(ma_wasapi_usage):
  type
    ma_wasapi_usage* = ma_wasapi_usage_553649175
else:
  static :
    hint("Declaration of " & "ma_wasapi_usage" &
        " already exists, not redeclaring")
when not declared(ma_biquad):
  type
    ma_biquad* = ma_biquad_553648783
else:
  static :
    hint("Declaration of " & "ma_biquad" & " already exists, not redeclaring")
when not declared(struct_ma_hpf_node_config):
  type
    struct_ma_hpf_node_config* = struct_ma_hpf_node_config_553649459
else:
  static :
    hint("Declaration of " & "struct_ma_hpf_node_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_peak_node):
  type
    struct_ma_peak_node* = struct_ma_peak_node_553649487
else:
  static :
    hint("Declaration of " & "struct_ma_peak_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_data_buffer_node):
  type
    struct_ma_resource_manager_data_buffer_node* = struct_ma_resource_manager_data_buffer_node_553649339
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_data_buffer_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_node_input_bus):
  type
    struct_ma_node_input_bus* = struct_ma_node_input_bus_553649417
else:
  static :
    hint("Declaration of " & "struct_ma_node_input_bus" &
        " already exists, not redeclaring")
when not declared(ma_resampler):
  type
    ma_resampler* = ma_resampler_553648981
else:
  static :
    hint("Declaration of " & "ma_resampler" & " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_config):
  type
    ma_paged_audio_buffer_config* = ma_paged_audio_buffer_config_553649049
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_config" &
        " already exists, not redeclaring")
when not declared(ma_data_source_base):
  type
    ma_data_source_base* = ma_data_source_base_553649025
else:
  static :
    hint("Declaration of " & "ma_data_source_base" &
        " already exists, not redeclaring")
when not declared(ma_job_type):
  type
    ma_job_type* = ma_job_type_553649103
else:
  static :
    hint("Declaration of " & "ma_job_type" & " already exists, not redeclaring")
when not declared(ma_slot_allocator_group):
  type
    ma_slot_allocator_group* = ma_slot_allocator_group_553649091
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_group" &
        " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_config):
  type
    struct_ma_resource_manager_config* = struct_ma_resource_manager_config_553649381
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_node_graph):
  type
    struct_ma_node_graph* = struct_ma_node_graph_553649391
else:
  static :
    hint("Declaration of " & "struct_ma_node_graph" &
        " already exists, not redeclaring")
when not declared(enum_ma_job_queue_flags):
  type
    enum_ma_job_queue_flags* = enum_ma_job_queue_flags_553649107
else:
  static :
    hint("Declaration of " & "enum_ma_job_queue_flags" &
        " already exists, not redeclaring")
when not declared(struct_ma_peak2):
  type
    struct_ma_peak2* = struct_ma_peak2_553648861
else:
  static :
    hint("Declaration of " & "struct_ma_peak2" &
        " already exists, not redeclaring")
when not declared(ma_share_mode):
  type
    ma_share_mode* = ma_share_mode_553649155
else:
  static :
    hint("Declaration of " & "ma_share_mode" &
        " already exists, not redeclaring")
when not declared(ma_ios_session_category):
  type
    ma_ios_session_category* = ma_ios_session_category_553649159
else:
  static :
    hint("Declaration of " & "ma_ios_session_category" &
        " already exists, not redeclaring")
when not declared(ma_loshelf_config):
  type
    ma_loshelf_config* = ma_loshelf_config_553648869
else:
  static :
    hint("Declaration of " & "ma_loshelf_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_duplex_rb):
  type
    struct_ma_duplex_rb* = struct_ma_duplex_rb_553649063
else:
  static :
    hint("Declaration of " & "struct_ma_duplex_rb" &
        " already exists, not redeclaring")
when not declared(struct_ma_semaphore):
  type
    struct_ma_semaphore* = struct_ma_semaphore_553648759
else:
  static :
    hint("Declaration of " & "struct_ma_semaphore" &
        " already exists, not redeclaring")
when not declared(ma_node_graph):
  type
    ma_node_graph* = ma_node_graph_553649389
else:
  static :
    hint("Declaration of " & "ma_node_graph" &
        " already exists, not redeclaring")
when not declared(struct_ma_bpf_node_config):
  type
    struct_ma_bpf_node_config* = struct_ma_bpf_node_config_553649467
else:
  static :
    hint("Declaration of " & "struct_ma_bpf_node_config" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_flags):
  type
    ma_job_queue_flags* = ma_job_queue_flags_553649109
else:
  static :
    hint("Declaration of " & "ma_job_queue_flags" &
        " already exists, not redeclaring")
when not declared(struct_ma_resampling_backend_vtable):
  type
    struct_ma_resampling_backend_vtable* = struct_ma_resampling_backend_vtable_553648971
else:
  static :
    hint("Declaration of " & "struct_ma_resampling_backend_vtable" &
        " already exists, not redeclaring")
when not declared(enum_ma_backend):
  type
    enum_ma_backend* = enum_ma_backend_553649123
else:
  static :
    hint("Declaration of " & "enum_ma_backend" &
        " already exists, not redeclaring")
when not declared(struct_ma_gainer_config):
  type
    struct_ma_gainer_config* = struct_ma_gainer_config_553648893
else:
  static :
    hint("Declaration of " & "struct_ma_gainer_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_device_notification_type):
  type
    enum_ma_device_notification_type* = enum_ma_device_notification_type_553649135
else:
  static :
    hint("Declaration of " & "enum_ma_device_notification_type" &
        " already exists, not redeclaring")
when not declared(ma_biquad_coefficient):
  type
    ma_biquad_coefficient* = ma_biquad_coefficient_553648775
else:
  static :
    hint("Declaration of " & "ma_biquad_coefficient" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_supply):
  type
    ma_resource_manager_data_supply* = ma_resource_manager_data_supply_553649379
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_supply" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_callbacks):
  type
    ma_async_notification_callbacks* = ma_async_notification_callbacks_553649075
else:
  static :
    hint("Declaration of " & "ma_async_notification_callbacks" &
        " already exists, not redeclaring")
when not declared(ma_device):
  type
    ma_device* = ma_device_553648664
else:
  static :
    hint("Declaration of " & "ma_device" & " already exists, not redeclaring")
when not declared(ma_engine_node_type):
  type
    ma_engine_node_type* = ma_engine_node_type_553649529
else:
  static :
    hint("Declaration of " & "ma_engine_node_type" &
        " already exists, not redeclaring")
when not declared(enum_ma_wasapi_usage):
  type
    enum_ma_wasapi_usage* = enum_ma_wasapi_usage_553649173
else:
  static :
    hint("Declaration of " & "enum_ma_wasapi_usage" &
        " already exists, not redeclaring")
when not declared(struct_ma_bpf2_config):
  type
    struct_ma_bpf2_config* = struct_ma_bpf2_config_553648829
else:
  static :
    hint("Declaration of " & "struct_ma_bpf2_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_decoding_backend_config):
  type
    struct_ma_decoding_backend_config* = struct_ma_decoding_backend_config_553649265
else:
  static :
    hint("Declaration of " & "struct_ma_decoding_backend_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_ios_session_category):
  type
    enum_ma_ios_session_category* = enum_ma_ios_session_category_553649157
else:
  static :
    hint("Declaration of " & "enum_ma_ios_session_category" &
        " already exists, not redeclaring")
when not declared(struct_ma_atomic_uint64):
  type
    struct_ma_atomic_uint64* = struct_ma_atomic_uint64_553648733
else:
  static :
    hint("Declaration of " & "struct_ma_atomic_uint64" &
        " already exists, not redeclaring")
when not declared(struct_ma_vfs_callbacks):
  type
    struct_ma_vfs_callbacks* = struct_ma_vfs_callbacks_553649243
else:
  static :
    hint("Declaration of " & "struct_ma_vfs_callbacks" &
        " already exists, not redeclaring")
when not declared(struct_ma_audio_buffer):
  type
    struct_ma_audio_buffer* = struct_ma_audio_buffer_553649035
else:
  static :
    hint("Declaration of " & "struct_ma_audio_buffer" &
        " already exists, not redeclaring")
when not declared(struct_ma_paged_audio_buffer_data):
  type
    struct_ma_paged_audio_buffer_data* = struct_ma_paged_audio_buffer_data_553649043
else:
  static :
    hint("Declaration of " & "struct_ma_paged_audio_buffer_data" &
        " already exists, not redeclaring")
when not declared(ma_handle):
  type
    ma_handle* = ma_handle_553648636
else:
  static :
    hint("Declaration of " & "ma_handle" & " already exists, not redeclaring")
when not declared(enum_ma_resource_manager_flags):
  type
    enum_ma_resource_manager_flags* = enum_ma_resource_manager_flags_553649365
else:
  static :
    hint("Declaration of " & "enum_ma_resource_manager_flags" &
        " already exists, not redeclaring")
when not declared(struct_ma_waveform_config):
  type
    struct_ma_waveform_config* = struct_ma_waveform_config_553649305
else:
  static :
    hint("Declaration of " & "struct_ma_waveform_config" &
        " already exists, not redeclaring")
when not declared(ma_format):
  type
    ma_format* = ma_format_553648699
else:
  static :
    hint("Declaration of " & "ma_format" & " already exists, not redeclaring")
when not declared(ma_decoding_backend_vtable):
  type
    ma_decoding_backend_vtable* = ma_decoding_backend_vtable_553649271
else:
  static :
    hint("Declaration of " & "ma_decoding_backend_vtable" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream):
  type
    ma_resource_manager_data_stream* = ma_resource_manager_data_stream_553649345
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream" &
        " already exists, not redeclaring")
when not declared(ma_channel_mix_mode):
  type
    ma_channel_mix_mode* = ma_channel_mix_mode_553648707
else:
  static :
    hint("Declaration of " & "ma_channel_mix_mode" &
        " already exists, not redeclaring")
when not declared(struct_ma_peak2_config):
  type
    struct_ma_peak2_config* = struct_ma_peak2_config_553648855
else:
  static :
    hint("Declaration of " & "struct_ma_peak2_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_panner):
  type
    struct_ma_panner* = struct_ma_panner_553648909
else:
  static :
    hint("Declaration of " & "struct_ma_panner" &
        " already exists, not redeclaring")
when not declared(enum_ma_data_converter_execution_path):
  type
    enum_ma_data_converter_execution_path* = enum_ma_data_converter_execution_path_553649003
else:
  static :
    hint("Declaration of " & "enum_ma_data_converter_execution_path" &
        " already exists, not redeclaring")
when not declared(struct_ma_loshelf_node_config):
  type
    struct_ma_loshelf_node_config* = struct_ma_loshelf_node_config_553649491
else:
  static :
    hint("Declaration of " & "struct_ma_loshelf_node_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_stream_layout):
  type
    enum_ma_stream_layout* = enum_ma_stream_layout_553648682
else:
  static :
    hint("Declaration of " & "enum_ma_stream_layout" &
        " already exists, not redeclaring")
when not declared(ma_performance_profile):
  type
    ma_performance_profile* = ma_performance_profile_553648715
else:
  static :
    hint("Declaration of " & "ma_performance_profile" &
        " already exists, not redeclaring")
when not declared(ma_encoder_init_proc):
  type
    ma_encoder_init_proc* = ma_encoder_init_proc_553649291
else:
  static :
    hint("Declaration of " & "ma_encoder_init_proc" &
        " already exists, not redeclaring")
when not declared(enum_ma_waveform_type):
  type
    enum_ma_waveform_type* = enum_ma_waveform_type_553649301
else:
  static :
    hint("Declaration of " & "enum_ma_waveform_type" &
        " already exists, not redeclaring")
when not declared(ma_int64):
  type
    ma_int64* = ma_int64_553648622
else:
  static :
    hint("Declaration of " & "ma_int64" & " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_data_source):
  type
    struct_ma_resource_manager_data_source* = struct_ma_resource_manager_data_source_553649351
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_data_source" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_supply_type):
  type
    ma_resource_manager_data_supply_type* = ma_resource_manager_data_supply_type_553649375
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_supply_type" &
        " already exists, not redeclaring")
when not declared(ma_node_input_bus):
  type
    ma_node_input_bus* = ma_node_input_bus_553649415
else:
  static :
    hint("Declaration of " & "ma_node_input_bus" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_poll):
  type
    ma_async_notification_poll* = ma_async_notification_poll_553649079
else:
  static :
    hint("Declaration of " & "ma_async_notification_poll" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_config):
  type
    struct_ma_device_config* = struct_ma_device_config_553649207
else:
  static :
    hint("Declaration of " & "struct_ma_device_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_lpf_node):
  type
    struct_ma_lpf_node* = struct_ma_lpf_node_553649455
else:
  static :
    hint("Declaration of " & "struct_ma_lpf_node" &
        " already exists, not redeclaring")
when not declared(enum_ma_handedness):
  type
    enum_ma_handedness* = enum_ma_handedness_553648937
else:
  static :
    hint("Declaration of " & "enum_ma_handedness" &
        " already exists, not redeclaring")
when not declared(struct_ma_bpf_node):
  type
    struct_ma_bpf_node* = struct_ma_bpf_node_553649471
else:
  static :
    hint("Declaration of " & "struct_ma_bpf_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_device):
  type
    struct_ma_device* = struct_ma_device_553648666
else:
  static :
    hint("Declaration of " & "struct_ma_device" &
        " already exists, not redeclaring")
when not declared(ma_dither_mode):
  type
    ma_dither_mode* = ma_dither_mode_553648695
else:
  static :
    hint("Declaration of " & "ma_dither_mode" &
        " already exists, not redeclaring")
when not declared(struct_ma_channel_converter):
  type
    struct_ma_channel_converter* = struct_ma_channel_converter_553648995
else:
  static :
    hint("Declaration of " & "struct_ma_channel_converter" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_execution_path):
  type
    ma_data_converter_execution_path* = ma_data_converter_execution_path_553649005
else:
  static :
    hint("Declaration of " & "ma_data_converter_execution_path" &
        " already exists, not redeclaring")
when not declared(ma_tell_proc):
  type
    ma_tell_proc* = ma_tell_proc_553649255
else:
  static :
    hint("Declaration of " & "ma_tell_proc" & " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_config):
  type
    ma_resource_manager_data_source_config* = ma_resource_manager_data_source_config_553649371
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_config" &
        " already exists, not redeclaring")
when not declared(ma_thread_priority):
  type
    ma_thread_priority* = ma_thread_priority_553648749
else:
  static :
    hint("Declaration of " & "ma_thread_priority" &
        " already exists, not redeclaring")
when not declared(struct_ma_data_source_base):
  type
    struct_ma_data_source_base* = struct_ma_data_source_base_553649023
else:
  static :
    hint("Declaration of " & "struct_ma_data_source_base" &
        " already exists, not redeclaring")
when not declared(struct_ma_paged_audio_buffer):
  type
    struct_ma_paged_audio_buffer* = struct_ma_paged_audio_buffer_553649051
else:
  static :
    hint("Declaration of " & "struct_ma_paged_audio_buffer" &
        " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_pipeline_stage_notification):
  type
    struct_ma_resource_manager_pipeline_stage_notification* = struct_ma_resource_manager_pipeline_stage_notification_553649357
else:
  static :
    hint("Declaration of " &
        "struct_ma_resource_manager_pipeline_stage_notification" &
        " already exists, not redeclaring")
when not declared(struct_ma_data_source_vtable):
  type
    struct_ma_data_source_vtable* = struct_ma_data_source_vtable_553649013
else:
  static :
    hint("Declaration of " & "struct_ma_data_source_vtable" &
        " already exists, not redeclaring")
when not declared(ma_positioning):
  type
    ma_positioning* = ma_positioning_553648935
else:
  static :
    hint("Declaration of " & "ma_positioning" &
        " already exists, not redeclaring")
when not declared(ma_log_callback):
  type
    ma_log_callback* = ma_log_callback_553648767
else:
  static :
    hint("Declaration of " & "ma_log_callback" &
        " already exists, not redeclaring")
when not declared(ma_device_id):
  type
    ma_device_id* = ma_device_id_553649199
else:
  static :
    hint("Declaration of " & "ma_device_id" & " already exists, not redeclaring")
when not declared(ma_node_state):
  type
    ma_node_state* = ma_node_state_553649401
else:
  static :
    hint("Declaration of " & "ma_node_state" &
        " already exists, not redeclaring")
when not declared(struct_ma_spatializer_listener_config):
  type
    struct_ma_spatializer_listener_config* = struct_ma_spatializer_listener_config_553648941
else:
  static :
    hint("Declaration of " & "struct_ma_spatializer_listener_config" &
        " already exists, not redeclaring")
when not declared(ma_delay):
  type
    ma_delay* = ma_delay_553648891
else:
  static :
    hint("Declaration of " & "ma_delay" & " already exists, not redeclaring")
when not declared(struct_ma_device_notification):
  type
    struct_ma_device_notification* = struct_ma_device_notification_553649139
else:
  static :
    hint("Declaration of " & "struct_ma_device_notification" &
        " already exists, not redeclaring")
when not declared(ma_encoding_format):
  type
    ma_encoding_format* = ma_encoding_format_553649259
else:
  static :
    hint("Declaration of " & "ma_encoding_format" &
        " already exists, not redeclaring")
when not declared(ma_int32):
  type
    ma_int32* = ma_int32_553648618
else:
  static :
    hint("Declaration of " & "ma_int32" & " already exists, not redeclaring")
when not declared(struct_ma_engine_config):
  type
    struct_ma_engine_config* = struct_ma_engine_config_553649555
else:
  static :
    hint("Declaration of " & "struct_ma_engine_config" &
        " already exists, not redeclaring")
when not declared(ma_node_output_bus):
  type
    ma_node_output_bus* = ma_node_output_bus_553649411
else:
  static :
    hint("Declaration of " & "ma_node_output_bus" &
        " already exists, not redeclaring")
when not declared(enum_ma_thread_priority):
  type
    enum_ma_thread_priority* = enum_ma_thread_priority_553648747
else:
  static :
    hint("Declaration of " & "enum_ma_thread_priority" &
        " already exists, not redeclaring")
when not declared(ma_peak2_config):
  type
    ma_peak2_config* = ma_peak2_config_553648857
else:
  static :
    hint("Declaration of " & "ma_peak2_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_job_thread_config):
  type
    struct_ma_device_job_thread_config* = struct_ma_device_job_thread_config_553649127
else:
  static :
    hint("Declaration of " & "struct_ma_device_job_thread_config" &
        " already exists, not redeclaring")
when not declared(ma_decoder_tell_proc):
  type
    ma_decoder_tell_proc* = ma_decoder_tell_proc_553649277
else:
  static :
    hint("Declaration of " & "ma_decoder_tell_proc" &
        " already exists, not redeclaring")
when not declared(enum_ma_engine_node_type):
  type
    enum_ma_engine_node_type* = enum_ma_engine_node_type_553649527
else:
  static :
    hint("Declaration of " & "enum_ma_engine_node_type" &
        " already exists, not redeclaring")
when not declared(struct_ma_atomic_bool32):
  type
    struct_ma_atomic_bool32* = struct_ma_atomic_bool32_553648741
else:
  static :
    hint("Declaration of " & "struct_ma_atomic_bool32" &
        " already exists, not redeclaring")
when not declared(ma_duplex_rb):
  type
    ma_duplex_rb* = ma_duplex_rb_553649065
else:
  static :
    hint("Declaration of " & "ma_duplex_rb" & " already exists, not redeclaring")
when not declared(ma_vfs_file):
  type
    ma_vfs_file* = ma_vfs_file_553649229
else:
  static :
    hint("Declaration of " & "ma_vfs_file" & " already exists, not redeclaring")
when not declared(ma_encoder_config):
  type
    ma_encoder_config* = ma_encoder_config_553649299
else:
  static :
    hint("Declaration of " & "ma_encoder_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_node_output_bus):
  type
    struct_ma_node_output_bus* = struct_ma_node_output_bus_553649413
else:
  static :
    hint("Declaration of " & "struct_ma_node_output_bus" &
        " already exists, not redeclaring")
when not declared(ma_lpf):
  type
    ma_lpf* = ma_lpf_553648805
else:
  static :
    hint("Declaration of " & "ma_lpf" & " already exists, not redeclaring")
when not declared(ma_hpf_node):
  type
    ma_hpf_node* = ma_hpf_node_553649465
else:
  static :
    hint("Declaration of " & "ma_hpf_node" & " already exists, not redeclaring")
when not declared(ma_pulsewave_config):
  type
    ma_pulsewave_config* = ma_pulsewave_config_553649315
else:
  static :
    hint("Declaration of " & "ma_pulsewave_config" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_config):
  type
    ma_job_queue_config* = ma_job_queue_config_553648606
else:
  static :
    hint("Declaration of " & "ma_job_queue_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_decoder_config):
  type
    struct_ma_decoder_config* = struct_ma_decoder_config_553649279
else:
  static :
    hint("Declaration of " & "struct_ma_decoder_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_hpf2):
  type
    struct_ma_hpf2* = struct_ma_hpf2_553648817
else:
  static :
    hint("Declaration of " & "struct_ma_hpf2" &
        " already exists, not redeclaring")
when not declared(struct_ma_pcm_rb):
  type
    struct_ma_pcm_rb* = struct_ma_pcm_rb_553649059
else:
  static :
    hint("Declaration of " & "struct_ma_pcm_rb" &
        " already exists, not redeclaring")
when not declared(struct_ma_decoder):
  type
    struct_ma_decoder* = struct_ma_decoder_553649263
else:
  static :
    hint("Declaration of " & "struct_ma_decoder" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager):
  type
    ma_resource_manager* = ma_resource_manager_553649333
else:
  static :
    hint("Declaration of " & "ma_resource_manager" &
        " already exists, not redeclaring")
when not declared(ma_spatializer):
  type
    ma_spatializer* = ma_spatializer_553648955
else:
  static :
    hint("Declaration of " & "ma_spatializer" &
        " already exists, not redeclaring")
when not declared(ma_channel):
  type
    ma_channel* = ma_channel_553648668
else:
  static :
    hint("Declaration of " & "ma_channel" & " already exists, not redeclaring")
when not declared(struct_ma_resampler):
  type
    struct_ma_resampler* = struct_ma_resampler_553648979
else:
  static :
    hint("Declaration of " & "struct_ma_resampler" &
        " already exists, not redeclaring")
when not declared(struct_ma_audio_buffer_ref):
  type
    struct_ma_audio_buffer_ref* = struct_ma_audio_buffer_ref_553649027
else:
  static :
    hint("Declaration of " & "struct_ma_audio_buffer_ref" &
        " already exists, not redeclaring")
when not declared(ma_splitter_node):
  type
    ma_splitter_node* = ma_splitter_node_553649441
else:
  static :
    hint("Declaration of " & "ma_splitter_node" &
        " already exists, not redeclaring")
when not declared(ma_engine_node_config):
  type
    ma_engine_node_config* = ma_engine_node_config_553649533
else:
  static :
    hint("Declaration of " & "ma_engine_node_config" &
        " already exists, not redeclaring")
when not declared(ma_result):
  type
    ma_result* = ma_result_553648676
else:
  static :
    hint("Declaration of " & "ma_result" & " already exists, not redeclaring")
when not declared(ma_sound_end_proc):
  type
    ma_sound_end_proc* = ma_sound_end_proc_553649539
else:
  static :
    hint("Declaration of " & "ma_sound_end_proc" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_config):
  type
    ma_spatializer_listener_config* = ma_spatializer_listener_config_553648943
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_format):
  type
    enum_ma_format* = enum_ma_format_553648697
else:
  static :
    hint("Declaration of " & "enum_ma_format" &
        " already exists, not redeclaring")
when not declared(compiler_atomic_wide_counter):
  type
    compiler_atomic_wide_counter* = compiler_atomic_wide_counter_553649569
else:
  static :
    hint("Declaration of " & "compiler_atomic_wide_counter" &
        " already exists, not redeclaring")
when not declared(ma_gainer):
  type
    ma_gainer* = ma_gainer_553648899
else:
  static :
    hint("Declaration of " & "ma_gainer" & " already exists, not redeclaring")
when not declared(ma_notch_node):
  type
    ma_notch_node* = ma_notch_node_553649481
else:
  static :
    hint("Declaration of " & "ma_notch_node" &
        " already exists, not redeclaring")
when not declared(enum_ma_encoding_format):
  type
    enum_ma_encoding_format* = enum_ma_encoding_format_553649257
else:
  static :
    hint("Declaration of " & "enum_ma_encoding_format" &
        " already exists, not redeclaring")
when not declared(ma_splitter_node_config):
  type
    ma_splitter_node_config* = ma_splitter_node_config_553649437
else:
  static :
    hint("Declaration of " & "ma_splitter_node_config" &
        " already exists, not redeclaring")
when not declared(ma_delay_config):
  type
    ma_delay_config* = ma_delay_config_553648887
else:
  static :
    hint("Declaration of " & "ma_delay_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_channel_conversion_path):
  type
    enum_ma_channel_conversion_path* = enum_ma_channel_conversion_path_553648983
else:
  static :
    hint("Declaration of " & "enum_ma_channel_conversion_path" &
        " already exists, not redeclaring")
when not declared(struct_ma_context_config):
  type
    struct_ma_context_config* = struct_ma_context_config_553649203
else:
  static :
    hint("Declaration of " & "struct_ma_context_config" &
        " already exists, not redeclaring")
when not declared(ma_stop_proc):
  type
    ma_stop_proc* = ma_stop_proc_553649147
else:
  static :
    hint("Declaration of " & "ma_stop_proc" & " already exists, not redeclaring")
when not declared(ma_bool32):
  type
    ma_bool32* = ma_bool32_553648630
else:
  static :
    hint("Declaration of " & "ma_bool32" & " already exists, not redeclaring")
when not declared(ma_context):
  type
    ma_context* = ma_context_553648660
else:
  static :
    hint("Declaration of " & "ma_context" & " already exists, not redeclaring")
when not declared(ma_biquad_config):
  type
    ma_biquad_config* = ma_biquad_config_553648779
else:
  static :
    hint("Declaration of " & "ma_biquad_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_hpf1_config):
  type
    struct_ma_hpf1_config* = struct_ma_hpf1_config_553648807
else:
  static :
    hint("Declaration of " & "struct_ma_hpf1_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_job_queue_config):
  type
    struct_ma_job_queue_config* = struct_ma_job_queue_config_553649111
else:
  static :
    hint("Declaration of " & "struct_ma_job_queue_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_decoding_backend_vtable):
  type
    struct_ma_decoding_backend_vtable* = struct_ma_decoding_backend_vtable_553649269
else:
  static :
    hint("Declaration of " & "struct_ma_decoding_backend_vtable" &
        " already exists, not redeclaring")
when not declared(struct_ma_node_graph_config):
  type
    struct_ma_node_graph_config* = struct_ma_node_graph_config_553649423
else:
  static :
    hint("Declaration of " & "struct_ma_node_graph_config" &
        " already exists, not redeclaring")
when not declared(ma_peak_node):
  type
    ma_peak_node* = ma_peak_node_553649489
else:
  static :
    hint("Declaration of " & "ma_peak_node" & " already exists, not redeclaring")
when not declared(ma_resampler_config):
  type
    ma_resampler_config* = ma_resampler_config_553648965
else:
  static :
    hint("Declaration of " & "ma_resampler_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_notch2_config):
  type
    struct_ma_notch2_config* = struct_ma_notch2_config_553648845
else:
  static :
    hint("Declaration of " & "struct_ma_notch2_config" &
        " already exists, not redeclaring")
when not declared(ma_notch2):
  type
    ma_notch2* = ma_notch2_553648853
else:
  static :
    hint("Declaration of " & "ma_notch2" & " already exists, not redeclaring")
when not declared(ma_hpf_node_config):
  type
    ma_hpf_node_config* = ma_hpf_node_config_553649461
else:
  static :
    hint("Declaration of " & "ma_hpf_node_config" &
        " already exists, not redeclaring")
when not declared(ma_device_config):
  type
    ma_device_config* = ma_device_config_553649205
else:
  static :
    hint("Declaration of " & "ma_device_config" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_config):
  type
    ma_sound_group_config* = ma_sound_group_config_553649549
else:
  static :
    hint("Declaration of " & "ma_sound_group_config" &
        " already exists, not redeclaring")
when not declared(pthread_mutex_t):
  type
    pthread_mutex_t* = pthread_mutex_t_553648648
else:
  static :
    hint("Declaration of " & "pthread_mutex_t" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_config):
  type
    ma_lpf1_config* = ma_lpf1_config_553648787
else:
  static :
    hint("Declaration of " & "ma_lpf1_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_biquad_node):
  type
    struct_ma_biquad_node* = struct_ma_biquad_node_553649447
else:
  static :
    hint("Declaration of " & "struct_ma_biquad_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_node_base):
  type
    struct_ma_node_base* = struct_ma_node_base_553649421
else:
  static :
    hint("Declaration of " & "struct_ma_node_base" &
        " already exists, not redeclaring")
when not declared(union_atomic_wide_counter):
  type
    union_atomic_wide_counter* = union_atomic_wide_counter_553649573
else:
  static :
    hint("Declaration of " & "union_atomic_wide_counter" &
        " already exists, not redeclaring")
when not declared(ma_fence):
  type
    ma_fence* = ma_fence_553649069
else:
  static :
    hint("Declaration of " & "ma_fence" & " already exists, not redeclaring")
when not declared(ma_hpf1):
  type
    ma_hpf1* = ma_hpf1_553648815
else:
  static :
    hint("Declaration of " & "ma_hpf1" & " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_pipeline_notifications):
  type
    struct_ma_resource_manager_pipeline_notifications* = struct_ma_resource_manager_pipeline_notifications_553649361
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_pipeline_notifications" &
        " already exists, not redeclaring")
when not declared(ma_device_data_proc):
  type
    ma_device_data_proc* = ma_device_data_proc_553649145
else:
  static :
    hint("Declaration of " & "ma_device_data_proc" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_config):
  type
    ma_hishelf2_config* = ma_hishelf2_config_553648877
else:
  static :
    hint("Declaration of " & "ma_hishelf2_config" &
        " already exists, not redeclaring")
when not declared(ma_device_job_thread):
  type
    ma_device_job_thread* = ma_device_job_thread_553649133
else:
  static :
    hint("Declaration of " & "ma_device_job_thread" &
        " already exists, not redeclaring")
when not declared(ma_bool8):
  type
    ma_bool8* = ma_bool8_553648628
else:
  static :
    hint("Declaration of " & "ma_bool8" & " already exists, not redeclaring")
when not declared(ma_aaudio_usage):
  type
    ma_aaudio_usage* = ma_aaudio_usage_553649179
else:
  static :
    hint("Declaration of " & "ma_aaudio_usage" &
        " already exists, not redeclaring")
when not declared(ma_node_config):
  type
    ma_node_config* = ma_node_config_553649409
else:
  static :
    hint("Declaration of " & "ma_node_config" &
        " already exists, not redeclaring")
when not declared(ma_lpf_node_config):
  type
    ma_lpf_node_config* = ma_lpf_node_config_553649453
else:
  static :
    hint("Declaration of " & "ma_lpf_node_config" &
        " already exists, not redeclaring")
when not declared(ma_uint16):
  type
    ma_uint16* = ma_uint16_553648616
else:
  static :
    hint("Declaration of " & "ma_uint16" & " already exists, not redeclaring")
when not declared(ma_lpf2):
  type
    ma_lpf2* = ma_lpf2_553648797
else:
  static :
    hint("Declaration of " & "ma_lpf2" & " already exists, not redeclaring")
when not declared(struct_ma_notch_node):
  type
    struct_ma_notch_node* = struct_ma_notch_node_553649479
else:
  static :
    hint("Declaration of " & "struct_ma_notch_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_atomic_int32):
  type
    struct_ma_atomic_int32* = struct_ma_atomic_int32_553648729
else:
  static :
    hint("Declaration of " & "struct_ma_atomic_int32" &
        " already exists, not redeclaring")
when not declared(ma_data_converter):
  type
    ma_data_converter* = ma_data_converter_553649009
else:
  static :
    hint("Declaration of " & "ma_data_converter" &
        " already exists, not redeclaring")
when not declared(ma_atomic_uint64):
  type
    ma_atomic_uint64* = ma_atomic_uint64_553648735
else:
  static :
    hint("Declaration of " & "ma_atomic_uint64" &
        " already exists, not redeclaring")
when not declared(ma_hishelf_node_config):
  type
    ma_hishelf_node_config* = ma_hishelf_node_config_553649501
else:
  static :
    hint("Declaration of " & "ma_hishelf_node_config" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb):
  type
    ma_pcm_rb* = ma_pcm_rb_553649061
else:
  static :
    hint("Declaration of " & "ma_pcm_rb" & " already exists, not redeclaring")
when not declared(ma_thread):
  type
    ma_thread* = ma_thread_553648751
else:
  static :
    hint("Declaration of " & "ma_thread" & " already exists, not redeclaring")
when not declared(struct_ma_async_notification_callbacks):
  type
    struct_ma_async_notification_callbacks* = struct_ma_async_notification_callbacks_553649073
else:
  static :
    hint("Declaration of " & "struct_ma_async_notification_callbacks" &
        " already exists, not redeclaring")
when not declared(struct_ma_async_notification_event):
  type
    struct_ma_async_notification_event* = struct_ma_async_notification_event_553649081
else:
  static :
    hint("Declaration of " & "struct_ma_async_notification_event" &
        " already exists, not redeclaring")
when not declared(ma_decoder_seek_proc):
  type
    ma_decoder_seek_proc* = ma_decoder_seek_proc_553649275
else:
  static :
    hint("Declaration of " & "ma_decoder_seek_proc" &
        " already exists, not redeclaring")
when not declared(struct_ma_allocation_callbacks):
  type
    struct_ma_allocation_callbacks* = struct_ma_allocation_callbacks_553648717
else:
  static :
    hint("Declaration of " & "struct_ma_allocation_callbacks" &
        " already exists, not redeclaring")
when not declared(struct_ma_waveform):
  type
    struct_ma_waveform* = struct_ma_waveform_553649309
else:
  static :
    hint("Declaration of " & "struct_ma_waveform" &
        " already exists, not redeclaring")
when not declared(compiler_pthread_list_t):
  type
    compiler_pthread_list_t* = compiler_pthread_list_t_553649567
else:
  static :
    hint("Declaration of " & "compiler_pthread_list_t" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_config):
  type
    ma_lpf2_config* = ma_lpf2_config_553648789
else:
  static :
    hint("Declaration of " & "ma_lpf2_config" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source):
  type
    ma_resource_manager_data_source* = ma_resource_manager_data_source_553649349
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source" &
        " already exists, not redeclaring")
when not declared(ma_encoder_write_proc):
  type
    ma_encoder_write_proc* = ma_encoder_write_proc_553649287
else:
  static :
    hint("Declaration of " & "ma_encoder_write_proc" &
        " already exists, not redeclaring")
when not declared(ma_timer):
  type
    ma_timer* = ma_timer_553649195
else:
  static :
    hint("Declaration of " & "ma_timer" & " already exists, not redeclaring")
when not declared(ma_opensl_stream_type):
  type
    ma_opensl_stream_type* = ma_opensl_stream_type_553649167
else:
  static :
    hint("Declaration of " & "ma_opensl_stream_type" &
        " already exists, not redeclaring")
when not declared(ma_vfs_callbacks):
  type
    ma_vfs_callbacks* = ma_vfs_callbacks_553649245
else:
  static :
    hint("Declaration of " & "ma_vfs_callbacks" &
        " already exists, not redeclaring")
when not declared(struct_ma_paged_audio_buffer_page):
  type
    struct_ma_paged_audio_buffer_page* = struct_ma_paged_audio_buffer_page_553649041
else:
  static :
    hint("Declaration of " & "struct_ma_paged_audio_buffer_page" &
        " already exists, not redeclaring")
when not declared(ma_aaudio_content_type):
  type
    ma_aaudio_content_type* = ma_aaudio_content_type_553649183
else:
  static :
    hint("Declaration of " & "ma_aaudio_content_type" &
        " already exists, not redeclaring")
when not declared(enum_ma_node_flags):
  type
    enum_ma_node_flags* = enum_ma_node_flags_553649395
else:
  static :
    hint("Declaration of " & "enum_ma_node_flags" &
        " already exists, not redeclaring")
when not declared(struct_ma_encoder):
  type
    struct_ma_encoder* = struct_ma_encoder_553649285
else:
  static :
    hint("Declaration of " & "struct_ma_encoder" &
        " already exists, not redeclaring")
when not declared(enum_ma_stream_format):
  type
    enum_ma_stream_format* = enum_ma_stream_format_553648678
else:
  static :
    hint("Declaration of " & "enum_ma_stream_format" &
        " already exists, not redeclaring")
when not declared(struct_ma_hpf):
  type
    struct_ma_hpf* = struct_ma_hpf_553648825
else:
  static :
    hint("Declaration of " & "struct_ma_hpf" &
        " already exists, not redeclaring")
when not declared(ma_pan_mode):
  type
    ma_pan_mode* = ma_pan_mode_553648903
else:
  static :
    hint("Declaration of " & "ma_pan_mode" & " already exists, not redeclaring")
when not declared(internal_ma_channel_position):
  type
    internal_ma_channel_position* = internal_ma_channel_position_553648672
else:
  static :
    hint("Declaration of " & "internal_ma_channel_position" &
        " already exists, not redeclaring")
when not declared(struct_ma_context):
  type
    struct_ma_context* = struct_ma_context_553648662
else:
  static :
    hint("Declaration of " & "struct_ma_context" &
        " already exists, not redeclaring")
when not declared(struct_ma_data_source_node):
  type
    struct_ma_data_source_node* = struct_ma_data_source_node_553649431
else:
  static :
    hint("Declaration of " & "struct_ma_data_source_node" &
        " already exists, not redeclaring")
when not declared(ma_hishelf_node):
  type
    ma_hishelf_node* = ma_hishelf_node_553649505
else:
  static :
    hint("Declaration of " & "ma_hishelf_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_delay):
  type
    struct_ma_delay* = struct_ma_delay_553648889
else:
  static :
    hint("Declaration of " & "struct_ma_delay" &
        " already exists, not redeclaring")
when not declared(ma_engine):
  type
    ma_engine* = ma_engine_553649515
else:
  static :
    hint("Declaration of " & "ma_engine" & " already exists, not redeclaring")
when not declared(ma_engine_node):
  type
    ma_engine_node* = ma_engine_node_553649537
else:
  static :
    hint("Declaration of " & "ma_engine_node" &
        " already exists, not redeclaring")
when not declared(ma_allocation_callbacks):
  type
    ma_allocation_callbacks* = ma_allocation_callbacks_553648719
else:
  static :
    hint("Declaration of " & "ma_allocation_callbacks" &
        " already exists, not redeclaring")
when not declared(ma_mono_expansion_mode):
  type
    ma_mono_expansion_mode* = ma_mono_expansion_mode_553648989
else:
  static :
    hint("Declaration of " & "ma_mono_expansion_mode" &
        " already exists, not redeclaring")
when not declared(ma_encoder_seek_proc):
  type
    ma_encoder_seek_proc* = ma_encoder_seek_proc_553649289
else:
  static :
    hint("Declaration of " & "ma_encoder_seek_proc" &
        " already exists, not redeclaring")
when not declared(ma_job_queue):
  type
    ma_job_queue* = ma_job_queue_553648608
else:
  static :
    hint("Declaration of " & "ma_job_queue" & " already exists, not redeclaring")
when not declared(ma_lcg):
  type
    ma_lcg* = ma_lcg_553648723
else:
  static :
    hint("Declaration of " & "ma_lcg" & " already exists, not redeclaring")
when not declared(enum_ma_ios_session_category_option):
  type
    enum_ma_ios_session_category_option* = enum_ma_ios_session_category_option_553649161
else:
  static :
    hint("Declaration of " & "enum_ma_ios_session_category_option" &
        " already exists, not redeclaring")
when not declared(ma_encoder_write_pcm_frames_proc):
  type
    ma_encoder_write_pcm_frames_proc* = ma_encoder_write_pcm_frames_proc_553649295
else:
  static :
    hint("Declaration of " & "ma_encoder_write_pcm_frames_proc" &
        " already exists, not redeclaring")
when not declared(ma_default_vfs):
  type
    ma_default_vfs* = ma_default_vfs_553649249
else:
  static :
    hint("Declaration of " & "ma_default_vfs" &
        " already exists, not redeclaring")
when not declared(struct_ma_backend_callbacks):
  type
    struct_ma_backend_callbacks* = struct_ma_backend_callbacks_553649211
else:
  static :
    hint("Declaration of " & "struct_ma_backend_callbacks" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer):
  type
    ma_resource_manager_data_buffer* = ma_resource_manager_data_buffer_553649341
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer" &
        " already exists, not redeclaring")
when not declared(struct_ma_delay_node_config):
  type
    struct_ma_delay_node_config* = struct_ma_delay_node_config_553649507
else:
  static :
    hint("Declaration of " & "struct_ma_delay_node_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_resampler_config):
  type
    struct_ma_resampler_config* = struct_ma_resampler_config_553648967
else:
  static :
    hint("Declaration of " & "struct_ma_resampler_config" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_config):
  type
    ma_linear_resampler_config* = ma_linear_resampler_config_553648959
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_config" &
        " already exists, not redeclaring")
when not declared(ma_lpf1):
  type
    ma_lpf1* = ma_lpf1_553648793
else:
  static :
    hint("Declaration of " & "ma_lpf1" & " already exists, not redeclaring")
when not declared(enum_ma_dither_mode):
  type
    enum_ma_dither_mode* = enum_ma_dither_mode_553648693
else:
  static :
    hint("Declaration of " & "enum_ma_dither_mode" &
        " already exists, not redeclaring")
when not declared(enum_ma_log_level):
  type
    enum_ma_log_level* = enum_ma_log_level_553648656
else:
  static :
    hint("Declaration of " & "enum_ma_log_level" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_job_thread):
  type
    struct_ma_device_job_thread* = struct_ma_device_job_thread_553649131
else:
  static :
    hint("Declaration of " & "struct_ma_device_job_thread" &
        " already exists, not redeclaring")
when not declared(struct_ma_log_callback):
  type
    struct_ma_log_callback* = struct_ma_log_callback_553648765
else:
  static :
    hint("Declaration of " & "struct_ma_log_callback" &
        " already exists, not redeclaring")
when not declared(ma_peak2):
  type
    ma_peak2* = ma_peak2_553648863
else:
  static :
    hint("Declaration of " & "ma_peak2" & " already exists, not redeclaring")
when not declared(ma_sound_inlined):
  type
    ma_sound_inlined* = ma_sound_inlined_553649545
else:
  static :
    hint("Declaration of " & "ma_sound_inlined" &
        " already exists, not redeclaring")
when not declared(struct_ma_vec3f):
  type
    struct_ma_vec3f* = struct_ma_vec3f_553648921
else:
  static :
    hint("Declaration of " & "struct_ma_vec3f" &
        " already exists, not redeclaring")
when not declared(ma_device_job_thread_config):
  type
    ma_device_job_thread_config* = ma_device_job_thread_config_553649129
else:
  static :
    hint("Declaration of " & "ma_device_job_thread_config" &
        " already exists, not redeclaring")
when not declared(ma_encoder):
  type
    ma_encoder* = ma_encoder_553649283
else:
  static :
    hint("Declaration of " & "ma_encoder" & " already exists, not redeclaring")
when not declared(ma_delay_node_config):
  type
    ma_delay_node_config* = ma_delay_node_config_553649509
else:
  static :
    hint("Declaration of " & "ma_delay_node_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_job_type):
  type
    enum_ma_job_type* = enum_ma_job_type_553649101
else:
  static :
    hint("Declaration of " & "enum_ma_job_type" &
        " already exists, not redeclaring")
when not declared(enum_ma_aaudio_allowed_capture_policy):
  type
    enum_ma_aaudio_allowed_capture_policy* = enum_ma_aaudio_allowed_capture_policy_553649189
else:
  static :
    hint("Declaration of " & "enum_ma_aaudio_allowed_capture_policy" &
        " already exists, not redeclaring")
when not declared(enum_ma_aaudio_usage):
  type
    enum_ma_aaudio_usage* = enum_ma_aaudio_usage_553649177
else:
  static :
    hint("Declaration of " & "enum_ma_aaudio_usage" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener):
  type
    ma_spatializer_listener* = ma_spatializer_listener_553648947
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener" &
        " already exists, not redeclaring")
when not declared(struct_ma_data_source_node_config):
  type
    struct_ma_data_source_node_config* = struct_ma_data_source_node_config_553649427
else:
  static :
    hint("Declaration of " & "struct_ma_data_source_node_config" &
        " already exists, not redeclaring")
when not declared(ma_bpf_node_config):
  type
    ma_bpf_node_config* = ma_bpf_node_config_553649469
else:
  static :
    hint("Declaration of " & "ma_bpf_node_config" &
        " already exists, not redeclaring")
when not declared(ma_device_notification_proc):
  type
    ma_device_notification_proc* = ma_device_notification_proc_553649143
else:
  static :
    hint("Declaration of " & "ma_device_notification_proc" &
        " already exists, not redeclaring")
when not declared(ma_node_vtable):
  type
    ma_node_vtable* = ma_node_vtable_553649405
else:
  static :
    hint("Declaration of " & "ma_node_vtable" &
        " already exists, not redeclaring")
when not declared(ma_waveform_type):
  type
    ma_waveform_type* = ma_waveform_type_553649303
else:
  static :
    hint("Declaration of " & "ma_waveform_type" &
        " already exists, not redeclaring")
when not declared(ma_bpf_node):
  type
    ma_bpf_node* = ma_bpf_node_553649473
else:
  static :
    hint("Declaration of " & "ma_bpf_node" & " already exists, not redeclaring")
when not declared(ma_slot_allocator_config):
  type
    ma_slot_allocator_config* = ma_slot_allocator_config_553649087
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_loshelf2_config):
  type
    struct_ma_loshelf2_config* = struct_ma_loshelf2_config_553648865
else:
  static :
    hint("Declaration of " & "struct_ma_loshelf2_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_lcg):
  type
    struct_ma_lcg* = struct_ma_lcg_553648721
else:
  static :
    hint("Declaration of " & "struct_ma_lcg" &
        " already exists, not redeclaring")
when not declared(ma_atomic_float):
  type
    ma_atomic_float* = ma_atomic_float_553648739
else:
  static :
    hint("Declaration of " & "ma_atomic_float" &
        " already exists, not redeclaring")
when not declared(struct_ma_data_converter):
  type
    struct_ma_data_converter* = struct_ma_data_converter_553649007
else:
  static :
    hint("Declaration of " & "struct_ma_data_converter" &
        " already exists, not redeclaring")
when not declared(struct_ma_biquad_node_config):
  type
    struct_ma_biquad_node_config* = struct_ma_biquad_node_config_553649443
else:
  static :
    hint("Declaration of " & "struct_ma_biquad_node_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_delay_node):
  type
    struct_ma_delay_node* = struct_ma_delay_node_553649511
else:
  static :
    hint("Declaration of " & "struct_ma_delay_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_descriptor):
  type
    struct_ma_device_descriptor* = struct_ma_device_descriptor_553649219
else:
  static :
    hint("Declaration of " & "struct_ma_device_descriptor" &
        " already exists, not redeclaring")
when not declared(ma_hpf):
  type
    ma_hpf* = ma_hpf_553648827
else:
  static :
    hint("Declaration of " & "ma_hpf" & " already exists, not redeclaring")
when not declared(ma_noise_type):
  type
    ma_noise_type* = ma_noise_type_553649323
else:
  static :
    hint("Declaration of " & "ma_noise_type" &
        " already exists, not redeclaring")
when not declared(ma_stream_format):
  type
    ma_stream_format* = ma_stream_format_553648680
else:
  static :
    hint("Declaration of " & "ma_stream_format" &
        " already exists, not redeclaring")
when not declared(ma_hishelf_config):
  type
    ma_hishelf_config* = ma_hishelf_config_553648879
else:
  static :
    hint("Declaration of " & "ma_hishelf_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_mono_expansion_mode):
  type
    enum_ma_mono_expansion_mode* = enum_ma_mono_expansion_mode_553648987
else:
  static :
    hint("Declaration of " & "enum_ma_mono_expansion_mode" &
        " already exists, not redeclaring")
when not declared(ma_sound_group):
  type
    ma_sound_group* = ma_sound_group_553649551
else:
  static :
    hint("Declaration of " & "ma_sound_group" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_page):
  type
    ma_paged_audio_buffer_page* = ma_paged_audio_buffer_page_553649039
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_page" &
        " already exists, not redeclaring")
when not declared(wchar_t):
  type
    wchar_t* = wchar_t_553649105
else:
  static :
    hint("Declaration of " & "wchar_t" & " already exists, not redeclaring")
when not declared(struct_ma_slot_allocator_group):
  type
    struct_ma_slot_allocator_group* = struct_ma_slot_allocator_group_553649089
else:
  static :
    hint("Declaration of " & "struct_ma_slot_allocator_group" &
        " already exists, not redeclaring")
when not declared(ma_seek_origin):
  type
    ma_seek_origin* = ma_seek_origin_553649237
else:
  static :
    hint("Declaration of " & "ma_seek_origin" &
        " already exists, not redeclaring")
when not declared(ma_biquad_node_config):
  type
    ma_biquad_node_config* = ma_biquad_node_config_553649445
else:
  static :
    hint("Declaration of " & "ma_biquad_node_config" &
        " already exists, not redeclaring")
when not declared(struct_pthread_mutex_s):
  type
    struct_pthread_mutex_s* = struct_pthread_mutex_s_553649563
else:
  static :
    hint("Declaration of " & "struct_pthread_mutex_s" &
        " already exists, not redeclaring")
when not declared(ma_node_base):
  type
    ma_node_base* = ma_node_base_553649419
else:
  static :
    hint("Declaration of " & "ma_node_base" & " already exists, not redeclaring")
when not declared(ma_attenuation_model):
  type
    ma_attenuation_model* = ma_attenuation_model_553648931
else:
  static :
    hint("Declaration of " & "ma_attenuation_model" &
        " already exists, not redeclaring")
when not declared(ma_ios_session_category_option):
  type
    ma_ios_session_category_option* = ma_ios_session_category_option_553649163
else:
  static :
    hint("Declaration of " & "ma_ios_session_category_option" &
        " already exists, not redeclaring")
when not declared(ma_engine_config):
  type
    ma_engine_config* = ma_engine_config_553649557
else:
  static :
    hint("Declaration of " & "ma_engine_config" &
        " already exists, not redeclaring")
when not declared(ma_hpf2):
  type
    ma_hpf2* = ma_hpf2_553648819
else:
  static :
    hint("Declaration of " & "ma_hpf2" & " already exists, not redeclaring")
when not declared(struct_ma_engine):
  type
    struct_ma_engine* = struct_ma_engine_553649517
else:
  static :
    hint("Declaration of " & "struct_ma_engine" &
        " already exists, not redeclaring")
when not declared(ma_resample_algorithm):
  type
    ma_resample_algorithm* = ma_resample_algorithm_553648977
else:
  static :
    hint("Declaration of " & "ma_resample_algorithm" &
        " already exists, not redeclaring")
when not declared(ma_noise):
  type
    ma_noise* = ma_noise_553649331
else:
  static :
    hint("Declaration of " & "ma_noise" & " already exists, not redeclaring")
when not declared(ma_uint8):
  type
    ma_uint8* = ma_uint8_553648612
else:
  static :
    hint("Declaration of " & "ma_uint8" & " already exists, not redeclaring")
when not declared(struct_ma_log):
  type
    struct_ma_log* = struct_ma_log_553648769
else:
  static :
    hint("Declaration of " & "struct_ma_log" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer):
  type
    ma_audio_buffer* = ma_audio_buffer_553649037
else:
  static :
    hint("Declaration of " & "ma_audio_buffer" &
        " already exists, not redeclaring")
when not declared(struct_ma_noise_config):
  type
    struct_ma_noise_config* = struct_ma_noise_config_553649325
else:
  static :
    hint("Declaration of " & "struct_ma_noise_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_standard_sample_rate):
  type
    enum_ma_standard_sample_rate* = enum_ma_standard_sample_rate_553648701
else:
  static :
    hint("Declaration of " & "enum_ma_standard_sample_rate" &
        " already exists, not redeclaring")
when not declared(struct_ma_atomic_float):
  type
    struct_ma_atomic_float* = struct_ma_atomic_float_553648737
else:
  static :
    hint("Declaration of " & "struct_ma_atomic_float" &
        " already exists, not redeclaring")
when not declared(ma_wchar_win32):
  type
    ma_wchar_win32* = ma_wchar_win32_553648654
else:
  static :
    hint("Declaration of " & "ma_wchar_win32" &
        " already exists, not redeclaring")
when not declared(struct_ma_loshelf_node):
  type
    struct_ma_loshelf_node* = struct_ma_loshelf_node_553649495
else:
  static :
    hint("Declaration of " & "struct_ma_loshelf_node" &
        " already exists, not redeclaring")
when not declared(enum_ma_device_type):
  type
    enum_ma_device_type* = enum_ma_device_type_553649149
else:
  static :
    hint("Declaration of " & "enum_ma_device_type" &
        " already exists, not redeclaring")
when not declared(struct_ma_sound_config):
  type
    struct_ma_sound_config* = struct_ma_sound_config_553649541
else:
  static :
    hint("Declaration of " & "struct_ma_sound_config" &
        " already exists, not redeclaring")
when not declared(ma_atomic_vec3f):
  type
    ma_atomic_vec3f* = ma_atomic_vec3f_553648927
else:
  static :
    hint("Declaration of " & "ma_atomic_vec3f" &
        " already exists, not redeclaring")
when not declared(struct_ma_hishelf2_config):
  type
    struct_ma_hishelf2_config* = struct_ma_hishelf2_config_553648875
else:
  static :
    hint("Declaration of " & "struct_ma_hishelf2_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_fader_config):
  type
    struct_ma_fader_config* = struct_ma_fader_config_553648913
else:
  static :
    hint("Declaration of " & "struct_ma_fader_config" &
        " already exists, not redeclaring")
when not declared(ma_standard_channel_map):
  type
    ma_standard_channel_map* = ma_standard_channel_map_553648711
else:
  static :
    hint("Declaration of " & "ma_standard_channel_map" &
        " already exists, not redeclaring")
when not declared(struct_ma_node_config):
  type
    struct_ma_node_config* = struct_ma_node_config_553649407
else:
  static :
    hint("Declaration of " & "struct_ma_node_config" &
        " already exists, not redeclaring")
when not declared(ma_vec3f):
  type
    ma_vec3f* = ma_vec3f_553648923
else:
  static :
    hint("Declaration of " & "ma_vec3f" & " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_data_supply):
  type
    struct_ma_resource_manager_data_supply* = struct_ma_resource_manager_data_supply_553649377
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_data_supply" &
        " already exists, not redeclaring")
when not declared(ma_event):
  type
    ma_event* = ma_event_553648757
else:
  static :
    hint("Declaration of " & "ma_event" & " already exists, not redeclaring")
when not declared(ma_bpf_config):
  type
    ma_bpf_config* = ma_bpf_config_553648839
else:
  static :
    hint("Declaration of " & "ma_bpf_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_pan_mode):
  type
    enum_ma_pan_mode* = enum_ma_pan_mode_553648901
else:
  static :
    hint("Declaration of " & "enum_ma_pan_mode" &
        " already exists, not redeclaring")
when not declared(ma_waveform):
  type
    ma_waveform* = ma_waveform_553649311
else:
  static :
    hint("Declaration of " & "ma_waveform" & " already exists, not redeclaring")
when not declared(ma_open_mode_flags):
  type
    ma_open_mode_flags* = ma_open_mode_flags_553649233
else:
  static :
    hint("Declaration of " & "ma_open_mode_flags" &
        " already exists, not redeclaring")
when not declared(struct_ma_lpf_config):
  type
    struct_ma_lpf_config* = struct_ma_lpf_config_553648799
else:
  static :
    hint("Declaration of " & "struct_ma_lpf_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_bpf2):
  type
    struct_ma_bpf2* = struct_ma_bpf2_553648833
else:
  static :
    hint("Declaration of " & "struct_ma_bpf2" &
        " already exists, not redeclaring")
when not declared(ma_engine_process_proc):
  type
    ma_engine_process_proc* = ma_engine_process_proc_553649553
else:
  static :
    hint("Declaration of " & "ma_engine_process_proc" &
        " already exists, not redeclaring")
when not declared(struct_ma_biquad_config):
  type
    struct_ma_biquad_config* = struct_ma_biquad_config_553648777
else:
  static :
    hint("Declaration of " & "struct_ma_biquad_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_file_info):
  type
    struct_ma_file_info* = struct_ma_file_info_553649239
else:
  static :
    hint("Declaration of " & "struct_ma_file_info" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_config):
  type
    ma_data_converter_config* = ma_data_converter_config_553649001
else:
  static :
    hint("Declaration of " & "ma_data_converter_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_bpf_config):
  type
    struct_ma_bpf_config* = struct_ma_bpf_config_553648837
else:
  static :
    hint("Declaration of " & "struct_ma_bpf_config" &
        " already exists, not redeclaring")
when not declared(union_ma_timer):
  type
    union_ma_timer* = union_ma_timer_553649193
else:
  static :
    hint("Declaration of " & "union_ma_timer" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler):
  type
    ma_linear_resampler* = ma_linear_resampler_553648963
else:
  static :
    hint("Declaration of " & "ma_linear_resampler" &
        " already exists, not redeclaring")
when not declared(struct_ma_spatializer_listener):
  type
    struct_ma_spatializer_listener* = struct_ma_spatializer_listener_553648945
else:
  static :
    hint("Declaration of " & "struct_ma_spatializer_listener" &
        " already exists, not redeclaring")
when not declared(enum_ma_opensl_recording_preset):
  type
    enum_ma_opensl_recording_preset* = enum_ma_opensl_recording_preset_553649169
else:
  static :
    hint("Declaration of " & "enum_ma_opensl_recording_preset" &
        " already exists, not redeclaring")
when not declared(union_pthread_cond_t):
  type
    union_pthread_cond_t* = union_pthread_cond_t_553649561
else:
  static :
    hint("Declaration of " & "union_pthread_cond_t" &
        " already exists, not redeclaring")
when not declared(enum_ma_attenuation_model):
  type
    enum_ma_attenuation_model* = enum_ma_attenuation_model_553648929
else:
  static :
    hint("Declaration of " & "enum_ma_attenuation_model" &
        " already exists, not redeclaring")
when not declared(struct_ma_slot_allocator):
  type
    struct_ma_slot_allocator* = struct_ma_slot_allocator_553649093
else:
  static :
    hint("Declaration of " & "struct_ma_slot_allocator" &
        " already exists, not redeclaring")
when not declared(ma_spinlock):
  type
    ma_spinlock* = ma_spinlock_553648745
else:
  static :
    hint("Declaration of " & "ma_spinlock" & " already exists, not redeclaring")
when not declared(ma_notch2_config):
  type
    ma_notch2_config* = ma_notch2_config_553648847
else:
  static :
    hint("Declaration of " & "ma_notch2_config" &
        " already exists, not redeclaring")
when not declared(ma_decoding_backend_config):
  type
    ma_decoding_backend_config* = ma_decoding_backend_config_553649267
else:
  static :
    hint("Declaration of " & "ma_decoding_backend_config" &
        " already exists, not redeclaring")
when not declared(ma_device_notification_type):
  type
    ma_device_notification_type* = ma_device_notification_type_553649137
else:
  static :
    hint("Declaration of " & "ma_device_notification_type" &
        " already exists, not redeclaring")
when not declared(ma_aaudio_allowed_capture_policy):
  type
    ma_aaudio_allowed_capture_policy* = ma_aaudio_allowed_capture_policy_553649191
else:
  static :
    hint("Declaration of " & "ma_aaudio_allowed_capture_policy" &
        " already exists, not redeclaring")
when not declared(struct_ma_hishelf_node_config):
  type
    struct_ma_hishelf_node_config* = struct_ma_hishelf_node_config_553649499
else:
  static :
    hint("Declaration of " & "struct_ma_hishelf_node_config" &
        " already exists, not redeclaring")
when not declared(MA_VERSION_MAJOR):
  when 0 is static:
    const
      MA_VERSION_MAJOR* = 0  ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3751:9
  else:
    let MA_VERSION_MAJOR* = 0 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3751:9
else:
  static :
    hint("Declaration of " & "MA_VERSION_MAJOR" &
        " already exists, not redeclaring")
when not declared(MA_VERSION_MINOR):
  when 11 is static:
    const
      MA_VERSION_MINOR* = 11 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3752:9
  else:
    let MA_VERSION_MINOR* = 11 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3752:9
else:
  static :
    hint("Declaration of " & "MA_VERSION_MINOR" &
        " already exists, not redeclaring")
when not declared(MA_VERSION_REVISION):
  when 22 is static:
    const
      MA_VERSION_REVISION* = 22 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3753:9
  else:
    let MA_VERSION_REVISION* = 22 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3753:9
else:
  static :
    hint("Declaration of " & "MA_VERSION_REVISION" &
        " already exists, not redeclaring")
when not declared(MA_SIZEOF_PTR):
  when 8 is static:
    const
      MA_SIZEOF_PTR* = 8     ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3771:13
  else:
    let MA_SIZEOF_PTR* = 8   ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3771:13
else:
  static :
    hint("Declaration of " & "MA_SIZEOF_PTR" &
        " already exists, not redeclaring")
when not declared(MA_TRUE):
  when 1 is static:
    const
      MA_TRUE* = 1           ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3823:9
  else:
    let MA_TRUE* = 1         ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3823:9
else:
  static :
    hint("Declaration of " & "MA_TRUE" & " already exists, not redeclaring")
when not declared(MA_FALSE):
  when 0 is static:
    const
      MA_FALSE* = 0          ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3824:9
  else:
    let MA_FALSE* = 0        ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3824:9
else:
  static :
    hint("Declaration of " & "MA_FALSE" & " already exists, not redeclaring")
when not declared(MA_SIZE_MAX):
  when 4294967295 is static:
    const
      MA_SIZE_MAX* = 4294967295'i64 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3857:13
  else:
    let MA_SIZE_MAX* = 4294967295'i64 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3857:13
else:
  static :
    hint("Declaration of " & "MA_SIZE_MAX" & " already exists, not redeclaring")
when not declared(MA_GNUC_INLINE_HINT):
  when inline is typedesc:
    type
      MA_GNUC_INLINE_HINT* = inline ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3962:17
  else:
    when inline is static:
      const
        MA_GNUC_INLINE_HINT* = inline ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3962:17
    else:
      let MA_GNUC_INLINE_HINT* = inline ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:3962:17
else:
  static :
    hint("Declaration of " & "MA_GNUC_INLINE_HINT" &
        " already exists, not redeclaring")
when not declared(MA_API):
  when extern is typedesc:
    type
      MA_API* = extern       ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4007:17
  else:
    when extern is static:
      const
        MA_API* = extern     ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4007:17
    else:
      let MA_API* = extern   ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4007:17
else:
  static :
    hint("Declaration of " & "MA_API" & " already exists, not redeclaring")
when not declared(MA_SIMD_ALIGNMENT):
  when 32 is static:
    const
      MA_SIMD_ALIGNMENT* = 32 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4021:9
  else:
    let MA_SIMD_ALIGNMENT* = 32 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4021:9
else:
  static :
    hint("Declaration of " & "MA_SIMD_ALIGNMENT" &
        " already exists, not redeclaring")
when not declared(MA_MIN_CHANNELS):
  when 1 is static:
    const
      MA_MIN_CHANNELS* = 1   ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4245:9
  else:
    let MA_MIN_CHANNELS* = 1 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4245:9
else:
  static :
    hint("Declaration of " & "MA_MIN_CHANNELS" &
        " already exists, not redeclaring")
when not declared(MA_MAX_CHANNELS):
  when 254 is static:
    const
      MA_MAX_CHANNELS* = 254 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4247:9
  else:
    let MA_MAX_CHANNELS* = 254 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4247:9
else:
  static :
    hint("Declaration of " & "MA_MAX_CHANNELS" &
        " already exists, not redeclaring")
when not declared(MA_MAX_FILTER_ORDER):
  when 8 is static:
    const
      MA_MAX_FILTER_ORDER* = 8 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4251:9
  else:
    let MA_MAX_FILTER_ORDER* = 8 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4251:9
else:
  static :
    hint("Declaration of " & "MA_MAX_FILTER_ORDER" &
        " already exists, not redeclaring")
when not declared(MA_MAX_LOG_CALLBACKS):
  when 4 is static:
    const
      MA_MAX_LOG_CALLBACKS* = 4 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4500:9
  else:
    let MA_MAX_LOG_CALLBACKS* = 4 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:4500:9
else:
  static :
    hint("Declaration of " & "MA_MAX_LOG_CALLBACKS" &
        " already exists, not redeclaring")
when not declared(MA_CHANNEL_INDEX_NULL):
  when 255 is static:
    const
      MA_CHANNEL_INDEX_NULL* = 255 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5681:9
  else:
    let MA_CHANNEL_INDEX_NULL* = 255 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5681:9
else:
  static :
    hint("Declaration of " & "MA_CHANNEL_INDEX_NULL" &
        " already exists, not redeclaring")
when not declared(MA_DATA_SOURCE_SELF_MANAGED_RANGE_AND_LOOP_POINT):
  when 1 is static:
    const
      MA_DATA_SOURCE_SELF_MANAGED_RANGE_AND_LOOP_POINT* = 1 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5805:9
  else:
    let MA_DATA_SOURCE_SELF_MANAGED_RANGE_AND_LOOP_POINT* = 1 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:5805:9
else:
  static :
    hint("Declaration of " & "MA_DATA_SOURCE_SELF_MANAGED_RANGE_AND_LOOP_POINT" &
        " already exists, not redeclaring")
when not declared(MA_MAX_DEVICE_NAME_LENGTH):
  when 255 is static:
    const
      MA_MAX_DEVICE_NAME_LENGTH* = 255 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:7053:9
  else:
    let MA_MAX_DEVICE_NAME_LENGTH* = 255 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:7053:9
else:
  static :
    hint("Declaration of " & "MA_MAX_DEVICE_NAME_LENGTH" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_job):
  when ma_job_553648605 is typedesc:
    type
      ma_resource_manager_job* = ma_job_553648605 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10316:9
  else:
    when ma_job_553648605 is static:
      const
        ma_resource_manager_job* = ma_job_553648605 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10316:9
    else:
      let ma_resource_manager_job* = ma_job_553648605 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10316:9
else:
  static :
    hint("Declaration of " & "ma_resource_manager_job" &
        " already exists, not redeclaring")
when not declared(ma_job_init):
  proc ma_job_init*(code: ma_uint16_553648617): ma_job_553648605 {.cdecl,
      importc: "ma_job_init".}
else:
  static :
    hint("Declaration of " & "ma_job_init" & " already exists, not redeclaring")
when not declared(MA_JOB_TYPE_RESOURCE_MANAGER_QUEUE_FLAG_NON_BLOCKING):
  when MA_JOB_QUEUE_FLAG_NON_BLOCKING is typedesc:
    type
      MA_JOB_TYPE_RESOURCE_MANAGER_QUEUE_FLAG_NON_BLOCKING* = MA_JOB_QUEUE_FLAG_NON_BLOCKING ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10318:9
  else:
    when MA_JOB_QUEUE_FLAG_NON_BLOCKING is static:
      const
        MA_JOB_TYPE_RESOURCE_MANAGER_QUEUE_FLAG_NON_BLOCKING* = MA_JOB_QUEUE_FLAG_NON_BLOCKING ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10318:9
    else:
      let MA_JOB_TYPE_RESOURCE_MANAGER_QUEUE_FLAG_NON_BLOCKING* = MA_JOB_QUEUE_FLAG_NON_BLOCKING ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10318:9
else:
  static :
    hint("Declaration of " &
        "MA_JOB_TYPE_RESOURCE_MANAGER_QUEUE_FLAG_NON_BLOCKING" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_job_queue_config):
  when ma_job_queue_config_553648607 is typedesc:
    type
      ma_resource_manager_job_queue_config* = ma_job_queue_config_553648607 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10319:9
  else:
    when ma_job_queue_config_553648607 is static:
      const
        ma_resource_manager_job_queue_config* = ma_job_queue_config_553648607 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10319:9
    else:
      let ma_resource_manager_job_queue_config* = ma_job_queue_config_553648607 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10319:9
else:
  static :
    hint("Declaration of " & "ma_resource_manager_job_queue_config" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_config_init):
  proc ma_job_queue_config_init*(flags: ma_uint32_553648621; capacity: ma_uint32_553648621): ma_job_queue_config_553648607 {.
      cdecl, importc: "ma_job_queue_config_init".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_config_init" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_job_queue):
  when ma_job_queue_553648609 is typedesc:
    type
      ma_resource_manager_job_queue* = ma_job_queue_553648609 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10321:9
  else:
    when ma_job_queue_553648609 is static:
      const
        ma_resource_manager_job_queue* = ma_job_queue_553648609 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10321:9
    else:
      let ma_resource_manager_job_queue* = ma_job_queue_553648609 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10321:9
else:
  static :
    hint("Declaration of " & "ma_resource_manager_job_queue" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_get_heap_size):
  proc ma_job_queue_get_heap_size*(pConfig: ptr ma_job_queue_config_553648607;
                                   pHeapSizeInBytes: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_job_queue_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_init_preallocated):
  proc ma_job_queue_init_preallocated*(pConfig: ptr ma_job_queue_config_553648607;
                                       pHeap: pointer; pQueue: ptr ma_job_queue_553648609): ma_result_553648677 {.
      cdecl, importc: "ma_job_queue_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_init):
  proc ma_job_queue_init*(pConfig: ptr ma_job_queue_config_553648607;
                          pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                          pQueue: ptr ma_job_queue_553648609): ma_result_553648677 {.
      cdecl, importc: "ma_job_queue_init".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_init" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_uninit):
  proc ma_job_queue_uninit*(pQueue: ptr ma_job_queue_553648609;
                            pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_job_queue_uninit".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_uninit" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_post):
  proc ma_job_queue_post*(pQueue: ptr ma_job_queue_553648609; pJob: ptr ma_job_553648605): ma_result_553648677 {.
      cdecl, importc: "ma_job_queue_post".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_post" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_next):
  proc ma_job_queue_next*(pQueue: ptr ma_job_queue_553648609; pJob: ptr ma_job_553648605): ma_result_553648677 {.
      cdecl, importc: "ma_job_queue_next".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_next" &
        " already exists, not redeclaring")
when not declared(MA_RESOURCE_MANAGER_MAX_JOB_THREAD_COUNT):
  when 64 is static:
    const
      MA_RESOURCE_MANAGER_MAX_JOB_THREAD_COUNT* = 64 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10336:9
  else:
    let MA_RESOURCE_MANAGER_MAX_JOB_THREAD_COUNT* = 64 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10336:9
else:
  static :
    hint("Declaration of " & "MA_RESOURCE_MANAGER_MAX_JOB_THREAD_COUNT" &
        " already exists, not redeclaring")
when not declared(MA_MAX_NODE_BUS_COUNT):
  when 254 is static:
    const
      MA_MAX_NODE_BUS_COUNT* = 254 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10591:9
  else:
    let MA_MAX_NODE_BUS_COUNT* = 254 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10591:9
else:
  static :
    hint("Declaration of " & "MA_MAX_NODE_BUS_COUNT" &
        " already exists, not redeclaring")
when not declared(MA_MAX_NODE_LOCAL_BUS_COUNT):
  when 2 is static:
    const
      MA_MAX_NODE_LOCAL_BUS_COUNT* = 2 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10596:9
  else:
    let MA_MAX_NODE_LOCAL_BUS_COUNT* = 2 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10596:9
else:
  static :
    hint("Declaration of " & "MA_MAX_NODE_LOCAL_BUS_COUNT" &
        " already exists, not redeclaring")
when not declared(MA_NODE_BUS_COUNT_UNKNOWN):
  when 255 is static:
    const
      MA_NODE_BUS_COUNT_UNKNOWN* = 255 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10600:9
  else:
    let MA_NODE_BUS_COUNT_UNKNOWN* = 255 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:10600:9
else:
  static :
    hint("Declaration of " & "MA_NODE_BUS_COUNT_UNKNOWN" &
        " already exists, not redeclaring")
when not declared(MA_ENGINE_MAX_LISTENERS):
  when 4 is static:
    const
      MA_ENGINE_MAX_LISTENERS* = 4 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11103:9
  else:
    let MA_ENGINE_MAX_LISTENERS* = 4 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11103:9
else:
  static :
    hint("Declaration of " & "MA_ENGINE_MAX_LISTENERS" &
        " already exists, not redeclaring")
when not declared(MA_SOUND_SOURCE_CHANNEL_COUNT):
  when 4294967295 is static:
    const
      MA_SOUND_SOURCE_CHANNEL_COUNT* = 4294967295'i64 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11172:9
  else:
    let MA_SOUND_SOURCE_CHANNEL_COUNT* = 4294967295'i64 ## Generated based on /home/chris/work/nim/miniaudio/miniaudio/miniaudio.h:11172:9
else:
  static :
    hint("Declaration of " & "MA_SOUND_SOURCE_CHANNEL_COUNT" &
        " already exists, not redeclaring")
when not declared(ma_version):
  proc ma_version*(pMajor: ptr ma_uint32_553648621; pMinor: ptr ma_uint32_553648621;
                   pRevision: ptr ma_uint32_553648621): void {.cdecl,
      importc: "ma_version".}
else:
  static :
    hint("Declaration of " & "ma_version" & " already exists, not redeclaring")
when not declared(ma_version_string):
  proc ma_version_string*(): cstring {.cdecl, importc: "ma_version_string".}
else:
  static :
    hint("Declaration of " & "ma_version_string" &
        " already exists, not redeclaring")
when not declared(ma_log_callback_init):
  proc ma_log_callback_init*(onLog: ma_log_callback_proc_553648764;
                             pUserData: pointer): ma_log_callback_553648768 {.
      cdecl, importc: "ma_log_callback_init".}
else:
  static :
    hint("Declaration of " & "ma_log_callback_init" &
        " already exists, not redeclaring")
when not declared(ma_log_init):
  proc ma_log_init*(pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                    pLog: ptr ma_log_553648772): ma_result_553648677 {.cdecl,
      importc: "ma_log_init".}
else:
  static :
    hint("Declaration of " & "ma_log_init" & " already exists, not redeclaring")
when not declared(ma_log_uninit):
  proc ma_log_uninit*(pLog: ptr ma_log_553648772): void {.cdecl,
      importc: "ma_log_uninit".}
else:
  static :
    hint("Declaration of " & "ma_log_uninit" &
        " already exists, not redeclaring")
when not declared(ma_log_register_callback):
  proc ma_log_register_callback*(pLog: ptr ma_log_553648772;
                                 callback: ma_log_callback_553648768): ma_result_553648677 {.
      cdecl, importc: "ma_log_register_callback".}
else:
  static :
    hint("Declaration of " & "ma_log_register_callback" &
        " already exists, not redeclaring")
when not declared(ma_log_unregister_callback):
  proc ma_log_unregister_callback*(pLog: ptr ma_log_553648772;
                                   callback: ma_log_callback_553648768): ma_result_553648677 {.
      cdecl, importc: "ma_log_unregister_callback".}
else:
  static :
    hint("Declaration of " & "ma_log_unregister_callback" &
        " already exists, not redeclaring")
when not declared(ma_log_post):
  proc ma_log_post*(pLog: ptr ma_log_553648772; level: ma_uint32_553648621;
                    pMessage: cstring): ma_result_553648677 {.cdecl,
      importc: "ma_log_post".}
else:
  static :
    hint("Declaration of " & "ma_log_post" & " already exists, not redeclaring")
when not declared(ma_log_postv):
  proc ma_log_postv*(pLog: ptr ma_log_553648772; level: ma_uint32_553648621;
                     pFormat: cstring): ma_result_553648677 {.cdecl, varargs,
      importc: "ma_log_postv".}
else:
  static :
    hint("Declaration of " & "ma_log_postv" & " already exists, not redeclaring")
when not declared(ma_log_postf):
  proc ma_log_postf*(pLog: ptr ma_log_553648772; level: ma_uint32_553648621;
                     pFormat: cstring): ma_result_553648677 {.cdecl, varargs,
      importc: "ma_log_postf".}
else:
  static :
    hint("Declaration of " & "ma_log_postf" & " already exists, not redeclaring")
when not declared(ma_biquad_config_init):
  proc ma_biquad_config_init*(format: ma_format_553648700; channels: ma_uint32_553648621;
                              b0: cdouble; b1: cdouble; b2: cdouble;
                              a0: cdouble; a1: cdouble; a2: cdouble): ma_biquad_config_553648780 {.
      cdecl, importc: "ma_biquad_config_init".}
else:
  static :
    hint("Declaration of " & "ma_biquad_config_init" &
        " already exists, not redeclaring")
when not declared(ma_biquad_get_heap_size):
  proc ma_biquad_get_heap_size*(pConfig: ptr ma_biquad_config_553648780;
                                pHeapSizeInBytes: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_biquad_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_biquad_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_biquad_init_preallocated):
  proc ma_biquad_init_preallocated*(pConfig: ptr ma_biquad_config_553648780;
                                    pHeap: pointer; pBQ: ptr ma_biquad_553648784): ma_result_553648677 {.
      cdecl, importc: "ma_biquad_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_biquad_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_biquad_init):
  proc ma_biquad_init*(pConfig: ptr ma_biquad_config_553648780;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                       pBQ: ptr ma_biquad_553648784): ma_result_553648677 {.
      cdecl, importc: "ma_biquad_init".}
else:
  static :
    hint("Declaration of " & "ma_biquad_init" &
        " already exists, not redeclaring")
when not declared(ma_biquad_uninit):
  proc ma_biquad_uninit*(pBQ: ptr ma_biquad_553648784;
                         pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_biquad_uninit".}
else:
  static :
    hint("Declaration of " & "ma_biquad_uninit" &
        " already exists, not redeclaring")
when not declared(ma_biquad_reinit):
  proc ma_biquad_reinit*(pConfig: ptr ma_biquad_config_553648780;
                         pBQ: ptr ma_biquad_553648784): ma_result_553648677 {.
      cdecl, importc: "ma_biquad_reinit".}
else:
  static :
    hint("Declaration of " & "ma_biquad_reinit" &
        " already exists, not redeclaring")
when not declared(ma_biquad_clear_cache):
  proc ma_biquad_clear_cache*(pBQ: ptr ma_biquad_553648784): ma_result_553648677 {.
      cdecl, importc: "ma_biquad_clear_cache".}
else:
  static :
    hint("Declaration of " & "ma_biquad_clear_cache" &
        " already exists, not redeclaring")
when not declared(ma_biquad_process_pcm_frames):
  proc ma_biquad_process_pcm_frames*(pBQ: ptr ma_biquad_553648784;
                                     pFramesOut: pointer; pFramesIn: pointer;
                                     frameCount: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_biquad_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_biquad_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_biquad_get_latency):
  proc ma_biquad_get_latency*(pBQ: ptr ma_biquad_553648784): ma_uint32_553648621 {.
      cdecl, importc: "ma_biquad_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_biquad_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_config_init):
  proc ma_lpf1_config_init*(format: ma_format_553648700; channels: ma_uint32_553648621;
                            sampleRate: ma_uint32_553648621;
                            cutoffFrequency: cdouble): ma_lpf1_config_553648788 {.
      cdecl, importc: "ma_lpf1_config_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_config_init" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_config_init):
  proc ma_lpf2_config_init*(format: ma_format_553648700; channels: ma_uint32_553648621;
                            sampleRate: ma_uint32_553648621;
                            cutoffFrequency: cdouble; q: cdouble): ma_lpf2_config_553648790 {.
      cdecl, importc: "ma_lpf2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_config_init" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_get_heap_size):
  proc ma_lpf1_get_heap_size*(pConfig: ptr ma_lpf1_config_553648788;
                              pHeapSizeInBytes: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_lpf1_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_init_preallocated):
  proc ma_lpf1_init_preallocated*(pConfig: ptr ma_lpf1_config_553648788;
                                  pHeap: pointer; pLPF: ptr ma_lpf1_553648794): ma_result_553648677 {.
      cdecl, importc: "ma_lpf1_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_init):
  proc ma_lpf1_init*(pConfig: ptr ma_lpf1_config_553648788;
                     pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                     pLPF: ptr ma_lpf1_553648794): ma_result_553648677 {.cdecl,
      importc: "ma_lpf1_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_init" & " already exists, not redeclaring")
when not declared(ma_lpf1_uninit):
  proc ma_lpf1_uninit*(pLPF: ptr ma_lpf1_553648794;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_lpf1_uninit".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_uninit" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_reinit):
  proc ma_lpf1_reinit*(pConfig: ptr ma_lpf1_config_553648788; pLPF: ptr ma_lpf1_553648794): ma_result_553648677 {.
      cdecl, importc: "ma_lpf1_reinit".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_reinit" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_clear_cache):
  proc ma_lpf1_clear_cache*(pLPF: ptr ma_lpf1_553648794): ma_result_553648677 {.
      cdecl, importc: "ma_lpf1_clear_cache".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_clear_cache" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_process_pcm_frames):
  proc ma_lpf1_process_pcm_frames*(pLPF: ptr ma_lpf1_553648794;
                                   pFramesOut: pointer; pFramesIn: pointer;
                                   frameCount: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_lpf1_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_get_latency):
  proc ma_lpf1_get_latency*(pLPF: ptr ma_lpf1_553648794): ma_uint32_553648621 {.
      cdecl, importc: "ma_lpf1_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_get_heap_size):
  proc ma_lpf2_get_heap_size*(pConfig: ptr ma_lpf2_config_553648790;
                              pHeapSizeInBytes: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_lpf2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_init_preallocated):
  proc ma_lpf2_init_preallocated*(pConfig: ptr ma_lpf2_config_553648790;
                                  pHeap: pointer; pHPF: ptr ma_lpf2_553648798): ma_result_553648677 {.
      cdecl, importc: "ma_lpf2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_init):
  proc ma_lpf2_init*(pConfig: ptr ma_lpf2_config_553648790;
                     pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                     pLPF: ptr ma_lpf2_553648798): ma_result_553648677 {.cdecl,
      importc: "ma_lpf2_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_init" & " already exists, not redeclaring")
when not declared(ma_lpf2_uninit):
  proc ma_lpf2_uninit*(pLPF: ptr ma_lpf2_553648798;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_lpf2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_uninit" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_reinit):
  proc ma_lpf2_reinit*(pConfig: ptr ma_lpf2_config_553648790; pLPF: ptr ma_lpf2_553648798): ma_result_553648677 {.
      cdecl, importc: "ma_lpf2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_reinit" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_clear_cache):
  proc ma_lpf2_clear_cache*(pLPF: ptr ma_lpf2_553648798): ma_result_553648677 {.
      cdecl, importc: "ma_lpf2_clear_cache".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_clear_cache" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_process_pcm_frames):
  proc ma_lpf2_process_pcm_frames*(pLPF: ptr ma_lpf2_553648798;
                                   pFramesOut: pointer; pFramesIn: pointer;
                                   frameCount: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_lpf2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_get_latency):
  proc ma_lpf2_get_latency*(pLPF: ptr ma_lpf2_553648798): ma_uint32_553648621 {.
      cdecl, importc: "ma_lpf2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_lpf_config_init):
  proc ma_lpf_config_init*(format: ma_format_553648700; channels: ma_uint32_553648621;
                           sampleRate: ma_uint32_553648621;
                           cutoffFrequency: cdouble; order: ma_uint32_553648621): ma_lpf_config_553648802 {.
      cdecl, importc: "ma_lpf_config_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf_config_init" &
        " already exists, not redeclaring")
when not declared(ma_lpf_get_heap_size):
  proc ma_lpf_get_heap_size*(pConfig: ptr ma_lpf_config_553648802;
                             pHeapSizeInBytes: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_lpf_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_lpf_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_lpf_init_preallocated):
  proc ma_lpf_init_preallocated*(pConfig: ptr ma_lpf_config_553648802;
                                 pHeap: pointer; pLPF: ptr ma_lpf_553648806): ma_result_553648677 {.
      cdecl, importc: "ma_lpf_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_lpf_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_lpf_init):
  proc ma_lpf_init*(pConfig: ptr ma_lpf_config_553648802;
                    pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                    pLPF: ptr ma_lpf_553648806): ma_result_553648677 {.cdecl,
      importc: "ma_lpf_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf_init" & " already exists, not redeclaring")
when not declared(ma_lpf_uninit):
  proc ma_lpf_uninit*(pLPF: ptr ma_lpf_553648806;
                      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_lpf_uninit".}
else:
  static :
    hint("Declaration of " & "ma_lpf_uninit" &
        " already exists, not redeclaring")
when not declared(ma_lpf_reinit):
  proc ma_lpf_reinit*(pConfig: ptr ma_lpf_config_553648802; pLPF: ptr ma_lpf_553648806): ma_result_553648677 {.
      cdecl, importc: "ma_lpf_reinit".}
else:
  static :
    hint("Declaration of " & "ma_lpf_reinit" &
        " already exists, not redeclaring")
when not declared(ma_lpf_clear_cache):
  proc ma_lpf_clear_cache*(pLPF: ptr ma_lpf_553648806): ma_result_553648677 {.
      cdecl, importc: "ma_lpf_clear_cache".}
else:
  static :
    hint("Declaration of " & "ma_lpf_clear_cache" &
        " already exists, not redeclaring")
when not declared(ma_lpf_process_pcm_frames):
  proc ma_lpf_process_pcm_frames*(pLPF: ptr ma_lpf_553648806;
                                  pFramesOut: pointer; pFramesIn: pointer;
                                  frameCount: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_lpf_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_lpf_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_lpf_get_latency):
  proc ma_lpf_get_latency*(pLPF: ptr ma_lpf_553648806): ma_uint32_553648621 {.
      cdecl, importc: "ma_lpf_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_lpf_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_hpf1_config_init):
  proc ma_hpf1_config_init*(format: ma_format_553648700; channels: ma_uint32_553648621;
                            sampleRate: ma_uint32_553648621;
                            cutoffFrequency: cdouble): ma_hpf1_config_553648810 {.
      cdecl, importc: "ma_hpf1_config_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_config_init" &
        " already exists, not redeclaring")
when not declared(ma_hpf2_config_init):
  proc ma_hpf2_config_init*(format: ma_format_553648700; channels: ma_uint32_553648621;
                            sampleRate: ma_uint32_553648621;
                            cutoffFrequency: cdouble; q: cdouble): ma_hpf2_config_553648812 {.
      cdecl, importc: "ma_hpf2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_config_init" &
        " already exists, not redeclaring")
when not declared(ma_hpf1_get_heap_size):
  proc ma_hpf1_get_heap_size*(pConfig: ptr ma_hpf1_config_553648810;
                              pHeapSizeInBytes: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_hpf1_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_hpf1_init_preallocated):
  proc ma_hpf1_init_preallocated*(pConfig: ptr ma_hpf1_config_553648810;
                                  pHeap: pointer; pLPF: ptr ma_hpf1_553648816): ma_result_553648677 {.
      cdecl, importc: "ma_hpf1_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_hpf1_init):
  proc ma_hpf1_init*(pConfig: ptr ma_hpf1_config_553648810;
                     pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                     pHPF: ptr ma_hpf1_553648816): ma_result_553648677 {.cdecl,
      importc: "ma_hpf1_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_init" & " already exists, not redeclaring")
when not declared(ma_hpf1_uninit):
  proc ma_hpf1_uninit*(pHPF: ptr ma_hpf1_553648816;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_hpf1_uninit".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_uninit" &
        " already exists, not redeclaring")
when not declared(ma_hpf1_reinit):
  proc ma_hpf1_reinit*(pConfig: ptr ma_hpf1_config_553648810; pHPF: ptr ma_hpf1_553648816): ma_result_553648677 {.
      cdecl, importc: "ma_hpf1_reinit".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_reinit" &
        " already exists, not redeclaring")
when not declared(ma_hpf1_process_pcm_frames):
  proc ma_hpf1_process_pcm_frames*(pHPF: ptr ma_hpf1_553648816;
                                   pFramesOut: pointer; pFramesIn: pointer;
                                   frameCount: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_hpf1_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_hpf1_get_latency):
  proc ma_hpf1_get_latency*(pHPF: ptr ma_hpf1_553648816): ma_uint32_553648621 {.
      cdecl, importc: "ma_hpf1_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_hpf2_get_heap_size):
  proc ma_hpf2_get_heap_size*(pConfig: ptr ma_hpf2_config_553648812;
                              pHeapSizeInBytes: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_hpf2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_hpf2_init_preallocated):
  proc ma_hpf2_init_preallocated*(pConfig: ptr ma_hpf2_config_553648812;
                                  pHeap: pointer; pHPF: ptr ma_hpf2_553648820): ma_result_553648677 {.
      cdecl, importc: "ma_hpf2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_hpf2_init):
  proc ma_hpf2_init*(pConfig: ptr ma_hpf2_config_553648812;
                     pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                     pHPF: ptr ma_hpf2_553648820): ma_result_553648677 {.cdecl,
      importc: "ma_hpf2_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_init" & " already exists, not redeclaring")
when not declared(ma_hpf2_uninit):
  proc ma_hpf2_uninit*(pHPF: ptr ma_hpf2_553648820;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_hpf2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_uninit" &
        " already exists, not redeclaring")
when not declared(ma_hpf2_reinit):
  proc ma_hpf2_reinit*(pConfig: ptr ma_hpf2_config_553648812; pHPF: ptr ma_hpf2_553648820): ma_result_553648677 {.
      cdecl, importc: "ma_hpf2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_reinit" &
        " already exists, not redeclaring")
when not declared(ma_hpf2_process_pcm_frames):
  proc ma_hpf2_process_pcm_frames*(pHPF: ptr ma_hpf2_553648820;
                                   pFramesOut: pointer; pFramesIn: pointer;
                                   frameCount: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_hpf2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_hpf2_get_latency):
  proc ma_hpf2_get_latency*(pHPF: ptr ma_hpf2_553648820): ma_uint32_553648621 {.
      cdecl, importc: "ma_hpf2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_hpf_config_init):
  proc ma_hpf_config_init*(format: ma_format_553648700; channels: ma_uint32_553648621;
                           sampleRate: ma_uint32_553648621;
                           cutoffFrequency: cdouble; order: ma_uint32_553648621): ma_hpf_config_553648824 {.
      cdecl, importc: "ma_hpf_config_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf_config_init" &
        " already exists, not redeclaring")
when not declared(ma_hpf_get_heap_size):
  proc ma_hpf_get_heap_size*(pConfig: ptr ma_hpf_config_553648824;
                             pHeapSizeInBytes: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_hpf_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_hpf_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_hpf_init_preallocated):
  proc ma_hpf_init_preallocated*(pConfig: ptr ma_hpf_config_553648824;
                                 pHeap: pointer; pLPF: ptr ma_hpf_553648828): ma_result_553648677 {.
      cdecl, importc: "ma_hpf_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_hpf_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_hpf_init):
  proc ma_hpf_init*(pConfig: ptr ma_hpf_config_553648824;
                    pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                    pHPF: ptr ma_hpf_553648828): ma_result_553648677 {.cdecl,
      importc: "ma_hpf_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf_init" & " already exists, not redeclaring")
when not declared(ma_hpf_uninit):
  proc ma_hpf_uninit*(pHPF: ptr ma_hpf_553648828;
                      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_hpf_uninit".}
else:
  static :
    hint("Declaration of " & "ma_hpf_uninit" &
        " already exists, not redeclaring")
when not declared(ma_hpf_reinit):
  proc ma_hpf_reinit*(pConfig: ptr ma_hpf_config_553648824; pHPF: ptr ma_hpf_553648828): ma_result_553648677 {.
      cdecl, importc: "ma_hpf_reinit".}
else:
  static :
    hint("Declaration of " & "ma_hpf_reinit" &
        " already exists, not redeclaring")
when not declared(ma_hpf_process_pcm_frames):
  proc ma_hpf_process_pcm_frames*(pHPF: ptr ma_hpf_553648828;
                                  pFramesOut: pointer; pFramesIn: pointer;
                                  frameCount: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_hpf_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_hpf_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_hpf_get_latency):
  proc ma_hpf_get_latency*(pHPF: ptr ma_hpf_553648828): ma_uint32_553648621 {.
      cdecl, importc: "ma_hpf_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_hpf_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_bpf2_config_init):
  proc ma_bpf2_config_init*(format: ma_format_553648700; channels: ma_uint32_553648621;
                            sampleRate: ma_uint32_553648621;
                            cutoffFrequency: cdouble; q: cdouble): ma_bpf2_config_553648832 {.
      cdecl, importc: "ma_bpf2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_config_init" &
        " already exists, not redeclaring")
when not declared(ma_bpf2_get_heap_size):
  proc ma_bpf2_get_heap_size*(pConfig: ptr ma_bpf2_config_553648832;
                              pHeapSizeInBytes: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_bpf2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_bpf2_init_preallocated):
  proc ma_bpf2_init_preallocated*(pConfig: ptr ma_bpf2_config_553648832;
                                  pHeap: pointer; pBPF: ptr ma_bpf2_553648836): ma_result_553648677 {.
      cdecl, importc: "ma_bpf2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_bpf2_init):
  proc ma_bpf2_init*(pConfig: ptr ma_bpf2_config_553648832;
                     pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                     pBPF: ptr ma_bpf2_553648836): ma_result_553648677 {.cdecl,
      importc: "ma_bpf2_init".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_init" & " already exists, not redeclaring")
when not declared(ma_bpf2_uninit):
  proc ma_bpf2_uninit*(pBPF: ptr ma_bpf2_553648836;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_bpf2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_uninit" &
        " already exists, not redeclaring")
when not declared(ma_bpf2_reinit):
  proc ma_bpf2_reinit*(pConfig: ptr ma_bpf2_config_553648832; pBPF: ptr ma_bpf2_553648836): ma_result_553648677 {.
      cdecl, importc: "ma_bpf2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_reinit" &
        " already exists, not redeclaring")
when not declared(ma_bpf2_process_pcm_frames):
  proc ma_bpf2_process_pcm_frames*(pBPF: ptr ma_bpf2_553648836;
                                   pFramesOut: pointer; pFramesIn: pointer;
                                   frameCount: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_bpf2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_bpf2_get_latency):
  proc ma_bpf2_get_latency*(pBPF: ptr ma_bpf2_553648836): ma_uint32_553648621 {.
      cdecl, importc: "ma_bpf2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_bpf_config_init):
  proc ma_bpf_config_init*(format: ma_format_553648700; channels: ma_uint32_553648621;
                           sampleRate: ma_uint32_553648621;
                           cutoffFrequency: cdouble; order: ma_uint32_553648621): ma_bpf_config_553648840 {.
      cdecl, importc: "ma_bpf_config_init".}
else:
  static :
    hint("Declaration of " & "ma_bpf_config_init" &
        " already exists, not redeclaring")
when not declared(ma_bpf_get_heap_size):
  proc ma_bpf_get_heap_size*(pConfig: ptr ma_bpf_config_553648840;
                             pHeapSizeInBytes: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_bpf_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_bpf_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_bpf_init_preallocated):
  proc ma_bpf_init_preallocated*(pConfig: ptr ma_bpf_config_553648840;
                                 pHeap: pointer; pBPF: ptr ma_bpf_553648844): ma_result_553648677 {.
      cdecl, importc: "ma_bpf_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_bpf_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_bpf_init):
  proc ma_bpf_init*(pConfig: ptr ma_bpf_config_553648840;
                    pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                    pBPF: ptr ma_bpf_553648844): ma_result_553648677 {.cdecl,
      importc: "ma_bpf_init".}
else:
  static :
    hint("Declaration of " & "ma_bpf_init" & " already exists, not redeclaring")
when not declared(ma_bpf_uninit):
  proc ma_bpf_uninit*(pBPF: ptr ma_bpf_553648844;
                      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_bpf_uninit".}
else:
  static :
    hint("Declaration of " & "ma_bpf_uninit" &
        " already exists, not redeclaring")
when not declared(ma_bpf_reinit):
  proc ma_bpf_reinit*(pConfig: ptr ma_bpf_config_553648840; pBPF: ptr ma_bpf_553648844): ma_result_553648677 {.
      cdecl, importc: "ma_bpf_reinit".}
else:
  static :
    hint("Declaration of " & "ma_bpf_reinit" &
        " already exists, not redeclaring")
when not declared(ma_bpf_process_pcm_frames):
  proc ma_bpf_process_pcm_frames*(pBPF: ptr ma_bpf_553648844;
                                  pFramesOut: pointer; pFramesIn: pointer;
                                  frameCount: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_bpf_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_bpf_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_bpf_get_latency):
  proc ma_bpf_get_latency*(pBPF: ptr ma_bpf_553648844): ma_uint32_553648621 {.
      cdecl, importc: "ma_bpf_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_bpf_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_notch2_config_init):
  proc ma_notch2_config_init*(format: ma_format_553648700; channels: ma_uint32_553648621;
                              sampleRate: ma_uint32_553648621; q: cdouble;
                              frequency: cdouble): ma_notch2_config_553648848 {.
      cdecl, importc: "ma_notch2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_notch2_config_init" &
        " already exists, not redeclaring")
when not declared(ma_notch2_get_heap_size):
  proc ma_notch2_get_heap_size*(pConfig: ptr ma_notch2_config_553648848;
                                pHeapSizeInBytes: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_notch2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_notch2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_notch2_init_preallocated):
  proc ma_notch2_init_preallocated*(pConfig: ptr ma_notch2_config_553648848;
                                    pHeap: pointer; pFilter: ptr ma_notch2_553648854): ma_result_553648677 {.
      cdecl, importc: "ma_notch2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_notch2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_notch2_init):
  proc ma_notch2_init*(pConfig: ptr ma_notch2_config_553648848;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                       pFilter: ptr ma_notch2_553648854): ma_result_553648677 {.
      cdecl, importc: "ma_notch2_init".}
else:
  static :
    hint("Declaration of " & "ma_notch2_init" &
        " already exists, not redeclaring")
when not declared(ma_notch2_uninit):
  proc ma_notch2_uninit*(pFilter: ptr ma_notch2_553648854;
                         pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_notch2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_notch2_uninit" &
        " already exists, not redeclaring")
when not declared(ma_notch2_reinit):
  proc ma_notch2_reinit*(pConfig: ptr ma_notch2_config_553648848;
                         pFilter: ptr ma_notch2_553648854): ma_result_553648677 {.
      cdecl, importc: "ma_notch2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_notch2_reinit" &
        " already exists, not redeclaring")
when not declared(ma_notch2_process_pcm_frames):
  proc ma_notch2_process_pcm_frames*(pFilter: ptr ma_notch2_553648854;
                                     pFramesOut: pointer; pFramesIn: pointer;
                                     frameCount: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_notch2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_notch2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_notch2_get_latency):
  proc ma_notch2_get_latency*(pFilter: ptr ma_notch2_553648854): ma_uint32_553648621 {.
      cdecl, importc: "ma_notch2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_notch2_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_peak2_config_init):
  proc ma_peak2_config_init*(format: ma_format_553648700; channels: ma_uint32_553648621;
                             sampleRate: ma_uint32_553648621; gainDB: cdouble;
                             q: cdouble; frequency: cdouble): ma_peak2_config_553648858 {.
      cdecl, importc: "ma_peak2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_peak2_config_init" &
        " already exists, not redeclaring")
when not declared(ma_peak2_get_heap_size):
  proc ma_peak2_get_heap_size*(pConfig: ptr ma_peak2_config_553648858;
                               pHeapSizeInBytes: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_peak2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_peak2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_peak2_init_preallocated):
  proc ma_peak2_init_preallocated*(pConfig: ptr ma_peak2_config_553648858;
                                   pHeap: pointer; pFilter: ptr ma_peak2_553648864): ma_result_553648677 {.
      cdecl, importc: "ma_peak2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_peak2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_peak2_init):
  proc ma_peak2_init*(pConfig: ptr ma_peak2_config_553648858;
                      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                      pFilter: ptr ma_peak2_553648864): ma_result_553648677 {.
      cdecl, importc: "ma_peak2_init".}
else:
  static :
    hint("Declaration of " & "ma_peak2_init" &
        " already exists, not redeclaring")
when not declared(ma_peak2_uninit):
  proc ma_peak2_uninit*(pFilter: ptr ma_peak2_553648864;
                        pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_peak2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_peak2_uninit" &
        " already exists, not redeclaring")
when not declared(ma_peak2_reinit):
  proc ma_peak2_reinit*(pConfig: ptr ma_peak2_config_553648858;
                        pFilter: ptr ma_peak2_553648864): ma_result_553648677 {.
      cdecl, importc: "ma_peak2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_peak2_reinit" &
        " already exists, not redeclaring")
when not declared(ma_peak2_process_pcm_frames):
  proc ma_peak2_process_pcm_frames*(pFilter: ptr ma_peak2_553648864;
                                    pFramesOut: pointer; pFramesIn: pointer;
                                    frameCount: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_peak2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_peak2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_peak2_get_latency):
  proc ma_peak2_get_latency*(pFilter: ptr ma_peak2_553648864): ma_uint32_553648621 {.
      cdecl, importc: "ma_peak2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_peak2_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_config_init):
  proc ma_loshelf2_config_init*(format: ma_format_553648700;
                                channels: ma_uint32_553648621;
                                sampleRate: ma_uint32_553648621;
                                gainDB: cdouble; shelfSlope: cdouble;
                                frequency: cdouble): ma_loshelf2_config_553648868 {.
      cdecl, importc: "ma_loshelf2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_config_init" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_get_heap_size):
  proc ma_loshelf2_get_heap_size*(pConfig: ptr ma_loshelf2_config_553648868;
                                  pHeapSizeInBytes: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_loshelf2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_init_preallocated):
  proc ma_loshelf2_init_preallocated*(pConfig: ptr ma_loshelf2_config_553648868;
                                      pHeap: pointer; pFilter: ptr ma_loshelf2_553648874): ma_result_553648677 {.
      cdecl, importc: "ma_loshelf2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_init):
  proc ma_loshelf2_init*(pConfig: ptr ma_loshelf2_config_553648868;
                         pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                         pFilter: ptr ma_loshelf2_553648874): ma_result_553648677 {.
      cdecl, importc: "ma_loshelf2_init".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_init" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_uninit):
  proc ma_loshelf2_uninit*(pFilter: ptr ma_loshelf2_553648874;
                           pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_loshelf2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_uninit" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_reinit):
  proc ma_loshelf2_reinit*(pConfig: ptr ma_loshelf2_config_553648868;
                           pFilter: ptr ma_loshelf2_553648874): ma_result_553648677 {.
      cdecl, importc: "ma_loshelf2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_reinit" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_process_pcm_frames):
  proc ma_loshelf2_process_pcm_frames*(pFilter: ptr ma_loshelf2_553648874;
                                       pFramesOut: pointer; pFramesIn: pointer;
                                       frameCount: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_loshelf2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_get_latency):
  proc ma_loshelf2_get_latency*(pFilter: ptr ma_loshelf2_553648874): ma_uint32_553648621 {.
      cdecl, importc: "ma_loshelf2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_config_init):
  proc ma_hishelf2_config_init*(format: ma_format_553648700;
                                channels: ma_uint32_553648621;
                                sampleRate: ma_uint32_553648621;
                                gainDB: cdouble; shelfSlope: cdouble;
                                frequency: cdouble): ma_hishelf2_config_553648878 {.
      cdecl, importc: "ma_hishelf2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_config_init" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_get_heap_size):
  proc ma_hishelf2_get_heap_size*(pConfig: ptr ma_hishelf2_config_553648878;
                                  pHeapSizeInBytes: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_hishelf2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_init_preallocated):
  proc ma_hishelf2_init_preallocated*(pConfig: ptr ma_hishelf2_config_553648878;
                                      pHeap: pointer; pFilter: ptr ma_hishelf2_553648884): ma_result_553648677 {.
      cdecl, importc: "ma_hishelf2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_init):
  proc ma_hishelf2_init*(pConfig: ptr ma_hishelf2_config_553648878;
                         pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                         pFilter: ptr ma_hishelf2_553648884): ma_result_553648677 {.
      cdecl, importc: "ma_hishelf2_init".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_init" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_uninit):
  proc ma_hishelf2_uninit*(pFilter: ptr ma_hishelf2_553648884;
                           pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_hishelf2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_uninit" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_reinit):
  proc ma_hishelf2_reinit*(pConfig: ptr ma_hishelf2_config_553648878;
                           pFilter: ptr ma_hishelf2_553648884): ma_result_553648677 {.
      cdecl, importc: "ma_hishelf2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_reinit" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_process_pcm_frames):
  proc ma_hishelf2_process_pcm_frames*(pFilter: ptr ma_hishelf2_553648884;
                                       pFramesOut: pointer; pFramesIn: pointer;
                                       frameCount: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_hishelf2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_get_latency):
  proc ma_hishelf2_get_latency*(pFilter: ptr ma_hishelf2_553648884): ma_uint32_553648621 {.
      cdecl, importc: "ma_hishelf2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_delay_config_init):
  proc ma_delay_config_init*(channels: ma_uint32_553648621;
                             sampleRate: ma_uint32_553648621;
                             delayInFrames: ma_uint32_553648621; decay: cfloat): ma_delay_config_553648888 {.
      cdecl, importc: "ma_delay_config_init".}
else:
  static :
    hint("Declaration of " & "ma_delay_config_init" &
        " already exists, not redeclaring")
when not declared(ma_delay_init):
  proc ma_delay_init*(pConfig: ptr ma_delay_config_553648888;
                      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                      pDelay: ptr ma_delay_553648892): ma_result_553648677 {.
      cdecl, importc: "ma_delay_init".}
else:
  static :
    hint("Declaration of " & "ma_delay_init" &
        " already exists, not redeclaring")
when not declared(ma_delay_uninit):
  proc ma_delay_uninit*(pDelay: ptr ma_delay_553648892;
                        pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_delay_uninit".}
else:
  static :
    hint("Declaration of " & "ma_delay_uninit" &
        " already exists, not redeclaring")
when not declared(ma_delay_process_pcm_frames):
  proc ma_delay_process_pcm_frames*(pDelay: ptr ma_delay_553648892;
                                    pFramesOut: pointer; pFramesIn: pointer;
                                    frameCount: ma_uint32_553648621): ma_result_553648677 {.
      cdecl, importc: "ma_delay_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_delay_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_delay_set_wet):
  proc ma_delay_set_wet*(pDelay: ptr ma_delay_553648892; value: cfloat): void {.
      cdecl, importc: "ma_delay_set_wet".}
else:
  static :
    hint("Declaration of " & "ma_delay_set_wet" &
        " already exists, not redeclaring")
when not declared(ma_delay_get_wet):
  proc ma_delay_get_wet*(pDelay: ptr ma_delay_553648892): cfloat {.cdecl,
      importc: "ma_delay_get_wet".}
else:
  static :
    hint("Declaration of " & "ma_delay_get_wet" &
        " already exists, not redeclaring")
when not declared(ma_delay_set_dry):
  proc ma_delay_set_dry*(pDelay: ptr ma_delay_553648892; value: cfloat): void {.
      cdecl, importc: "ma_delay_set_dry".}
else:
  static :
    hint("Declaration of " & "ma_delay_set_dry" &
        " already exists, not redeclaring")
when not declared(ma_delay_get_dry):
  proc ma_delay_get_dry*(pDelay: ptr ma_delay_553648892): cfloat {.cdecl,
      importc: "ma_delay_get_dry".}
else:
  static :
    hint("Declaration of " & "ma_delay_get_dry" &
        " already exists, not redeclaring")
when not declared(ma_delay_set_decay):
  proc ma_delay_set_decay*(pDelay: ptr ma_delay_553648892; value: cfloat): void {.
      cdecl, importc: "ma_delay_set_decay".}
else:
  static :
    hint("Declaration of " & "ma_delay_set_decay" &
        " already exists, not redeclaring")
when not declared(ma_delay_get_decay):
  proc ma_delay_get_decay*(pDelay: ptr ma_delay_553648892): cfloat {.cdecl,
      importc: "ma_delay_get_decay".}
else:
  static :
    hint("Declaration of " & "ma_delay_get_decay" &
        " already exists, not redeclaring")
when not declared(ma_gainer_config_init):
  proc ma_gainer_config_init*(channels: ma_uint32_553648621;
                              smoothTimeInFrames: ma_uint32_553648621): ma_gainer_config_553648896 {.
      cdecl, importc: "ma_gainer_config_init".}
else:
  static :
    hint("Declaration of " & "ma_gainer_config_init" &
        " already exists, not redeclaring")
when not declared(ma_gainer_get_heap_size):
  proc ma_gainer_get_heap_size*(pConfig: ptr ma_gainer_config_553648896;
                                pHeapSizeInBytes: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_gainer_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_gainer_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_gainer_init_preallocated):
  proc ma_gainer_init_preallocated*(pConfig: ptr ma_gainer_config_553648896;
                                    pHeap: pointer; pGainer: ptr ma_gainer_553648900): ma_result_553648677 {.
      cdecl, importc: "ma_gainer_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_gainer_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_gainer_init):
  proc ma_gainer_init*(pConfig: ptr ma_gainer_config_553648896;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                       pGainer: ptr ma_gainer_553648900): ma_result_553648677 {.
      cdecl, importc: "ma_gainer_init".}
else:
  static :
    hint("Declaration of " & "ma_gainer_init" &
        " already exists, not redeclaring")
when not declared(ma_gainer_uninit):
  proc ma_gainer_uninit*(pGainer: ptr ma_gainer_553648900;
                         pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_gainer_uninit".}
else:
  static :
    hint("Declaration of " & "ma_gainer_uninit" &
        " already exists, not redeclaring")
when not declared(ma_gainer_process_pcm_frames):
  proc ma_gainer_process_pcm_frames*(pGainer: ptr ma_gainer_553648900;
                                     pFramesOut: pointer; pFramesIn: pointer;
                                     frameCount: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_gainer_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_gainer_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_gainer_set_gain):
  proc ma_gainer_set_gain*(pGainer: ptr ma_gainer_553648900; newGain: cfloat): ma_result_553648677 {.
      cdecl, importc: "ma_gainer_set_gain".}
else:
  static :
    hint("Declaration of " & "ma_gainer_set_gain" &
        " already exists, not redeclaring")
when not declared(ma_gainer_set_gains):
  proc ma_gainer_set_gains*(pGainer: ptr ma_gainer_553648900;
                            pNewGains: ptr cfloat): ma_result_553648677 {.cdecl,
      importc: "ma_gainer_set_gains".}
else:
  static :
    hint("Declaration of " & "ma_gainer_set_gains" &
        " already exists, not redeclaring")
when not declared(ma_gainer_set_master_volume):
  proc ma_gainer_set_master_volume*(pGainer: ptr ma_gainer_553648900;
                                    volume: cfloat): ma_result_553648677 {.
      cdecl, importc: "ma_gainer_set_master_volume".}
else:
  static :
    hint("Declaration of " & "ma_gainer_set_master_volume" &
        " already exists, not redeclaring")
when not declared(ma_gainer_get_master_volume):
  proc ma_gainer_get_master_volume*(pGainer: ptr ma_gainer_553648900;
                                    pVolume: ptr cfloat): ma_result_553648677 {.
      cdecl, importc: "ma_gainer_get_master_volume".}
else:
  static :
    hint("Declaration of " & "ma_gainer_get_master_volume" &
        " already exists, not redeclaring")
when not declared(ma_panner_config_init):
  proc ma_panner_config_init*(format: ma_format_553648700; channels: ma_uint32_553648621): ma_panner_config_553648908 {.
      cdecl, importc: "ma_panner_config_init".}
else:
  static :
    hint("Declaration of " & "ma_panner_config_init" &
        " already exists, not redeclaring")
when not declared(ma_panner_init):
  proc ma_panner_init*(pConfig: ptr ma_panner_config_553648908;
                       pPanner: ptr ma_panner_553648912): ma_result_553648677 {.
      cdecl, importc: "ma_panner_init".}
else:
  static :
    hint("Declaration of " & "ma_panner_init" &
        " already exists, not redeclaring")
when not declared(ma_panner_process_pcm_frames):
  proc ma_panner_process_pcm_frames*(pPanner: ptr ma_panner_553648912;
                                     pFramesOut: pointer; pFramesIn: pointer;
                                     frameCount: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_panner_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_panner_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_panner_set_mode):
  proc ma_panner_set_mode*(pPanner: ptr ma_panner_553648912; mode: ma_pan_mode_553648904): void {.
      cdecl, importc: "ma_panner_set_mode".}
else:
  static :
    hint("Declaration of " & "ma_panner_set_mode" &
        " already exists, not redeclaring")
when not declared(ma_panner_get_mode):
  proc ma_panner_get_mode*(pPanner: ptr ma_panner_553648912): ma_pan_mode_553648904 {.
      cdecl, importc: "ma_panner_get_mode".}
else:
  static :
    hint("Declaration of " & "ma_panner_get_mode" &
        " already exists, not redeclaring")
when not declared(ma_panner_set_pan):
  proc ma_panner_set_pan*(pPanner: ptr ma_panner_553648912; pan: cfloat): void {.
      cdecl, importc: "ma_panner_set_pan".}
else:
  static :
    hint("Declaration of " & "ma_panner_set_pan" &
        " already exists, not redeclaring")
when not declared(ma_panner_get_pan):
  proc ma_panner_get_pan*(pPanner: ptr ma_panner_553648912): cfloat {.cdecl,
      importc: "ma_panner_get_pan".}
else:
  static :
    hint("Declaration of " & "ma_panner_get_pan" &
        " already exists, not redeclaring")
when not declared(ma_fader_config_init):
  proc ma_fader_config_init*(format: ma_format_553648700; channels: ma_uint32_553648621;
                             sampleRate: ma_uint32_553648621): ma_fader_config_553648916 {.
      cdecl, importc: "ma_fader_config_init".}
else:
  static :
    hint("Declaration of " & "ma_fader_config_init" &
        " already exists, not redeclaring")
when not declared(ma_fader_init):
  proc ma_fader_init*(pConfig: ptr ma_fader_config_553648916;
                      pFader: ptr ma_fader_553648920): ma_result_553648677 {.
      cdecl, importc: "ma_fader_init".}
else:
  static :
    hint("Declaration of " & "ma_fader_init" &
        " already exists, not redeclaring")
when not declared(ma_fader_process_pcm_frames):
  proc ma_fader_process_pcm_frames*(pFader: ptr ma_fader_553648920;
                                    pFramesOut: pointer; pFramesIn: pointer;
                                    frameCount: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_fader_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_fader_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_fader_get_data_format):
  proc ma_fader_get_data_format*(pFader: ptr ma_fader_553648920;
                                 pFormat: ptr ma_format_553648700;
                                 pChannels: ptr ma_uint32_553648621;
                                 pSampleRate: ptr ma_uint32_553648621): void {.
      cdecl, importc: "ma_fader_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_fader_get_data_format" &
        " already exists, not redeclaring")
when not declared(ma_fader_set_fade):
  proc ma_fader_set_fade*(pFader: ptr ma_fader_553648920; volumeBeg: cfloat;
                          volumeEnd: cfloat; lengthInFrames: ma_uint64_553648625): void {.
      cdecl, importc: "ma_fader_set_fade".}
else:
  static :
    hint("Declaration of " & "ma_fader_set_fade" &
        " already exists, not redeclaring")
when not declared(ma_fader_set_fade_ex):
  proc ma_fader_set_fade_ex*(pFader: ptr ma_fader_553648920; volumeBeg: cfloat;
                             volumeEnd: cfloat; lengthInFrames: ma_uint64_553648625;
                             startOffsetInFrames: ma_int64_553648623): void {.
      cdecl, importc: "ma_fader_set_fade_ex".}
else:
  static :
    hint("Declaration of " & "ma_fader_set_fade_ex" &
        " already exists, not redeclaring")
when not declared(ma_fader_get_current_volume):
  proc ma_fader_get_current_volume*(pFader: ptr ma_fader_553648920): cfloat {.
      cdecl, importc: "ma_fader_get_current_volume".}
else:
  static :
    hint("Declaration of " & "ma_fader_get_current_volume" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_config_init):
  proc ma_spatializer_listener_config_init*(channelsOut: ma_uint32_553648621): ma_spatializer_listener_config_553648944 {.
      cdecl, importc: "ma_spatializer_listener_config_init".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_config_init" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_get_heap_size):
  proc ma_spatializer_listener_get_heap_size*(
      pConfig: ptr ma_spatializer_listener_config_553648944;
      pHeapSizeInBytes: ptr csize_t): ma_result_553648677 {.cdecl,
      importc: "ma_spatializer_listener_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_init_preallocated):
  proc ma_spatializer_listener_init_preallocated*(
      pConfig: ptr ma_spatializer_listener_config_553648944; pHeap: pointer;
      pListener: ptr ma_spatializer_listener_553648948): ma_result_553648677 {.
      cdecl, importc: "ma_spatializer_listener_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_init):
  proc ma_spatializer_listener_init*(pConfig: ptr ma_spatializer_listener_config_553648944;
      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                                     pListener: ptr ma_spatializer_listener_553648948): ma_result_553648677 {.
      cdecl, importc: "ma_spatializer_listener_init".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_init" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_uninit):
  proc ma_spatializer_listener_uninit*(pListener: ptr ma_spatializer_listener_553648948;
      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_spatializer_listener_uninit".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_uninit" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_get_channel_map):
  proc ma_spatializer_listener_get_channel_map*(
      pListener: ptr ma_spatializer_listener_553648948): ptr ma_channel_553648669 {.
      cdecl, importc: "ma_spatializer_listener_get_channel_map".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_channel_map" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_set_cone):
  proc ma_spatializer_listener_set_cone*(pListener: ptr ma_spatializer_listener_553648948;
      innerAngleInRadians: cfloat; outerAngleInRadians: cfloat;
      outerGain: cfloat): void {.cdecl,
                                 importc: "ma_spatializer_listener_set_cone".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_cone" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_get_cone):
  proc ma_spatializer_listener_get_cone*(pListener: ptr ma_spatializer_listener_553648948;
      pInnerAngleInRadians: ptr cfloat; pOuterAngleInRadians: ptr cfloat;
      pOuterGain: ptr cfloat): void {.cdecl, importc: "ma_spatializer_listener_get_cone".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_cone" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_set_position):
  proc ma_spatializer_listener_set_position*(
      pListener: ptr ma_spatializer_listener_553648948; x: cfloat; y: cfloat;
      z: cfloat): void {.cdecl, importc: "ma_spatializer_listener_set_position".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_position" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_get_position):
  proc ma_spatializer_listener_get_position*(
      pListener: ptr ma_spatializer_listener_553648948): ma_vec3f_553648924 {.
      cdecl, importc: "ma_spatializer_listener_get_position".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_position" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_set_direction):
  proc ma_spatializer_listener_set_direction*(
      pListener: ptr ma_spatializer_listener_553648948; x: cfloat; y: cfloat;
      z: cfloat): void {.cdecl, importc: "ma_spatializer_listener_set_direction".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_direction" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_get_direction):
  proc ma_spatializer_listener_get_direction*(
      pListener: ptr ma_spatializer_listener_553648948): ma_vec3f_553648924 {.
      cdecl, importc: "ma_spatializer_listener_get_direction".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_direction" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_set_velocity):
  proc ma_spatializer_listener_set_velocity*(
      pListener: ptr ma_spatializer_listener_553648948; x: cfloat; y: cfloat;
      z: cfloat): void {.cdecl, importc: "ma_spatializer_listener_set_velocity".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_velocity" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_get_velocity):
  proc ma_spatializer_listener_get_velocity*(
      pListener: ptr ma_spatializer_listener_553648948): ma_vec3f_553648924 {.
      cdecl, importc: "ma_spatializer_listener_get_velocity".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_velocity" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_set_speed_of_sound):
  proc ma_spatializer_listener_set_speed_of_sound*(
      pListener: ptr ma_spatializer_listener_553648948; speedOfSound: cfloat): void {.
      cdecl, importc: "ma_spatializer_listener_set_speed_of_sound".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_speed_of_sound" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_get_speed_of_sound):
  proc ma_spatializer_listener_get_speed_of_sound*(
      pListener: ptr ma_spatializer_listener_553648948): cfloat {.cdecl,
      importc: "ma_spatializer_listener_get_speed_of_sound".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_speed_of_sound" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_set_world_up):
  proc ma_spatializer_listener_set_world_up*(
      pListener: ptr ma_spatializer_listener_553648948; x: cfloat; y: cfloat;
      z: cfloat): void {.cdecl, importc: "ma_spatializer_listener_set_world_up".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_world_up" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_get_world_up):
  proc ma_spatializer_listener_get_world_up*(
      pListener: ptr ma_spatializer_listener_553648948): ma_vec3f_553648924 {.
      cdecl, importc: "ma_spatializer_listener_get_world_up".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_world_up" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_set_enabled):
  proc ma_spatializer_listener_set_enabled*(
      pListener: ptr ma_spatializer_listener_553648948; isEnabled: ma_bool32_553648631): void {.
      cdecl, importc: "ma_spatializer_listener_set_enabled".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_enabled" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_is_enabled):
  proc ma_spatializer_listener_is_enabled*(
      pListener: ptr ma_spatializer_listener_553648948): ma_bool32_553648631 {.
      cdecl, importc: "ma_spatializer_listener_is_enabled".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_is_enabled" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_config_init):
  proc ma_spatializer_config_init*(channelsIn: ma_uint32_553648621;
                                   channelsOut: ma_uint32_553648621): ma_spatializer_config_553648952 {.
      cdecl, importc: "ma_spatializer_config_init".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_config_init" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_heap_size):
  proc ma_spatializer_get_heap_size*(pConfig: ptr ma_spatializer_config_553648952;
                                     pHeapSizeInBytes: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_spatializer_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_init_preallocated):
  proc ma_spatializer_init_preallocated*(pConfig: ptr ma_spatializer_config_553648952;
      pHeap: pointer; pSpatializer: ptr ma_spatializer_553648956): ma_result_553648677 {.
      cdecl, importc: "ma_spatializer_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_init):
  proc ma_spatializer_init*(pConfig: ptr ma_spatializer_config_553648952;
                            pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                            pSpatializer: ptr ma_spatializer_553648956): ma_result_553648677 {.
      cdecl, importc: "ma_spatializer_init".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_init" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_uninit):
  proc ma_spatializer_uninit*(pSpatializer: ptr ma_spatializer_553648956;
                              pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_spatializer_uninit".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_uninit" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_process_pcm_frames):
  proc ma_spatializer_process_pcm_frames*(pSpatializer: ptr ma_spatializer_553648956;
      pListener: ptr ma_spatializer_listener_553648948; pFramesOut: pointer;
      pFramesIn: pointer; frameCount: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_spatializer_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_master_volume):
  proc ma_spatializer_set_master_volume*(pSpatializer: ptr ma_spatializer_553648956;
      volume: cfloat): ma_result_553648677 {.cdecl,
      importc: "ma_spatializer_set_master_volume".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_master_volume" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_master_volume):
  proc ma_spatializer_get_master_volume*(pSpatializer: ptr ma_spatializer_553648956;
      pVolume: ptr cfloat): ma_result_553648677 {.cdecl,
      importc: "ma_spatializer_get_master_volume".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_master_volume" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_input_channels):
  proc ma_spatializer_get_input_channels*(pSpatializer: ptr ma_spatializer_553648956): ma_uint32_553648621 {.
      cdecl, importc: "ma_spatializer_get_input_channels".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_input_channels" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_output_channels):
  proc ma_spatializer_get_output_channels*(pSpatializer: ptr ma_spatializer_553648956): ma_uint32_553648621 {.
      cdecl, importc: "ma_spatializer_get_output_channels".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_output_channels" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_attenuation_model):
  proc ma_spatializer_set_attenuation_model*(pSpatializer: ptr ma_spatializer_553648956;
      attenuationModel: ma_attenuation_model_553648932): void {.cdecl,
      importc: "ma_spatializer_set_attenuation_model".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_attenuation_model" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_attenuation_model):
  proc ma_spatializer_get_attenuation_model*(pSpatializer: ptr ma_spatializer_553648956): ma_attenuation_model_553648932 {.
      cdecl, importc: "ma_spatializer_get_attenuation_model".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_attenuation_model" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_positioning):
  proc ma_spatializer_set_positioning*(pSpatializer: ptr ma_spatializer_553648956;
                                       positioning: ma_positioning_553648936): void {.
      cdecl, importc: "ma_spatializer_set_positioning".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_positioning" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_positioning):
  proc ma_spatializer_get_positioning*(pSpatializer: ptr ma_spatializer_553648956): ma_positioning_553648936 {.
      cdecl, importc: "ma_spatializer_get_positioning".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_positioning" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_rolloff):
  proc ma_spatializer_set_rolloff*(pSpatializer: ptr ma_spatializer_553648956;
                                   rolloff: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_rolloff".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_rolloff" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_rolloff):
  proc ma_spatializer_get_rolloff*(pSpatializer: ptr ma_spatializer_553648956): cfloat {.
      cdecl, importc: "ma_spatializer_get_rolloff".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_rolloff" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_min_gain):
  proc ma_spatializer_set_min_gain*(pSpatializer: ptr ma_spatializer_553648956;
                                    minGain: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_min_gain".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_min_gain" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_min_gain):
  proc ma_spatializer_get_min_gain*(pSpatializer: ptr ma_spatializer_553648956): cfloat {.
      cdecl, importc: "ma_spatializer_get_min_gain".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_min_gain" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_max_gain):
  proc ma_spatializer_set_max_gain*(pSpatializer: ptr ma_spatializer_553648956;
                                    maxGain: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_max_gain".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_max_gain" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_max_gain):
  proc ma_spatializer_get_max_gain*(pSpatializer: ptr ma_spatializer_553648956): cfloat {.
      cdecl, importc: "ma_spatializer_get_max_gain".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_max_gain" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_min_distance):
  proc ma_spatializer_set_min_distance*(pSpatializer: ptr ma_spatializer_553648956;
                                        minDistance: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_min_distance".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_min_distance" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_min_distance):
  proc ma_spatializer_get_min_distance*(pSpatializer: ptr ma_spatializer_553648956): cfloat {.
      cdecl, importc: "ma_spatializer_get_min_distance".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_min_distance" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_max_distance):
  proc ma_spatializer_set_max_distance*(pSpatializer: ptr ma_spatializer_553648956;
                                        maxDistance: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_max_distance".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_max_distance" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_max_distance):
  proc ma_spatializer_get_max_distance*(pSpatializer: ptr ma_spatializer_553648956): cfloat {.
      cdecl, importc: "ma_spatializer_get_max_distance".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_max_distance" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_cone):
  proc ma_spatializer_set_cone*(pSpatializer: ptr ma_spatializer_553648956;
                                innerAngleInRadians: cfloat;
                                outerAngleInRadians: cfloat; outerGain: cfloat): void {.
      cdecl, importc: "ma_spatializer_set_cone".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_cone" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_cone):
  proc ma_spatializer_get_cone*(pSpatializer: ptr ma_spatializer_553648956;
                                pInnerAngleInRadians: ptr cfloat;
                                pOuterAngleInRadians: ptr cfloat;
                                pOuterGain: ptr cfloat): void {.cdecl,
      importc: "ma_spatializer_get_cone".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_cone" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_doppler_factor):
  proc ma_spatializer_set_doppler_factor*(pSpatializer: ptr ma_spatializer_553648956;
      dopplerFactor: cfloat): void {.cdecl, importc: "ma_spatializer_set_doppler_factor".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_doppler_factor" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_doppler_factor):
  proc ma_spatializer_get_doppler_factor*(pSpatializer: ptr ma_spatializer_553648956): cfloat {.
      cdecl, importc: "ma_spatializer_get_doppler_factor".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_doppler_factor" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_directional_attenuation_factor):
  proc ma_spatializer_set_directional_attenuation_factor*(
      pSpatializer: ptr ma_spatializer_553648956;
      directionalAttenuationFactor: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_directional_attenuation_factor".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_directional_attenuation_factor" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_directional_attenuation_factor):
  proc ma_spatializer_get_directional_attenuation_factor*(
      pSpatializer: ptr ma_spatializer_553648956): cfloat {.cdecl,
      importc: "ma_spatializer_get_directional_attenuation_factor".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_directional_attenuation_factor" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_position):
  proc ma_spatializer_set_position*(pSpatializer: ptr ma_spatializer_553648956;
                                    x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_spatializer_set_position".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_position" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_position):
  proc ma_spatializer_get_position*(pSpatializer: ptr ma_spatializer_553648956): ma_vec3f_553648924 {.
      cdecl, importc: "ma_spatializer_get_position".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_position" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_direction):
  proc ma_spatializer_set_direction*(pSpatializer: ptr ma_spatializer_553648956;
                                     x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_spatializer_set_direction".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_direction" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_direction):
  proc ma_spatializer_get_direction*(pSpatializer: ptr ma_spatializer_553648956): ma_vec3f_553648924 {.
      cdecl, importc: "ma_spatializer_get_direction".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_direction" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_velocity):
  proc ma_spatializer_set_velocity*(pSpatializer: ptr ma_spatializer_553648956;
                                    x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_spatializer_set_velocity".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_velocity" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_velocity):
  proc ma_spatializer_get_velocity*(pSpatializer: ptr ma_spatializer_553648956): ma_vec3f_553648924 {.
      cdecl, importc: "ma_spatializer_get_velocity".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_velocity" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_relative_position_and_direction):
  proc ma_spatializer_get_relative_position_and_direction*(
      pSpatializer: ptr ma_spatializer_553648956;
      pListener: ptr ma_spatializer_listener_553648948;
      pRelativePos: ptr ma_vec3f_553648924; pRelativeDir: ptr ma_vec3f_553648924): void {.
      cdecl, importc: "ma_spatializer_get_relative_position_and_direction".}
else:
  static :
    hint("Declaration of " &
        "ma_spatializer_get_relative_position_and_direction" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_config_init):
  proc ma_linear_resampler_config_init*(format: ma_format_553648700;
                                        channels: ma_uint32_553648621;
                                        sampleRateIn: ma_uint32_553648621;
                                        sampleRateOut: ma_uint32_553648621): ma_linear_resampler_config_553648960 {.
      cdecl, importc: "ma_linear_resampler_config_init".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_config_init" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_get_heap_size):
  proc ma_linear_resampler_get_heap_size*(
      pConfig: ptr ma_linear_resampler_config_553648960;
      pHeapSizeInBytes: ptr csize_t): ma_result_553648677 {.cdecl,
      importc: "ma_linear_resampler_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_init_preallocated):
  proc ma_linear_resampler_init_preallocated*(
      pConfig: ptr ma_linear_resampler_config_553648960; pHeap: pointer;
      pResampler: ptr ma_linear_resampler_553648964): ma_result_553648677 {.
      cdecl, importc: "ma_linear_resampler_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_init):
  proc ma_linear_resampler_init*(pConfig: ptr ma_linear_resampler_config_553648960;
      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                                 pResampler: ptr ma_linear_resampler_553648964): ma_result_553648677 {.
      cdecl, importc: "ma_linear_resampler_init".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_init" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_uninit):
  proc ma_linear_resampler_uninit*(pResampler: ptr ma_linear_resampler_553648964;
      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_linear_resampler_uninit".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_uninit" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_process_pcm_frames):
  proc ma_linear_resampler_process_pcm_frames*(
      pResampler: ptr ma_linear_resampler_553648964; pFramesIn: pointer;
      pFrameCountIn: ptr ma_uint64_553648625; pFramesOut: pointer;
      pFrameCountOut: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_linear_resampler_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_set_rate):
  proc ma_linear_resampler_set_rate*(pResampler: ptr ma_linear_resampler_553648964;
                                     sampleRateIn: ma_uint32_553648621;
                                     sampleRateOut: ma_uint32_553648621): ma_result_553648677 {.
      cdecl, importc: "ma_linear_resampler_set_rate".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_set_rate" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_set_rate_ratio):
  proc ma_linear_resampler_set_rate_ratio*(pResampler: ptr ma_linear_resampler_553648964;
      ratioInOut: cfloat): ma_result_553648677 {.cdecl,
      importc: "ma_linear_resampler_set_rate_ratio".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_set_rate_ratio" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_get_input_latency):
  proc ma_linear_resampler_get_input_latency*(
      pResampler: ptr ma_linear_resampler_553648964): ma_uint64_553648625 {.
      cdecl, importc: "ma_linear_resampler_get_input_latency".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_get_input_latency" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_get_output_latency):
  proc ma_linear_resampler_get_output_latency*(
      pResampler: ptr ma_linear_resampler_553648964): ma_uint64_553648625 {.
      cdecl, importc: "ma_linear_resampler_get_output_latency".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_get_output_latency" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_get_required_input_frame_count):
  proc ma_linear_resampler_get_required_input_frame_count*(
      pResampler: ptr ma_linear_resampler_553648964;
      outputFrameCount: ma_uint64_553648625; pInputFrameCount: ptr ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_linear_resampler_get_required_input_frame_count".}
else:
  static :
    hint("Declaration of " &
        "ma_linear_resampler_get_required_input_frame_count" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_get_expected_output_frame_count):
  proc ma_linear_resampler_get_expected_output_frame_count*(
      pResampler: ptr ma_linear_resampler_553648964; inputFrameCount: ma_uint64_553648625;
      pOutputFrameCount: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_linear_resampler_get_expected_output_frame_count".}
else:
  static :
    hint("Declaration of " &
        "ma_linear_resampler_get_expected_output_frame_count" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_reset):
  proc ma_linear_resampler_reset*(pResampler: ptr ma_linear_resampler_553648964): ma_result_553648677 {.
      cdecl, importc: "ma_linear_resampler_reset".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_reset" &
        " already exists, not redeclaring")
when not declared(ma_resampler_config_init):
  proc ma_resampler_config_init*(format: ma_format_553648700;
                                 channels: ma_uint32_553648621;
                                 sampleRateIn: ma_uint32_553648621;
                                 sampleRateOut: ma_uint32_553648621;
                                 algorithm: ma_resample_algorithm_553648978): ma_resampler_config_553648966 {.
      cdecl, importc: "ma_resampler_config_init".}
else:
  static :
    hint("Declaration of " & "ma_resampler_config_init" &
        " already exists, not redeclaring")
when not declared(ma_resampler_get_heap_size):
  proc ma_resampler_get_heap_size*(pConfig: ptr ma_resampler_config_553648966;
                                   pHeapSizeInBytes: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_resampler_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_resampler_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_resampler_init_preallocated):
  proc ma_resampler_init_preallocated*(pConfig: ptr ma_resampler_config_553648966;
                                       pHeap: pointer;
                                       pResampler: ptr ma_resampler_553648982): ma_result_553648677 {.
      cdecl, importc: "ma_resampler_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_resampler_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_resampler_init):
  proc ma_resampler_init*(pConfig: ptr ma_resampler_config_553648966;
                          pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                          pResampler: ptr ma_resampler_553648982): ma_result_553648677 {.
      cdecl, importc: "ma_resampler_init".}
else:
  static :
    hint("Declaration of " & "ma_resampler_init" &
        " already exists, not redeclaring")
when not declared(ma_resampler_uninit):
  proc ma_resampler_uninit*(pResampler: ptr ma_resampler_553648982;
                            pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_resampler_uninit".}
else:
  static :
    hint("Declaration of " & "ma_resampler_uninit" &
        " already exists, not redeclaring")
when not declared(ma_resampler_process_pcm_frames):
  proc ma_resampler_process_pcm_frames*(pResampler: ptr ma_resampler_553648982;
                                        pFramesIn: pointer;
                                        pFrameCountIn: ptr ma_uint64_553648625;
                                        pFramesOut: pointer;
                                        pFrameCountOut: ptr ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_resampler_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_resampler_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resampler_set_rate):
  proc ma_resampler_set_rate*(pResampler: ptr ma_resampler_553648982;
                              sampleRateIn: ma_uint32_553648621;
                              sampleRateOut: ma_uint32_553648621): ma_result_553648677 {.
      cdecl, importc: "ma_resampler_set_rate".}
else:
  static :
    hint("Declaration of " & "ma_resampler_set_rate" &
        " already exists, not redeclaring")
when not declared(ma_resampler_set_rate_ratio):
  proc ma_resampler_set_rate_ratio*(pResampler: ptr ma_resampler_553648982;
                                    ratio: cfloat): ma_result_553648677 {.cdecl,
      importc: "ma_resampler_set_rate_ratio".}
else:
  static :
    hint("Declaration of " & "ma_resampler_set_rate_ratio" &
        " already exists, not redeclaring")
when not declared(ma_resampler_get_input_latency):
  proc ma_resampler_get_input_latency*(pResampler: ptr ma_resampler_553648982): ma_uint64_553648625 {.
      cdecl, importc: "ma_resampler_get_input_latency".}
else:
  static :
    hint("Declaration of " & "ma_resampler_get_input_latency" &
        " already exists, not redeclaring")
when not declared(ma_resampler_get_output_latency):
  proc ma_resampler_get_output_latency*(pResampler: ptr ma_resampler_553648982): ma_uint64_553648625 {.
      cdecl, importc: "ma_resampler_get_output_latency".}
else:
  static :
    hint("Declaration of " & "ma_resampler_get_output_latency" &
        " already exists, not redeclaring")
when not declared(ma_resampler_get_required_input_frame_count):
  proc ma_resampler_get_required_input_frame_count*(
      pResampler: ptr ma_resampler_553648982; outputFrameCount: ma_uint64_553648625;
      pInputFrameCount: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_resampler_get_required_input_frame_count".}
else:
  static :
    hint("Declaration of " & "ma_resampler_get_required_input_frame_count" &
        " already exists, not redeclaring")
when not declared(ma_resampler_get_expected_output_frame_count):
  proc ma_resampler_get_expected_output_frame_count*(
      pResampler: ptr ma_resampler_553648982; inputFrameCount: ma_uint64_553648625;
      pOutputFrameCount: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_resampler_get_expected_output_frame_count".}
else:
  static :
    hint("Declaration of " & "ma_resampler_get_expected_output_frame_count" &
        " already exists, not redeclaring")
when not declared(ma_resampler_reset):
  proc ma_resampler_reset*(pResampler: ptr ma_resampler_553648982): ma_result_553648677 {.
      cdecl, importc: "ma_resampler_reset".}
else:
  static :
    hint("Declaration of " & "ma_resampler_reset" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter_config_init):
  proc ma_channel_converter_config_init*(format: ma_format_553648700;
      channelsIn: ma_uint32_553648621; pChannelMapIn: ptr ma_channel_553648669;
      channelsOut: ma_uint32_553648621; pChannelMapOut: ptr ma_channel_553648669;
      mixingMode: ma_channel_mix_mode_553648708): ma_channel_converter_config_553648994 {.
      cdecl, importc: "ma_channel_converter_config_init".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_config_init" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter_get_heap_size):
  proc ma_channel_converter_get_heap_size*(
      pConfig: ptr ma_channel_converter_config_553648994;
      pHeapSizeInBytes: ptr csize_t): ma_result_553648677 {.cdecl,
      importc: "ma_channel_converter_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter_init_preallocated):
  proc ma_channel_converter_init_preallocated*(
      pConfig: ptr ma_channel_converter_config_553648994; pHeap: pointer;
      pConverter: ptr ma_channel_converter_553648998): ma_result_553648677 {.
      cdecl, importc: "ma_channel_converter_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter_init):
  proc ma_channel_converter_init*(pConfig: ptr ma_channel_converter_config_553648994;
      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                                  pConverter: ptr ma_channel_converter_553648998): ma_result_553648677 {.
      cdecl, importc: "ma_channel_converter_init".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_init" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter_uninit):
  proc ma_channel_converter_uninit*(pConverter: ptr ma_channel_converter_553648998;
      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_channel_converter_uninit".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_uninit" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter_process_pcm_frames):
  proc ma_channel_converter_process_pcm_frames*(
      pConverter: ptr ma_channel_converter_553648998; pFramesOut: pointer;
      pFramesIn: pointer; frameCount: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_channel_converter_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter_get_input_channel_map):
  proc ma_channel_converter_get_input_channel_map*(
      pConverter: ptr ma_channel_converter_553648998;
      pChannelMap: ptr ma_channel_553648669; channelMapCap: csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_channel_converter_get_input_channel_map".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_get_input_channel_map" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter_get_output_channel_map):
  proc ma_channel_converter_get_output_channel_map*(
      pConverter: ptr ma_channel_converter_553648998;
      pChannelMap: ptr ma_channel_553648669; channelMapCap: csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_channel_converter_get_output_channel_map".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_get_output_channel_map" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_config_init_default):
  proc ma_data_converter_config_init_default*(): ma_data_converter_config_553649002 {.
      cdecl, importc: "ma_data_converter_config_init_default".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_config_init_default" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_config_init):
  proc ma_data_converter_config_init*(formatIn: ma_format_553648700;
                                      formatOut: ma_format_553648700;
                                      channelsIn: ma_uint32_553648621;
                                      channelsOut: ma_uint32_553648621;
                                      sampleRateIn: ma_uint32_553648621;
                                      sampleRateOut: ma_uint32_553648621): ma_data_converter_config_553649002 {.
      cdecl, importc: "ma_data_converter_config_init".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_config_init" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_get_heap_size):
  proc ma_data_converter_get_heap_size*(pConfig: ptr ma_data_converter_config_553649002;
                                        pHeapSizeInBytes: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_data_converter_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_init_preallocated):
  proc ma_data_converter_init_preallocated*(
      pConfig: ptr ma_data_converter_config_553649002; pHeap: pointer;
      pConverter: ptr ma_data_converter_553649010): ma_result_553648677 {.cdecl,
      importc: "ma_data_converter_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_init):
  proc ma_data_converter_init*(pConfig: ptr ma_data_converter_config_553649002;
      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                               pConverter: ptr ma_data_converter_553649010): ma_result_553648677 {.
      cdecl, importc: "ma_data_converter_init".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_init" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_uninit):
  proc ma_data_converter_uninit*(pConverter: ptr ma_data_converter_553649010;
      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_data_converter_uninit".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_uninit" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_process_pcm_frames):
  proc ma_data_converter_process_pcm_frames*(pConverter: ptr ma_data_converter_553649010;
      pFramesIn: pointer; pFrameCountIn: ptr ma_uint64_553648625;
      pFramesOut: pointer; pFrameCountOut: ptr ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_data_converter_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_set_rate):
  proc ma_data_converter_set_rate*(pConverter: ptr ma_data_converter_553649010;
                                   sampleRateIn: ma_uint32_553648621;
                                   sampleRateOut: ma_uint32_553648621): ma_result_553648677 {.
      cdecl, importc: "ma_data_converter_set_rate".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_set_rate" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_set_rate_ratio):
  proc ma_data_converter_set_rate_ratio*(pConverter: ptr ma_data_converter_553649010;
      ratioInOut: cfloat): ma_result_553648677 {.cdecl,
      importc: "ma_data_converter_set_rate_ratio".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_set_rate_ratio" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_get_input_latency):
  proc ma_data_converter_get_input_latency*(pConverter: ptr ma_data_converter_553649010): ma_uint64_553648625 {.
      cdecl, importc: "ma_data_converter_get_input_latency".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_input_latency" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_get_output_latency):
  proc ma_data_converter_get_output_latency*(pConverter: ptr ma_data_converter_553649010): ma_uint64_553648625 {.
      cdecl, importc: "ma_data_converter_get_output_latency".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_output_latency" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_get_required_input_frame_count):
  proc ma_data_converter_get_required_input_frame_count*(
      pConverter: ptr ma_data_converter_553649010; outputFrameCount: ma_uint64_553648625;
      pInputFrameCount: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_data_converter_get_required_input_frame_count".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_required_input_frame_count" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_get_expected_output_frame_count):
  proc ma_data_converter_get_expected_output_frame_count*(
      pConverter: ptr ma_data_converter_553649010; inputFrameCount: ma_uint64_553648625;
      pOutputFrameCount: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_data_converter_get_expected_output_frame_count".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_expected_output_frame_count" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_get_input_channel_map):
  proc ma_data_converter_get_input_channel_map*(
      pConverter: ptr ma_data_converter_553649010; pChannelMap: ptr ma_channel_553648669;
      channelMapCap: csize_t): ma_result_553648677 {.cdecl,
      importc: "ma_data_converter_get_input_channel_map".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_input_channel_map" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_get_output_channel_map):
  proc ma_data_converter_get_output_channel_map*(
      pConverter: ptr ma_data_converter_553649010; pChannelMap: ptr ma_channel_553648669;
      channelMapCap: csize_t): ma_result_553648677 {.cdecl,
      importc: "ma_data_converter_get_output_channel_map".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_output_channel_map" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_reset):
  proc ma_data_converter_reset*(pConverter: ptr ma_data_converter_553649010): ma_result_553648677 {.
      cdecl, importc: "ma_data_converter_reset".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_reset" &
        " already exists, not redeclaring")
when not declared(ma_pcm_u8_to_s16):
  proc ma_pcm_u8_to_s16*(pOut: pointer; pIn: pointer; count: ma_uint64_553648625;
                         ditherMode: ma_dither_mode_553648696): void {.cdecl,
      importc: "ma_pcm_u8_to_s16".}
else:
  static :
    hint("Declaration of " & "ma_pcm_u8_to_s16" &
        " already exists, not redeclaring")
when not declared(ma_pcm_u8_to_s24):
  proc ma_pcm_u8_to_s24*(pOut: pointer; pIn: pointer; count: ma_uint64_553648625;
                         ditherMode: ma_dither_mode_553648696): void {.cdecl,
      importc: "ma_pcm_u8_to_s24".}
else:
  static :
    hint("Declaration of " & "ma_pcm_u8_to_s24" &
        " already exists, not redeclaring")
when not declared(ma_pcm_u8_to_s32):
  proc ma_pcm_u8_to_s32*(pOut: pointer; pIn: pointer; count: ma_uint64_553648625;
                         ditherMode: ma_dither_mode_553648696): void {.cdecl,
      importc: "ma_pcm_u8_to_s32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_u8_to_s32" &
        " already exists, not redeclaring")
when not declared(ma_pcm_u8_to_f32):
  proc ma_pcm_u8_to_f32*(pOut: pointer; pIn: pointer; count: ma_uint64_553648625;
                         ditherMode: ma_dither_mode_553648696): void {.cdecl,
      importc: "ma_pcm_u8_to_f32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_u8_to_f32" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s16_to_u8):
  proc ma_pcm_s16_to_u8*(pOut: pointer; pIn: pointer; count: ma_uint64_553648625;
                         ditherMode: ma_dither_mode_553648696): void {.cdecl,
      importc: "ma_pcm_s16_to_u8".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s16_to_u8" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s16_to_s24):
  proc ma_pcm_s16_to_s24*(pOut: pointer; pIn: pointer; count: ma_uint64_553648625;
                          ditherMode: ma_dither_mode_553648696): void {.cdecl,
      importc: "ma_pcm_s16_to_s24".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s16_to_s24" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s16_to_s32):
  proc ma_pcm_s16_to_s32*(pOut: pointer; pIn: pointer; count: ma_uint64_553648625;
                          ditherMode: ma_dither_mode_553648696): void {.cdecl,
      importc: "ma_pcm_s16_to_s32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s16_to_s32" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s16_to_f32):
  proc ma_pcm_s16_to_f32*(pOut: pointer; pIn: pointer; count: ma_uint64_553648625;
                          ditherMode: ma_dither_mode_553648696): void {.cdecl,
      importc: "ma_pcm_s16_to_f32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s16_to_f32" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s24_to_u8):
  proc ma_pcm_s24_to_u8*(pOut: pointer; pIn: pointer; count: ma_uint64_553648625;
                         ditherMode: ma_dither_mode_553648696): void {.cdecl,
      importc: "ma_pcm_s24_to_u8".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s24_to_u8" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s24_to_s16):
  proc ma_pcm_s24_to_s16*(pOut: pointer; pIn: pointer; count: ma_uint64_553648625;
                          ditherMode: ma_dither_mode_553648696): void {.cdecl,
      importc: "ma_pcm_s24_to_s16".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s24_to_s16" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s24_to_s32):
  proc ma_pcm_s24_to_s32*(pOut: pointer; pIn: pointer; count: ma_uint64_553648625;
                          ditherMode: ma_dither_mode_553648696): void {.cdecl,
      importc: "ma_pcm_s24_to_s32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s24_to_s32" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s24_to_f32):
  proc ma_pcm_s24_to_f32*(pOut: pointer; pIn: pointer; count: ma_uint64_553648625;
                          ditherMode: ma_dither_mode_553648696): void {.cdecl,
      importc: "ma_pcm_s24_to_f32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s24_to_f32" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s32_to_u8):
  proc ma_pcm_s32_to_u8*(pOut: pointer; pIn: pointer; count: ma_uint64_553648625;
                         ditherMode: ma_dither_mode_553648696): void {.cdecl,
      importc: "ma_pcm_s32_to_u8".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s32_to_u8" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s32_to_s16):
  proc ma_pcm_s32_to_s16*(pOut: pointer; pIn: pointer; count: ma_uint64_553648625;
                          ditherMode: ma_dither_mode_553648696): void {.cdecl,
      importc: "ma_pcm_s32_to_s16".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s32_to_s16" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s32_to_s24):
  proc ma_pcm_s32_to_s24*(pOut: pointer; pIn: pointer; count: ma_uint64_553648625;
                          ditherMode: ma_dither_mode_553648696): void {.cdecl,
      importc: "ma_pcm_s32_to_s24".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s32_to_s24" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s32_to_f32):
  proc ma_pcm_s32_to_f32*(pOut: pointer; pIn: pointer; count: ma_uint64_553648625;
                          ditherMode: ma_dither_mode_553648696): void {.cdecl,
      importc: "ma_pcm_s32_to_f32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s32_to_f32" &
        " already exists, not redeclaring")
when not declared(ma_pcm_f32_to_u8):
  proc ma_pcm_f32_to_u8*(pOut: pointer; pIn: pointer; count: ma_uint64_553648625;
                         ditherMode: ma_dither_mode_553648696): void {.cdecl,
      importc: "ma_pcm_f32_to_u8".}
else:
  static :
    hint("Declaration of " & "ma_pcm_f32_to_u8" &
        " already exists, not redeclaring")
when not declared(ma_pcm_f32_to_s16):
  proc ma_pcm_f32_to_s16*(pOut: pointer; pIn: pointer; count: ma_uint64_553648625;
                          ditherMode: ma_dither_mode_553648696): void {.cdecl,
      importc: "ma_pcm_f32_to_s16".}
else:
  static :
    hint("Declaration of " & "ma_pcm_f32_to_s16" &
        " already exists, not redeclaring")
when not declared(ma_pcm_f32_to_s24):
  proc ma_pcm_f32_to_s24*(pOut: pointer; pIn: pointer; count: ma_uint64_553648625;
                          ditherMode: ma_dither_mode_553648696): void {.cdecl,
      importc: "ma_pcm_f32_to_s24".}
else:
  static :
    hint("Declaration of " & "ma_pcm_f32_to_s24" &
        " already exists, not redeclaring")
when not declared(ma_pcm_f32_to_s32):
  proc ma_pcm_f32_to_s32*(pOut: pointer; pIn: pointer; count: ma_uint64_553648625;
                          ditherMode: ma_dither_mode_553648696): void {.cdecl,
      importc: "ma_pcm_f32_to_s32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_f32_to_s32" &
        " already exists, not redeclaring")
when not declared(ma_pcm_convert):
  proc ma_pcm_convert*(pOut: pointer; formatOut: ma_format_553648700;
                       pIn: pointer; formatIn: ma_format_553648700;
                       sampleCount: ma_uint64_553648625;
                       ditherMode: ma_dither_mode_553648696): void {.cdecl,
      importc: "ma_pcm_convert".}
else:
  static :
    hint("Declaration of " & "ma_pcm_convert" &
        " already exists, not redeclaring")
when not declared(ma_convert_pcm_frames_format):
  proc ma_convert_pcm_frames_format*(pOut: pointer; formatOut: ma_format_553648700;
                                     pIn: pointer; formatIn: ma_format_553648700;
                                     frameCount: ma_uint64_553648625;
                                     channels: ma_uint32_553648621;
                                     ditherMode: ma_dither_mode_553648696): void {.
      cdecl, importc: "ma_convert_pcm_frames_format".}
else:
  static :
    hint("Declaration of " & "ma_convert_pcm_frames_format" &
        " already exists, not redeclaring")
when not declared(ma_deinterleave_pcm_frames):
  proc ma_deinterleave_pcm_frames*(format: ma_format_553648700;
                                   channels: ma_uint32_553648621;
                                   frameCount: ma_uint64_553648625;
                                   pInterleavedPCMFrames: pointer;
                                   ppDeinterleavedPCMFrames: ptr pointer): void {.
      cdecl, importc: "ma_deinterleave_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_deinterleave_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_interleave_pcm_frames):
  proc ma_interleave_pcm_frames*(format: ma_format_553648700;
                                 channels: ma_uint32_553648621;
                                 frameCount: ma_uint64_553648625;
                                 ppDeinterleavedPCMFrames: ptr pointer;
                                 pInterleavedPCMFrames: pointer): void {.cdecl,
      importc: "ma_interleave_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_interleave_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_get_channel):
  proc ma_channel_map_get_channel*(pChannelMap: ptr ma_channel_553648669;
                                   channelCount: ma_uint32_553648621;
                                   channelIndex: ma_uint32_553648621): ma_channel_553648669 {.
      cdecl, importc: "ma_channel_map_get_channel".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_get_channel" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_init_blank):
  proc ma_channel_map_init_blank*(pChannelMap: ptr ma_channel_553648669;
                                  channels: ma_uint32_553648621): void {.cdecl,
      importc: "ma_channel_map_init_blank".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_init_blank" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_init_standard):
  proc ma_channel_map_init_standard*(standardChannelMap: ma_standard_channel_map_553648712;
                                     pChannelMap: ptr ma_channel_553648669;
                                     channelMapCap: csize_t; channels: ma_uint32_553648621): void {.
      cdecl, importc: "ma_channel_map_init_standard".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_init_standard" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_copy):
  proc ma_channel_map_copy*(pOut: ptr ma_channel_553648669; pIn: ptr ma_channel_553648669;
                            channels: ma_uint32_553648621): void {.cdecl,
      importc: "ma_channel_map_copy".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_copy" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_copy_or_default):
  proc ma_channel_map_copy_or_default*(pOut: ptr ma_channel_553648669;
                                       channelMapCapOut: csize_t;
                                       pIn: ptr ma_channel_553648669;
                                       channels: ma_uint32_553648621): void {.
      cdecl, importc: "ma_channel_map_copy_or_default".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_copy_or_default" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_is_valid):
  proc ma_channel_map_is_valid*(pChannelMap: ptr ma_channel_553648669;
                                channels: ma_uint32_553648621): ma_bool32_553648631 {.
      cdecl, importc: "ma_channel_map_is_valid".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_is_valid" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_is_equal):
  proc ma_channel_map_is_equal*(pChannelMapA: ptr ma_channel_553648669;
                                pChannelMapB: ptr ma_channel_553648669;
                                channels: ma_uint32_553648621): ma_bool32_553648631 {.
      cdecl, importc: "ma_channel_map_is_equal".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_is_equal" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_is_blank):
  proc ma_channel_map_is_blank*(pChannelMap: ptr ma_channel_553648669;
                                channels: ma_uint32_553648621): ma_bool32_553648631 {.
      cdecl, importc: "ma_channel_map_is_blank".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_is_blank" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_contains_channel_position):
  proc ma_channel_map_contains_channel_position*(channels: ma_uint32_553648621;
      pChannelMap: ptr ma_channel_553648669; channelPosition: ma_channel_553648669): ma_bool32_553648631 {.
      cdecl, importc: "ma_channel_map_contains_channel_position".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_contains_channel_position" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_find_channel_position):
  proc ma_channel_map_find_channel_position*(channels: ma_uint32_553648621;
      pChannelMap: ptr ma_channel_553648669; channelPosition: ma_channel_553648669;
      pChannelIndex: ptr ma_uint32_553648621): ma_bool32_553648631 {.cdecl,
      importc: "ma_channel_map_find_channel_position".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_find_channel_position" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_to_string):
  proc ma_channel_map_to_string*(pChannelMap: ptr ma_channel_553648669;
                                 channels: ma_uint32_553648621;
                                 pBufferOut: cstring; bufferCap: csize_t): csize_t {.
      cdecl, importc: "ma_channel_map_to_string".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_to_string" &
        " already exists, not redeclaring")
when not declared(ma_channel_position_to_string):
  proc ma_channel_position_to_string*(channel: ma_channel_553648669): cstring {.
      cdecl, importc: "ma_channel_position_to_string".}
else:
  static :
    hint("Declaration of " & "ma_channel_position_to_string" &
        " already exists, not redeclaring")
when not declared(ma_convert_frames):
  proc ma_convert_frames*(pOut: pointer; frameCountOut: ma_uint64_553648625;
                          formatOut: ma_format_553648700;
                          channelsOut: ma_uint32_553648621;
                          sampleRateOut: ma_uint32_553648621; pIn: pointer;
                          frameCountIn: ma_uint64_553648625;
                          formatIn: ma_format_553648700; channelsIn: ma_uint32_553648621;
                          sampleRateIn: ma_uint32_553648621): ma_uint64_553648625 {.
      cdecl, importc: "ma_convert_frames".}
else:
  static :
    hint("Declaration of " & "ma_convert_frames" &
        " already exists, not redeclaring")
when not declared(ma_convert_frames_ex):
  proc ma_convert_frames_ex*(pOut: pointer; frameCountOut: ma_uint64_553648625;
                             pIn: pointer; frameCountIn: ma_uint64_553648625;
                             pConfig: ptr ma_data_converter_config_553649002): ma_uint64_553648625 {.
      cdecl, importc: "ma_convert_frames_ex".}
else:
  static :
    hint("Declaration of " & "ma_convert_frames_ex" &
        " already exists, not redeclaring")
when not declared(ma_data_source_config_init):
  proc ma_data_source_config_init*(): ma_data_source_config_553649022 {.cdecl,
      importc: "ma_data_source_config_init".}
else:
  static :
    hint("Declaration of " & "ma_data_source_config_init" &
        " already exists, not redeclaring")
when not declared(ma_data_source_init):
  proc ma_data_source_init*(pConfig: ptr ma_data_source_config_553649022;
                            pDataSource: pointer): ma_result_553648677 {.cdecl,
      importc: "ma_data_source_init".}
else:
  static :
    hint("Declaration of " & "ma_data_source_init" &
        " already exists, not redeclaring")
when not declared(ma_data_source_uninit):
  proc ma_data_source_uninit*(pDataSource: pointer): void {.cdecl,
      importc: "ma_data_source_uninit".}
else:
  static :
    hint("Declaration of " & "ma_data_source_uninit" &
        " already exists, not redeclaring")
when not declared(ma_data_source_read_pcm_frames):
  proc ma_data_source_read_pcm_frames*(pDataSource: pointer;
                                       pFramesOut: pointer;
                                       frameCount: ma_uint64_553648625;
                                       pFramesRead: ptr ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_data_source_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_source_seek_pcm_frames):
  proc ma_data_source_seek_pcm_frames*(pDataSource: pointer;
                                       frameCount: ma_uint64_553648625;
                                       pFramesSeeked: ptr ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_data_source_seek_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_seek_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_source_seek_to_pcm_frame):
  proc ma_data_source_seek_to_pcm_frame*(pDataSource: pointer;
      frameIndex: ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_data_source_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_data_source_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_data_source_seek_seconds):
  proc ma_data_source_seek_seconds*(pDataSource: pointer; secondCount: cfloat;
                                    pSecondsSeeked: ptr cfloat): ma_result_553648677 {.
      cdecl, importc: "ma_data_source_seek_seconds".}
else:
  static :
    hint("Declaration of " & "ma_data_source_seek_seconds" &
        " already exists, not redeclaring")
when not declared(ma_data_source_seek_to_second):
  proc ma_data_source_seek_to_second*(pDataSource: pointer;
                                      seekPointInSeconds: cfloat): ma_result_553648677 {.
      cdecl, importc: "ma_data_source_seek_to_second".}
else:
  static :
    hint("Declaration of " & "ma_data_source_seek_to_second" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_data_format):
  proc ma_data_source_get_data_format*(pDataSource: pointer;
                                       pFormat: ptr ma_format_553648700;
                                       pChannels: ptr ma_uint32_553648621;
                                       pSampleRate: ptr ma_uint32_553648621;
                                       pChannelMap: ptr ma_channel_553648669;
                                       channelMapCap: csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_data_source_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_data_format" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_cursor_in_pcm_frames):
  proc ma_data_source_get_cursor_in_pcm_frames*(pDataSource: pointer;
      pCursor: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_data_source_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_length_in_pcm_frames):
  proc ma_data_source_get_length_in_pcm_frames*(pDataSource: pointer;
      pLength: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_data_source_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_cursor_in_seconds):
  proc ma_data_source_get_cursor_in_seconds*(pDataSource: pointer;
      pCursor: ptr cfloat): ma_result_553648677 {.cdecl,
      importc: "ma_data_source_get_cursor_in_seconds".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_cursor_in_seconds" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_length_in_seconds):
  proc ma_data_source_get_length_in_seconds*(pDataSource: pointer;
      pLength: ptr cfloat): ma_result_553648677 {.cdecl,
      importc: "ma_data_source_get_length_in_seconds".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_length_in_seconds" &
        " already exists, not redeclaring")
when not declared(ma_data_source_set_looping):
  proc ma_data_source_set_looping*(pDataSource: pointer; isLooping: ma_bool32_553648631): ma_result_553648677 {.
      cdecl, importc: "ma_data_source_set_looping".}
else:
  static :
    hint("Declaration of " & "ma_data_source_set_looping" &
        " already exists, not redeclaring")
when not declared(ma_data_source_is_looping):
  proc ma_data_source_is_looping*(pDataSource: pointer): ma_bool32_553648631 {.
      cdecl, importc: "ma_data_source_is_looping".}
else:
  static :
    hint("Declaration of " & "ma_data_source_is_looping" &
        " already exists, not redeclaring")
when not declared(ma_data_source_set_range_in_pcm_frames):
  proc ma_data_source_set_range_in_pcm_frames*(pDataSource: pointer;
      rangeBegInFrames: ma_uint64_553648625; rangeEndInFrames: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_data_source_set_range_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_set_range_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_range_in_pcm_frames):
  proc ma_data_source_get_range_in_pcm_frames*(pDataSource: pointer;
      pRangeBegInFrames: ptr ma_uint64_553648625;
      pRangeEndInFrames: ptr ma_uint64_553648625): void {.cdecl,
      importc: "ma_data_source_get_range_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_range_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_source_set_loop_point_in_pcm_frames):
  proc ma_data_source_set_loop_point_in_pcm_frames*(pDataSource: pointer;
      loopBegInFrames: ma_uint64_553648625; loopEndInFrames: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_data_source_set_loop_point_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_set_loop_point_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_loop_point_in_pcm_frames):
  proc ma_data_source_get_loop_point_in_pcm_frames*(pDataSource: pointer;
      pLoopBegInFrames: ptr ma_uint64_553648625; pLoopEndInFrames: ptr ma_uint64_553648625): void {.
      cdecl, importc: "ma_data_source_get_loop_point_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_loop_point_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_source_set_current):
  proc ma_data_source_set_current*(pDataSource: pointer;
                                   pCurrentDataSource: pointer): ma_result_553648677 {.
      cdecl, importc: "ma_data_source_set_current".}
else:
  static :
    hint("Declaration of " & "ma_data_source_set_current" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_current):
  proc ma_data_source_get_current*(pDataSource: pointer): pointer {.cdecl,
      importc: "ma_data_source_get_current".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_current" &
        " already exists, not redeclaring")
when not declared(ma_data_source_set_next):
  proc ma_data_source_set_next*(pDataSource: pointer; pNextDataSource: pointer): ma_result_553648677 {.
      cdecl, importc: "ma_data_source_set_next".}
else:
  static :
    hint("Declaration of " & "ma_data_source_set_next" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_next):
  proc ma_data_source_get_next*(pDataSource: pointer): pointer {.cdecl,
      importc: "ma_data_source_get_next".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_next" &
        " already exists, not redeclaring")
when not declared(ma_data_source_set_next_callback):
  proc ma_data_source_set_next_callback*(pDataSource: pointer;
      onGetNext: ma_data_source_get_next_proc_553649018): ma_result_553648677 {.
      cdecl, importc: "ma_data_source_set_next_callback".}
else:
  static :
    hint("Declaration of " & "ma_data_source_set_next_callback" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_next_callback):
  proc ma_data_source_get_next_callback*(pDataSource: pointer): ma_data_source_get_next_proc_553649018 {.
      cdecl, importc: "ma_data_source_get_next_callback".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_next_callback" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_init):
  proc ma_audio_buffer_ref_init*(format: ma_format_553648700;
                                 channels: ma_uint32_553648621; pData: pointer;
                                 sizeInFrames: ma_uint64_553648625;
                                 pAudioBufferRef: ptr ma_audio_buffer_ref_553649030): ma_result_553648677 {.
      cdecl, importc: "ma_audio_buffer_ref_init".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_init" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_uninit):
  proc ma_audio_buffer_ref_uninit*(pAudioBufferRef: ptr ma_audio_buffer_ref_553649030): void {.
      cdecl, importc: "ma_audio_buffer_ref_uninit".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_uninit" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_set_data):
  proc ma_audio_buffer_ref_set_data*(pAudioBufferRef: ptr ma_audio_buffer_ref_553649030;
                                     pData: pointer; sizeInFrames: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_audio_buffer_ref_set_data".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_set_data" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_read_pcm_frames):
  proc ma_audio_buffer_ref_read_pcm_frames*(
      pAudioBufferRef: ptr ma_audio_buffer_ref_553649030; pFramesOut: pointer;
      frameCount: ma_uint64_553648625; loop: ma_bool32_553648631): ma_uint64_553648625 {.
      cdecl, importc: "ma_audio_buffer_ref_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_seek_to_pcm_frame):
  proc ma_audio_buffer_ref_seek_to_pcm_frame*(
      pAudioBufferRef: ptr ma_audio_buffer_ref_553649030; frameIndex: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_audio_buffer_ref_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_map):
  proc ma_audio_buffer_ref_map*(pAudioBufferRef: ptr ma_audio_buffer_ref_553649030;
                                ppFramesOut: ptr pointer;
                                pFrameCount: ptr ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_audio_buffer_ref_map".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_map" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_unmap):
  proc ma_audio_buffer_ref_unmap*(pAudioBufferRef: ptr ma_audio_buffer_ref_553649030;
                                  frameCount: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_audio_buffer_ref_unmap".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_unmap" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_at_end):
  proc ma_audio_buffer_ref_at_end*(pAudioBufferRef: ptr ma_audio_buffer_ref_553649030): ma_bool32_553648631 {.
      cdecl, importc: "ma_audio_buffer_ref_at_end".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_at_end" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_get_cursor_in_pcm_frames):
  proc ma_audio_buffer_ref_get_cursor_in_pcm_frames*(
      pAudioBufferRef: ptr ma_audio_buffer_ref_553649030; pCursor: ptr ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_audio_buffer_ref_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_get_length_in_pcm_frames):
  proc ma_audio_buffer_ref_get_length_in_pcm_frames*(
      pAudioBufferRef: ptr ma_audio_buffer_ref_553649030; pLength: ptr ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_audio_buffer_ref_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_get_available_frames):
  proc ma_audio_buffer_ref_get_available_frames*(
      pAudioBufferRef: ptr ma_audio_buffer_ref_553649030;
      pAvailableFrames: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_audio_buffer_ref_get_available_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_get_available_frames" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_config_init):
  proc ma_audio_buffer_config_init*(format: ma_format_553648700;
                                    channels: ma_uint32_553648621;
                                    sizeInFrames: ma_uint64_553648625;
                                    pData: pointer; pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): ma_audio_buffer_config_553649034 {.
      cdecl, importc: "ma_audio_buffer_config_init".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_config_init" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_init):
  proc ma_audio_buffer_init*(pConfig: ptr ma_audio_buffer_config_553649034;
                             pAudioBuffer: ptr ma_audio_buffer_553649038): ma_result_553648677 {.
      cdecl, importc: "ma_audio_buffer_init".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_init" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_init_copy):
  proc ma_audio_buffer_init_copy*(pConfig: ptr ma_audio_buffer_config_553649034;
                                  pAudioBuffer: ptr ma_audio_buffer_553649038): ma_result_553648677 {.
      cdecl, importc: "ma_audio_buffer_init_copy".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_init_copy" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_alloc_and_init):
  proc ma_audio_buffer_alloc_and_init*(pConfig: ptr ma_audio_buffer_config_553649034;
                                       ppAudioBuffer: ptr ptr ma_audio_buffer_553649038): ma_result_553648677 {.
      cdecl, importc: "ma_audio_buffer_alloc_and_init".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_alloc_and_init" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_uninit):
  proc ma_audio_buffer_uninit*(pAudioBuffer: ptr ma_audio_buffer_553649038): void {.
      cdecl, importc: "ma_audio_buffer_uninit".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_uninit" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_uninit_and_free):
  proc ma_audio_buffer_uninit_and_free*(pAudioBuffer: ptr ma_audio_buffer_553649038): void {.
      cdecl, importc: "ma_audio_buffer_uninit_and_free".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_uninit_and_free" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_read_pcm_frames):
  proc ma_audio_buffer_read_pcm_frames*(pAudioBuffer: ptr ma_audio_buffer_553649038;
                                        pFramesOut: pointer;
                                        frameCount: ma_uint64_553648625;
                                        loop: ma_bool32_553648631): ma_uint64_553648625 {.
      cdecl, importc: "ma_audio_buffer_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_seek_to_pcm_frame):
  proc ma_audio_buffer_seek_to_pcm_frame*(pAudioBuffer: ptr ma_audio_buffer_553649038;
      frameIndex: ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_audio_buffer_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_map):
  proc ma_audio_buffer_map*(pAudioBuffer: ptr ma_audio_buffer_553649038;
                            ppFramesOut: ptr pointer; pFrameCount: ptr ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_audio_buffer_map".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_map" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_unmap):
  proc ma_audio_buffer_unmap*(pAudioBuffer: ptr ma_audio_buffer_553649038;
                              frameCount: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_audio_buffer_unmap".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_unmap" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_at_end):
  proc ma_audio_buffer_at_end*(pAudioBuffer: ptr ma_audio_buffer_553649038): ma_bool32_553648631 {.
      cdecl, importc: "ma_audio_buffer_at_end".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_at_end" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_get_cursor_in_pcm_frames):
  proc ma_audio_buffer_get_cursor_in_pcm_frames*(
      pAudioBuffer: ptr ma_audio_buffer_553649038; pCursor: ptr ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_audio_buffer_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_get_length_in_pcm_frames):
  proc ma_audio_buffer_get_length_in_pcm_frames*(
      pAudioBuffer: ptr ma_audio_buffer_553649038; pLength: ptr ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_audio_buffer_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_get_available_frames):
  proc ma_audio_buffer_get_available_frames*(pAudioBuffer: ptr ma_audio_buffer_553649038;
      pAvailableFrames: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_audio_buffer_get_available_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_get_available_frames" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_init):
  proc ma_paged_audio_buffer_data_init*(format: ma_format_553648700;
                                        channels: ma_uint32_553648621;
                                        pData: ptr ma_paged_audio_buffer_data_553649046): ma_result_553648677 {.
      cdecl, importc: "ma_paged_audio_buffer_data_init".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_init" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_uninit):
  proc ma_paged_audio_buffer_data_uninit*(pData: ptr ma_paged_audio_buffer_data_553649046;
      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_paged_audio_buffer_data_uninit".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_uninit" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_get_head):
  proc ma_paged_audio_buffer_data_get_head*(
      pData: ptr ma_paged_audio_buffer_data_553649046): ptr ma_paged_audio_buffer_page_553649040 {.
      cdecl, importc: "ma_paged_audio_buffer_data_get_head".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_get_head" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_get_tail):
  proc ma_paged_audio_buffer_data_get_tail*(
      pData: ptr ma_paged_audio_buffer_data_553649046): ptr ma_paged_audio_buffer_page_553649040 {.
      cdecl, importc: "ma_paged_audio_buffer_data_get_tail".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_get_tail" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_get_length_in_pcm_frames):
  proc ma_paged_audio_buffer_data_get_length_in_pcm_frames*(
      pData: ptr ma_paged_audio_buffer_data_553649046; pLength: ptr ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_paged_audio_buffer_data_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_paged_audio_buffer_data_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_allocate_page):
  proc ma_paged_audio_buffer_data_allocate_page*(
      pData: ptr ma_paged_audio_buffer_data_553649046;
      pageSizeInFrames: ma_uint64_553648625; pInitialData: pointer;
      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
      ppPage: ptr ptr ma_paged_audio_buffer_page_553649040): ma_result_553648677 {.
      cdecl, importc: "ma_paged_audio_buffer_data_allocate_page".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_allocate_page" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_free_page):
  proc ma_paged_audio_buffer_data_free_page*(
      pData: ptr ma_paged_audio_buffer_data_553649046;
      pPage: ptr ma_paged_audio_buffer_page_553649040;
      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): ma_result_553648677 {.
      cdecl, importc: "ma_paged_audio_buffer_data_free_page".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_free_page" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_append_page):
  proc ma_paged_audio_buffer_data_append_page*(
      pData: ptr ma_paged_audio_buffer_data_553649046;
      pPage: ptr ma_paged_audio_buffer_page_553649040): ma_result_553648677 {.
      cdecl, importc: "ma_paged_audio_buffer_data_append_page".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_append_page" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_allocate_and_append_page):
  proc ma_paged_audio_buffer_data_allocate_and_append_page*(
      pData: ptr ma_paged_audio_buffer_data_553649046;
      pageSizeInFrames: ma_uint32_553648621; pInitialData: pointer;
      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): ma_result_553648677 {.
      cdecl, importc: "ma_paged_audio_buffer_data_allocate_and_append_page".}
else:
  static :
    hint("Declaration of " &
        "ma_paged_audio_buffer_data_allocate_and_append_page" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_config_init):
  proc ma_paged_audio_buffer_config_init*(pData: ptr ma_paged_audio_buffer_data_553649046): ma_paged_audio_buffer_config_553649050 {.
      cdecl, importc: "ma_paged_audio_buffer_config_init".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_config_init" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_init):
  proc ma_paged_audio_buffer_init*(pConfig: ptr ma_paged_audio_buffer_config_553649050;
                                   pPagedAudioBuffer: ptr ma_paged_audio_buffer_553649054): ma_result_553648677 {.
      cdecl, importc: "ma_paged_audio_buffer_init".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_init" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_uninit):
  proc ma_paged_audio_buffer_uninit*(pPagedAudioBuffer: ptr ma_paged_audio_buffer_553649054): void {.
      cdecl, importc: "ma_paged_audio_buffer_uninit".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_uninit" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_read_pcm_frames):
  proc ma_paged_audio_buffer_read_pcm_frames*(
      pPagedAudioBuffer: ptr ma_paged_audio_buffer_553649054;
      pFramesOut: pointer; frameCount: ma_uint64_553648625;
      pFramesRead: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_paged_audio_buffer_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_seek_to_pcm_frame):
  proc ma_paged_audio_buffer_seek_to_pcm_frame*(
      pPagedAudioBuffer: ptr ma_paged_audio_buffer_553649054;
      frameIndex: ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_paged_audio_buffer_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_get_cursor_in_pcm_frames):
  proc ma_paged_audio_buffer_get_cursor_in_pcm_frames*(
      pPagedAudioBuffer: ptr ma_paged_audio_buffer_553649054;
      pCursor: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_paged_audio_buffer_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_get_length_in_pcm_frames):
  proc ma_paged_audio_buffer_get_length_in_pcm_frames*(
      pPagedAudioBuffer: ptr ma_paged_audio_buffer_553649054;
      pLength: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_paged_audio_buffer_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_rb_init_ex):
  proc ma_rb_init_ex*(subbufferSizeInBytes: csize_t; subbufferCount: csize_t;
                      subbufferStrideInBytes: csize_t;
                      pOptionalPreallocatedBuffer: pointer;
                      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                      pRB: ptr ma_rb_553649058): ma_result_553648677 {.cdecl,
      importc: "ma_rb_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_rb_init_ex" &
        " already exists, not redeclaring")
when not declared(ma_rb_init):
  proc ma_rb_init*(bufferSizeInBytes: csize_t;
                   pOptionalPreallocatedBuffer: pointer;
                   pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                   pRB: ptr ma_rb_553649058): ma_result_553648677 {.cdecl,
      importc: "ma_rb_init".}
else:
  static :
    hint("Declaration of " & "ma_rb_init" & " already exists, not redeclaring")
when not declared(ma_rb_uninit):
  proc ma_rb_uninit*(pRB: ptr ma_rb_553649058): void {.cdecl,
      importc: "ma_rb_uninit".}
else:
  static :
    hint("Declaration of " & "ma_rb_uninit" & " already exists, not redeclaring")
when not declared(ma_rb_reset):
  proc ma_rb_reset*(pRB: ptr ma_rb_553649058): void {.cdecl,
      importc: "ma_rb_reset".}
else:
  static :
    hint("Declaration of " & "ma_rb_reset" & " already exists, not redeclaring")
when not declared(ma_rb_acquire_read):
  proc ma_rb_acquire_read*(pRB: ptr ma_rb_553649058; pSizeInBytes: ptr csize_t;
                           ppBufferOut: ptr pointer): ma_result_553648677 {.
      cdecl, importc: "ma_rb_acquire_read".}
else:
  static :
    hint("Declaration of " & "ma_rb_acquire_read" &
        " already exists, not redeclaring")
when not declared(ma_rb_commit_read):
  proc ma_rb_commit_read*(pRB: ptr ma_rb_553649058; sizeInBytes: csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_rb_commit_read".}
else:
  static :
    hint("Declaration of " & "ma_rb_commit_read" &
        " already exists, not redeclaring")
when not declared(ma_rb_acquire_write):
  proc ma_rb_acquire_write*(pRB: ptr ma_rb_553649058; pSizeInBytes: ptr csize_t;
                            ppBufferOut: ptr pointer): ma_result_553648677 {.
      cdecl, importc: "ma_rb_acquire_write".}
else:
  static :
    hint("Declaration of " & "ma_rb_acquire_write" &
        " already exists, not redeclaring")
when not declared(ma_rb_commit_write):
  proc ma_rb_commit_write*(pRB: ptr ma_rb_553649058; sizeInBytes: csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_rb_commit_write".}
else:
  static :
    hint("Declaration of " & "ma_rb_commit_write" &
        " already exists, not redeclaring")
when not declared(ma_rb_seek_read):
  proc ma_rb_seek_read*(pRB: ptr ma_rb_553649058; offsetInBytes: csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_rb_seek_read".}
else:
  static :
    hint("Declaration of " & "ma_rb_seek_read" &
        " already exists, not redeclaring")
when not declared(ma_rb_seek_write):
  proc ma_rb_seek_write*(pRB: ptr ma_rb_553649058; offsetInBytes: csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_rb_seek_write".}
else:
  static :
    hint("Declaration of " & "ma_rb_seek_write" &
        " already exists, not redeclaring")
when not declared(ma_rb_pointer_distance):
  proc ma_rb_pointer_distance*(pRB: ptr ma_rb_553649058): ma_int32_553648619 {.
      cdecl, importc: "ma_rb_pointer_distance".}
else:
  static :
    hint("Declaration of " & "ma_rb_pointer_distance" &
        " already exists, not redeclaring")
when not declared(ma_rb_available_read):
  proc ma_rb_available_read*(pRB: ptr ma_rb_553649058): ma_uint32_553648621 {.
      cdecl, importc: "ma_rb_available_read".}
else:
  static :
    hint("Declaration of " & "ma_rb_available_read" &
        " already exists, not redeclaring")
when not declared(ma_rb_available_write):
  proc ma_rb_available_write*(pRB: ptr ma_rb_553649058): ma_uint32_553648621 {.
      cdecl, importc: "ma_rb_available_write".}
else:
  static :
    hint("Declaration of " & "ma_rb_available_write" &
        " already exists, not redeclaring")
when not declared(ma_rb_get_subbuffer_size):
  proc ma_rb_get_subbuffer_size*(pRB: ptr ma_rb_553649058): csize_t {.cdecl,
      importc: "ma_rb_get_subbuffer_size".}
else:
  static :
    hint("Declaration of " & "ma_rb_get_subbuffer_size" &
        " already exists, not redeclaring")
when not declared(ma_rb_get_subbuffer_stride):
  proc ma_rb_get_subbuffer_stride*(pRB: ptr ma_rb_553649058): csize_t {.cdecl,
      importc: "ma_rb_get_subbuffer_stride".}
else:
  static :
    hint("Declaration of " & "ma_rb_get_subbuffer_stride" &
        " already exists, not redeclaring")
when not declared(ma_rb_get_subbuffer_offset):
  proc ma_rb_get_subbuffer_offset*(pRB: ptr ma_rb_553649058;
                                   subbufferIndex: csize_t): csize_t {.cdecl,
      importc: "ma_rb_get_subbuffer_offset".}
else:
  static :
    hint("Declaration of " & "ma_rb_get_subbuffer_offset" &
        " already exists, not redeclaring")
when not declared(ma_rb_get_subbuffer_ptr):
  proc ma_rb_get_subbuffer_ptr*(pRB: ptr ma_rb_553649058;
                                subbufferIndex: csize_t; pBuffer: pointer): pointer {.
      cdecl, importc: "ma_rb_get_subbuffer_ptr".}
else:
  static :
    hint("Declaration of " & "ma_rb_get_subbuffer_ptr" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_init_ex):
  proc ma_pcm_rb_init_ex*(format: ma_format_553648700; channels: ma_uint32_553648621;
                          subbufferSizeInFrames: ma_uint32_553648621;
                          subbufferCount: ma_uint32_553648621;
                          subbufferStrideInFrames: ma_uint32_553648621;
                          pOptionalPreallocatedBuffer: pointer;
                          pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                          pRB: ptr ma_pcm_rb_553649062): ma_result_553648677 {.
      cdecl, importc: "ma_pcm_rb_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_init_ex" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_init):
  proc ma_pcm_rb_init*(format: ma_format_553648700; channels: ma_uint32_553648621;
                       bufferSizeInFrames: ma_uint32_553648621;
                       pOptionalPreallocatedBuffer: pointer;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                       pRB: ptr ma_pcm_rb_553649062): ma_result_553648677 {.
      cdecl, importc: "ma_pcm_rb_init".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_init" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_uninit):
  proc ma_pcm_rb_uninit*(pRB: ptr ma_pcm_rb_553649062): void {.cdecl,
      importc: "ma_pcm_rb_uninit".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_uninit" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_reset):
  proc ma_pcm_rb_reset*(pRB: ptr ma_pcm_rb_553649062): void {.cdecl,
      importc: "ma_pcm_rb_reset".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_reset" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_acquire_read):
  proc ma_pcm_rb_acquire_read*(pRB: ptr ma_pcm_rb_553649062;
                               pSizeInFrames: ptr ma_uint32_553648621;
                               ppBufferOut: ptr pointer): ma_result_553648677 {.
      cdecl, importc: "ma_pcm_rb_acquire_read".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_acquire_read" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_commit_read):
  proc ma_pcm_rb_commit_read*(pRB: ptr ma_pcm_rb_553649062;
                              sizeInFrames: ma_uint32_553648621): ma_result_553648677 {.
      cdecl, importc: "ma_pcm_rb_commit_read".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_commit_read" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_acquire_write):
  proc ma_pcm_rb_acquire_write*(pRB: ptr ma_pcm_rb_553649062;
                                pSizeInFrames: ptr ma_uint32_553648621;
                                ppBufferOut: ptr pointer): ma_result_553648677 {.
      cdecl, importc: "ma_pcm_rb_acquire_write".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_acquire_write" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_commit_write):
  proc ma_pcm_rb_commit_write*(pRB: ptr ma_pcm_rb_553649062;
                               sizeInFrames: ma_uint32_553648621): ma_result_553648677 {.
      cdecl, importc: "ma_pcm_rb_commit_write".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_commit_write" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_seek_read):
  proc ma_pcm_rb_seek_read*(pRB: ptr ma_pcm_rb_553649062;
                            offsetInFrames: ma_uint32_553648621): ma_result_553648677 {.
      cdecl, importc: "ma_pcm_rb_seek_read".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_seek_read" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_seek_write):
  proc ma_pcm_rb_seek_write*(pRB: ptr ma_pcm_rb_553649062;
                             offsetInFrames: ma_uint32_553648621): ma_result_553648677 {.
      cdecl, importc: "ma_pcm_rb_seek_write".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_seek_write" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_pointer_distance):
  proc ma_pcm_rb_pointer_distance*(pRB: ptr ma_pcm_rb_553649062): ma_int32_553648619 {.
      cdecl, importc: "ma_pcm_rb_pointer_distance".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_pointer_distance" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_available_read):
  proc ma_pcm_rb_available_read*(pRB: ptr ma_pcm_rb_553649062): ma_uint32_553648621 {.
      cdecl, importc: "ma_pcm_rb_available_read".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_available_read" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_available_write):
  proc ma_pcm_rb_available_write*(pRB: ptr ma_pcm_rb_553649062): ma_uint32_553648621 {.
      cdecl, importc: "ma_pcm_rb_available_write".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_available_write" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_get_subbuffer_size):
  proc ma_pcm_rb_get_subbuffer_size*(pRB: ptr ma_pcm_rb_553649062): ma_uint32_553648621 {.
      cdecl, importc: "ma_pcm_rb_get_subbuffer_size".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_get_subbuffer_size" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_get_subbuffer_stride):
  proc ma_pcm_rb_get_subbuffer_stride*(pRB: ptr ma_pcm_rb_553649062): ma_uint32_553648621 {.
      cdecl, importc: "ma_pcm_rb_get_subbuffer_stride".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_get_subbuffer_stride" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_get_subbuffer_offset):
  proc ma_pcm_rb_get_subbuffer_offset*(pRB: ptr ma_pcm_rb_553649062;
                                       subbufferIndex: ma_uint32_553648621): ma_uint32_553648621 {.
      cdecl, importc: "ma_pcm_rb_get_subbuffer_offset".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_get_subbuffer_offset" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_get_subbuffer_ptr):
  proc ma_pcm_rb_get_subbuffer_ptr*(pRB: ptr ma_pcm_rb_553649062;
                                    subbufferIndex: ma_uint32_553648621;
                                    pBuffer: pointer): pointer {.cdecl,
      importc: "ma_pcm_rb_get_subbuffer_ptr".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_get_subbuffer_ptr" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_get_format):
  proc ma_pcm_rb_get_format*(pRB: ptr ma_pcm_rb_553649062): ma_format_553648700 {.
      cdecl, importc: "ma_pcm_rb_get_format".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_get_format" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_get_channels):
  proc ma_pcm_rb_get_channels*(pRB: ptr ma_pcm_rb_553649062): ma_uint32_553648621 {.
      cdecl, importc: "ma_pcm_rb_get_channels".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_get_channels" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_get_sample_rate):
  proc ma_pcm_rb_get_sample_rate*(pRB: ptr ma_pcm_rb_553649062): ma_uint32_553648621 {.
      cdecl, importc: "ma_pcm_rb_get_sample_rate".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_get_sample_rate" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_set_sample_rate):
  proc ma_pcm_rb_set_sample_rate*(pRB: ptr ma_pcm_rb_553649062;
                                  sampleRate: ma_uint32_553648621): void {.
      cdecl, importc: "ma_pcm_rb_set_sample_rate".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_set_sample_rate" &
        " already exists, not redeclaring")
when not declared(ma_duplex_rb_init):
  proc ma_duplex_rb_init*(captureFormat: ma_format_553648700;
                          captureChannels: ma_uint32_553648621;
                          sampleRate: ma_uint32_553648621;
                          captureInternalSampleRate: ma_uint32_553648621;
                          captureInternalPeriodSizeInFrames: ma_uint32_553648621;
                          pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                          pRB: ptr ma_duplex_rb_553649066): ma_result_553648677 {.
      cdecl, importc: "ma_duplex_rb_init".}
else:
  static :
    hint("Declaration of " & "ma_duplex_rb_init" &
        " already exists, not redeclaring")
when not declared(ma_duplex_rb_uninit):
  proc ma_duplex_rb_uninit*(pRB: ptr ma_duplex_rb_553649066): ma_result_553648677 {.
      cdecl, importc: "ma_duplex_rb_uninit".}
else:
  static :
    hint("Declaration of " & "ma_duplex_rb_uninit" &
        " already exists, not redeclaring")
when not declared(ma_result_description):
  proc ma_result_description*(result: ma_result_553648677): cstring {.cdecl,
      importc: "ma_result_description".}
else:
  static :
    hint("Declaration of " & "ma_result_description" &
        " already exists, not redeclaring")
when not declared(ma_malloc):
  proc ma_malloc*(sz: csize_t; pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): pointer {.
      cdecl, importc: "ma_malloc".}
else:
  static :
    hint("Declaration of " & "ma_malloc" & " already exists, not redeclaring")
when not declared(ma_calloc):
  proc ma_calloc*(sz: csize_t; pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): pointer {.
      cdecl, importc: "ma_calloc".}
else:
  static :
    hint("Declaration of " & "ma_calloc" & " already exists, not redeclaring")
when not declared(ma_realloc):
  proc ma_realloc*(p: pointer; sz: csize_t;
                   pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): pointer {.
      cdecl, importc: "ma_realloc".}
else:
  static :
    hint("Declaration of " & "ma_realloc" & " already exists, not redeclaring")
when not declared(ma_free):
  proc ma_free*(p: pointer; pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_free".}
else:
  static :
    hint("Declaration of " & "ma_free" & " already exists, not redeclaring")
when not declared(ma_aligned_malloc):
  proc ma_aligned_malloc*(sz: csize_t; alignment: csize_t;
                          pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): pointer {.
      cdecl, importc: "ma_aligned_malloc".}
else:
  static :
    hint("Declaration of " & "ma_aligned_malloc" &
        " already exists, not redeclaring")
when not declared(ma_aligned_free):
  proc ma_aligned_free*(p: pointer;
                        pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_aligned_free".}
else:
  static :
    hint("Declaration of " & "ma_aligned_free" &
        " already exists, not redeclaring")
when not declared(ma_get_format_name):
  proc ma_get_format_name*(format: ma_format_553648700): cstring {.cdecl,
      importc: "ma_get_format_name".}
else:
  static :
    hint("Declaration of " & "ma_get_format_name" &
        " already exists, not redeclaring")
when not declared(ma_blend_f32):
  proc ma_blend_f32*(pOut: ptr cfloat; pInA: ptr cfloat; pInB: ptr cfloat;
                     factor: cfloat; channels: ma_uint32_553648621): void {.
      cdecl, importc: "ma_blend_f32".}
else:
  static :
    hint("Declaration of " & "ma_blend_f32" & " already exists, not redeclaring")
when not declared(ma_get_bytes_per_sample):
  proc ma_get_bytes_per_sample*(format: ma_format_553648700): ma_uint32_553648621 {.
      cdecl, importc: "ma_get_bytes_per_sample".}
else:
  static :
    hint("Declaration of " & "ma_get_bytes_per_sample" &
        " already exists, not redeclaring")
when not declared(ma_log_level_to_string):
  proc ma_log_level_to_string*(logLevel: ma_uint32_553648621): cstring {.cdecl,
      importc: "ma_log_level_to_string".}
else:
  static :
    hint("Declaration of " & "ma_log_level_to_string" &
        " already exists, not redeclaring")
when not declared(ma_spinlock_lock):
  proc ma_spinlock_lock*(pSpinlock: ptr ma_spinlock_553648746): ma_result_553648677 {.
      cdecl, importc: "ma_spinlock_lock".}
else:
  static :
    hint("Declaration of " & "ma_spinlock_lock" &
        " already exists, not redeclaring")
when not declared(ma_spinlock_lock_noyield):
  proc ma_spinlock_lock_noyield*(pSpinlock: ptr ma_spinlock_553648746): ma_result_553648677 {.
      cdecl, importc: "ma_spinlock_lock_noyield".}
else:
  static :
    hint("Declaration of " & "ma_spinlock_lock_noyield" &
        " already exists, not redeclaring")
when not declared(ma_spinlock_unlock):
  proc ma_spinlock_unlock*(pSpinlock: ptr ma_spinlock_553648746): ma_result_553648677 {.
      cdecl, importc: "ma_spinlock_unlock".}
else:
  static :
    hint("Declaration of " & "ma_spinlock_unlock" &
        " already exists, not redeclaring")
when not declared(ma_mutex_init):
  proc ma_mutex_init*(pMutex: ptr ma_mutex_553648754): ma_result_553648677 {.
      cdecl, importc: "ma_mutex_init".}
else:
  static :
    hint("Declaration of " & "ma_mutex_init" &
        " already exists, not redeclaring")
when not declared(ma_mutex_uninit):
  proc ma_mutex_uninit*(pMutex: ptr ma_mutex_553648754): void {.cdecl,
      importc: "ma_mutex_uninit".}
else:
  static :
    hint("Declaration of " & "ma_mutex_uninit" &
        " already exists, not redeclaring")
when not declared(ma_mutex_lock):
  proc ma_mutex_lock*(pMutex: ptr ma_mutex_553648754): void {.cdecl,
      importc: "ma_mutex_lock".}
else:
  static :
    hint("Declaration of " & "ma_mutex_lock" &
        " already exists, not redeclaring")
when not declared(ma_mutex_unlock):
  proc ma_mutex_unlock*(pMutex: ptr ma_mutex_553648754): void {.cdecl,
      importc: "ma_mutex_unlock".}
else:
  static :
    hint("Declaration of " & "ma_mutex_unlock" &
        " already exists, not redeclaring")
when not declared(ma_event_init):
  proc ma_event_init*(pEvent: ptr ma_event_553648758): ma_result_553648677 {.
      cdecl, importc: "ma_event_init".}
else:
  static :
    hint("Declaration of " & "ma_event_init" &
        " already exists, not redeclaring")
when not declared(ma_event_uninit):
  proc ma_event_uninit*(pEvent: ptr ma_event_553648758): void {.cdecl,
      importc: "ma_event_uninit".}
else:
  static :
    hint("Declaration of " & "ma_event_uninit" &
        " already exists, not redeclaring")
when not declared(ma_event_wait):
  proc ma_event_wait*(pEvent: ptr ma_event_553648758): ma_result_553648677 {.
      cdecl, importc: "ma_event_wait".}
else:
  static :
    hint("Declaration of " & "ma_event_wait" &
        " already exists, not redeclaring")
when not declared(ma_event_signal):
  proc ma_event_signal*(pEvent: ptr ma_event_553648758): ma_result_553648677 {.
      cdecl, importc: "ma_event_signal".}
else:
  static :
    hint("Declaration of " & "ma_event_signal" &
        " already exists, not redeclaring")
when not declared(ma_semaphore_init):
  proc ma_semaphore_init*(initialValue: cint; pSemaphore: ptr ma_semaphore_553648762): ma_result_553648677 {.
      cdecl, importc: "ma_semaphore_init".}
else:
  static :
    hint("Declaration of " & "ma_semaphore_init" &
        " already exists, not redeclaring")
when not declared(ma_semaphore_uninit):
  proc ma_semaphore_uninit*(pSemaphore: ptr ma_semaphore_553648762): void {.
      cdecl, importc: "ma_semaphore_uninit".}
else:
  static :
    hint("Declaration of " & "ma_semaphore_uninit" &
        " already exists, not redeclaring")
when not declared(ma_semaphore_wait):
  proc ma_semaphore_wait*(pSemaphore: ptr ma_semaphore_553648762): ma_result_553648677 {.
      cdecl, importc: "ma_semaphore_wait".}
else:
  static :
    hint("Declaration of " & "ma_semaphore_wait" &
        " already exists, not redeclaring")
when not declared(ma_semaphore_release):
  proc ma_semaphore_release*(pSemaphore: ptr ma_semaphore_553648762): ma_result_553648677 {.
      cdecl, importc: "ma_semaphore_release".}
else:
  static :
    hint("Declaration of " & "ma_semaphore_release" &
        " already exists, not redeclaring")
when not declared(ma_fence_init):
  proc ma_fence_init*(pFence: ptr ma_fence_553649070): ma_result_553648677 {.
      cdecl, importc: "ma_fence_init".}
else:
  static :
    hint("Declaration of " & "ma_fence_init" &
        " already exists, not redeclaring")
when not declared(ma_fence_uninit):
  proc ma_fence_uninit*(pFence: ptr ma_fence_553649070): void {.cdecl,
      importc: "ma_fence_uninit".}
else:
  static :
    hint("Declaration of " & "ma_fence_uninit" &
        " already exists, not redeclaring")
when not declared(ma_fence_acquire):
  proc ma_fence_acquire*(pFence: ptr ma_fence_553649070): ma_result_553648677 {.
      cdecl, importc: "ma_fence_acquire".}
else:
  static :
    hint("Declaration of " & "ma_fence_acquire" &
        " already exists, not redeclaring")
when not declared(ma_fence_release):
  proc ma_fence_release*(pFence: ptr ma_fence_553649070): ma_result_553648677 {.
      cdecl, importc: "ma_fence_release".}
else:
  static :
    hint("Declaration of " & "ma_fence_release" &
        " already exists, not redeclaring")
when not declared(ma_fence_wait):
  proc ma_fence_wait*(pFence: ptr ma_fence_553649070): ma_result_553648677 {.
      cdecl, importc: "ma_fence_wait".}
else:
  static :
    hint("Declaration of " & "ma_fence_wait" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_signal):
  proc ma_async_notification_signal*(pNotification: pointer): ma_result_553648677 {.
      cdecl, importc: "ma_async_notification_signal".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_signal" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_poll_init):
  proc ma_async_notification_poll_init*(pNotificationPoll: ptr ma_async_notification_poll_553649080): ma_result_553648677 {.
      cdecl, importc: "ma_async_notification_poll_init".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_poll_init" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_poll_is_signalled):
  proc ma_async_notification_poll_is_signalled*(
      pNotificationPoll: ptr ma_async_notification_poll_553649080): ma_bool32_553648631 {.
      cdecl, importc: "ma_async_notification_poll_is_signalled".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_poll_is_signalled" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_event_init):
  proc ma_async_notification_event_init*(
      pNotificationEvent: ptr ma_async_notification_event_553649084): ma_result_553648677 {.
      cdecl, importc: "ma_async_notification_event_init".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_event_init" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_event_uninit):
  proc ma_async_notification_event_uninit*(
      pNotificationEvent: ptr ma_async_notification_event_553649084): ma_result_553648677 {.
      cdecl, importc: "ma_async_notification_event_uninit".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_event_uninit" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_event_wait):
  proc ma_async_notification_event_wait*(
      pNotificationEvent: ptr ma_async_notification_event_553649084): ma_result_553648677 {.
      cdecl, importc: "ma_async_notification_event_wait".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_event_wait" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_event_signal):
  proc ma_async_notification_event_signal*(
      pNotificationEvent: ptr ma_async_notification_event_553649084): ma_result_553648677 {.
      cdecl, importc: "ma_async_notification_event_signal".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_event_signal" &
        " already exists, not redeclaring")
when not declared(ma_slot_allocator_config_init):
  proc ma_slot_allocator_config_init*(capacity: ma_uint32_553648621): ma_slot_allocator_config_553649088 {.
      cdecl, importc: "ma_slot_allocator_config_init".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_config_init" &
        " already exists, not redeclaring")
when not declared(ma_slot_allocator_get_heap_size):
  proc ma_slot_allocator_get_heap_size*(pConfig: ptr ma_slot_allocator_config_553649088;
                                        pHeapSizeInBytes: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_slot_allocator_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_slot_allocator_init_preallocated):
  proc ma_slot_allocator_init_preallocated*(
      pConfig: ptr ma_slot_allocator_config_553649088; pHeap: pointer;
      pAllocator: ptr ma_slot_allocator_553649096): ma_result_553648677 {.cdecl,
      importc: "ma_slot_allocator_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_slot_allocator_init):
  proc ma_slot_allocator_init*(pConfig: ptr ma_slot_allocator_config_553649088;
      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                               pAllocator: ptr ma_slot_allocator_553649096): ma_result_553648677 {.
      cdecl, importc: "ma_slot_allocator_init".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_init" &
        " already exists, not redeclaring")
when not declared(ma_slot_allocator_uninit):
  proc ma_slot_allocator_uninit*(pAllocator: ptr ma_slot_allocator_553649096;
      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_slot_allocator_uninit".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_uninit" &
        " already exists, not redeclaring")
when not declared(ma_slot_allocator_alloc):
  proc ma_slot_allocator_alloc*(pAllocator: ptr ma_slot_allocator_553649096;
                                pSlot: ptr ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_slot_allocator_alloc".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_alloc" &
        " already exists, not redeclaring")
when not declared(ma_slot_allocator_free):
  proc ma_slot_allocator_free*(pAllocator: ptr ma_slot_allocator_553649096;
                               slot: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_slot_allocator_free".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_free" &
        " already exists, not redeclaring")
when not declared(ma_job_process):
  proc ma_job_process*(pJob: ptr ma_job_553648605): ma_result_553648677 {.cdecl,
      importc: "ma_job_process".}
else:
  static :
    hint("Declaration of " & "ma_job_process" &
        " already exists, not redeclaring")
when not declared(ma_device_job_thread_config_init):
  proc ma_device_job_thread_config_init*(): ma_device_job_thread_config_553649130 {.
      cdecl, importc: "ma_device_job_thread_config_init".}
else:
  static :
    hint("Declaration of " & "ma_device_job_thread_config_init" &
        " already exists, not redeclaring")
when not declared(ma_device_job_thread_init):
  proc ma_device_job_thread_init*(pConfig: ptr ma_device_job_thread_config_553649130;
      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                                  pJobThread: ptr ma_device_job_thread_553649134): ma_result_553648677 {.
      cdecl, importc: "ma_device_job_thread_init".}
else:
  static :
    hint("Declaration of " & "ma_device_job_thread_init" &
        " already exists, not redeclaring")
when not declared(ma_device_job_thread_uninit):
  proc ma_device_job_thread_uninit*(pJobThread: ptr ma_device_job_thread_553649134;
      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_device_job_thread_uninit".}
else:
  static :
    hint("Declaration of " & "ma_device_job_thread_uninit" &
        " already exists, not redeclaring")
when not declared(ma_device_job_thread_post):
  proc ma_device_job_thread_post*(pJobThread: ptr ma_device_job_thread_553649134;
                                  pJob: ptr ma_job_553648605): ma_result_553648677 {.
      cdecl, importc: "ma_device_job_thread_post".}
else:
  static :
    hint("Declaration of " & "ma_device_job_thread_post" &
        " already exists, not redeclaring")
when not declared(ma_device_job_thread_next):
  proc ma_device_job_thread_next*(pJobThread: ptr ma_device_job_thread_553649134;
                                  pJob: ptr ma_job_553648605): ma_result_553648677 {.
      cdecl, importc: "ma_device_job_thread_next".}
else:
  static :
    hint("Declaration of " & "ma_device_job_thread_next" &
        " already exists, not redeclaring")
when not declared(ma_device_id_equal):
  proc ma_device_id_equal*(pA: ptr ma_device_id_553649200; pB: ptr ma_device_id_553649200): ma_bool32_553648631 {.
      cdecl, importc: "ma_device_id_equal".}
else:
  static :
    hint("Declaration of " & "ma_device_id_equal" &
        " already exists, not redeclaring")
when not declared(ma_context_config_init):
  proc ma_context_config_init*(): ma_context_config_553649202 {.cdecl,
      importc: "ma_context_config_init".}
else:
  static :
    hint("Declaration of " & "ma_context_config_init" &
        " already exists, not redeclaring")
when not declared(ma_context_init):
  proc ma_context_init*(backends: ptr UncheckedArray[ma_backend_553649126];
                        backendCount: ma_uint32_553648621;
                        pConfig: ptr ma_context_config_553649202;
                        pContext: ptr ma_context_553648661): ma_result_553648677 {.
      cdecl, importc: "ma_context_init".}
else:
  static :
    hint("Declaration of " & "ma_context_init" &
        " already exists, not redeclaring")
when not declared(ma_context_uninit):
  proc ma_context_uninit*(pContext: ptr ma_context_553648661): ma_result_553648677 {.
      cdecl, importc: "ma_context_uninit".}
else:
  static :
    hint("Declaration of " & "ma_context_uninit" &
        " already exists, not redeclaring")
when not declared(ma_context_sizeof):
  proc ma_context_sizeof*(): csize_t {.cdecl, importc: "ma_context_sizeof".}
else:
  static :
    hint("Declaration of " & "ma_context_sizeof" &
        " already exists, not redeclaring")
when not declared(ma_context_get_log):
  proc ma_context_get_log*(pContext: ptr ma_context_553648661): ptr ma_log_553648772 {.
      cdecl, importc: "ma_context_get_log".}
else:
  static :
    hint("Declaration of " & "ma_context_get_log" &
        " already exists, not redeclaring")
when not declared(ma_context_enumerate_devices):
  proc ma_context_enumerate_devices*(pContext: ptr ma_context_553648661;
                                     callback: ma_enum_devices_callback_proc_553649218;
                                     pUserData: pointer): ma_result_553648677 {.
      cdecl, importc: "ma_context_enumerate_devices".}
else:
  static :
    hint("Declaration of " & "ma_context_enumerate_devices" &
        " already exists, not redeclaring")
when not declared(ma_context_get_devices):
  proc ma_context_get_devices*(pContext: ptr ma_context_553648661;
                               ppPlaybackDeviceInfos: ptr ptr ma_device_info_553649216;
                               pPlaybackDeviceCount: ptr ma_uint32_553648621;
                               ppCaptureDeviceInfos: ptr ptr ma_device_info_553649216;
                               pCaptureDeviceCount: ptr ma_uint32_553648621): ma_result_553648677 {.
      cdecl, importc: "ma_context_get_devices".}
else:
  static :
    hint("Declaration of " & "ma_context_get_devices" &
        " already exists, not redeclaring")
when not declared(ma_context_get_device_info):
  proc ma_context_get_device_info*(pContext: ptr ma_context_553648661;
                                   deviceType: ma_device_type_553649152;
                                   pDeviceID: ptr ma_device_id_553649200;
                                   pDeviceInfo: ptr ma_device_info_553649216): ma_result_553648677 {.
      cdecl, importc: "ma_context_get_device_info".}
else:
  static :
    hint("Declaration of " & "ma_context_get_device_info" &
        " already exists, not redeclaring")
when not declared(ma_context_is_loopback_supported):
  proc ma_context_is_loopback_supported*(pContext: ptr ma_context_553648661): ma_bool32_553648631 {.
      cdecl, importc: "ma_context_is_loopback_supported".}
else:
  static :
    hint("Declaration of " & "ma_context_is_loopback_supported" &
        " already exists, not redeclaring")
when not declared(ma_device_config_init):
  proc ma_device_config_init*(deviceType: ma_device_type_553649152): ma_device_config_553649206 {.
      cdecl, importc: "ma_device_config_init".}
else:
  static :
    hint("Declaration of " & "ma_device_config_init" &
        " already exists, not redeclaring")
when not declared(ma_device_init):
  proc ma_device_init*(pContext: ptr ma_context_553648661;
                       pConfig: ptr ma_device_config_553649206;
                       pDevice: ptr ma_device_553648665): ma_result_553648677 {.
      cdecl, importc: "ma_device_init".}
else:
  static :
    hint("Declaration of " & "ma_device_init" &
        " already exists, not redeclaring")
when not declared(ma_device_init_ex):
  proc ma_device_init_ex*(backends: ptr UncheckedArray[ma_backend_553649126];
                          backendCount: ma_uint32_553648621;
                          pContextConfig: ptr ma_context_config_553649202;
                          pConfig: ptr ma_device_config_553649206;
                          pDevice: ptr ma_device_553648665): ma_result_553648677 {.
      cdecl, importc: "ma_device_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_device_init_ex" &
        " already exists, not redeclaring")
when not declared(ma_device_uninit):
  proc ma_device_uninit*(pDevice: ptr ma_device_553648665): void {.cdecl,
      importc: "ma_device_uninit".}
else:
  static :
    hint("Declaration of " & "ma_device_uninit" &
        " already exists, not redeclaring")
when not declared(ma_device_get_context):
  proc ma_device_get_context*(pDevice: ptr ma_device_553648665): ptr ma_context_553648661 {.
      cdecl, importc: "ma_device_get_context".}
else:
  static :
    hint("Declaration of " & "ma_device_get_context" &
        " already exists, not redeclaring")
when not declared(ma_device_get_log):
  proc ma_device_get_log*(pDevice: ptr ma_device_553648665): ptr ma_log_553648772 {.
      cdecl, importc: "ma_device_get_log".}
else:
  static :
    hint("Declaration of " & "ma_device_get_log" &
        " already exists, not redeclaring")
when not declared(ma_device_get_info):
  proc ma_device_get_info*(pDevice: ptr ma_device_553648665;
                           type_arg: ma_device_type_553649152;
                           pDeviceInfo: ptr ma_device_info_553649216): ma_result_553648677 {.
      cdecl, importc: "ma_device_get_info".}
else:
  static :
    hint("Declaration of " & "ma_device_get_info" &
        " already exists, not redeclaring")
when not declared(ma_device_get_name):
  proc ma_device_get_name*(pDevice: ptr ma_device_553648665;
                           type_arg: ma_device_type_553649152; pName: cstring;
                           nameCap: csize_t;
                           pLengthNotIncludingNullTerminator: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_device_get_name".}
else:
  static :
    hint("Declaration of " & "ma_device_get_name" &
        " already exists, not redeclaring")
when not declared(ma_device_start):
  proc ma_device_start*(pDevice: ptr ma_device_553648665): ma_result_553648677 {.
      cdecl, importc: "ma_device_start".}
else:
  static :
    hint("Declaration of " & "ma_device_start" &
        " already exists, not redeclaring")
when not declared(ma_device_stop):
  proc ma_device_stop*(pDevice: ptr ma_device_553648665): ma_result_553648677 {.
      cdecl, importc: "ma_device_stop".}
else:
  static :
    hint("Declaration of " & "ma_device_stop" &
        " already exists, not redeclaring")
when not declared(ma_device_is_started):
  proc ma_device_is_started*(pDevice: ptr ma_device_553648665): ma_bool32_553648631 {.
      cdecl, importc: "ma_device_is_started".}
else:
  static :
    hint("Declaration of " & "ma_device_is_started" &
        " already exists, not redeclaring")
when not declared(ma_device_get_state):
  proc ma_device_get_state*(pDevice: ptr ma_device_553648665): ma_device_state_553649118 {.
      cdecl, importc: "ma_device_get_state".}
else:
  static :
    hint("Declaration of " & "ma_device_get_state" &
        " already exists, not redeclaring")
when not declared(ma_device_post_init):
  proc ma_device_post_init*(pDevice: ptr ma_device_553648665;
                            deviceType: ma_device_type_553649152;
                            pPlaybackDescriptor: ptr ma_device_descriptor_553649222;
                            pCaptureDescriptor: ptr ma_device_descriptor_553649222): ma_result_553648677 {.
      cdecl, importc: "ma_device_post_init".}
else:
  static :
    hint("Declaration of " & "ma_device_post_init" &
        " already exists, not redeclaring")
when not declared(ma_device_set_master_volume):
  proc ma_device_set_master_volume*(pDevice: ptr ma_device_553648665;
                                    volume: cfloat): ma_result_553648677 {.
      cdecl, importc: "ma_device_set_master_volume".}
else:
  static :
    hint("Declaration of " & "ma_device_set_master_volume" &
        " already exists, not redeclaring")
when not declared(ma_device_get_master_volume):
  proc ma_device_get_master_volume*(pDevice: ptr ma_device_553648665;
                                    pVolume: ptr cfloat): ma_result_553648677 {.
      cdecl, importc: "ma_device_get_master_volume".}
else:
  static :
    hint("Declaration of " & "ma_device_get_master_volume" &
        " already exists, not redeclaring")
when not declared(ma_device_set_master_volume_db):
  proc ma_device_set_master_volume_db*(pDevice: ptr ma_device_553648665;
                                       gainDB: cfloat): ma_result_553648677 {.
      cdecl, importc: "ma_device_set_master_volume_db".}
else:
  static :
    hint("Declaration of " & "ma_device_set_master_volume_db" &
        " already exists, not redeclaring")
when not declared(ma_device_get_master_volume_db):
  proc ma_device_get_master_volume_db*(pDevice: ptr ma_device_553648665;
                                       pGainDB: ptr cfloat): ma_result_553648677 {.
      cdecl, importc: "ma_device_get_master_volume_db".}
else:
  static :
    hint("Declaration of " & "ma_device_get_master_volume_db" &
        " already exists, not redeclaring")
when not declared(ma_device_handle_backend_data_callback):
  proc ma_device_handle_backend_data_callback*(pDevice: ptr ma_device_553648665;
      pOutput: pointer; pInput: pointer; frameCount: ma_uint32_553648621): ma_result_553648677 {.
      cdecl, importc: "ma_device_handle_backend_data_callback".}
else:
  static :
    hint("Declaration of " & "ma_device_handle_backend_data_callback" &
        " already exists, not redeclaring")
when not declared(ma_calculate_buffer_size_in_frames_from_descriptor):
  proc ma_calculate_buffer_size_in_frames_from_descriptor*(
      pDescriptor: ptr ma_device_descriptor_553649222;
      nativeSampleRate: ma_uint32_553648621;
      performanceProfile: ma_performance_profile_553648716): ma_uint32_553648621 {.
      cdecl, importc: "ma_calculate_buffer_size_in_frames_from_descriptor".}
else:
  static :
    hint("Declaration of " &
        "ma_calculate_buffer_size_in_frames_from_descriptor" &
        " already exists, not redeclaring")
when not declared(ma_get_backend_name):
  proc ma_get_backend_name*(backend: ma_backend_553649126): cstring {.cdecl,
      importc: "ma_get_backend_name".}
else:
  static :
    hint("Declaration of " & "ma_get_backend_name" &
        " already exists, not redeclaring")
when not declared(ma_get_backend_from_name):
  proc ma_get_backend_from_name*(pBackendName: cstring; pBackend: ptr ma_backend_553649126): ma_result_553648677 {.
      cdecl, importc: "ma_get_backend_from_name".}
else:
  static :
    hint("Declaration of " & "ma_get_backend_from_name" &
        " already exists, not redeclaring")
when not declared(ma_is_backend_enabled):
  proc ma_is_backend_enabled*(backend: ma_backend_553649126): ma_bool32_553648631 {.
      cdecl, importc: "ma_is_backend_enabled".}
else:
  static :
    hint("Declaration of " & "ma_is_backend_enabled" &
        " already exists, not redeclaring")
when not declared(ma_get_enabled_backends):
  proc ma_get_enabled_backends*(pBackends: ptr ma_backend_553649126;
                                backendCap: csize_t; pBackendCount: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_get_enabled_backends".}
else:
  static :
    hint("Declaration of " & "ma_get_enabled_backends" &
        " already exists, not redeclaring")
when not declared(ma_is_loopback_supported):
  proc ma_is_loopback_supported*(backend: ma_backend_553649126): ma_bool32_553648631 {.
      cdecl, importc: "ma_is_loopback_supported".}
else:
  static :
    hint("Declaration of " & "ma_is_loopback_supported" &
        " already exists, not redeclaring")
when not declared(ma_calculate_buffer_size_in_milliseconds_from_frames):
  proc ma_calculate_buffer_size_in_milliseconds_from_frames*(
      bufferSizeInFrames: ma_uint32_553648621; sampleRate: ma_uint32_553648621): ma_uint32_553648621 {.
      cdecl, importc: "ma_calculate_buffer_size_in_milliseconds_from_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_calculate_buffer_size_in_milliseconds_from_frames" &
        " already exists, not redeclaring")
when not declared(ma_calculate_buffer_size_in_frames_from_milliseconds):
  proc ma_calculate_buffer_size_in_frames_from_milliseconds*(
      bufferSizeInMilliseconds: ma_uint32_553648621; sampleRate: ma_uint32_553648621): ma_uint32_553648621 {.
      cdecl, importc: "ma_calculate_buffer_size_in_frames_from_milliseconds".}
else:
  static :
    hint("Declaration of " &
        "ma_calculate_buffer_size_in_frames_from_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_copy_pcm_frames):
  proc ma_copy_pcm_frames*(dst: pointer; src: pointer; frameCount: ma_uint64_553648625;
                           format: ma_format_553648700; channels: ma_uint32_553648621): void {.
      cdecl, importc: "ma_copy_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_copy_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_silence_pcm_frames):
  proc ma_silence_pcm_frames*(p: pointer; frameCount: ma_uint64_553648625;
                              format: ma_format_553648700; channels: ma_uint32_553648621): void {.
      cdecl, importc: "ma_silence_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_silence_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_offset_pcm_frames_ptr):
  proc ma_offset_pcm_frames_ptr*(p: pointer; offsetInFrames: ma_uint64_553648625;
                                 format: ma_format_553648700;
                                 channels: ma_uint32_553648621): pointer {.
      cdecl, importc: "ma_offset_pcm_frames_ptr".}
else:
  static :
    hint("Declaration of " & "ma_offset_pcm_frames_ptr" &
        " already exists, not redeclaring")
when not declared(ma_offset_pcm_frames_const_ptr):
  proc ma_offset_pcm_frames_const_ptr*(p: pointer; offsetInFrames: ma_uint64_553648625;
                                       format: ma_format_553648700;
                                       channels: ma_uint32_553648621): pointer {.
      cdecl, importc: "ma_offset_pcm_frames_const_ptr".}
else:
  static :
    hint("Declaration of " & "ma_offset_pcm_frames_const_ptr" &
        " already exists, not redeclaring")
when not declared(ma_clip_samples_u8):
  proc ma_clip_samples_u8*(pDst: ptr ma_uint8_553648613; pSrc: ptr ma_int16_553648615;
                           count: ma_uint64_553648625): void {.cdecl,
      importc: "ma_clip_samples_u8".}
else:
  static :
    hint("Declaration of " & "ma_clip_samples_u8" &
        " already exists, not redeclaring")
when not declared(ma_clip_samples_s16):
  proc ma_clip_samples_s16*(pDst: ptr ma_int16_553648615; pSrc: ptr ma_int32_553648619;
                            count: ma_uint64_553648625): void {.cdecl,
      importc: "ma_clip_samples_s16".}
else:
  static :
    hint("Declaration of " & "ma_clip_samples_s16" &
        " already exists, not redeclaring")
when not declared(ma_clip_samples_s24):
  proc ma_clip_samples_s24*(pDst: ptr ma_uint8_553648613; pSrc: ptr ma_int64_553648623;
                            count: ma_uint64_553648625): void {.cdecl,
      importc: "ma_clip_samples_s24".}
else:
  static :
    hint("Declaration of " & "ma_clip_samples_s24" &
        " already exists, not redeclaring")
when not declared(ma_clip_samples_s32):
  proc ma_clip_samples_s32*(pDst: ptr ma_int32_553648619; pSrc: ptr ma_int64_553648623;
                            count: ma_uint64_553648625): void {.cdecl,
      importc: "ma_clip_samples_s32".}
else:
  static :
    hint("Declaration of " & "ma_clip_samples_s32" &
        " already exists, not redeclaring")
when not declared(ma_clip_samples_f32):
  proc ma_clip_samples_f32*(pDst: ptr cfloat; pSrc: ptr cfloat; count: ma_uint64_553648625): void {.
      cdecl, importc: "ma_clip_samples_f32".}
else:
  static :
    hint("Declaration of " & "ma_clip_samples_f32" &
        " already exists, not redeclaring")
when not declared(ma_clip_pcm_frames):
  proc ma_clip_pcm_frames*(pDst: pointer; pSrc: pointer; frameCount: ma_uint64_553648625;
                           format: ma_format_553648700; channels: ma_uint32_553648621): void {.
      cdecl, importc: "ma_clip_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_clip_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_u8):
  proc ma_copy_and_apply_volume_factor_u8*(pSamplesOut: ptr ma_uint8_553648613;
      pSamplesIn: ptr ma_uint8_553648613; sampleCount: ma_uint64_553648625;
      factor: cfloat): void {.cdecl,
                              importc: "ma_copy_and_apply_volume_factor_u8".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_u8" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_s16):
  proc ma_copy_and_apply_volume_factor_s16*(pSamplesOut: ptr ma_int16_553648615;
      pSamplesIn: ptr ma_int16_553648615; sampleCount: ma_uint64_553648625;
      factor: cfloat): void {.cdecl,
                              importc: "ma_copy_and_apply_volume_factor_s16".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_s16" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_s24):
  proc ma_copy_and_apply_volume_factor_s24*(pSamplesOut: pointer;
      pSamplesIn: pointer; sampleCount: ma_uint64_553648625; factor: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_factor_s24".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_s24" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_s32):
  proc ma_copy_and_apply_volume_factor_s32*(pSamplesOut: ptr ma_int32_553648619;
      pSamplesIn: ptr ma_int32_553648619; sampleCount: ma_uint64_553648625;
      factor: cfloat): void {.cdecl,
                              importc: "ma_copy_and_apply_volume_factor_s32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_s32" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_f32):
  proc ma_copy_and_apply_volume_factor_f32*(pSamplesOut: ptr cfloat;
      pSamplesIn: ptr cfloat; sampleCount: ma_uint64_553648625; factor: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_factor_f32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_f32" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_u8):
  proc ma_apply_volume_factor_u8*(pSamples: ptr ma_uint8_553648613;
                                  sampleCount: ma_uint64_553648625;
                                  factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_u8".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_u8" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_s16):
  proc ma_apply_volume_factor_s16*(pSamples: ptr ma_int16_553648615;
                                   sampleCount: ma_uint64_553648625;
                                   factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_s16".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_s16" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_s24):
  proc ma_apply_volume_factor_s24*(pSamples: pointer; sampleCount: ma_uint64_553648625;
                                   factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_s24".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_s24" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_s32):
  proc ma_apply_volume_factor_s32*(pSamples: ptr ma_int32_553648619;
                                   sampleCount: ma_uint64_553648625;
                                   factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_s32".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_s32" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_f32):
  proc ma_apply_volume_factor_f32*(pSamples: ptr cfloat; sampleCount: ma_uint64_553648625;
                                   factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_f32".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_f32" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_pcm_frames_u8):
  proc ma_copy_and_apply_volume_factor_pcm_frames_u8*(pFramesOut: ptr ma_uint8_553648613;
      pFramesIn: ptr ma_uint8_553648613; frameCount: ma_uint64_553648625;
      channels: ma_uint32_553648621; factor: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_pcm_frames_u8".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_pcm_frames_u8" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_pcm_frames_s16):
  proc ma_copy_and_apply_volume_factor_pcm_frames_s16*(pFramesOut: ptr ma_int16_553648615;
      pFramesIn: ptr ma_int16_553648615; frameCount: ma_uint64_553648625;
      channels: ma_uint32_553648621; factor: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_pcm_frames_s16".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_pcm_frames_s16" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_pcm_frames_s24):
  proc ma_copy_and_apply_volume_factor_pcm_frames_s24*(pFramesOut: pointer;
      pFramesIn: pointer; frameCount: ma_uint64_553648625; channels: ma_uint32_553648621;
      factor: cfloat): void {.cdecl, importc: "ma_copy_and_apply_volume_factor_pcm_frames_s24".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_pcm_frames_s24" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_pcm_frames_s32):
  proc ma_copy_and_apply_volume_factor_pcm_frames_s32*(pFramesOut: ptr ma_int32_553648619;
      pFramesIn: ptr ma_int32_553648619; frameCount: ma_uint64_553648625;
      channels: ma_uint32_553648621; factor: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_pcm_frames_s32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_pcm_frames_s32" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_pcm_frames_f32):
  proc ma_copy_and_apply_volume_factor_pcm_frames_f32*(pFramesOut: ptr cfloat;
      pFramesIn: ptr cfloat; frameCount: ma_uint64_553648625;
      channels: ma_uint32_553648621; factor: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_pcm_frames_f32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_pcm_frames_f32" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_pcm_frames):
  proc ma_copy_and_apply_volume_factor_pcm_frames*(pFramesOut: pointer;
      pFramesIn: pointer; frameCount: ma_uint64_553648625; format: ma_format_553648700;
      channels: ma_uint32_553648621; factor: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_pcm_frames_u8):
  proc ma_apply_volume_factor_pcm_frames_u8*(pFrames: ptr ma_uint8_553648613;
      frameCount: ma_uint64_553648625; channels: ma_uint32_553648621;
      factor: cfloat): void {.cdecl,
                              importc: "ma_apply_volume_factor_pcm_frames_u8".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_pcm_frames_u8" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_pcm_frames_s16):
  proc ma_apply_volume_factor_pcm_frames_s16*(pFrames: ptr ma_int16_553648615;
      frameCount: ma_uint64_553648625; channels: ma_uint32_553648621;
      factor: cfloat): void {.cdecl,
                              importc: "ma_apply_volume_factor_pcm_frames_s16".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_pcm_frames_s16" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_pcm_frames_s24):
  proc ma_apply_volume_factor_pcm_frames_s24*(pFrames: pointer;
      frameCount: ma_uint64_553648625; channels: ma_uint32_553648621;
      factor: cfloat): void {.cdecl,
                              importc: "ma_apply_volume_factor_pcm_frames_s24".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_pcm_frames_s24" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_pcm_frames_s32):
  proc ma_apply_volume_factor_pcm_frames_s32*(pFrames: ptr ma_int32_553648619;
      frameCount: ma_uint64_553648625; channels: ma_uint32_553648621;
      factor: cfloat): void {.cdecl,
                              importc: "ma_apply_volume_factor_pcm_frames_s32".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_pcm_frames_s32" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_pcm_frames_f32):
  proc ma_apply_volume_factor_pcm_frames_f32*(pFrames: ptr cfloat;
      frameCount: ma_uint64_553648625; channels: ma_uint32_553648621;
      factor: cfloat): void {.cdecl,
                              importc: "ma_apply_volume_factor_pcm_frames_f32".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_pcm_frames_f32" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_pcm_frames):
  proc ma_apply_volume_factor_pcm_frames*(pFrames: pointer;
      frameCount: ma_uint64_553648625; format: ma_format_553648700;
      channels: ma_uint32_553648621; factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_per_channel_f32):
  proc ma_copy_and_apply_volume_factor_per_channel_f32*(pFramesOut: ptr cfloat;
      pFramesIn: ptr cfloat; frameCount: ma_uint64_553648625;
      channels: ma_uint32_553648621; pChannelGains: ptr cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_per_channel_f32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_per_channel_f32" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_and_clip_samples_u8):
  proc ma_copy_and_apply_volume_and_clip_samples_u8*(pDst: ptr ma_uint8_553648613;
      pSrc: ptr ma_int16_553648615; count: ma_uint64_553648625; volume: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_and_clip_samples_u8".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_and_clip_samples_u8" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_and_clip_samples_s16):
  proc ma_copy_and_apply_volume_and_clip_samples_s16*(pDst: ptr ma_int16_553648615;
      pSrc: ptr ma_int32_553648619; count: ma_uint64_553648625; volume: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_and_clip_samples_s16".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_and_clip_samples_s16" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_and_clip_samples_s24):
  proc ma_copy_and_apply_volume_and_clip_samples_s24*(pDst: ptr ma_uint8_553648613;
      pSrc: ptr ma_int64_553648623; count: ma_uint64_553648625; volume: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_and_clip_samples_s24".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_and_clip_samples_s24" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_and_clip_samples_s32):
  proc ma_copy_and_apply_volume_and_clip_samples_s32*(pDst: ptr ma_int32_553648619;
      pSrc: ptr ma_int64_553648623; count: ma_uint64_553648625; volume: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_and_clip_samples_s32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_and_clip_samples_s32" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_and_clip_samples_f32):
  proc ma_copy_and_apply_volume_and_clip_samples_f32*(pDst: ptr cfloat;
      pSrc: ptr cfloat; count: ma_uint64_553648625; volume: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_and_clip_samples_f32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_and_clip_samples_f32" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_and_clip_pcm_frames):
  proc ma_copy_and_apply_volume_and_clip_pcm_frames*(pDst: pointer;
      pSrc: pointer; frameCount: ma_uint64_553648625; format: ma_format_553648700;
      channels: ma_uint32_553648621; volume: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_and_clip_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_and_clip_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_volume_linear_to_db):
  proc ma_volume_linear_to_db*(factor: cfloat): cfloat {.cdecl,
      importc: "ma_volume_linear_to_db".}
else:
  static :
    hint("Declaration of " & "ma_volume_linear_to_db" &
        " already exists, not redeclaring")
when not declared(ma_volume_db_to_linear):
  proc ma_volume_db_to_linear*(gain: cfloat): cfloat {.cdecl,
      importc: "ma_volume_db_to_linear".}
else:
  static :
    hint("Declaration of " & "ma_volume_db_to_linear" &
        " already exists, not redeclaring")
when not declared(ma_mix_pcm_frames_f32):
  proc ma_mix_pcm_frames_f32*(pDst: ptr cfloat; pSrc: ptr cfloat;
                              frameCount: ma_uint64_553648625;
                              channels: ma_uint32_553648621; volume: cfloat): ma_result_553648677 {.
      cdecl, importc: "ma_mix_pcm_frames_f32".}
else:
  static :
    hint("Declaration of " & "ma_mix_pcm_frames_f32" &
        " already exists, not redeclaring")
when not declared(ma_vfs_open):
  proc ma_vfs_open*(pVFS: pointer; pFilePath: cstring; openMode: ma_uint32_553648621;
                    pFile: ptr ma_vfs_file_553649230): ma_result_553648677 {.
      cdecl, importc: "ma_vfs_open".}
else:
  static :
    hint("Declaration of " & "ma_vfs_open" & " already exists, not redeclaring")
when not declared(ma_vfs_open_w):
  proc ma_vfs_open_w*(pVFS: pointer; pFilePath: ptr wchar_t_553649106;
                      openMode: ma_uint32_553648621; pFile: ptr ma_vfs_file_553649230): ma_result_553648677 {.
      cdecl, importc: "ma_vfs_open_w".}
else:
  static :
    hint("Declaration of " & "ma_vfs_open_w" &
        " already exists, not redeclaring")
when not declared(ma_vfs_close):
  proc ma_vfs_close*(pVFS: pointer; file: ma_vfs_file_553649230): ma_result_553648677 {.
      cdecl, importc: "ma_vfs_close".}
else:
  static :
    hint("Declaration of " & "ma_vfs_close" & " already exists, not redeclaring")
when not declared(ma_vfs_read):
  proc ma_vfs_read*(pVFS: pointer; file: ma_vfs_file_553649230; pDst: pointer;
                    sizeInBytes: csize_t; pBytesRead: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_vfs_read".}
else:
  static :
    hint("Declaration of " & "ma_vfs_read" & " already exists, not redeclaring")
when not declared(ma_vfs_write):
  proc ma_vfs_write*(pVFS: pointer; file: ma_vfs_file_553649230; pSrc: pointer;
                     sizeInBytes: csize_t; pBytesWritten: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_vfs_write".}
else:
  static :
    hint("Declaration of " & "ma_vfs_write" & " already exists, not redeclaring")
when not declared(ma_vfs_seek):
  proc ma_vfs_seek*(pVFS: pointer; file: ma_vfs_file_553649230;
                    offset: ma_int64_553648623; origin: ma_seek_origin_553649238): ma_result_553648677 {.
      cdecl, importc: "ma_vfs_seek".}
else:
  static :
    hint("Declaration of " & "ma_vfs_seek" & " already exists, not redeclaring")
when not declared(ma_vfs_tell):
  proc ma_vfs_tell*(pVFS: pointer; file: ma_vfs_file_553649230;
                    pCursor: ptr ma_int64_553648623): ma_result_553648677 {.
      cdecl, importc: "ma_vfs_tell".}
else:
  static :
    hint("Declaration of " & "ma_vfs_tell" & " already exists, not redeclaring")
when not declared(ma_vfs_info):
  proc ma_vfs_info*(pVFS: pointer; file: ma_vfs_file_553649230;
                    pInfo: ptr ma_file_info_553649242): ma_result_553648677 {.
      cdecl, importc: "ma_vfs_info".}
else:
  static :
    hint("Declaration of " & "ma_vfs_info" & " already exists, not redeclaring")
when not declared(ma_vfs_open_and_read_file):
  proc ma_vfs_open_and_read_file*(pVFS: pointer; pFilePath: cstring;
                                  ppData: ptr pointer; pSize: ptr csize_t;
      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): ma_result_553648677 {.
      cdecl, importc: "ma_vfs_open_and_read_file".}
else:
  static :
    hint("Declaration of " & "ma_vfs_open_and_read_file" &
        " already exists, not redeclaring")
when not declared(ma_default_vfs_init):
  proc ma_default_vfs_init*(pVFS: ptr ma_default_vfs_553649250;
                            pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): ma_result_553648677 {.
      cdecl, importc: "ma_default_vfs_init".}
else:
  static :
    hint("Declaration of " & "ma_default_vfs_init" &
        " already exists, not redeclaring")
when not declared(ma_decoding_backend_config_init):
  proc ma_decoding_backend_config_init*(preferredFormat: ma_format_553648700;
                                        seekPointCount: ma_uint32_553648621): ma_decoding_backend_config_553649268 {.
      cdecl, importc: "ma_decoding_backend_config_init".}
else:
  static :
    hint("Declaration of " & "ma_decoding_backend_config_init" &
        " already exists, not redeclaring")
when not declared(ma_decoder_config_init):
  proc ma_decoder_config_init*(outputFormat: ma_format_553648700;
                               outputChannels: ma_uint32_553648621;
                               outputSampleRate: ma_uint32_553648621): ma_decoder_config_553649282 {.
      cdecl, importc: "ma_decoder_config_init".}
else:
  static :
    hint("Declaration of " & "ma_decoder_config_init" &
        " already exists, not redeclaring")
when not declared(ma_decoder_config_init_default):
  proc ma_decoder_config_init_default*(): ma_decoder_config_553649282 {.cdecl,
      importc: "ma_decoder_config_init_default".}
else:
  static :
    hint("Declaration of " & "ma_decoder_config_init_default" &
        " already exists, not redeclaring")
when not declared(ma_decoder_init):
  proc ma_decoder_init*(onRead: ma_decoder_read_proc_553649274;
                        onSeek: ma_decoder_seek_proc_553649276;
                        pUserData: pointer; pConfig: ptr ma_decoder_config_553649282;
                        pDecoder: ptr ma_decoder_553649262): ma_result_553648677 {.
      cdecl, importc: "ma_decoder_init".}
else:
  static :
    hint("Declaration of " & "ma_decoder_init" &
        " already exists, not redeclaring")
when not declared(ma_decoder_init_memory):
  proc ma_decoder_init_memory*(pData: pointer; dataSize: csize_t;
                               pConfig: ptr ma_decoder_config_553649282;
                               pDecoder: ptr ma_decoder_553649262): ma_result_553648677 {.
      cdecl, importc: "ma_decoder_init_memory".}
else:
  static :
    hint("Declaration of " & "ma_decoder_init_memory" &
        " already exists, not redeclaring")
when not declared(ma_decoder_init_vfs):
  proc ma_decoder_init_vfs*(pVFS: pointer; pFilePath: cstring;
                            pConfig: ptr ma_decoder_config_553649282;
                            pDecoder: ptr ma_decoder_553649262): ma_result_553648677 {.
      cdecl, importc: "ma_decoder_init_vfs".}
else:
  static :
    hint("Declaration of " & "ma_decoder_init_vfs" &
        " already exists, not redeclaring")
when not declared(ma_decoder_init_vfs_w):
  proc ma_decoder_init_vfs_w*(pVFS: pointer; pFilePath: ptr wchar_t_553649106;
                              pConfig: ptr ma_decoder_config_553649282;
                              pDecoder: ptr ma_decoder_553649262): ma_result_553648677 {.
      cdecl, importc: "ma_decoder_init_vfs_w".}
else:
  static :
    hint("Declaration of " & "ma_decoder_init_vfs_w" &
        " already exists, not redeclaring")
when not declared(ma_decoder_init_file):
  proc ma_decoder_init_file*(pFilePath: cstring; pConfig: ptr ma_decoder_config_553649282;
                             pDecoder: ptr ma_decoder_553649262): ma_result_553648677 {.
      cdecl, importc: "ma_decoder_init_file".}
else:
  static :
    hint("Declaration of " & "ma_decoder_init_file" &
        " already exists, not redeclaring")
when not declared(ma_decoder_init_file_w):
  proc ma_decoder_init_file_w*(pFilePath: ptr wchar_t_553649106;
                               pConfig: ptr ma_decoder_config_553649282;
                               pDecoder: ptr ma_decoder_553649262): ma_result_553648677 {.
      cdecl, importc: "ma_decoder_init_file_w".}
else:
  static :
    hint("Declaration of " & "ma_decoder_init_file_w" &
        " already exists, not redeclaring")
when not declared(ma_decoder_uninit):
  proc ma_decoder_uninit*(pDecoder: ptr ma_decoder_553649262): ma_result_553648677 {.
      cdecl, importc: "ma_decoder_uninit".}
else:
  static :
    hint("Declaration of " & "ma_decoder_uninit" &
        " already exists, not redeclaring")
when not declared(ma_decoder_read_pcm_frames):
  proc ma_decoder_read_pcm_frames*(pDecoder: ptr ma_decoder_553649262;
                                   pFramesOut: pointer; frameCount: ma_uint64_553648625;
                                   pFramesRead: ptr ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_decoder_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_decoder_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_decoder_seek_to_pcm_frame):
  proc ma_decoder_seek_to_pcm_frame*(pDecoder: ptr ma_decoder_553649262;
                                     frameIndex: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_decoder_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_decoder_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_decoder_get_data_format):
  proc ma_decoder_get_data_format*(pDecoder: ptr ma_decoder_553649262;
                                   pFormat: ptr ma_format_553648700;
                                   pChannels: ptr ma_uint32_553648621;
                                   pSampleRate: ptr ma_uint32_553648621;
                                   pChannelMap: ptr ma_channel_553648669;
                                   channelMapCap: csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_decoder_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_decoder_get_data_format" &
        " already exists, not redeclaring")
when not declared(ma_decoder_get_cursor_in_pcm_frames):
  proc ma_decoder_get_cursor_in_pcm_frames*(pDecoder: ptr ma_decoder_553649262;
      pCursor: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_decoder_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_decoder_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_decoder_get_length_in_pcm_frames):
  proc ma_decoder_get_length_in_pcm_frames*(pDecoder: ptr ma_decoder_553649262;
      pLength: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_decoder_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_decoder_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_decoder_get_available_frames):
  proc ma_decoder_get_available_frames*(pDecoder: ptr ma_decoder_553649262;
                                        pAvailableFrames: ptr ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_decoder_get_available_frames".}
else:
  static :
    hint("Declaration of " & "ma_decoder_get_available_frames" &
        " already exists, not redeclaring")
when not declared(ma_decode_from_vfs):
  proc ma_decode_from_vfs*(pVFS: pointer; pFilePath: cstring;
                           pConfig: ptr ma_decoder_config_553649282;
                           pFrameCountOut: ptr ma_uint64_553648625;
                           ppPCMFramesOut: ptr pointer): ma_result_553648677 {.
      cdecl, importc: "ma_decode_from_vfs".}
else:
  static :
    hint("Declaration of " & "ma_decode_from_vfs" &
        " already exists, not redeclaring")
when not declared(ma_decode_file):
  proc ma_decode_file*(pFilePath: cstring; pConfig: ptr ma_decoder_config_553649282;
                       pFrameCountOut: ptr ma_uint64_553648625;
                       ppPCMFramesOut: ptr pointer): ma_result_553648677 {.
      cdecl, importc: "ma_decode_file".}
else:
  static :
    hint("Declaration of " & "ma_decode_file" &
        " already exists, not redeclaring")
when not declared(ma_decode_memory):
  proc ma_decode_memory*(pData: pointer; dataSize: csize_t;
                         pConfig: ptr ma_decoder_config_553649282;
                         pFrameCountOut: ptr ma_uint64_553648625;
                         ppPCMFramesOut: ptr pointer): ma_result_553648677 {.
      cdecl, importc: "ma_decode_memory".}
else:
  static :
    hint("Declaration of " & "ma_decode_memory" &
        " already exists, not redeclaring")
when not declared(ma_encoder_config_init):
  proc ma_encoder_config_init*(encodingFormat: ma_encoding_format_553649260;
                               format: ma_format_553648700; channels: ma_uint32_553648621;
                               sampleRate: ma_uint32_553648621): ma_encoder_config_553649300 {.
      cdecl, importc: "ma_encoder_config_init".}
else:
  static :
    hint("Declaration of " & "ma_encoder_config_init" &
        " already exists, not redeclaring")
when not declared(ma_encoder_init):
  proc ma_encoder_init*(onWrite: ma_encoder_write_proc_553649288;
                        onSeek: ma_encoder_seek_proc_553649290;
                        pUserData: pointer; pConfig: ptr ma_encoder_config_553649300;
                        pEncoder: ptr ma_encoder_553649284): ma_result_553648677 {.
      cdecl, importc: "ma_encoder_init".}
else:
  static :
    hint("Declaration of " & "ma_encoder_init" &
        " already exists, not redeclaring")
when not declared(ma_encoder_init_vfs):
  proc ma_encoder_init_vfs*(pVFS: pointer; pFilePath: cstring;
                            pConfig: ptr ma_encoder_config_553649300;
                            pEncoder: ptr ma_encoder_553649284): ma_result_553648677 {.
      cdecl, importc: "ma_encoder_init_vfs".}
else:
  static :
    hint("Declaration of " & "ma_encoder_init_vfs" &
        " already exists, not redeclaring")
when not declared(ma_encoder_init_vfs_w):
  proc ma_encoder_init_vfs_w*(pVFS: pointer; pFilePath: ptr wchar_t_553649106;
                              pConfig: ptr ma_encoder_config_553649300;
                              pEncoder: ptr ma_encoder_553649284): ma_result_553648677 {.
      cdecl, importc: "ma_encoder_init_vfs_w".}
else:
  static :
    hint("Declaration of " & "ma_encoder_init_vfs_w" &
        " already exists, not redeclaring")
when not declared(ma_encoder_init_file):
  proc ma_encoder_init_file*(pFilePath: cstring; pConfig: ptr ma_encoder_config_553649300;
                             pEncoder: ptr ma_encoder_553649284): ma_result_553648677 {.
      cdecl, importc: "ma_encoder_init_file".}
else:
  static :
    hint("Declaration of " & "ma_encoder_init_file" &
        " already exists, not redeclaring")
when not declared(ma_encoder_init_file_w):
  proc ma_encoder_init_file_w*(pFilePath: ptr wchar_t_553649106;
                               pConfig: ptr ma_encoder_config_553649300;
                               pEncoder: ptr ma_encoder_553649284): ma_result_553648677 {.
      cdecl, importc: "ma_encoder_init_file_w".}
else:
  static :
    hint("Declaration of " & "ma_encoder_init_file_w" &
        " already exists, not redeclaring")
when not declared(ma_encoder_uninit):
  proc ma_encoder_uninit*(pEncoder: ptr ma_encoder_553649284): void {.cdecl,
      importc: "ma_encoder_uninit".}
else:
  static :
    hint("Declaration of " & "ma_encoder_uninit" &
        " already exists, not redeclaring")
when not declared(ma_encoder_write_pcm_frames):
  proc ma_encoder_write_pcm_frames*(pEncoder: ptr ma_encoder_553649284;
                                    pFramesIn: pointer; frameCount: ma_uint64_553648625;
                                    pFramesWritten: ptr ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_encoder_write_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_encoder_write_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_waveform_config_init):
  proc ma_waveform_config_init*(format: ma_format_553648700;
                                channels: ma_uint32_553648621;
                                sampleRate: ma_uint32_553648621;
                                type_arg: ma_waveform_type_553649304;
                                amplitude: cdouble; frequency: cdouble): ma_waveform_config_553649308 {.
      cdecl, importc: "ma_waveform_config_init".}
else:
  static :
    hint("Declaration of " & "ma_waveform_config_init" &
        " already exists, not redeclaring")
when not declared(ma_waveform_init):
  proc ma_waveform_init*(pConfig: ptr ma_waveform_config_553649308;
                         pWaveform: ptr ma_waveform_553649312): ma_result_553648677 {.
      cdecl, importc: "ma_waveform_init".}
else:
  static :
    hint("Declaration of " & "ma_waveform_init" &
        " already exists, not redeclaring")
when not declared(ma_waveform_uninit):
  proc ma_waveform_uninit*(pWaveform: ptr ma_waveform_553649312): void {.cdecl,
      importc: "ma_waveform_uninit".}
else:
  static :
    hint("Declaration of " & "ma_waveform_uninit" &
        " already exists, not redeclaring")
when not declared(ma_waveform_read_pcm_frames):
  proc ma_waveform_read_pcm_frames*(pWaveform: ptr ma_waveform_553649312;
                                    pFramesOut: pointer; frameCount: ma_uint64_553648625;
                                    pFramesRead: ptr ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_waveform_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_waveform_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_waveform_seek_to_pcm_frame):
  proc ma_waveform_seek_to_pcm_frame*(pWaveform: ptr ma_waveform_553649312;
                                      frameIndex: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_waveform_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_waveform_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_waveform_set_amplitude):
  proc ma_waveform_set_amplitude*(pWaveform: ptr ma_waveform_553649312;
                                  amplitude: cdouble): ma_result_553648677 {.
      cdecl, importc: "ma_waveform_set_amplitude".}
else:
  static :
    hint("Declaration of " & "ma_waveform_set_amplitude" &
        " already exists, not redeclaring")
when not declared(ma_waveform_set_frequency):
  proc ma_waveform_set_frequency*(pWaveform: ptr ma_waveform_553649312;
                                  frequency: cdouble): ma_result_553648677 {.
      cdecl, importc: "ma_waveform_set_frequency".}
else:
  static :
    hint("Declaration of " & "ma_waveform_set_frequency" &
        " already exists, not redeclaring")
when not declared(ma_waveform_set_type):
  proc ma_waveform_set_type*(pWaveform: ptr ma_waveform_553649312;
                             type_arg: ma_waveform_type_553649304): ma_result_553648677 {.
      cdecl, importc: "ma_waveform_set_type".}
else:
  static :
    hint("Declaration of " & "ma_waveform_set_type" &
        " already exists, not redeclaring")
when not declared(ma_waveform_set_sample_rate):
  proc ma_waveform_set_sample_rate*(pWaveform: ptr ma_waveform_553649312;
                                    sampleRate: ma_uint32_553648621): ma_result_553648677 {.
      cdecl, importc: "ma_waveform_set_sample_rate".}
else:
  static :
    hint("Declaration of " & "ma_waveform_set_sample_rate" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_config_init):
  proc ma_pulsewave_config_init*(format: ma_format_553648700;
                                 channels: ma_uint32_553648621;
                                 sampleRate: ma_uint32_553648621;
                                 dutyCycle: cdouble; amplitude: cdouble;
                                 frequency: cdouble): ma_pulsewave_config_553649316 {.
      cdecl, importc: "ma_pulsewave_config_init".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_config_init" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_init):
  proc ma_pulsewave_init*(pConfig: ptr ma_pulsewave_config_553649316;
                          pWaveform: ptr ma_pulsewave_553649320): ma_result_553648677 {.
      cdecl, importc: "ma_pulsewave_init".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_init" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_uninit):
  proc ma_pulsewave_uninit*(pWaveform: ptr ma_pulsewave_553649320): void {.
      cdecl, importc: "ma_pulsewave_uninit".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_uninit" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_read_pcm_frames):
  proc ma_pulsewave_read_pcm_frames*(pWaveform: ptr ma_pulsewave_553649320;
                                     pFramesOut: pointer; frameCount: ma_uint64_553648625;
                                     pFramesRead: ptr ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_pulsewave_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_seek_to_pcm_frame):
  proc ma_pulsewave_seek_to_pcm_frame*(pWaveform: ptr ma_pulsewave_553649320;
                                       frameIndex: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_pulsewave_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_set_amplitude):
  proc ma_pulsewave_set_amplitude*(pWaveform: ptr ma_pulsewave_553649320;
                                   amplitude: cdouble): ma_result_553648677 {.
      cdecl, importc: "ma_pulsewave_set_amplitude".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_set_amplitude" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_set_frequency):
  proc ma_pulsewave_set_frequency*(pWaveform: ptr ma_pulsewave_553649320;
                                   frequency: cdouble): ma_result_553648677 {.
      cdecl, importc: "ma_pulsewave_set_frequency".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_set_frequency" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_set_sample_rate):
  proc ma_pulsewave_set_sample_rate*(pWaveform: ptr ma_pulsewave_553649320;
                                     sampleRate: ma_uint32_553648621): ma_result_553648677 {.
      cdecl, importc: "ma_pulsewave_set_sample_rate".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_set_sample_rate" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_set_duty_cycle):
  proc ma_pulsewave_set_duty_cycle*(pWaveform: ptr ma_pulsewave_553649320;
                                    dutyCycle: cdouble): ma_result_553648677 {.
      cdecl, importc: "ma_pulsewave_set_duty_cycle".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_set_duty_cycle" &
        " already exists, not redeclaring")
when not declared(ma_noise_config_init):
  proc ma_noise_config_init*(format: ma_format_553648700; channels: ma_uint32_553648621;
                             type_arg: ma_noise_type_553649324; seed: ma_int32_553648619;
                             amplitude: cdouble): ma_noise_config_553649328 {.
      cdecl, importc: "ma_noise_config_init".}
else:
  static :
    hint("Declaration of " & "ma_noise_config_init" &
        " already exists, not redeclaring")
when not declared(ma_noise_get_heap_size):
  proc ma_noise_get_heap_size*(pConfig: ptr ma_noise_config_553649328;
                               pHeapSizeInBytes: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_noise_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_noise_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_noise_init_preallocated):
  proc ma_noise_init_preallocated*(pConfig: ptr ma_noise_config_553649328;
                                   pHeap: pointer; pNoise: ptr ma_noise_553649332): ma_result_553648677 {.
      cdecl, importc: "ma_noise_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_noise_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_noise_init):
  proc ma_noise_init*(pConfig: ptr ma_noise_config_553649328;
                      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                      pNoise: ptr ma_noise_553649332): ma_result_553648677 {.
      cdecl, importc: "ma_noise_init".}
else:
  static :
    hint("Declaration of " & "ma_noise_init" &
        " already exists, not redeclaring")
when not declared(ma_noise_uninit):
  proc ma_noise_uninit*(pNoise: ptr ma_noise_553649332;
                        pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_noise_uninit".}
else:
  static :
    hint("Declaration of " & "ma_noise_uninit" &
        " already exists, not redeclaring")
when not declared(ma_noise_read_pcm_frames):
  proc ma_noise_read_pcm_frames*(pNoise: ptr ma_noise_553649332;
                                 pFramesOut: pointer; frameCount: ma_uint64_553648625;
                                 pFramesRead: ptr ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_noise_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_noise_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_noise_set_amplitude):
  proc ma_noise_set_amplitude*(pNoise: ptr ma_noise_553649332;
                               amplitude: cdouble): ma_result_553648677 {.cdecl,
      importc: "ma_noise_set_amplitude".}
else:
  static :
    hint("Declaration of " & "ma_noise_set_amplitude" &
        " already exists, not redeclaring")
when not declared(ma_noise_set_seed):
  proc ma_noise_set_seed*(pNoise: ptr ma_noise_553649332; seed: ma_int32_553648619): ma_result_553648677 {.
      cdecl, importc: "ma_noise_set_seed".}
else:
  static :
    hint("Declaration of " & "ma_noise_set_seed" &
        " already exists, not redeclaring")
when not declared(ma_noise_set_type):
  proc ma_noise_set_type*(pNoise: ptr ma_noise_553649332;
                          type_arg: ma_noise_type_553649324): ma_result_553648677 {.
      cdecl, importc: "ma_noise_set_type".}
else:
  static :
    hint("Declaration of " & "ma_noise_set_type" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_pipeline_notifications_init):
  proc ma_resource_manager_pipeline_notifications_init*(): ma_resource_manager_pipeline_notifications_553649364 {.
      cdecl, importc: "ma_resource_manager_pipeline_notifications_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_pipeline_notifications_init" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_config_init):
  proc ma_resource_manager_data_source_config_init*(): ma_resource_manager_data_source_config_553649372 {.
      cdecl, importc: "ma_resource_manager_data_source_config_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_config_init" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_config_init):
  proc ma_resource_manager_config_init*(): ma_resource_manager_config_553649384 {.
      cdecl, importc: "ma_resource_manager_config_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_config_init" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_init):
  proc ma_resource_manager_init*(pConfig: ptr ma_resource_manager_config_553649384;
                                 pResourceManager: ptr ma_resource_manager_553649334): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_init" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_uninit):
  proc ma_resource_manager_uninit*(pResourceManager: ptr ma_resource_manager_553649334): void {.
      cdecl, importc: "ma_resource_manager_uninit".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_uninit" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_get_log):
  proc ma_resource_manager_get_log*(pResourceManager: ptr ma_resource_manager_553649334): ptr ma_log_553648772 {.
      cdecl, importc: "ma_resource_manager_get_log".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_get_log" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_register_file):
  proc ma_resource_manager_register_file*(
      pResourceManager: ptr ma_resource_manager_553649334; pFilePath: cstring;
      flags: ma_uint32_553648621): ma_result_553648677 {.cdecl,
      importc: "ma_resource_manager_register_file".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_register_file" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_register_file_w):
  proc ma_resource_manager_register_file_w*(
      pResourceManager: ptr ma_resource_manager_553649334;
      pFilePath: ptr wchar_t_553649106; flags: ma_uint32_553648621): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_register_file_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_register_file_w" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_register_decoded_data):
  proc ma_resource_manager_register_decoded_data*(
      pResourceManager: ptr ma_resource_manager_553649334; pName: cstring;
      pData: pointer; frameCount: ma_uint64_553648625; format: ma_format_553648700;
      channels: ma_uint32_553648621; sampleRate: ma_uint32_553648621): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_register_decoded_data".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_register_decoded_data" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_register_decoded_data_w):
  proc ma_resource_manager_register_decoded_data_w*(
      pResourceManager: ptr ma_resource_manager_553649334; pName: ptr wchar_t_553649106;
      pData: pointer; frameCount: ma_uint64_553648625; format: ma_format_553648700;
      channels: ma_uint32_553648621; sampleRate: ma_uint32_553648621): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_register_decoded_data_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_register_decoded_data_w" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_register_encoded_data):
  proc ma_resource_manager_register_encoded_data*(
      pResourceManager: ptr ma_resource_manager_553649334; pName: cstring;
      pData: pointer; sizeInBytes: csize_t): ma_result_553648677 {.cdecl,
      importc: "ma_resource_manager_register_encoded_data".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_register_encoded_data" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_register_encoded_data_w):
  proc ma_resource_manager_register_encoded_data_w*(
      pResourceManager: ptr ma_resource_manager_553649334; pName: ptr wchar_t_553649106;
      pData: pointer; sizeInBytes: csize_t): ma_result_553648677 {.cdecl,
      importc: "ma_resource_manager_register_encoded_data_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_register_encoded_data_w" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_unregister_file):
  proc ma_resource_manager_unregister_file*(
      pResourceManager: ptr ma_resource_manager_553649334; pFilePath: cstring): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_unregister_file".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_unregister_file" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_unregister_file_w):
  proc ma_resource_manager_unregister_file_w*(
      pResourceManager: ptr ma_resource_manager_553649334;
      pFilePath: ptr wchar_t_553649106): ma_result_553648677 {.cdecl,
      importc: "ma_resource_manager_unregister_file_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_unregister_file_w" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_unregister_data):
  proc ma_resource_manager_unregister_data*(
      pResourceManager: ptr ma_resource_manager_553649334; pName: cstring): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_unregister_data".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_unregister_data" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_unregister_data_w):
  proc ma_resource_manager_unregister_data_w*(
      pResourceManager: ptr ma_resource_manager_553649334; pName: ptr wchar_t_553649106): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_unregister_data_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_unregister_data_w" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_init_ex):
  proc ma_resource_manager_data_buffer_init_ex*(
      pResourceManager: ptr ma_resource_manager_553649334;
      pConfig: ptr ma_resource_manager_data_source_config_553649372;
      pDataBuffer: ptr ma_resource_manager_data_buffer_553649342): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_data_buffer_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_init_ex" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_init):
  proc ma_resource_manager_data_buffer_init*(
      pResourceManager: ptr ma_resource_manager_553649334; pFilePath: cstring;
      flags: ma_uint32_553648621;
      pNotifications: ptr ma_resource_manager_pipeline_notifications_553649364;
      pDataBuffer: ptr ma_resource_manager_data_buffer_553649342): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_data_buffer_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_init" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_init_w):
  proc ma_resource_manager_data_buffer_init_w*(
      pResourceManager: ptr ma_resource_manager_553649334;
      pFilePath: ptr wchar_t_553649106; flags: ma_uint32_553648621;
      pNotifications: ptr ma_resource_manager_pipeline_notifications_553649364;
      pDataBuffer: ptr ma_resource_manager_data_buffer_553649342): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_data_buffer_init_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_init_w" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_init_copy):
  proc ma_resource_manager_data_buffer_init_copy*(
      pResourceManager: ptr ma_resource_manager_553649334;
      pExistingDataBuffer: ptr ma_resource_manager_data_buffer_553649342;
      pDataBuffer: ptr ma_resource_manager_data_buffer_553649342): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_data_buffer_init_copy".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_init_copy" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_uninit):
  proc ma_resource_manager_data_buffer_uninit*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_553649342): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_data_buffer_uninit".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_uninit" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_read_pcm_frames):
  proc ma_resource_manager_data_buffer_read_pcm_frames*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_553649342;
      pFramesOut: pointer; frameCount: ma_uint64_553648625;
      pFramesRead: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_resource_manager_data_buffer_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_seek_to_pcm_frame):
  proc ma_resource_manager_data_buffer_seek_to_pcm_frame*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_553649342;
      frameIndex: ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_resource_manager_data_buffer_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_get_data_format):
  proc ma_resource_manager_data_buffer_get_data_format*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_553649342;
      pFormat: ptr ma_format_553648700; pChannels: ptr ma_uint32_553648621;
      pSampleRate: ptr ma_uint32_553648621; pChannelMap: ptr ma_channel_553648669;
      channelMapCap: csize_t): ma_result_553648677 {.cdecl,
      importc: "ma_resource_manager_data_buffer_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_get_data_format" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_get_cursor_in_pcm_frames):
  proc ma_resource_manager_data_buffer_get_cursor_in_pcm_frames*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_553649342;
      pCursor: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_resource_manager_data_buffer_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_buffer_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_get_length_in_pcm_frames):
  proc ma_resource_manager_data_buffer_get_length_in_pcm_frames*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_553649342;
      pLength: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_resource_manager_data_buffer_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_buffer_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_result):
  proc ma_resource_manager_data_buffer_result*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_553649342): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_data_buffer_result".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_result" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_set_looping):
  proc ma_resource_manager_data_buffer_set_looping*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_553649342;
      isLooping: ma_bool32_553648631): ma_result_553648677 {.cdecl,
      importc: "ma_resource_manager_data_buffer_set_looping".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_set_looping" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_is_looping):
  proc ma_resource_manager_data_buffer_is_looping*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_553649342): ma_bool32_553648631 {.
      cdecl, importc: "ma_resource_manager_data_buffer_is_looping".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_is_looping" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_get_available_frames):
  proc ma_resource_manager_data_buffer_get_available_frames*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_553649342;
      pAvailableFrames: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_resource_manager_data_buffer_get_available_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_buffer_get_available_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_init_ex):
  proc ma_resource_manager_data_stream_init_ex*(
      pResourceManager: ptr ma_resource_manager_553649334;
      pConfig: ptr ma_resource_manager_data_source_config_553649372;
      pDataStream: ptr ma_resource_manager_data_stream_553649346): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_data_stream_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_init_ex" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_init):
  proc ma_resource_manager_data_stream_init*(
      pResourceManager: ptr ma_resource_manager_553649334; pFilePath: cstring;
      flags: ma_uint32_553648621;
      pNotifications: ptr ma_resource_manager_pipeline_notifications_553649364;
      pDataStream: ptr ma_resource_manager_data_stream_553649346): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_data_stream_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_init" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_init_w):
  proc ma_resource_manager_data_stream_init_w*(
      pResourceManager: ptr ma_resource_manager_553649334;
      pFilePath: ptr wchar_t_553649106; flags: ma_uint32_553648621;
      pNotifications: ptr ma_resource_manager_pipeline_notifications_553649364;
      pDataStream: ptr ma_resource_manager_data_stream_553649346): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_data_stream_init_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_init_w" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_uninit):
  proc ma_resource_manager_data_stream_uninit*(
      pDataStream: ptr ma_resource_manager_data_stream_553649346): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_data_stream_uninit".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_uninit" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_read_pcm_frames):
  proc ma_resource_manager_data_stream_read_pcm_frames*(
      pDataStream: ptr ma_resource_manager_data_stream_553649346;
      pFramesOut: pointer; frameCount: ma_uint64_553648625;
      pFramesRead: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_resource_manager_data_stream_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_seek_to_pcm_frame):
  proc ma_resource_manager_data_stream_seek_to_pcm_frame*(
      pDataStream: ptr ma_resource_manager_data_stream_553649346;
      frameIndex: ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_resource_manager_data_stream_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_get_data_format):
  proc ma_resource_manager_data_stream_get_data_format*(
      pDataStream: ptr ma_resource_manager_data_stream_553649346;
      pFormat: ptr ma_format_553648700; pChannels: ptr ma_uint32_553648621;
      pSampleRate: ptr ma_uint32_553648621; pChannelMap: ptr ma_channel_553648669;
      channelMapCap: csize_t): ma_result_553648677 {.cdecl,
      importc: "ma_resource_manager_data_stream_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_get_data_format" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_get_cursor_in_pcm_frames):
  proc ma_resource_manager_data_stream_get_cursor_in_pcm_frames*(
      pDataStream: ptr ma_resource_manager_data_stream_553649346;
      pCursor: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_resource_manager_data_stream_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_stream_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_get_length_in_pcm_frames):
  proc ma_resource_manager_data_stream_get_length_in_pcm_frames*(
      pDataStream: ptr ma_resource_manager_data_stream_553649346;
      pLength: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_resource_manager_data_stream_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_stream_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_result):
  proc ma_resource_manager_data_stream_result*(
      pDataStream: ptr ma_resource_manager_data_stream_553649346): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_data_stream_result".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_result" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_set_looping):
  proc ma_resource_manager_data_stream_set_looping*(
      pDataStream: ptr ma_resource_manager_data_stream_553649346;
      isLooping: ma_bool32_553648631): ma_result_553648677 {.cdecl,
      importc: "ma_resource_manager_data_stream_set_looping".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_set_looping" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_is_looping):
  proc ma_resource_manager_data_stream_is_looping*(
      pDataStream: ptr ma_resource_manager_data_stream_553649346): ma_bool32_553648631 {.
      cdecl, importc: "ma_resource_manager_data_stream_is_looping".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_is_looping" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_get_available_frames):
  proc ma_resource_manager_data_stream_get_available_frames*(
      pDataStream: ptr ma_resource_manager_data_stream_553649346;
      pAvailableFrames: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_resource_manager_data_stream_get_available_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_stream_get_available_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_init_ex):
  proc ma_resource_manager_data_source_init_ex*(
      pResourceManager: ptr ma_resource_manager_553649334;
      pConfig: ptr ma_resource_manager_data_source_config_553649372;
      pDataSource: ptr ma_resource_manager_data_source_553649350): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_data_source_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_init_ex" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_init):
  proc ma_resource_manager_data_source_init*(
      pResourceManager: ptr ma_resource_manager_553649334; pName: cstring;
      flags: ma_uint32_553648621;
      pNotifications: ptr ma_resource_manager_pipeline_notifications_553649364;
      pDataSource: ptr ma_resource_manager_data_source_553649350): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_data_source_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_init" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_init_w):
  proc ma_resource_manager_data_source_init_w*(
      pResourceManager: ptr ma_resource_manager_553649334; pName: ptr wchar_t_553649106;
      flags: ma_uint32_553648621;
      pNotifications: ptr ma_resource_manager_pipeline_notifications_553649364;
      pDataSource: ptr ma_resource_manager_data_source_553649350): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_data_source_init_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_init_w" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_init_copy):
  proc ma_resource_manager_data_source_init_copy*(
      pResourceManager: ptr ma_resource_manager_553649334;
      pExistingDataSource: ptr ma_resource_manager_data_source_553649350;
      pDataSource: ptr ma_resource_manager_data_source_553649350): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_data_source_init_copy".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_init_copy" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_uninit):
  proc ma_resource_manager_data_source_uninit*(
      pDataSource: ptr ma_resource_manager_data_source_553649350): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_data_source_uninit".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_uninit" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_read_pcm_frames):
  proc ma_resource_manager_data_source_read_pcm_frames*(
      pDataSource: ptr ma_resource_manager_data_source_553649350;
      pFramesOut: pointer; frameCount: ma_uint64_553648625;
      pFramesRead: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_resource_manager_data_source_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_seek_to_pcm_frame):
  proc ma_resource_manager_data_source_seek_to_pcm_frame*(
      pDataSource: ptr ma_resource_manager_data_source_553649350;
      frameIndex: ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_resource_manager_data_source_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_get_data_format):
  proc ma_resource_manager_data_source_get_data_format*(
      pDataSource: ptr ma_resource_manager_data_source_553649350;
      pFormat: ptr ma_format_553648700; pChannels: ptr ma_uint32_553648621;
      pSampleRate: ptr ma_uint32_553648621; pChannelMap: ptr ma_channel_553648669;
      channelMapCap: csize_t): ma_result_553648677 {.cdecl,
      importc: "ma_resource_manager_data_source_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_get_data_format" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_get_cursor_in_pcm_frames):
  proc ma_resource_manager_data_source_get_cursor_in_pcm_frames*(
      pDataSource: ptr ma_resource_manager_data_source_553649350;
      pCursor: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_resource_manager_data_source_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_source_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_get_length_in_pcm_frames):
  proc ma_resource_manager_data_source_get_length_in_pcm_frames*(
      pDataSource: ptr ma_resource_manager_data_source_553649350;
      pLength: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_resource_manager_data_source_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_source_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_result):
  proc ma_resource_manager_data_source_result*(
      pDataSource: ptr ma_resource_manager_data_source_553649350): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_data_source_result".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_result" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_set_looping):
  proc ma_resource_manager_data_source_set_looping*(
      pDataSource: ptr ma_resource_manager_data_source_553649350;
      isLooping: ma_bool32_553648631): ma_result_553648677 {.cdecl,
      importc: "ma_resource_manager_data_source_set_looping".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_set_looping" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_is_looping):
  proc ma_resource_manager_data_source_is_looping*(
      pDataSource: ptr ma_resource_manager_data_source_553649350): ma_bool32_553648631 {.
      cdecl, importc: "ma_resource_manager_data_source_is_looping".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_is_looping" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_get_available_frames):
  proc ma_resource_manager_data_source_get_available_frames*(
      pDataSource: ptr ma_resource_manager_data_source_553649350;
      pAvailableFrames: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_resource_manager_data_source_get_available_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_source_get_available_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_post_job):
  proc ma_resource_manager_post_job*(pResourceManager: ptr ma_resource_manager_553649334;
                                     pJob: ptr ma_job_553648605): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_post_job".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_post_job" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_post_job_quit):
  proc ma_resource_manager_post_job_quit*(
      pResourceManager: ptr ma_resource_manager_553649334): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_post_job_quit".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_post_job_quit" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_next_job):
  proc ma_resource_manager_next_job*(pResourceManager: ptr ma_resource_manager_553649334;
                                     pJob: ptr ma_job_553648605): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_next_job".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_next_job" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_process_job):
  proc ma_resource_manager_process_job*(pResourceManager: ptr ma_resource_manager_553649334;
                                        pJob: ptr ma_job_553648605): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_process_job".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_process_job" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_process_next_job):
  proc ma_resource_manager_process_next_job*(
      pResourceManager: ptr ma_resource_manager_553649334): ma_result_553648677 {.
      cdecl, importc: "ma_resource_manager_process_next_job".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_process_next_job" &
        " already exists, not redeclaring")
when not declared(ma_node_config_init):
  proc ma_node_config_init*(): ma_node_config_553649410 {.cdecl,
      importc: "ma_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_node_get_heap_size):
  proc ma_node_get_heap_size*(pNodeGraph: ptr ma_node_graph_553649390;
                              pConfig: ptr ma_node_config_553649410;
                              pHeapSizeInBytes: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_node_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_node_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_node_init_preallocated):
  proc ma_node_init_preallocated*(pNodeGraph: ptr ma_node_graph_553649390;
                                  pConfig: ptr ma_node_config_553649410;
                                  pHeap: pointer; pNode: pointer): ma_result_553648677 {.
      cdecl, importc: "ma_node_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_node_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_node_init):
  proc ma_node_init*(pNodeGraph: ptr ma_node_graph_553649390;
                     pConfig: ptr ma_node_config_553649410;
                     pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                     pNode: pointer): ma_result_553648677 {.cdecl,
      importc: "ma_node_init".}
else:
  static :
    hint("Declaration of " & "ma_node_init" & " already exists, not redeclaring")
when not declared(ma_node_uninit):
  proc ma_node_uninit*(pNode: pointer;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_node_get_node_graph):
  proc ma_node_get_node_graph*(pNode: pointer): ptr ma_node_graph_553649390 {.
      cdecl, importc: "ma_node_get_node_graph".}
else:
  static :
    hint("Declaration of " & "ma_node_get_node_graph" &
        " already exists, not redeclaring")
when not declared(ma_node_get_input_bus_count):
  proc ma_node_get_input_bus_count*(pNode: pointer): ma_uint32_553648621 {.
      cdecl, importc: "ma_node_get_input_bus_count".}
else:
  static :
    hint("Declaration of " & "ma_node_get_input_bus_count" &
        " already exists, not redeclaring")
when not declared(ma_node_get_output_bus_count):
  proc ma_node_get_output_bus_count*(pNode: pointer): ma_uint32_553648621 {.
      cdecl, importc: "ma_node_get_output_bus_count".}
else:
  static :
    hint("Declaration of " & "ma_node_get_output_bus_count" &
        " already exists, not redeclaring")
when not declared(ma_node_get_input_channels):
  proc ma_node_get_input_channels*(pNode: pointer; inputBusIndex: ma_uint32_553648621): ma_uint32_553648621 {.
      cdecl, importc: "ma_node_get_input_channels".}
else:
  static :
    hint("Declaration of " & "ma_node_get_input_channels" &
        " already exists, not redeclaring")
when not declared(ma_node_get_output_channels):
  proc ma_node_get_output_channels*(pNode: pointer; outputBusIndex: ma_uint32_553648621): ma_uint32_553648621 {.
      cdecl, importc: "ma_node_get_output_channels".}
else:
  static :
    hint("Declaration of " & "ma_node_get_output_channels" &
        " already exists, not redeclaring")
when not declared(ma_node_attach_output_bus):
  proc ma_node_attach_output_bus*(pNode: pointer; outputBusIndex: ma_uint32_553648621;
                                  pOtherNode: pointer;
                                  otherNodeInputBusIndex: ma_uint32_553648621): ma_result_553648677 {.
      cdecl, importc: "ma_node_attach_output_bus".}
else:
  static :
    hint("Declaration of " & "ma_node_attach_output_bus" &
        " already exists, not redeclaring")
when not declared(ma_node_detach_output_bus):
  proc ma_node_detach_output_bus*(pNode: pointer; outputBusIndex: ma_uint32_553648621): ma_result_553648677 {.
      cdecl, importc: "ma_node_detach_output_bus".}
else:
  static :
    hint("Declaration of " & "ma_node_detach_output_bus" &
        " already exists, not redeclaring")
when not declared(ma_node_detach_all_output_buses):
  proc ma_node_detach_all_output_buses*(pNode: pointer): ma_result_553648677 {.
      cdecl, importc: "ma_node_detach_all_output_buses".}
else:
  static :
    hint("Declaration of " & "ma_node_detach_all_output_buses" &
        " already exists, not redeclaring")
when not declared(ma_node_set_output_bus_volume):
  proc ma_node_set_output_bus_volume*(pNode: pointer; outputBusIndex: ma_uint32_553648621;
                                      volume: cfloat): ma_result_553648677 {.
      cdecl, importc: "ma_node_set_output_bus_volume".}
else:
  static :
    hint("Declaration of " & "ma_node_set_output_bus_volume" &
        " already exists, not redeclaring")
when not declared(ma_node_get_output_bus_volume):
  proc ma_node_get_output_bus_volume*(pNode: pointer; outputBusIndex: ma_uint32_553648621): cfloat {.
      cdecl, importc: "ma_node_get_output_bus_volume".}
else:
  static :
    hint("Declaration of " & "ma_node_get_output_bus_volume" &
        " already exists, not redeclaring")
when not declared(ma_node_set_state):
  proc ma_node_set_state*(pNode: pointer; state: ma_node_state_553649402): ma_result_553648677 {.
      cdecl, importc: "ma_node_set_state".}
else:
  static :
    hint("Declaration of " & "ma_node_set_state" &
        " already exists, not redeclaring")
when not declared(ma_node_get_state):
  proc ma_node_get_state*(pNode: pointer): ma_node_state_553649402 {.cdecl,
      importc: "ma_node_get_state".}
else:
  static :
    hint("Declaration of " & "ma_node_get_state" &
        " already exists, not redeclaring")
when not declared(ma_node_set_state_time):
  proc ma_node_set_state_time*(pNode: pointer; state: ma_node_state_553649402;
                               globalTime: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_node_set_state_time".}
else:
  static :
    hint("Declaration of " & "ma_node_set_state_time" &
        " already exists, not redeclaring")
when not declared(ma_node_get_state_time):
  proc ma_node_get_state_time*(pNode: pointer; state: ma_node_state_553649402): ma_uint64_553648625 {.
      cdecl, importc: "ma_node_get_state_time".}
else:
  static :
    hint("Declaration of " & "ma_node_get_state_time" &
        " already exists, not redeclaring")
when not declared(ma_node_get_state_by_time):
  proc ma_node_get_state_by_time*(pNode: pointer; globalTime: ma_uint64_553648625): ma_node_state_553649402 {.
      cdecl, importc: "ma_node_get_state_by_time".}
else:
  static :
    hint("Declaration of " & "ma_node_get_state_by_time" &
        " already exists, not redeclaring")
when not declared(ma_node_get_state_by_time_range):
  proc ma_node_get_state_by_time_range*(pNode: pointer;
                                        globalTimeBeg: ma_uint64_553648625;
                                        globalTimeEnd: ma_uint64_553648625): ma_node_state_553649402 {.
      cdecl, importc: "ma_node_get_state_by_time_range".}
else:
  static :
    hint("Declaration of " & "ma_node_get_state_by_time_range" &
        " already exists, not redeclaring")
when not declared(ma_node_get_time):
  proc ma_node_get_time*(pNode: pointer): ma_uint64_553648625 {.cdecl,
      importc: "ma_node_get_time".}
else:
  static :
    hint("Declaration of " & "ma_node_get_time" &
        " already exists, not redeclaring")
when not declared(ma_node_set_time):
  proc ma_node_set_time*(pNode: pointer; localTime: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_node_set_time".}
else:
  static :
    hint("Declaration of " & "ma_node_set_time" &
        " already exists, not redeclaring")
when not declared(ma_node_graph_config_init):
  proc ma_node_graph_config_init*(channels: ma_uint32_553648621): ma_node_graph_config_553649426 {.
      cdecl, importc: "ma_node_graph_config_init".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_config_init" &
        " already exists, not redeclaring")
when not declared(ma_node_graph_init):
  proc ma_node_graph_init*(pConfig: ptr ma_node_graph_config_553649426;
                           pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                           pNodeGraph: ptr ma_node_graph_553649390): ma_result_553648677 {.
      cdecl, importc: "ma_node_graph_init".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_init" &
        " already exists, not redeclaring")
when not declared(ma_node_graph_uninit):
  proc ma_node_graph_uninit*(pNodeGraph: ptr ma_node_graph_553649390;
                             pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_node_graph_uninit".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_uninit" &
        " already exists, not redeclaring")
when not declared(ma_node_graph_get_endpoint):
  proc ma_node_graph_get_endpoint*(pNodeGraph: ptr ma_node_graph_553649390): pointer {.
      cdecl, importc: "ma_node_graph_get_endpoint".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_get_endpoint" &
        " already exists, not redeclaring")
when not declared(ma_node_graph_read_pcm_frames):
  proc ma_node_graph_read_pcm_frames*(pNodeGraph: ptr ma_node_graph_553649390;
                                      pFramesOut: pointer;
                                      frameCount: ma_uint64_553648625;
                                      pFramesRead: ptr ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_node_graph_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_node_graph_get_channels):
  proc ma_node_graph_get_channels*(pNodeGraph: ptr ma_node_graph_553649390): ma_uint32_553648621 {.
      cdecl, importc: "ma_node_graph_get_channels".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_get_channels" &
        " already exists, not redeclaring")
when not declared(ma_node_graph_get_time):
  proc ma_node_graph_get_time*(pNodeGraph: ptr ma_node_graph_553649390): ma_uint64_553648625 {.
      cdecl, importc: "ma_node_graph_get_time".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_get_time" &
        " already exists, not redeclaring")
when not declared(ma_node_graph_set_time):
  proc ma_node_graph_set_time*(pNodeGraph: ptr ma_node_graph_553649390;
                               globalTime: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_node_graph_set_time".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_set_time" &
        " already exists, not redeclaring")
when not declared(ma_data_source_node_config_init):
  proc ma_data_source_node_config_init*(pDataSource: pointer): ma_data_source_node_config_553649430 {.
      cdecl, importc: "ma_data_source_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_data_source_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_data_source_node_init):
  proc ma_data_source_node_init*(pNodeGraph: ptr ma_node_graph_553649390;
                                 pConfig: ptr ma_data_source_node_config_553649430;
      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                                 pDataSourceNode: ptr ma_data_source_node_553649434): ma_result_553648677 {.
      cdecl, importc: "ma_data_source_node_init".}
else:
  static :
    hint("Declaration of " & "ma_data_source_node_init" &
        " already exists, not redeclaring")
when not declared(ma_data_source_node_uninit):
  proc ma_data_source_node_uninit*(pDataSourceNode: ptr ma_data_source_node_553649434;
      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_data_source_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_data_source_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_data_source_node_set_looping):
  proc ma_data_source_node_set_looping*(pDataSourceNode: ptr ma_data_source_node_553649434;
                                        isLooping: ma_bool32_553648631): ma_result_553648677 {.
      cdecl, importc: "ma_data_source_node_set_looping".}
else:
  static :
    hint("Declaration of " & "ma_data_source_node_set_looping" &
        " already exists, not redeclaring")
when not declared(ma_data_source_node_is_looping):
  proc ma_data_source_node_is_looping*(pDataSourceNode: ptr ma_data_source_node_553649434): ma_bool32_553648631 {.
      cdecl, importc: "ma_data_source_node_is_looping".}
else:
  static :
    hint("Declaration of " & "ma_data_source_node_is_looping" &
        " already exists, not redeclaring")
when not declared(ma_splitter_node_config_init):
  proc ma_splitter_node_config_init*(channels: ma_uint32_553648621): ma_splitter_node_config_553649438 {.
      cdecl, importc: "ma_splitter_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_splitter_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_splitter_node_init):
  proc ma_splitter_node_init*(pNodeGraph: ptr ma_node_graph_553649390;
                              pConfig: ptr ma_splitter_node_config_553649438;
      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                              pSplitterNode: ptr ma_splitter_node_553649442): ma_result_553648677 {.
      cdecl, importc: "ma_splitter_node_init".}
else:
  static :
    hint("Declaration of " & "ma_splitter_node_init" &
        " already exists, not redeclaring")
when not declared(ma_splitter_node_uninit):
  proc ma_splitter_node_uninit*(pSplitterNode: ptr ma_splitter_node_553649442;
      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_splitter_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_splitter_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_biquad_node_config_init):
  proc ma_biquad_node_config_init*(channels: ma_uint32_553648621; b0: cfloat;
                                   b1: cfloat; b2: cfloat; a0: cfloat;
                                   a1: cfloat; a2: cfloat): ma_biquad_node_config_553649446 {.
      cdecl, importc: "ma_biquad_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_biquad_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_biquad_node_init):
  proc ma_biquad_node_init*(pNodeGraph: ptr ma_node_graph_553649390;
                            pConfig: ptr ma_biquad_node_config_553649446;
                            pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                            pNode: ptr ma_biquad_node_553649450): ma_result_553648677 {.
      cdecl, importc: "ma_biquad_node_init".}
else:
  static :
    hint("Declaration of " & "ma_biquad_node_init" &
        " already exists, not redeclaring")
when not declared(ma_biquad_node_reinit):
  proc ma_biquad_node_reinit*(pConfig: ptr ma_biquad_config_553648780;
                              pNode: ptr ma_biquad_node_553649450): ma_result_553648677 {.
      cdecl, importc: "ma_biquad_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_biquad_node_reinit" &
        " already exists, not redeclaring")
when not declared(ma_biquad_node_uninit):
  proc ma_biquad_node_uninit*(pNode: ptr ma_biquad_node_553649450;
                              pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_biquad_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_biquad_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_lpf_node_config_init):
  proc ma_lpf_node_config_init*(channels: ma_uint32_553648621;
                                sampleRate: ma_uint32_553648621;
                                cutoffFrequency: cdouble; order: ma_uint32_553648621): ma_lpf_node_config_553649454 {.
      cdecl, importc: "ma_lpf_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_lpf_node_init):
  proc ma_lpf_node_init*(pNodeGraph: ptr ma_node_graph_553649390;
                         pConfig: ptr ma_lpf_node_config_553649454;
                         pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                         pNode: ptr ma_lpf_node_553649458): ma_result_553648677 {.
      cdecl, importc: "ma_lpf_node_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf_node_init" &
        " already exists, not redeclaring")
when not declared(ma_lpf_node_reinit):
  proc ma_lpf_node_reinit*(pConfig: ptr ma_lpf_config_553648802;
                           pNode: ptr ma_lpf_node_553649458): ma_result_553648677 {.
      cdecl, importc: "ma_lpf_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_lpf_node_reinit" &
        " already exists, not redeclaring")
when not declared(ma_lpf_node_uninit):
  proc ma_lpf_node_uninit*(pNode: ptr ma_lpf_node_553649458;
                           pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_lpf_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_lpf_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_hpf_node_config_init):
  proc ma_hpf_node_config_init*(channels: ma_uint32_553648621;
                                sampleRate: ma_uint32_553648621;
                                cutoffFrequency: cdouble; order: ma_uint32_553648621): ma_hpf_node_config_553649462 {.
      cdecl, importc: "ma_hpf_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_hpf_node_init):
  proc ma_hpf_node_init*(pNodeGraph: ptr ma_node_graph_553649390;
                         pConfig: ptr ma_hpf_node_config_553649462;
                         pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                         pNode: ptr ma_hpf_node_553649466): ma_result_553648677 {.
      cdecl, importc: "ma_hpf_node_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf_node_init" &
        " already exists, not redeclaring")
when not declared(ma_hpf_node_reinit):
  proc ma_hpf_node_reinit*(pConfig: ptr ma_hpf_config_553648824;
                           pNode: ptr ma_hpf_node_553649466): ma_result_553648677 {.
      cdecl, importc: "ma_hpf_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_hpf_node_reinit" &
        " already exists, not redeclaring")
when not declared(ma_hpf_node_uninit):
  proc ma_hpf_node_uninit*(pNode: ptr ma_hpf_node_553649466;
                           pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_hpf_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_hpf_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_bpf_node_config_init):
  proc ma_bpf_node_config_init*(channels: ma_uint32_553648621;
                                sampleRate: ma_uint32_553648621;
                                cutoffFrequency: cdouble; order: ma_uint32_553648621): ma_bpf_node_config_553649470 {.
      cdecl, importc: "ma_bpf_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_bpf_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_bpf_node_init):
  proc ma_bpf_node_init*(pNodeGraph: ptr ma_node_graph_553649390;
                         pConfig: ptr ma_bpf_node_config_553649470;
                         pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                         pNode: ptr ma_bpf_node_553649474): ma_result_553648677 {.
      cdecl, importc: "ma_bpf_node_init".}
else:
  static :
    hint("Declaration of " & "ma_bpf_node_init" &
        " already exists, not redeclaring")
when not declared(ma_bpf_node_reinit):
  proc ma_bpf_node_reinit*(pConfig: ptr ma_bpf_config_553648840;
                           pNode: ptr ma_bpf_node_553649474): ma_result_553648677 {.
      cdecl, importc: "ma_bpf_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_bpf_node_reinit" &
        " already exists, not redeclaring")
when not declared(ma_bpf_node_uninit):
  proc ma_bpf_node_uninit*(pNode: ptr ma_bpf_node_553649474;
                           pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_bpf_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_bpf_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_notch_node_config_init):
  proc ma_notch_node_config_init*(channels: ma_uint32_553648621;
                                  sampleRate: ma_uint32_553648621; q: cdouble;
                                  frequency: cdouble): ma_notch_node_config_553649478 {.
      cdecl, importc: "ma_notch_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_notch_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_notch_node_init):
  proc ma_notch_node_init*(pNodeGraph: ptr ma_node_graph_553649390;
                           pConfig: ptr ma_notch_node_config_553649478;
                           pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                           pNode: ptr ma_notch_node_553649482): ma_result_553648677 {.
      cdecl, importc: "ma_notch_node_init".}
else:
  static :
    hint("Declaration of " & "ma_notch_node_init" &
        " already exists, not redeclaring")
when not declared(ma_notch_node_reinit):
  proc ma_notch_node_reinit*(pConfig: ptr ma_notch_config_553648850;
                             pNode: ptr ma_notch_node_553649482): ma_result_553648677 {.
      cdecl, importc: "ma_notch_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_notch_node_reinit" &
        " already exists, not redeclaring")
when not declared(ma_notch_node_uninit):
  proc ma_notch_node_uninit*(pNode: ptr ma_notch_node_553649482;
                             pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_notch_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_notch_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_peak_node_config_init):
  proc ma_peak_node_config_init*(channels: ma_uint32_553648621;
                                 sampleRate: ma_uint32_553648621;
                                 gainDB: cdouble; q: cdouble; frequency: cdouble): ma_peak_node_config_553649486 {.
      cdecl, importc: "ma_peak_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_peak_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_peak_node_init):
  proc ma_peak_node_init*(pNodeGraph: ptr ma_node_graph_553649390;
                          pConfig: ptr ma_peak_node_config_553649486;
                          pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                          pNode: ptr ma_peak_node_553649490): ma_result_553648677 {.
      cdecl, importc: "ma_peak_node_init".}
else:
  static :
    hint("Declaration of " & "ma_peak_node_init" &
        " already exists, not redeclaring")
when not declared(ma_peak_node_reinit):
  proc ma_peak_node_reinit*(pConfig: ptr ma_peak_config_553648860;
                            pNode: ptr ma_peak_node_553649490): ma_result_553648677 {.
      cdecl, importc: "ma_peak_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_peak_node_reinit" &
        " already exists, not redeclaring")
when not declared(ma_peak_node_uninit):
  proc ma_peak_node_uninit*(pNode: ptr ma_peak_node_553649490;
                            pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_peak_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_peak_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_loshelf_node_config_init):
  proc ma_loshelf_node_config_init*(channels: ma_uint32_553648621;
                                    sampleRate: ma_uint32_553648621;
                                    gainDB: cdouble; q: cdouble;
                                    frequency: cdouble): ma_loshelf_node_config_553649494 {.
      cdecl, importc: "ma_loshelf_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_loshelf_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_loshelf_node_init):
  proc ma_loshelf_node_init*(pNodeGraph: ptr ma_node_graph_553649390;
                             pConfig: ptr ma_loshelf_node_config_553649494;
                             pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                             pNode: ptr ma_loshelf_node_553649498): ma_result_553648677 {.
      cdecl, importc: "ma_loshelf_node_init".}
else:
  static :
    hint("Declaration of " & "ma_loshelf_node_init" &
        " already exists, not redeclaring")
when not declared(ma_loshelf_node_reinit):
  proc ma_loshelf_node_reinit*(pConfig: ptr ma_loshelf_config_553648870;
                               pNode: ptr ma_loshelf_node_553649498): ma_result_553648677 {.
      cdecl, importc: "ma_loshelf_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_loshelf_node_reinit" &
        " already exists, not redeclaring")
when not declared(ma_loshelf_node_uninit):
  proc ma_loshelf_node_uninit*(pNode: ptr ma_loshelf_node_553649498;
      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_loshelf_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_loshelf_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_hishelf_node_config_init):
  proc ma_hishelf_node_config_init*(channels: ma_uint32_553648621;
                                    sampleRate: ma_uint32_553648621;
                                    gainDB: cdouble; q: cdouble;
                                    frequency: cdouble): ma_hishelf_node_config_553649502 {.
      cdecl, importc: "ma_hishelf_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_hishelf_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_hishelf_node_init):
  proc ma_hishelf_node_init*(pNodeGraph: ptr ma_node_graph_553649390;
                             pConfig: ptr ma_hishelf_node_config_553649502;
                             pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                             pNode: ptr ma_hishelf_node_553649506): ma_result_553648677 {.
      cdecl, importc: "ma_hishelf_node_init".}
else:
  static :
    hint("Declaration of " & "ma_hishelf_node_init" &
        " already exists, not redeclaring")
when not declared(ma_hishelf_node_reinit):
  proc ma_hishelf_node_reinit*(pConfig: ptr ma_hishelf_config_553648880;
                               pNode: ptr ma_hishelf_node_553649506): ma_result_553648677 {.
      cdecl, importc: "ma_hishelf_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_hishelf_node_reinit" &
        " already exists, not redeclaring")
when not declared(ma_hishelf_node_uninit):
  proc ma_hishelf_node_uninit*(pNode: ptr ma_hishelf_node_553649506;
      pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_hishelf_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_hishelf_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_delay_node_config_init):
  proc ma_delay_node_config_init*(channels: ma_uint32_553648621;
                                  sampleRate: ma_uint32_553648621;
                                  delayInFrames: ma_uint32_553648621;
                                  decay: cfloat): ma_delay_node_config_553649510 {.
      cdecl, importc: "ma_delay_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_delay_node_init):
  proc ma_delay_node_init*(pNodeGraph: ptr ma_node_graph_553649390;
                           pConfig: ptr ma_delay_node_config_553649510;
                           pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                           pDelayNode: ptr ma_delay_node_553649514): ma_result_553648677 {.
      cdecl, importc: "ma_delay_node_init".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_init" &
        " already exists, not redeclaring")
when not declared(ma_delay_node_uninit):
  proc ma_delay_node_uninit*(pDelayNode: ptr ma_delay_node_553649514;
                             pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_delay_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_delay_node_set_wet):
  proc ma_delay_node_set_wet*(pDelayNode: ptr ma_delay_node_553649514;
                              value: cfloat): void {.cdecl,
      importc: "ma_delay_node_set_wet".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_set_wet" &
        " already exists, not redeclaring")
when not declared(ma_delay_node_get_wet):
  proc ma_delay_node_get_wet*(pDelayNode: ptr ma_delay_node_553649514): cfloat {.
      cdecl, importc: "ma_delay_node_get_wet".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_get_wet" &
        " already exists, not redeclaring")
when not declared(ma_delay_node_set_dry):
  proc ma_delay_node_set_dry*(pDelayNode: ptr ma_delay_node_553649514;
                              value: cfloat): void {.cdecl,
      importc: "ma_delay_node_set_dry".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_set_dry" &
        " already exists, not redeclaring")
when not declared(ma_delay_node_get_dry):
  proc ma_delay_node_get_dry*(pDelayNode: ptr ma_delay_node_553649514): cfloat {.
      cdecl, importc: "ma_delay_node_get_dry".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_get_dry" &
        " already exists, not redeclaring")
when not declared(ma_delay_node_set_decay):
  proc ma_delay_node_set_decay*(pDelayNode: ptr ma_delay_node_553649514;
                                value: cfloat): void {.cdecl,
      importc: "ma_delay_node_set_decay".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_set_decay" &
        " already exists, not redeclaring")
when not declared(ma_delay_node_get_decay):
  proc ma_delay_node_get_decay*(pDelayNode: ptr ma_delay_node_553649514): cfloat {.
      cdecl, importc: "ma_delay_node_get_decay".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_get_decay" &
        " already exists, not redeclaring")
when not declared(ma_engine_node_config_init):
  proc ma_engine_node_config_init*(pEngine: ptr ma_engine_553649516;
                                   type_arg: ma_engine_node_type_553649530;
                                   flags: ma_uint32_553648621): ma_engine_node_config_553649534 {.
      cdecl, importc: "ma_engine_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_engine_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_engine_node_get_heap_size):
  proc ma_engine_node_get_heap_size*(pConfig: ptr ma_engine_node_config_553649534;
                                     pHeapSizeInBytes: ptr csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_engine_node_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_engine_node_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_engine_node_init_preallocated):
  proc ma_engine_node_init_preallocated*(pConfig: ptr ma_engine_node_config_553649534;
      pHeap: pointer; pEngineNode: ptr ma_engine_node_553649538): ma_result_553648677 {.
      cdecl, importc: "ma_engine_node_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_engine_node_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_engine_node_init):
  proc ma_engine_node_init*(pConfig: ptr ma_engine_node_config_553649534;
                            pAllocationCallbacks: ptr ma_allocation_callbacks_553648720;
                            pEngineNode: ptr ma_engine_node_553649538): ma_result_553648677 {.
      cdecl, importc: "ma_engine_node_init".}
else:
  static :
    hint("Declaration of " & "ma_engine_node_init" &
        " already exists, not redeclaring")
when not declared(ma_engine_node_uninit):
  proc ma_engine_node_uninit*(pEngineNode: ptr ma_engine_node_553649538;
                              pAllocationCallbacks: ptr ma_allocation_callbacks_553648720): void {.
      cdecl, importc: "ma_engine_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_engine_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_sound_config_init):
  proc ma_sound_config_init*(): ma_sound_config_553649544 {.cdecl,
      importc: "ma_sound_config_init".}
else:
  static :
    hint("Declaration of " & "ma_sound_config_init" &
        " already exists, not redeclaring")
when not declared(ma_sound_config_init_2):
  proc ma_sound_config_init_2*(pEngine: ptr ma_engine_553649516): ma_sound_config_553649544 {.
      cdecl, importc: "ma_sound_config_init_2".}
else:
  static :
    hint("Declaration of " & "ma_sound_config_init_2" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_config_init):
  proc ma_sound_group_config_init*(): ma_sound_group_config_553649550 {.cdecl,
      importc: "ma_sound_group_config_init".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_config_init" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_config_init_2):
  proc ma_sound_group_config_init_2*(pEngine: ptr ma_engine_553649516): ma_sound_group_config_553649550 {.
      cdecl, importc: "ma_sound_group_config_init_2".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_config_init_2" &
        " already exists, not redeclaring")
when not declared(ma_engine_config_init):
  proc ma_engine_config_init*(): ma_engine_config_553649558 {.cdecl,
      importc: "ma_engine_config_init".}
else:
  static :
    hint("Declaration of " & "ma_engine_config_init" &
        " already exists, not redeclaring")
when not declared(ma_engine_init):
  proc ma_engine_init*(pConfig: ptr ma_engine_config_553649558;
                       pEngine: ptr ma_engine_553649516): ma_result_553648677 {.
      cdecl, importc: "ma_engine_init".}
else:
  static :
    hint("Declaration of " & "ma_engine_init" &
        " already exists, not redeclaring")
when not declared(ma_engine_uninit):
  proc ma_engine_uninit*(pEngine: ptr ma_engine_553649516): void {.cdecl,
      importc: "ma_engine_uninit".}
else:
  static :
    hint("Declaration of " & "ma_engine_uninit" &
        " already exists, not redeclaring")
when not declared(ma_engine_read_pcm_frames):
  proc ma_engine_read_pcm_frames*(pEngine: ptr ma_engine_553649516;
                                  pFramesOut: pointer; frameCount: ma_uint64_553648625;
                                  pFramesRead: ptr ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_engine_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_engine_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_node_graph):
  proc ma_engine_get_node_graph*(pEngine: ptr ma_engine_553649516): ptr ma_node_graph_553649390 {.
      cdecl, importc: "ma_engine_get_node_graph".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_node_graph" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_resource_manager):
  proc ma_engine_get_resource_manager*(pEngine: ptr ma_engine_553649516): ptr ma_resource_manager_553649334 {.
      cdecl, importc: "ma_engine_get_resource_manager".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_resource_manager" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_device):
  proc ma_engine_get_device*(pEngine: ptr ma_engine_553649516): ptr ma_device_553648665 {.
      cdecl, importc: "ma_engine_get_device".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_device" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_log):
  proc ma_engine_get_log*(pEngine: ptr ma_engine_553649516): ptr ma_log_553648772 {.
      cdecl, importc: "ma_engine_get_log".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_log" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_endpoint):
  proc ma_engine_get_endpoint*(pEngine: ptr ma_engine_553649516): pointer {.
      cdecl, importc: "ma_engine_get_endpoint".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_endpoint" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_time_in_pcm_frames):
  proc ma_engine_get_time_in_pcm_frames*(pEngine: ptr ma_engine_553649516): ma_uint64_553648625 {.
      cdecl, importc: "ma_engine_get_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_time_in_milliseconds):
  proc ma_engine_get_time_in_milliseconds*(pEngine: ptr ma_engine_553649516): ma_uint64_553648625 {.
      cdecl, importc: "ma_engine_get_time_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_time_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_engine_set_time_in_pcm_frames):
  proc ma_engine_set_time_in_pcm_frames*(pEngine: ptr ma_engine_553649516;
      globalTime: ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_engine_set_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_engine_set_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_engine_set_time_in_milliseconds):
  proc ma_engine_set_time_in_milliseconds*(pEngine: ptr ma_engine_553649516;
      globalTime: ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_engine_set_time_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_engine_set_time_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_time):
  proc ma_engine_get_time*(pEngine: ptr ma_engine_553649516): ma_uint64_553648625 {.
      cdecl, importc: "ma_engine_get_time".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_time" &
        " already exists, not redeclaring")
when not declared(ma_engine_set_time):
  proc ma_engine_set_time*(pEngine: ptr ma_engine_553649516;
                           globalTime: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_engine_set_time".}
else:
  static :
    hint("Declaration of " & "ma_engine_set_time" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_channels):
  proc ma_engine_get_channels*(pEngine: ptr ma_engine_553649516): ma_uint32_553648621 {.
      cdecl, importc: "ma_engine_get_channels".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_channels" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_sample_rate):
  proc ma_engine_get_sample_rate*(pEngine: ptr ma_engine_553649516): ma_uint32_553648621 {.
      cdecl, importc: "ma_engine_get_sample_rate".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_sample_rate" &
        " already exists, not redeclaring")
when not declared(ma_engine_start):
  proc ma_engine_start*(pEngine: ptr ma_engine_553649516): ma_result_553648677 {.
      cdecl, importc: "ma_engine_start".}
else:
  static :
    hint("Declaration of " & "ma_engine_start" &
        " already exists, not redeclaring")
when not declared(ma_engine_stop):
  proc ma_engine_stop*(pEngine: ptr ma_engine_553649516): ma_result_553648677 {.
      cdecl, importc: "ma_engine_stop".}
else:
  static :
    hint("Declaration of " & "ma_engine_stop" &
        " already exists, not redeclaring")
when not declared(ma_engine_set_volume):
  proc ma_engine_set_volume*(pEngine: ptr ma_engine_553649516; volume: cfloat): ma_result_553648677 {.
      cdecl, importc: "ma_engine_set_volume".}
else:
  static :
    hint("Declaration of " & "ma_engine_set_volume" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_volume):
  proc ma_engine_get_volume*(pEngine: ptr ma_engine_553649516): cfloat {.cdecl,
      importc: "ma_engine_get_volume".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_volume" &
        " already exists, not redeclaring")
when not declared(ma_engine_set_gain_db):
  proc ma_engine_set_gain_db*(pEngine: ptr ma_engine_553649516; gainDB: cfloat): ma_result_553648677 {.
      cdecl, importc: "ma_engine_set_gain_db".}
else:
  static :
    hint("Declaration of " & "ma_engine_set_gain_db" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_gain_db):
  proc ma_engine_get_gain_db*(pEngine: ptr ma_engine_553649516): cfloat {.cdecl,
      importc: "ma_engine_get_gain_db".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_gain_db" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_listener_count):
  proc ma_engine_get_listener_count*(pEngine: ptr ma_engine_553649516): ma_uint32_553648621 {.
      cdecl, importc: "ma_engine_get_listener_count".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_listener_count" &
        " already exists, not redeclaring")
when not declared(ma_engine_find_closest_listener):
  proc ma_engine_find_closest_listener*(pEngine: ptr ma_engine_553649516;
                                        absolutePosX: cfloat;
                                        absolutePosY: cfloat;
                                        absolutePosZ: cfloat): ma_uint32_553648621 {.
      cdecl, importc: "ma_engine_find_closest_listener".}
else:
  static :
    hint("Declaration of " & "ma_engine_find_closest_listener" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_set_position):
  proc ma_engine_listener_set_position*(pEngine: ptr ma_engine_553649516;
                                        listenerIndex: ma_uint32_553648621;
                                        x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_engine_listener_set_position".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_set_position" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_get_position):
  proc ma_engine_listener_get_position*(pEngine: ptr ma_engine_553649516;
                                        listenerIndex: ma_uint32_553648621): ma_vec3f_553648924 {.
      cdecl, importc: "ma_engine_listener_get_position".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_get_position" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_set_direction):
  proc ma_engine_listener_set_direction*(pEngine: ptr ma_engine_553649516;
      listenerIndex: ma_uint32_553648621; x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_engine_listener_set_direction".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_set_direction" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_get_direction):
  proc ma_engine_listener_get_direction*(pEngine: ptr ma_engine_553649516;
      listenerIndex: ma_uint32_553648621): ma_vec3f_553648924 {.cdecl,
      importc: "ma_engine_listener_get_direction".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_get_direction" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_set_velocity):
  proc ma_engine_listener_set_velocity*(pEngine: ptr ma_engine_553649516;
                                        listenerIndex: ma_uint32_553648621;
                                        x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_engine_listener_set_velocity".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_set_velocity" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_get_velocity):
  proc ma_engine_listener_get_velocity*(pEngine: ptr ma_engine_553649516;
                                        listenerIndex: ma_uint32_553648621): ma_vec3f_553648924 {.
      cdecl, importc: "ma_engine_listener_get_velocity".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_get_velocity" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_set_cone):
  proc ma_engine_listener_set_cone*(pEngine: ptr ma_engine_553649516;
                                    listenerIndex: ma_uint32_553648621;
                                    innerAngleInRadians: cfloat;
                                    outerAngleInRadians: cfloat;
                                    outerGain: cfloat): void {.cdecl,
      importc: "ma_engine_listener_set_cone".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_set_cone" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_get_cone):
  proc ma_engine_listener_get_cone*(pEngine: ptr ma_engine_553649516;
                                    listenerIndex: ma_uint32_553648621;
                                    pInnerAngleInRadians: ptr cfloat;
                                    pOuterAngleInRadians: ptr cfloat;
                                    pOuterGain: ptr cfloat): void {.cdecl,
      importc: "ma_engine_listener_get_cone".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_get_cone" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_set_world_up):
  proc ma_engine_listener_set_world_up*(pEngine: ptr ma_engine_553649516;
                                        listenerIndex: ma_uint32_553648621;
                                        x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_engine_listener_set_world_up".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_set_world_up" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_get_world_up):
  proc ma_engine_listener_get_world_up*(pEngine: ptr ma_engine_553649516;
                                        listenerIndex: ma_uint32_553648621): ma_vec3f_553648924 {.
      cdecl, importc: "ma_engine_listener_get_world_up".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_get_world_up" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_set_enabled):
  proc ma_engine_listener_set_enabled*(pEngine: ptr ma_engine_553649516;
                                       listenerIndex: ma_uint32_553648621;
                                       isEnabled: ma_bool32_553648631): void {.
      cdecl, importc: "ma_engine_listener_set_enabled".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_set_enabled" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_is_enabled):
  proc ma_engine_listener_is_enabled*(pEngine: ptr ma_engine_553649516;
                                      listenerIndex: ma_uint32_553648621): ma_bool32_553648631 {.
      cdecl, importc: "ma_engine_listener_is_enabled".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_is_enabled" &
        " already exists, not redeclaring")
when not declared(ma_engine_play_sound_ex):
  proc ma_engine_play_sound_ex*(pEngine: ptr ma_engine_553649516;
                                pFilePath: cstring; pNode: pointer;
                                nodeInputBusIndex: ma_uint32_553648621): ma_result_553648677 {.
      cdecl, importc: "ma_engine_play_sound_ex".}
else:
  static :
    hint("Declaration of " & "ma_engine_play_sound_ex" &
        " already exists, not redeclaring")
when not declared(ma_engine_play_sound):
  proc ma_engine_play_sound*(pEngine: ptr ma_engine_553649516;
                             pFilePath: cstring; pGroup: ptr ma_sound_group_553649552): ma_result_553648677 {.
      cdecl, importc: "ma_engine_play_sound".}
else:
  static :
    hint("Declaration of " & "ma_engine_play_sound" &
        " already exists, not redeclaring")
when not declared(ma_sound_init_from_file):
  proc ma_sound_init_from_file*(pEngine: ptr ma_engine_553649516;
                                pFilePath: cstring; flags: ma_uint32_553648621;
                                pGroup: ptr ma_sound_group_553649552;
                                pDoneFence: ptr ma_fence_553649070;
                                pSound: ptr ma_sound_553649520): ma_result_553648677 {.
      cdecl, importc: "ma_sound_init_from_file".}
else:
  static :
    hint("Declaration of " & "ma_sound_init_from_file" &
        " already exists, not redeclaring")
when not declared(ma_sound_init_from_file_w):
  proc ma_sound_init_from_file_w*(pEngine: ptr ma_engine_553649516;
                                  pFilePath: ptr wchar_t_553649106;
                                  flags: ma_uint32_553648621;
                                  pGroup: ptr ma_sound_group_553649552;
                                  pDoneFence: ptr ma_fence_553649070;
                                  pSound: ptr ma_sound_553649520): ma_result_553648677 {.
      cdecl, importc: "ma_sound_init_from_file_w".}
else:
  static :
    hint("Declaration of " & "ma_sound_init_from_file_w" &
        " already exists, not redeclaring")
when not declared(ma_sound_init_copy):
  proc ma_sound_init_copy*(pEngine: ptr ma_engine_553649516;
                           pExistingSound: ptr ma_sound_553649520;
                           flags: ma_uint32_553648621;
                           pGroup: ptr ma_sound_group_553649552;
                           pSound: ptr ma_sound_553649520): ma_result_553648677 {.
      cdecl, importc: "ma_sound_init_copy".}
else:
  static :
    hint("Declaration of " & "ma_sound_init_copy" &
        " already exists, not redeclaring")
when not declared(ma_sound_init_from_data_source):
  proc ma_sound_init_from_data_source*(pEngine: ptr ma_engine_553649516;
                                       pDataSource: pointer; flags: ma_uint32_553648621;
                                       pGroup: ptr ma_sound_group_553649552;
                                       pSound: ptr ma_sound_553649520): ma_result_553648677 {.
      cdecl, importc: "ma_sound_init_from_data_source".}
else:
  static :
    hint("Declaration of " & "ma_sound_init_from_data_source" &
        " already exists, not redeclaring")
when not declared(ma_sound_init_ex):
  proc ma_sound_init_ex*(pEngine: ptr ma_engine_553649516;
                         pConfig: ptr ma_sound_config_553649544;
                         pSound: ptr ma_sound_553649520): ma_result_553648677 {.
      cdecl, importc: "ma_sound_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_sound_init_ex" &
        " already exists, not redeclaring")
when not declared(ma_sound_uninit):
  proc ma_sound_uninit*(pSound: ptr ma_sound_553649520): void {.cdecl,
      importc: "ma_sound_uninit".}
else:
  static :
    hint("Declaration of " & "ma_sound_uninit" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_engine):
  proc ma_sound_get_engine*(pSound: ptr ma_sound_553649520): ptr ma_engine_553649516 {.
      cdecl, importc: "ma_sound_get_engine".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_engine" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_data_source):
  proc ma_sound_get_data_source*(pSound: ptr ma_sound_553649520): pointer {.
      cdecl, importc: "ma_sound_get_data_source".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_data_source" &
        " already exists, not redeclaring")
when not declared(ma_sound_start):
  proc ma_sound_start*(pSound: ptr ma_sound_553649520): ma_result_553648677 {.
      cdecl, importc: "ma_sound_start".}
else:
  static :
    hint("Declaration of " & "ma_sound_start" &
        " already exists, not redeclaring")
when not declared(ma_sound_stop):
  proc ma_sound_stop*(pSound: ptr ma_sound_553649520): ma_result_553648677 {.
      cdecl, importc: "ma_sound_stop".}
else:
  static :
    hint("Declaration of " & "ma_sound_stop" &
        " already exists, not redeclaring")
when not declared(ma_sound_stop_with_fade_in_pcm_frames):
  proc ma_sound_stop_with_fade_in_pcm_frames*(pSound: ptr ma_sound_553649520;
      fadeLengthInFrames: ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_sound_stop_with_fade_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_stop_with_fade_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_stop_with_fade_in_milliseconds):
  proc ma_sound_stop_with_fade_in_milliseconds*(pSound: ptr ma_sound_553649520;
      fadeLengthInFrames: ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_sound_stop_with_fade_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_stop_with_fade_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_volume):
  proc ma_sound_set_volume*(pSound: ptr ma_sound_553649520; volume: cfloat): void {.
      cdecl, importc: "ma_sound_set_volume".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_volume" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_volume):
  proc ma_sound_get_volume*(pSound: ptr ma_sound_553649520): cfloat {.cdecl,
      importc: "ma_sound_get_volume".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_volume" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_pan):
  proc ma_sound_set_pan*(pSound: ptr ma_sound_553649520; pan: cfloat): void {.
      cdecl, importc: "ma_sound_set_pan".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_pan" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_pan):
  proc ma_sound_get_pan*(pSound: ptr ma_sound_553649520): cfloat {.cdecl,
      importc: "ma_sound_get_pan".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_pan" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_pan_mode):
  proc ma_sound_set_pan_mode*(pSound: ptr ma_sound_553649520;
                              panMode: ma_pan_mode_553648904): void {.cdecl,
      importc: "ma_sound_set_pan_mode".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_pan_mode" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_pan_mode):
  proc ma_sound_get_pan_mode*(pSound: ptr ma_sound_553649520): ma_pan_mode_553648904 {.
      cdecl, importc: "ma_sound_get_pan_mode".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_pan_mode" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_pitch):
  proc ma_sound_set_pitch*(pSound: ptr ma_sound_553649520; pitch: cfloat): void {.
      cdecl, importc: "ma_sound_set_pitch".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_pitch" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_pitch):
  proc ma_sound_get_pitch*(pSound: ptr ma_sound_553649520): cfloat {.cdecl,
      importc: "ma_sound_get_pitch".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_pitch" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_spatialization_enabled):
  proc ma_sound_set_spatialization_enabled*(pSound: ptr ma_sound_553649520;
      enabled: ma_bool32_553648631): void {.cdecl,
      importc: "ma_sound_set_spatialization_enabled".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_spatialization_enabled" &
        " already exists, not redeclaring")
when not declared(ma_sound_is_spatialization_enabled):
  proc ma_sound_is_spatialization_enabled*(pSound: ptr ma_sound_553649520): ma_bool32_553648631 {.
      cdecl, importc: "ma_sound_is_spatialization_enabled".}
else:
  static :
    hint("Declaration of " & "ma_sound_is_spatialization_enabled" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_pinned_listener_index):
  proc ma_sound_set_pinned_listener_index*(pSound: ptr ma_sound_553649520;
      listenerIndex: ma_uint32_553648621): void {.cdecl,
      importc: "ma_sound_set_pinned_listener_index".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_pinned_listener_index" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_pinned_listener_index):
  proc ma_sound_get_pinned_listener_index*(pSound: ptr ma_sound_553649520): ma_uint32_553648621 {.
      cdecl, importc: "ma_sound_get_pinned_listener_index".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_pinned_listener_index" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_listener_index):
  proc ma_sound_get_listener_index*(pSound: ptr ma_sound_553649520): ma_uint32_553648621 {.
      cdecl, importc: "ma_sound_get_listener_index".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_listener_index" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_direction_to_listener):
  proc ma_sound_get_direction_to_listener*(pSound: ptr ma_sound_553649520): ma_vec3f_553648924 {.
      cdecl, importc: "ma_sound_get_direction_to_listener".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_direction_to_listener" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_position):
  proc ma_sound_set_position*(pSound: ptr ma_sound_553649520; x: cfloat;
                              y: cfloat; z: cfloat): void {.cdecl,
      importc: "ma_sound_set_position".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_position" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_position):
  proc ma_sound_get_position*(pSound: ptr ma_sound_553649520): ma_vec3f_553648924 {.
      cdecl, importc: "ma_sound_get_position".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_position" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_direction):
  proc ma_sound_set_direction*(pSound: ptr ma_sound_553649520; x: cfloat;
                               y: cfloat; z: cfloat): void {.cdecl,
      importc: "ma_sound_set_direction".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_direction" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_direction):
  proc ma_sound_get_direction*(pSound: ptr ma_sound_553649520): ma_vec3f_553648924 {.
      cdecl, importc: "ma_sound_get_direction".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_direction" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_velocity):
  proc ma_sound_set_velocity*(pSound: ptr ma_sound_553649520; x: cfloat;
                              y: cfloat; z: cfloat): void {.cdecl,
      importc: "ma_sound_set_velocity".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_velocity" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_velocity):
  proc ma_sound_get_velocity*(pSound: ptr ma_sound_553649520): ma_vec3f_553648924 {.
      cdecl, importc: "ma_sound_get_velocity".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_velocity" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_attenuation_model):
  proc ma_sound_set_attenuation_model*(pSound: ptr ma_sound_553649520;
                                       attenuationModel: ma_attenuation_model_553648932): void {.
      cdecl, importc: "ma_sound_set_attenuation_model".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_attenuation_model" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_attenuation_model):
  proc ma_sound_get_attenuation_model*(pSound: ptr ma_sound_553649520): ma_attenuation_model_553648932 {.
      cdecl, importc: "ma_sound_get_attenuation_model".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_attenuation_model" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_positioning):
  proc ma_sound_set_positioning*(pSound: ptr ma_sound_553649520;
                                 positioning: ma_positioning_553648936): void {.
      cdecl, importc: "ma_sound_set_positioning".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_positioning" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_positioning):
  proc ma_sound_get_positioning*(pSound: ptr ma_sound_553649520): ma_positioning_553648936 {.
      cdecl, importc: "ma_sound_get_positioning".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_positioning" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_rolloff):
  proc ma_sound_set_rolloff*(pSound: ptr ma_sound_553649520; rolloff: cfloat): void {.
      cdecl, importc: "ma_sound_set_rolloff".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_rolloff" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_rolloff):
  proc ma_sound_get_rolloff*(pSound: ptr ma_sound_553649520): cfloat {.cdecl,
      importc: "ma_sound_get_rolloff".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_rolloff" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_min_gain):
  proc ma_sound_set_min_gain*(pSound: ptr ma_sound_553649520; minGain: cfloat): void {.
      cdecl, importc: "ma_sound_set_min_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_min_gain" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_min_gain):
  proc ma_sound_get_min_gain*(pSound: ptr ma_sound_553649520): cfloat {.cdecl,
      importc: "ma_sound_get_min_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_min_gain" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_max_gain):
  proc ma_sound_set_max_gain*(pSound: ptr ma_sound_553649520; maxGain: cfloat): void {.
      cdecl, importc: "ma_sound_set_max_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_max_gain" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_max_gain):
  proc ma_sound_get_max_gain*(pSound: ptr ma_sound_553649520): cfloat {.cdecl,
      importc: "ma_sound_get_max_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_max_gain" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_min_distance):
  proc ma_sound_set_min_distance*(pSound: ptr ma_sound_553649520;
                                  minDistance: cfloat): void {.cdecl,
      importc: "ma_sound_set_min_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_min_distance" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_min_distance):
  proc ma_sound_get_min_distance*(pSound: ptr ma_sound_553649520): cfloat {.
      cdecl, importc: "ma_sound_get_min_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_min_distance" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_max_distance):
  proc ma_sound_set_max_distance*(pSound: ptr ma_sound_553649520;
                                  maxDistance: cfloat): void {.cdecl,
      importc: "ma_sound_set_max_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_max_distance" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_max_distance):
  proc ma_sound_get_max_distance*(pSound: ptr ma_sound_553649520): cfloat {.
      cdecl, importc: "ma_sound_get_max_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_max_distance" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_cone):
  proc ma_sound_set_cone*(pSound: ptr ma_sound_553649520;
                          innerAngleInRadians: cfloat;
                          outerAngleInRadians: cfloat; outerGain: cfloat): void {.
      cdecl, importc: "ma_sound_set_cone".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_cone" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_cone):
  proc ma_sound_get_cone*(pSound: ptr ma_sound_553649520;
                          pInnerAngleInRadians: ptr cfloat;
                          pOuterAngleInRadians: ptr cfloat;
                          pOuterGain: ptr cfloat): void {.cdecl,
      importc: "ma_sound_get_cone".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_cone" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_doppler_factor):
  proc ma_sound_set_doppler_factor*(pSound: ptr ma_sound_553649520;
                                    dopplerFactor: cfloat): void {.cdecl,
      importc: "ma_sound_set_doppler_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_doppler_factor" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_doppler_factor):
  proc ma_sound_get_doppler_factor*(pSound: ptr ma_sound_553649520): cfloat {.
      cdecl, importc: "ma_sound_get_doppler_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_doppler_factor" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_directional_attenuation_factor):
  proc ma_sound_set_directional_attenuation_factor*(pSound: ptr ma_sound_553649520;
      directionalAttenuationFactor: cfloat): void {.cdecl,
      importc: "ma_sound_set_directional_attenuation_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_directional_attenuation_factor" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_directional_attenuation_factor):
  proc ma_sound_get_directional_attenuation_factor*(pSound: ptr ma_sound_553649520): cfloat {.
      cdecl, importc: "ma_sound_get_directional_attenuation_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_directional_attenuation_factor" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_fade_in_pcm_frames):
  proc ma_sound_set_fade_in_pcm_frames*(pSound: ptr ma_sound_553649520;
                                        volumeBeg: cfloat; volumeEnd: cfloat;
                                        fadeLengthInFrames: ma_uint64_553648625): void {.
      cdecl, importc: "ma_sound_set_fade_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_fade_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_fade_in_milliseconds):
  proc ma_sound_set_fade_in_milliseconds*(pSound: ptr ma_sound_553649520;
      volumeBeg: cfloat; volumeEnd: cfloat; fadeLengthInMilliseconds: ma_uint64_553648625): void {.
      cdecl, importc: "ma_sound_set_fade_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_fade_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_fade_start_in_pcm_frames):
  proc ma_sound_set_fade_start_in_pcm_frames*(pSound: ptr ma_sound_553649520;
      volumeBeg: cfloat; volumeEnd: cfloat; fadeLengthInFrames: ma_uint64_553648625;
      absoluteGlobalTimeInFrames: ma_uint64_553648625): void {.cdecl,
      importc: "ma_sound_set_fade_start_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_fade_start_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_fade_start_in_milliseconds):
  proc ma_sound_set_fade_start_in_milliseconds*(pSound: ptr ma_sound_553649520;
      volumeBeg: cfloat; volumeEnd: cfloat; fadeLengthInMilliseconds: ma_uint64_553648625;
      absoluteGlobalTimeInMilliseconds: ma_uint64_553648625): void {.cdecl,
      importc: "ma_sound_set_fade_start_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_fade_start_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_current_fade_volume):
  proc ma_sound_get_current_fade_volume*(pSound: ptr ma_sound_553649520): cfloat {.
      cdecl, importc: "ma_sound_get_current_fade_volume".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_current_fade_volume" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_start_time_in_pcm_frames):
  proc ma_sound_set_start_time_in_pcm_frames*(pSound: ptr ma_sound_553649520;
      absoluteGlobalTimeInFrames: ma_uint64_553648625): void {.cdecl,
      importc: "ma_sound_set_start_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_start_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_start_time_in_milliseconds):
  proc ma_sound_set_start_time_in_milliseconds*(pSound: ptr ma_sound_553649520;
      absoluteGlobalTimeInMilliseconds: ma_uint64_553648625): void {.cdecl,
      importc: "ma_sound_set_start_time_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_start_time_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_stop_time_in_pcm_frames):
  proc ma_sound_set_stop_time_in_pcm_frames*(pSound: ptr ma_sound_553649520;
      absoluteGlobalTimeInFrames: ma_uint64_553648625): void {.cdecl,
      importc: "ma_sound_set_stop_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_stop_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_stop_time_in_milliseconds):
  proc ma_sound_set_stop_time_in_milliseconds*(pSound: ptr ma_sound_553649520;
      absoluteGlobalTimeInMilliseconds: ma_uint64_553648625): void {.cdecl,
      importc: "ma_sound_set_stop_time_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_stop_time_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_stop_time_with_fade_in_pcm_frames):
  proc ma_sound_set_stop_time_with_fade_in_pcm_frames*(pSound: ptr ma_sound_553649520;
      stopAbsoluteGlobalTimeInFrames: ma_uint64_553648625;
      fadeLengthInFrames: ma_uint64_553648625): void {.cdecl,
      importc: "ma_sound_set_stop_time_with_fade_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_stop_time_with_fade_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_stop_time_with_fade_in_milliseconds):
  proc ma_sound_set_stop_time_with_fade_in_milliseconds*(pSound: ptr ma_sound_553649520;
      stopAbsoluteGlobalTimeInMilliseconds: ma_uint64_553648625;
      fadeLengthInMilliseconds: ma_uint64_553648625): void {.cdecl,
      importc: "ma_sound_set_stop_time_with_fade_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_stop_time_with_fade_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_is_playing):
  proc ma_sound_is_playing*(pSound: ptr ma_sound_553649520): ma_bool32_553648631 {.
      cdecl, importc: "ma_sound_is_playing".}
else:
  static :
    hint("Declaration of " & "ma_sound_is_playing" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_time_in_pcm_frames):
  proc ma_sound_get_time_in_pcm_frames*(pSound: ptr ma_sound_553649520): ma_uint64_553648625 {.
      cdecl, importc: "ma_sound_get_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_time_in_milliseconds):
  proc ma_sound_get_time_in_milliseconds*(pSound: ptr ma_sound_553649520): ma_uint64_553648625 {.
      cdecl, importc: "ma_sound_get_time_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_time_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_looping):
  proc ma_sound_set_looping*(pSound: ptr ma_sound_553649520;
                             isLooping: ma_bool32_553648631): void {.cdecl,
      importc: "ma_sound_set_looping".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_looping" &
        " already exists, not redeclaring")
when not declared(ma_sound_is_looping):
  proc ma_sound_is_looping*(pSound: ptr ma_sound_553649520): ma_bool32_553648631 {.
      cdecl, importc: "ma_sound_is_looping".}
else:
  static :
    hint("Declaration of " & "ma_sound_is_looping" &
        " already exists, not redeclaring")
when not declared(ma_sound_at_end):
  proc ma_sound_at_end*(pSound: ptr ma_sound_553649520): ma_bool32_553648631 {.
      cdecl, importc: "ma_sound_at_end".}
else:
  static :
    hint("Declaration of " & "ma_sound_at_end" &
        " already exists, not redeclaring")
when not declared(ma_sound_seek_to_pcm_frame):
  proc ma_sound_seek_to_pcm_frame*(pSound: ptr ma_sound_553649520;
                                   frameIndex: ma_uint64_553648625): ma_result_553648677 {.
      cdecl, importc: "ma_sound_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_sound_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_sound_seek_to_second):
  proc ma_sound_seek_to_second*(pSound: ptr ma_sound_553649520;
                                seekPointInSeconds: cfloat): ma_result_553648677 {.
      cdecl, importc: "ma_sound_seek_to_second".}
else:
  static :
    hint("Declaration of " & "ma_sound_seek_to_second" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_data_format):
  proc ma_sound_get_data_format*(pSound: ptr ma_sound_553649520;
                                 pFormat: ptr ma_format_553648700;
                                 pChannels: ptr ma_uint32_553648621;
                                 pSampleRate: ptr ma_uint32_553648621;
                                 pChannelMap: ptr ma_channel_553648669;
                                 channelMapCap: csize_t): ma_result_553648677 {.
      cdecl, importc: "ma_sound_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_data_format" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_cursor_in_pcm_frames):
  proc ma_sound_get_cursor_in_pcm_frames*(pSound: ptr ma_sound_553649520;
      pCursor: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_sound_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_length_in_pcm_frames):
  proc ma_sound_get_length_in_pcm_frames*(pSound: ptr ma_sound_553649520;
      pLength: ptr ma_uint64_553648625): ma_result_553648677 {.cdecl,
      importc: "ma_sound_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_cursor_in_seconds):
  proc ma_sound_get_cursor_in_seconds*(pSound: ptr ma_sound_553649520;
                                       pCursor: ptr cfloat): ma_result_553648677 {.
      cdecl, importc: "ma_sound_get_cursor_in_seconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_cursor_in_seconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_length_in_seconds):
  proc ma_sound_get_length_in_seconds*(pSound: ptr ma_sound_553649520;
                                       pLength: ptr cfloat): ma_result_553648677 {.
      cdecl, importc: "ma_sound_get_length_in_seconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_length_in_seconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_end_callback):
  proc ma_sound_set_end_callback*(pSound: ptr ma_sound_553649520;
                                  callback: ma_sound_end_proc_553649540;
                                  pUserData: pointer): ma_result_553648677 {.
      cdecl, importc: "ma_sound_set_end_callback".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_end_callback" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_init):
  proc ma_sound_group_init*(pEngine: ptr ma_engine_553649516; flags: ma_uint32_553648621;
                            pParentGroup: ptr ma_sound_group_553649552;
                            pGroup: ptr ma_sound_group_553649552): ma_result_553648677 {.
      cdecl, importc: "ma_sound_group_init".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_init" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_init_ex):
  proc ma_sound_group_init_ex*(pEngine: ptr ma_engine_553649516;
                               pConfig: ptr ma_sound_group_config_553649550;
                               pGroup: ptr ma_sound_group_553649552): ma_result_553648677 {.
      cdecl, importc: "ma_sound_group_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_init_ex" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_uninit):
  proc ma_sound_group_uninit*(pGroup: ptr ma_sound_group_553649552): void {.
      cdecl, importc: "ma_sound_group_uninit".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_uninit" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_engine):
  proc ma_sound_group_get_engine*(pGroup: ptr ma_sound_group_553649552): ptr ma_engine_553649516 {.
      cdecl, importc: "ma_sound_group_get_engine".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_engine" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_start):
  proc ma_sound_group_start*(pGroup: ptr ma_sound_group_553649552): ma_result_553648677 {.
      cdecl, importc: "ma_sound_group_start".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_start" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_stop):
  proc ma_sound_group_stop*(pGroup: ptr ma_sound_group_553649552): ma_result_553648677 {.
      cdecl, importc: "ma_sound_group_stop".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_stop" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_volume):
  proc ma_sound_group_set_volume*(pGroup: ptr ma_sound_group_553649552;
                                  volume: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_volume".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_volume" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_volume):
  proc ma_sound_group_get_volume*(pGroup: ptr ma_sound_group_553649552): cfloat {.
      cdecl, importc: "ma_sound_group_get_volume".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_volume" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_pan):
  proc ma_sound_group_set_pan*(pGroup: ptr ma_sound_group_553649552; pan: cfloat): void {.
      cdecl, importc: "ma_sound_group_set_pan".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_pan" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_pan):
  proc ma_sound_group_get_pan*(pGroup: ptr ma_sound_group_553649552): cfloat {.
      cdecl, importc: "ma_sound_group_get_pan".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_pan" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_pan_mode):
  proc ma_sound_group_set_pan_mode*(pGroup: ptr ma_sound_group_553649552;
                                    panMode: ma_pan_mode_553648904): void {.
      cdecl, importc: "ma_sound_group_set_pan_mode".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_pan_mode" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_pan_mode):
  proc ma_sound_group_get_pan_mode*(pGroup: ptr ma_sound_group_553649552): ma_pan_mode_553648904 {.
      cdecl, importc: "ma_sound_group_get_pan_mode".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_pan_mode" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_pitch):
  proc ma_sound_group_set_pitch*(pGroup: ptr ma_sound_group_553649552;
                                 pitch: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_pitch".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_pitch" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_pitch):
  proc ma_sound_group_get_pitch*(pGroup: ptr ma_sound_group_553649552): cfloat {.
      cdecl, importc: "ma_sound_group_get_pitch".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_pitch" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_spatialization_enabled):
  proc ma_sound_group_set_spatialization_enabled*(pGroup: ptr ma_sound_group_553649552;
      enabled: ma_bool32_553648631): void {.cdecl,
      importc: "ma_sound_group_set_spatialization_enabled".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_spatialization_enabled" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_is_spatialization_enabled):
  proc ma_sound_group_is_spatialization_enabled*(pGroup: ptr ma_sound_group_553649552): ma_bool32_553648631 {.
      cdecl, importc: "ma_sound_group_is_spatialization_enabled".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_is_spatialization_enabled" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_pinned_listener_index):
  proc ma_sound_group_set_pinned_listener_index*(pGroup: ptr ma_sound_group_553649552;
      listenerIndex: ma_uint32_553648621): void {.cdecl,
      importc: "ma_sound_group_set_pinned_listener_index".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_pinned_listener_index" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_pinned_listener_index):
  proc ma_sound_group_get_pinned_listener_index*(pGroup: ptr ma_sound_group_553649552): ma_uint32_553648621 {.
      cdecl, importc: "ma_sound_group_get_pinned_listener_index".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_pinned_listener_index" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_listener_index):
  proc ma_sound_group_get_listener_index*(pGroup: ptr ma_sound_group_553649552): ma_uint32_553648621 {.
      cdecl, importc: "ma_sound_group_get_listener_index".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_listener_index" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_direction_to_listener):
  proc ma_sound_group_get_direction_to_listener*(pGroup: ptr ma_sound_group_553649552): ma_vec3f_553648924 {.
      cdecl, importc: "ma_sound_group_get_direction_to_listener".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_direction_to_listener" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_position):
  proc ma_sound_group_set_position*(pGroup: ptr ma_sound_group_553649552;
                                    x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_sound_group_set_position".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_position" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_position):
  proc ma_sound_group_get_position*(pGroup: ptr ma_sound_group_553649552): ma_vec3f_553648924 {.
      cdecl, importc: "ma_sound_group_get_position".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_position" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_direction):
  proc ma_sound_group_set_direction*(pGroup: ptr ma_sound_group_553649552;
                                     x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_sound_group_set_direction".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_direction" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_direction):
  proc ma_sound_group_get_direction*(pGroup: ptr ma_sound_group_553649552): ma_vec3f_553648924 {.
      cdecl, importc: "ma_sound_group_get_direction".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_direction" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_velocity):
  proc ma_sound_group_set_velocity*(pGroup: ptr ma_sound_group_553649552;
                                    x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_sound_group_set_velocity".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_velocity" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_velocity):
  proc ma_sound_group_get_velocity*(pGroup: ptr ma_sound_group_553649552): ma_vec3f_553648924 {.
      cdecl, importc: "ma_sound_group_get_velocity".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_velocity" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_attenuation_model):
  proc ma_sound_group_set_attenuation_model*(pGroup: ptr ma_sound_group_553649552;
      attenuationModel: ma_attenuation_model_553648932): void {.cdecl,
      importc: "ma_sound_group_set_attenuation_model".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_attenuation_model" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_attenuation_model):
  proc ma_sound_group_get_attenuation_model*(pGroup: ptr ma_sound_group_553649552): ma_attenuation_model_553648932 {.
      cdecl, importc: "ma_sound_group_get_attenuation_model".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_attenuation_model" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_positioning):
  proc ma_sound_group_set_positioning*(pGroup: ptr ma_sound_group_553649552;
                                       positioning: ma_positioning_553648936): void {.
      cdecl, importc: "ma_sound_group_set_positioning".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_positioning" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_positioning):
  proc ma_sound_group_get_positioning*(pGroup: ptr ma_sound_group_553649552): ma_positioning_553648936 {.
      cdecl, importc: "ma_sound_group_get_positioning".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_positioning" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_rolloff):
  proc ma_sound_group_set_rolloff*(pGroup: ptr ma_sound_group_553649552;
                                   rolloff: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_rolloff".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_rolloff" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_rolloff):
  proc ma_sound_group_get_rolloff*(pGroup: ptr ma_sound_group_553649552): cfloat {.
      cdecl, importc: "ma_sound_group_get_rolloff".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_rolloff" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_min_gain):
  proc ma_sound_group_set_min_gain*(pGroup: ptr ma_sound_group_553649552;
                                    minGain: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_min_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_min_gain" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_min_gain):
  proc ma_sound_group_get_min_gain*(pGroup: ptr ma_sound_group_553649552): cfloat {.
      cdecl, importc: "ma_sound_group_get_min_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_min_gain" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_max_gain):
  proc ma_sound_group_set_max_gain*(pGroup: ptr ma_sound_group_553649552;
                                    maxGain: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_max_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_max_gain" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_max_gain):
  proc ma_sound_group_get_max_gain*(pGroup: ptr ma_sound_group_553649552): cfloat {.
      cdecl, importc: "ma_sound_group_get_max_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_max_gain" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_min_distance):
  proc ma_sound_group_set_min_distance*(pGroup: ptr ma_sound_group_553649552;
                                        minDistance: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_min_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_min_distance" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_min_distance):
  proc ma_sound_group_get_min_distance*(pGroup: ptr ma_sound_group_553649552): cfloat {.
      cdecl, importc: "ma_sound_group_get_min_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_min_distance" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_max_distance):
  proc ma_sound_group_set_max_distance*(pGroup: ptr ma_sound_group_553649552;
                                        maxDistance: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_max_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_max_distance" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_max_distance):
  proc ma_sound_group_get_max_distance*(pGroup: ptr ma_sound_group_553649552): cfloat {.
      cdecl, importc: "ma_sound_group_get_max_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_max_distance" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_cone):
  proc ma_sound_group_set_cone*(pGroup: ptr ma_sound_group_553649552;
                                innerAngleInRadians: cfloat;
                                outerAngleInRadians: cfloat; outerGain: cfloat): void {.
      cdecl, importc: "ma_sound_group_set_cone".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_cone" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_cone):
  proc ma_sound_group_get_cone*(pGroup: ptr ma_sound_group_553649552;
                                pInnerAngleInRadians: ptr cfloat;
                                pOuterAngleInRadians: ptr cfloat;
                                pOuterGain: ptr cfloat): void {.cdecl,
      importc: "ma_sound_group_get_cone".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_cone" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_doppler_factor):
  proc ma_sound_group_set_doppler_factor*(pGroup: ptr ma_sound_group_553649552;
      dopplerFactor: cfloat): void {.cdecl, importc: "ma_sound_group_set_doppler_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_doppler_factor" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_doppler_factor):
  proc ma_sound_group_get_doppler_factor*(pGroup: ptr ma_sound_group_553649552): cfloat {.
      cdecl, importc: "ma_sound_group_get_doppler_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_doppler_factor" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_directional_attenuation_factor):
  proc ma_sound_group_set_directional_attenuation_factor*(
      pGroup: ptr ma_sound_group_553649552; directionalAttenuationFactor: cfloat): void {.
      cdecl, importc: "ma_sound_group_set_directional_attenuation_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_directional_attenuation_factor" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_directional_attenuation_factor):
  proc ma_sound_group_get_directional_attenuation_factor*(
      pGroup: ptr ma_sound_group_553649552): cfloat {.cdecl,
      importc: "ma_sound_group_get_directional_attenuation_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_directional_attenuation_factor" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_fade_in_pcm_frames):
  proc ma_sound_group_set_fade_in_pcm_frames*(pGroup: ptr ma_sound_group_553649552;
      volumeBeg: cfloat; volumeEnd: cfloat; fadeLengthInFrames: ma_uint64_553648625): void {.
      cdecl, importc: "ma_sound_group_set_fade_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_fade_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_fade_in_milliseconds):
  proc ma_sound_group_set_fade_in_milliseconds*(pGroup: ptr ma_sound_group_553649552;
      volumeBeg: cfloat; volumeEnd: cfloat; fadeLengthInMilliseconds: ma_uint64_553648625): void {.
      cdecl, importc: "ma_sound_group_set_fade_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_fade_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_current_fade_volume):
  proc ma_sound_group_get_current_fade_volume*(pGroup: ptr ma_sound_group_553649552): cfloat {.
      cdecl, importc: "ma_sound_group_get_current_fade_volume".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_current_fade_volume" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_start_time_in_pcm_frames):
  proc ma_sound_group_set_start_time_in_pcm_frames*(pGroup: ptr ma_sound_group_553649552;
      absoluteGlobalTimeInFrames: ma_uint64_553648625): void {.cdecl,
      importc: "ma_sound_group_set_start_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_start_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_start_time_in_milliseconds):
  proc ma_sound_group_set_start_time_in_milliseconds*(
      pGroup: ptr ma_sound_group_553649552;
      absoluteGlobalTimeInMilliseconds: ma_uint64_553648625): void {.cdecl,
      importc: "ma_sound_group_set_start_time_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_start_time_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_stop_time_in_pcm_frames):
  proc ma_sound_group_set_stop_time_in_pcm_frames*(pGroup: ptr ma_sound_group_553649552;
      absoluteGlobalTimeInFrames: ma_uint64_553648625): void {.cdecl,
      importc: "ma_sound_group_set_stop_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_stop_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_stop_time_in_milliseconds):
  proc ma_sound_group_set_stop_time_in_milliseconds*(pGroup: ptr ma_sound_group_553649552;
      absoluteGlobalTimeInMilliseconds: ma_uint64_553648625): void {.cdecl,
      importc: "ma_sound_group_set_stop_time_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_stop_time_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_is_playing):
  proc ma_sound_group_is_playing*(pGroup: ptr ma_sound_group_553649552): ma_bool32_553648631 {.
      cdecl, importc: "ma_sound_group_is_playing".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_is_playing" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_time_in_pcm_frames):
  proc ma_sound_group_get_time_in_pcm_frames*(pGroup: ptr ma_sound_group_553649552): ma_uint64_553648625 {.
      cdecl, importc: "ma_sound_group_get_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_time_in_pcm_frames" &
        " already exists, not redeclaring")