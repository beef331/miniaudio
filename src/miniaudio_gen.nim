
{.warning[UnusedImport]: off.}
{.hint[XDeclaredButNotUsed]: off.}
from macros import hint, warning, newLit, getSize

from os import parentDir

when not declared(ownSizeOf):
  macro ownSizeof(x: typed): untyped =
    newLit(x.getSize)

type
  enum_ma_log_level_570425866* {.size: sizeof(cuint).} = enum
    MA_LOG_LEVEL_ERROR = 1, MA_LOG_LEVEL_WARNING = 2, MA_LOG_LEVEL_INFO = 3,
    MA_LOG_LEVEL_DEBUG = 4
type
  enum_ma_channel_position_570425872* {.size: sizeof(cuint).} = enum
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
    MA_CHANNEL_LEFT* = enum_ma_channel_position_570425872.MA_CHANNEL_FRONT_LEFT
else:
  static :
    hint("Declaration of " & "MA_CHANNEL_LEFT" &
        " already exists, not redeclaring")
when not declared(MA_CHANNEL_RIGHT):
  const
    MA_CHANNEL_RIGHT* = enum_ma_channel_position_570425872.MA_CHANNEL_FRONT_RIGHT
else:
  static :
    hint("Declaration of " & "MA_CHANNEL_RIGHT" &
        " already exists, not redeclaring")
type
  enum_ma_result_570425876* {.size: sizeof(cint).} = enum
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
  enum_ma_stream_format_570425880* {.size: sizeof(cuint).} = enum
    ma_stream_format_pcm = 0
type
  enum_ma_stream_layout_570425884* {.size: sizeof(cuint).} = enum
    ma_stream_layout_interleaved = 0, ma_stream_layout_deinterleaved = 1
type
  enum_ma_dither_mode_570425888* {.size: sizeof(cuint).} = enum
    ma_dither_mode_none = 0, ma_dither_mode_rectangle = 1,
    ma_dither_mode_triangle = 2
type
  enum_ma_format_570425892* {.size: sizeof(cuint).} = enum
    ma_format_unknown = 0, ma_format_u8 = 1, ma_format_s16 = 2,
    ma_format_s24 = 3, ma_format_s32 = 4, ma_format_f32 = 5, ma_format_count = 6
type
  enum_ma_standard_sample_rate_570425896* {.size: sizeof(cuint).} = enum
    ma_standard_sample_rate_8000 = 8000, ma_standard_sample_rate_11025 = 11025,
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
    ma_standard_sample_rate_min* = enum_ma_standard_sample_rate_570425896.ma_standard_sample_rate_8000
else:
  static :
    hint("Declaration of " & "ma_standard_sample_rate_min" &
        " already exists, not redeclaring")
when not declared(ma_standard_sample_rate_max):
  const
    ma_standard_sample_rate_max* = enum_ma_standard_sample_rate_570425896.ma_standard_sample_rate_384000
else:
  static :
    hint("Declaration of " & "ma_standard_sample_rate_max" &
        " already exists, not redeclaring")
type
  enum_ma_channel_mix_mode_570425900* {.size: sizeof(cuint).} = enum
    ma_channel_mix_mode_rectangular = 0, ma_channel_mix_mode_simple = 1,
    ma_channel_mix_mode_custom_weights = 2
when not declared(ma_channel_mix_mode_default):
  const
    ma_channel_mix_mode_default* = enum_ma_channel_mix_mode_570425900.ma_channel_mix_mode_rectangular
else:
  static :
    hint("Declaration of " & "ma_channel_mix_mode_default" &
        " already exists, not redeclaring")
type
  enum_ma_standard_channel_map_570425911* {.size: sizeof(cuint).} = enum
    ma_standard_channel_map_microsoft = 0, ma_standard_channel_map_alsa = 1,
    ma_standard_channel_map_rfc3551 = 2, ma_standard_channel_map_flac = 3,
    ma_standard_channel_map_vorbis = 4, ma_standard_channel_map_sound4 = 5,
    ma_standard_channel_map_sndio = 6
when not declared(ma_standard_channel_map_webaudio):
  const
    ma_standard_channel_map_webaudio* = enum_ma_standard_channel_map_570425911.ma_standard_channel_map_flac
else:
  static :
    hint("Declaration of " & "ma_standard_channel_map_webaudio" &
        " already exists, not redeclaring")
when not declared(ma_standard_channel_map_default):
  const
    ma_standard_channel_map_default* = enum_ma_standard_channel_map_570425911.ma_standard_channel_map_microsoft
else:
  static :
    hint("Declaration of " & "ma_standard_channel_map_default" &
        " already exists, not redeclaring")
type
  enum_ma_thread_priority_570425945* {.size: sizeof(cint).} = enum
    ma_thread_priority_idle = -5, ma_thread_priority_lowest = -4,
    ma_thread_priority_low = -3, ma_thread_priority_normal = -2,
    ma_thread_priority_high = -1, ma_thread_priority_highest = 0,
    ma_thread_priority_realtime = 1
when not declared(ma_thread_priority_default):
  const
    ma_thread_priority_default* = enum_ma_thread_priority_570425945.ma_thread_priority_highest
else:
  static :
    hint("Declaration of " & "ma_thread_priority_default" &
        " already exists, not redeclaring")
type
  enum_ma_pan_mode_570426099* {.size: sizeof(cuint).} = enum
    ma_pan_mode_balance = 0, ma_pan_mode_pan = 1
type
  enum_ma_attenuation_model_570426127* {.size: sizeof(cuint).} = enum
    ma_attenuation_model_none = 0, ma_attenuation_model_inverse = 1,
    ma_attenuation_model_linear = 2, ma_attenuation_model_exponential = 3
type
  enum_ma_positioning_570426131* {.size: sizeof(cuint).} = enum
    ma_positioning_absolute = 0, ma_positioning_relative = 1
type
  enum_ma_handedness_570426135* {.size: sizeof(cuint).} = enum
    ma_handedness_right = 0, ma_handedness_left = 1
type
  enum_ma_resample_algorithm_570426173* {.size: sizeof(cuint).} = enum
    ma_resample_algorithm_linear = 0, ma_resample_algorithm_custom = 1
type
  enum_ma_channel_conversion_path_570426181* {.size: sizeof(cuint).} = enum
    ma_channel_conversion_path_unknown = 0,
    ma_channel_conversion_path_passthrough = 1,
    ma_channel_conversion_path_mono_out = 2,
    ma_channel_conversion_path_mono_in = 3,
    ma_channel_conversion_path_shuffle = 4,
    ma_channel_conversion_path_weights = 5
type
  enum_ma_mono_expansion_mode_570426185* {.size: sizeof(cuint).} = enum
    ma_mono_expansion_mode_duplicate = 0, ma_mono_expansion_mode_average = 1,
    ma_mono_expansion_mode_stereo_only = 2
when not declared(ma_mono_expansion_mode_default):
  const
    ma_mono_expansion_mode_default* = enum_ma_mono_expansion_mode_570426185.ma_mono_expansion_mode_duplicate
else:
  static :
    hint("Declaration of " & "ma_mono_expansion_mode_default" &
        " already exists, not redeclaring")
type
  enum_ma_data_converter_execution_path_570426201* {.size: sizeof(cuint).} = enum
    ma_data_converter_execution_path_passthrough = 0,
    ma_data_converter_execution_path_format_only = 1,
    ma_data_converter_execution_path_channels_only = 2,
    ma_data_converter_execution_path_resample_only = 3,
    ma_data_converter_execution_path_resample_first = 4,
    ma_data_converter_execution_path_channels_first = 5
type
  enum_ma_job_type_570426301* {.size: sizeof(cuint).} = enum
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
  enum_ma_job_queue_flags_570426307* {.size: sizeof(cuint).} = enum
    MA_JOB_QUEUE_FLAG_NON_BLOCKING = 1
type
  enum_ma_wasapi_usage_570426343* {.size: sizeof(cuint).} = enum
    ma_wasapi_usage_default = 0, ma_wasapi_usage_games = 1,
    ma_wasapi_usage_pro_audio = 2
type
  enum_ma_ios_session_category_570426371* {.size: sizeof(cuint).} = enum
    ma_ios_session_category_default = 0, ma_ios_session_category_none = 1,
    ma_ios_session_category_ambient = 2,
    ma_ios_session_category_solo_ambient = 3,
    ma_ios_session_category_playback = 4, ma_ios_session_category_record = 5,
    ma_ios_session_category_play_and_record = 6,
    ma_ios_session_category_multi_route = 7
type
  enum_ma_ios_session_category_option_570426375* {.size: sizeof(cuint).} = enum
    ma_ios_session_category_option_mix_with_others = 1,
    ma_ios_session_category_option_duck_others = 2,
    ma_ios_session_category_option_allow_bluetooth = 4,
    ma_ios_session_category_option_default_to_speaker = 8, ma_ios_session_category_option_interrupt_spoken_audio_and_mix_with_others = 17,
    ma_ios_session_category_option_allow_bluetooth_a2dp = 32,
    ma_ios_session_category_option_allow_air_play = 64
type
  enum_ma_aaudio_usage_570426435* {.size: sizeof(cuint).} = enum
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
  enum_ma_aaudio_content_type_570426439* {.size: sizeof(cuint).} = enum
    ma_aaudio_content_type_default = 0, ma_aaudio_content_type_speech = 1,
    ma_aaudio_content_type_music = 2, ma_aaudio_content_type_movie = 3,
    ma_aaudio_content_type_sonification = 4
type
  enum_ma_aaudio_input_preset_570426443* {.size: sizeof(cuint).} = enum
    ma_aaudio_input_preset_default = 0, ma_aaudio_input_preset_generic = 1,
    ma_aaudio_input_preset_camcorder = 2,
    ma_aaudio_input_preset_voice_recognition = 3,
    ma_aaudio_input_preset_voice_communication = 4,
    ma_aaudio_input_preset_unprocessed = 5,
    ma_aaudio_input_preset_voice_performance = 6
type
  enum_ma_aaudio_allowed_capture_policy_570426447* {.size: sizeof(cuint).} = enum
    ma_aaudio_allow_capture_default = 0, ma_aaudio_allow_capture_by_all = 1,
    ma_aaudio_allow_capture_by_system = 2, ma_aaudio_allow_capture_by_none = 3
type
  enum_ma_aaudio_performance_mode_570426451* {.size: sizeof(cuint).} = enum
    ma_aaudio_performance_mode_default = 0,
    ma_aaudio_performance_mode_low_latency = 1,
    ma_aaudio_performance_mode_none = 2,
    ma_aaudio_performance_mode_power_saving = 3
type
  enum_ma_opensl_stream_type_570426463* {.size: sizeof(cuint).} = enum
    ma_opensl_stream_type_default = 0, ma_opensl_stream_type_voice = 1,
    ma_opensl_stream_type_system = 2, ma_opensl_stream_type_ring = 3,
    ma_opensl_stream_type_media = 4, ma_opensl_stream_type_alarm = 5,
    ma_opensl_stream_type_notification = 6
type
  enum_ma_opensl_recording_preset_570426467* {.size: sizeof(cuint).} = enum
    ma_opensl_recording_preset_default = 0,
    ma_opensl_recording_preset_generic = 1,
    ma_opensl_recording_preset_camcorder = 2,
    ma_opensl_recording_preset_voice_recognition = 3,
    ma_opensl_recording_preset_voice_communication = 4,
    ma_opensl_recording_preset_voice_unprocessed = 5
type
  enum_ma_webaudio_latency_hint_570426479* {.size: sizeof(cuint).} = enum
    ma_webaudio_latency_hint_interactive = 0,
    ma_webaudio_latency_hint_playback = 1, ma_webaudio_latency_hint_balanced = 2
type
  enum_ma_device_status_570426507* {.size: sizeof(cuint).} = enum
    ma_device_status_uninitialized = 0, ma_device_status_stopped = 1,
    ma_device_status_started = 2, ma_device_status_starting = 3,
    ma_device_status_stopping = 4
type
  enum_ma_device_op_type_570426527* {.size: sizeof(cuint).} = enum
    MA_DEVICE_OP_INIT = 0, MA_DEVICE_OP_UNINIT = 1, MA_DEVICE_OP_START = 2,
    MA_DEVICE_OP_STOP = 3
type
  enum_ma_device_notification_type_570426543* {.size: sizeof(cuint).} = enum
    ma_device_notification_type_started = 0,
    ma_device_notification_type_stopped = 1,
    ma_device_notification_type_rerouted = 2,
    ma_device_notification_type_interruption_began = 3,
    ma_device_notification_type_interruption_ended = 4,
    ma_device_notification_type_unlocked = 5
type
  enum_ma_device_type_570426555* {.size: sizeof(cuint).} = enum
    ma_device_type_playback = 1, ma_device_type_capture = 2,
    ma_device_type_duplex = 3, ma_device_type_loopback = 4
type
  enum_ma_share_mode_570426559* {.size: sizeof(cuint).} = enum
    ma_share_mode_shared = 0, ma_share_mode_exclusive = 1
type
  enum_ma_device_enumeration_result_570426575* {.size: sizeof(cuint).} = enum
    MA_DEVICE_ENUMERATION_ABORT = 0, MA_DEVICE_ENUMERATION_CONTINUE = 1
type
  enum_ma_open_mode_flags_570426585* {.size: sizeof(cuint).} = enum
    MA_OPEN_MODE_READ = 1, MA_OPEN_MODE_WRITE = 2
type
  enum_ma_seek_origin_570426589* {.size: sizeof(cuint).} = enum
    MA_SEEK_SET = 0, MA_SEEK_CUR = 1, MA_SEEK_END = 2
type
  enum_ma_encoding_format_570426611* {.size: sizeof(cuint).} = enum
    ma_encoding_format_unknown = 0, ma_encoding_format_wav = 1,
    ma_encoding_format_flac = 2, ma_encoding_format_mp3 = 3,
    ma_encoding_format_vorbis = 4, ma_encoding_format_opus = 5
type
  enum_ma_waveform_type_570426655* {.size: sizeof(cuint).} = enum
    ma_waveform_type_sine = 0, ma_waveform_type_square = 1,
    ma_waveform_type_triangle = 2, ma_waveform_type_sawtooth = 3
type
  enum_ma_noise_type_570426675* {.size: sizeof(cuint).} = enum
    ma_noise_type_white = 0, ma_noise_type_pink = 1, ma_noise_type_brownian = 2
type
  enum_ma_resource_manager_data_source_flags_570426707* {.size: sizeof(cuint).} = enum
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_STREAM = 1,
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_DECODE = 2,
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_ASYNC = 4,
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_WAIT_INIT = 8,
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_UNKNOWN_LENGTH = 16,
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_LOOPING = 32
type
  enum_ma_resource_manager_flags_570426719* {.size: sizeof(cuint).} = enum
    MA_RESOURCE_MANAGER_FLAG_NON_BLOCKING = 1,
    MA_RESOURCE_MANAGER_FLAG_NO_THREADING = 2
type
  enum_ma_resource_manager_data_supply_type_570426727* {.size: sizeof(cuint).} = enum
    ma_resource_manager_data_supply_type_unknown = 0,
    ma_resource_manager_data_supply_type_encoded = 1,
    ma_resource_manager_data_supply_type_decoded = 2,
    ma_resource_manager_data_supply_type_decoded_paged = 3
type
  enum_ma_node_flags_570426749* {.size: sizeof(cuint).} = enum
    MA_NODE_FLAG_PASSTHROUGH = 1, MA_NODE_FLAG_CONTINUOUS_PROCESSING = 2,
    MA_NODE_FLAG_ALLOW_NULL_INPUT = 4,
    MA_NODE_FLAG_DIFFERENT_PROCESSING_RATES = 8, MA_NODE_FLAG_SILENT_OUTPUT = 16
type
  enum_ma_node_state_570426753* {.size: sizeof(cuint).} = enum
    ma_node_state_started = 0, ma_node_state_stopped = 1
type
  enum_ma_sound_flags_570426877* {.size: sizeof(cuint).} = enum
    MA_SOUND_FLAG_STREAM = 1, MA_SOUND_FLAG_DECODE = 2, MA_SOUND_FLAG_ASYNC = 4,
    MA_SOUND_FLAG_WAIT_INIT = 8, MA_SOUND_FLAG_UNKNOWN_LENGTH = 16,
    MA_SOUND_FLAG_LOOPING = 32, MA_SOUND_FLAG_NO_DEFAULT_ATTACHMENT = 4096,
    MA_SOUND_FLAG_NO_PITCH = 8192, MA_SOUND_FLAG_NO_SPATIALIZATION = 16384
type
  enum_ma_engine_node_type_570426881* {.size: sizeof(cuint).} = enum
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
  ma_int8_570425820 = cschar ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3800:37
  ma_uint8_570425822 = uint8 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3801:37
  ma_int16_570425824 = cshort ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3802:37
  ma_uint16_570425826 = cushort ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3803:37
  ma_int32_570425828 = cint  ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3804:37
  ma_uint32_570425830 = cuint ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3805:37
  ma_int64_570425832 = clonglong ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3817:37
  ma_uint64_570425834 = culonglong ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3818:37
  ma_uintptr_570425836 = ma_uint64_570425835 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3826:33
  ma_bool8_570425838 = ma_uint8_570425823 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3831:21
  ma_bool32_570425840 = ma_uint32_570425831 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3832:21
  ma_float_570425842 = cfloat ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3837:21
  ma_double_570425844 = cdouble ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3838:21
  ma_handle_570425846 = pointer ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3840:15
  ma_ptr_570425848 = pointer ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3841:15
  ma_proc_570425850 = proc (): void {.cdecl.} ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3850:16
  ma_pthread_t_570425852 = pthread_t_570425855 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3921:37
  pthread_t_570425854 = culong ## Generated based on /usr/include/bits/pthreadtypes.h:27:27
  ma_pthread_mutex_t_570425856 = pthread_mutex_t_570425859 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3922:37
  pthread_mutex_t_570425858 = union_pthread_mutex_t_570426916 ## Generated based on /usr/include/bits/pthreadtypes.h:72:3
  ma_pthread_cond_t_570425860 = pthread_cond_t_570425863 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3923:37
  pthread_cond_t_570425862 = union_pthread_cond_t_570426918 ## Generated based on /usr/include/bits/pthreadtypes.h:80:3
  ma_wchar_win32_570425864 = ma_uint16_570425827 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4076:21
  ma_log_level_570425868 = enum_ma_log_level_570425867 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4171:3
  ma_channel_570425870 = ma_uint8_570425823 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4200:18
  internal_ma_channel_position_570425874 = enum_ma_channel_position_570425873 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4258:3
  ma_result_570425878 = enum_ma_result_570425877 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4341:3
  ma_stream_format_570425882 = enum_ma_stream_format_570425881 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4356:3
  ma_stream_layout_570425886 = enum_ma_stream_layout_570425885 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4362:3
  ma_dither_mode_570425890 = enum_ma_dither_mode_570425889 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4369:3
  ma_format_570425894 = enum_ma_format_570425893 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4384:3
  ma_standard_sample_rate_570425898 = enum_ma_standard_sample_rate_570425897 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4410:3
  ma_channel_mix_mode_570425909 = enum_ma_channel_mix_mode_570425901 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4422:3
  ma_standard_channel_map_570425913 = enum_ma_standard_channel_map_570425912 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4435:3
  struct_ma_allocation_callbacks_570425915 {.pure, inheritable, bycopy.} = object
    pUserData*: pointer      ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4438:9
    onMalloc*: proc (a0: csize_t; a1: pointer): pointer {.cdecl.}
    onRealloc*: proc (a0: pointer; a1: csize_t; a2: pointer): pointer {.cdecl.}
    onFree*: proc (a0: pointer; a1: pointer): void {.cdecl.}
  ma_allocation_callbacks_570425917 = struct_ma_allocation_callbacks_570425916 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4444:3
  struct_ma_lcg_570425919 {.pure, inheritable, bycopy.} = object
    state*: ma_uint32_570425831 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4446:9
  ma_lcg_570425921 = struct_ma_lcg_570425920 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4449:3
  struct_ma_atomic_uint32_570425923 {.pure, inheritable, bycopy.} = object
    value*: ma_uint32_570425831 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4502:1
  ma_atomic_uint32_570425925 = struct_ma_atomic_uint32_570425924 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4502:1
  struct_ma_atomic_int32_570425927 {.pure, inheritable, bycopy.} = object
    value*: ma_int32_570425829 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4503:1
  ma_atomic_int32_570425929 = struct_ma_atomic_int32_570425928 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4503:1
  struct_ma_atomic_uint64_570425931 {.pure, inheritable, bycopy.} = object
    value*: ma_uint64_570425835 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4504:1
  ma_atomic_uint64_570425933 = struct_ma_atomic_uint64_570425932 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4504:1
  struct_ma_atomic_float_570425935 {.pure, inheritable, bycopy.} = object
    value*: ma_float_570425843 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4505:1
  ma_atomic_float_570425937 = struct_ma_atomic_float_570425936 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4505:1
  struct_ma_atomic_bool32_570425939 {.pure, inheritable, bycopy.} = object
    value*: ma_bool32_570425841 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4506:1
  ma_atomic_bool32_570425941 = struct_ma_atomic_bool32_570425940 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4506:1
  ma_spinlock_570425943 = ma_uint32_570425831 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4510:19
  ma_thread_priority_570425947 = enum_ma_thread_priority_570425946 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4523:3
  ma_thread_570425949 = ma_pthread_t_570425853 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4538:26
  ma_mutex_570425951 = ma_pthread_mutex_t_570425857 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4546:32
  struct_ma_event_570425953 {.pure, inheritable, bycopy.} = object
    value*: ma_uint32_570425831 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4554:13
    lock*: ma_pthread_mutex_t_570425857
    cond*: ma_pthread_cond_t_570425861
  ma_event_570425955 = struct_ma_event_570425954 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4559:7
  struct_ma_semaphore_570425957 {.pure, inheritable, bycopy.} = object
    value*: cint             ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4567:13
    lock*: ma_pthread_mutex_t_570425857
    cond*: ma_pthread_cond_t_570425861
  ma_semaphore_570425959 = struct_ma_semaphore_570425958 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4572:7
  ma_log_callback_proc_570425961 = proc (a0: pointer; a1: ma_uint32_570425831;
      a2: cstring): void {.cdecl.} ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4636:17
  struct_ma_log_callback_570425963 {.pure, inheritable, bycopy.} = object
    onLog*: ma_log_callback_proc_570425962 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4638:9
    pUserData*: pointer
  ma_log_callback_570425965 = struct_ma_log_callback_570425964 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4642:3
  struct_ma_log_570425967 {.pure, inheritable, bycopy.} = object
    callbacks*: array[4'i64, ma_log_callback_570425966] ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4647:9
    callbackCount*: ma_uint32_570425831
    allocationCallbacks*: ma_allocation_callbacks_570425918
    lock*: ma_mutex_570425952
  ma_log_570425969 = struct_ma_log_570425968 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4655:3
  union_ma_biquad_coefficient_570425971 {.union, bycopy.} = object
    f32*: cfloat             ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4685:9
    s32*: ma_int32_570425829
  ma_biquad_coefficient_570425973 = union_ma_biquad_coefficient_570425972 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4689:3
  struct_ma_biquad_config_570425975 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4691:9
    channels*: ma_uint32_570425831
    b0*: cdouble
    b1*: cdouble
    b2*: cdouble
    a0*: cdouble
    a1*: cdouble
    a2*: cdouble
  ma_biquad_config_570425977 = struct_ma_biquad_config_570425976 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4701:3
  struct_ma_biquad_570425979 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4705:9
    channels*: ma_uint32_570425831
    b0*: ma_biquad_coefficient_570425974
    b1*: ma_biquad_coefficient_570425974
    b2*: ma_biquad_coefficient_570425974
    a1*: ma_biquad_coefficient_570425974
    a2*: ma_biquad_coefficient_570425974
    pR1*: ptr ma_biquad_coefficient_570425974
    pR2*: ptr ma_biquad_coefficient_570425974
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_570425841
  ma_biquad_570425981 = struct_ma_biquad_570425980 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4720:3
  struct_ma_lpf1_config_570425983 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4737:9
    channels*: ma_uint32_570425831
    sampleRate*: ma_uint32_570425831
    cutoffFrequency*: cdouble
    q*: cdouble
  ma_lpf1_config_570425985 = struct_ma_lpf1_config_570425984 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4744:3
  ma_lpf2_config_570425987 = struct_ma_lpf1_config_570425984 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4744:19
  struct_ma_lpf1_570425989 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4749:9
    channels*: ma_uint32_570425831
    a*: ma_biquad_coefficient_570425974
    pR1*: ptr ma_biquad_coefficient_570425974
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_570425841
  ma_lpf1_570425991 = struct_ma_lpf1_570425990 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4759:3
  struct_ma_lpf2_570425993 {.pure, inheritable, bycopy.} = object
    bq*: ma_biquad_570425982 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4770:9
  ma_lpf2_570425995 = struct_ma_lpf2_570425994 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4773:3
  struct_ma_lpf_config_570425997 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4785:9
    channels*: ma_uint32_570425831
    sampleRate*: ma_uint32_570425831
    cutoffFrequency*: cdouble
    order*: ma_uint32_570425831
  ma_lpf_config_570425999 = struct_ma_lpf_config_570425998 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4792:3
  struct_ma_lpf_570426001 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4796:9
    channels*: ma_uint32_570425831
    sampleRate*: ma_uint32_570425831
    lpf1Count*: ma_uint32_570425831
    lpf2Count*: ma_uint32_570425831
    pLPF1*: ptr ma_lpf1_570425992
    pLPF2*: ptr ma_lpf2_570425996
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_570425841
  ma_lpf_570426003 = struct_ma_lpf_570426002 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4809:3
  struct_ma_hpf1_config_570426005 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4826:9
    channels*: ma_uint32_570425831
    sampleRate*: ma_uint32_570425831
    cutoffFrequency*: cdouble
    q*: cdouble
  ma_hpf1_config_570426007 = struct_ma_hpf1_config_570426006 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4833:3
  ma_hpf2_config_570426009 = struct_ma_hpf1_config_570426006 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4833:19
  struct_ma_hpf1_570426011 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4838:9
    channels*: ma_uint32_570425831
    a*: ma_biquad_coefficient_570425974
    pR1*: ptr ma_biquad_coefficient_570425974
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_570425841
  ma_hpf1_570426013 = struct_ma_hpf1_570426012 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4848:3
  struct_ma_hpf2_570426015 {.pure, inheritable, bycopy.} = object
    bq*: ma_biquad_570425982 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4858:9
  ma_hpf2_570426017 = struct_ma_hpf2_570426016 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4861:3
  struct_ma_hpf_config_570426019 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4872:9
    channels*: ma_uint32_570425831
    sampleRate*: ma_uint32_570425831
    cutoffFrequency*: cdouble
    order*: ma_uint32_570425831
  ma_hpf_config_570426021 = struct_ma_hpf_config_570426020 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4879:3
  struct_ma_hpf_570426023 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4883:9
    channels*: ma_uint32_570425831
    sampleRate*: ma_uint32_570425831
    hpf1Count*: ma_uint32_570425831
    hpf2Count*: ma_uint32_570425831
    pHPF1*: ptr ma_hpf1_570426014
    pHPF2*: ptr ma_hpf2_570426018
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_570425841
  ma_hpf_570426025 = struct_ma_hpf_570426024 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4896:3
  struct_ma_bpf2_config_570426027 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4912:9
    channels*: ma_uint32_570425831
    sampleRate*: ma_uint32_570425831
    cutoffFrequency*: cdouble
    q*: cdouble
  ma_bpf2_config_570426029 = struct_ma_bpf2_config_570426028 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4919:3
  struct_ma_bpf2_570426031 {.pure, inheritable, bycopy.} = object
    bq*: ma_biquad_570425982 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4923:9
  ma_bpf2_570426033 = struct_ma_bpf2_570426032 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4926:3
  struct_ma_bpf_config_570426035 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4937:9
    channels*: ma_uint32_570425831
    sampleRate*: ma_uint32_570425831
    cutoffFrequency*: cdouble
    order*: ma_uint32_570425831
  ma_bpf_config_570426037 = struct_ma_bpf_config_570426036 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4944:3
  struct_ma_bpf_570426039 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4948:9
    channels*: ma_uint32_570425831
    bpf2Count*: ma_uint32_570425831
    pBPF2*: ptr ma_bpf2_570426034
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_570425841
  ma_bpf_570426041 = struct_ma_bpf_570426040 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4958:3
  struct_ma_notch2_config_570426043 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4974:9
    channels*: ma_uint32_570425831
    sampleRate*: ma_uint32_570425831
    q*: cdouble
    frequency*: cdouble
  ma_notch2_config_570426045 = struct_ma_notch2_config_570426044 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4981:3
  ma_notch_config_570426047 = struct_ma_notch2_config_570426044 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4981:21
  struct_ma_notch2_570426049 {.pure, inheritable, bycopy.} = object
    bq*: ma_biquad_570425982 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4985:9
  ma_notch2_570426051 = struct_ma_notch2_570426050 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4988:3
  struct_ma_peak2_config_570426053 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5004:9
    channels*: ma_uint32_570425831
    sampleRate*: ma_uint32_570425831
    gainDB*: cdouble
    q*: cdouble
    frequency*: cdouble
  ma_peak2_config_570426055 = struct_ma_peak2_config_570426054 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5012:3
  ma_peak_config_570426057 = struct_ma_peak2_config_570426054 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5012:20
  struct_ma_peak2_570426059 {.pure, inheritable, bycopy.} = object
    bq*: ma_biquad_570425982 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5016:9
  ma_peak2_570426061 = struct_ma_peak2_570426060 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5019:3
  struct_ma_loshelf2_config_570426063 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5035:9
    channels*: ma_uint32_570425831
    sampleRate*: ma_uint32_570425831
    gainDB*: cdouble
    shelfSlope*: cdouble
    frequency*: cdouble
  ma_loshelf2_config_570426065 = struct_ma_loshelf2_config_570426064 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5043:3
  ma_loshelf_config_570426067 = struct_ma_loshelf2_config_570426064 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5043:23
  struct_ma_loshelf2_570426069 {.pure, inheritable, bycopy.} = object
    bq*: ma_biquad_570425982 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5047:9
  ma_loshelf2_570426071 = struct_ma_loshelf2_570426070 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5050:3
  struct_ma_hishelf2_config_570426073 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5066:9
    channels*: ma_uint32_570425831
    sampleRate*: ma_uint32_570425831
    gainDB*: cdouble
    shelfSlope*: cdouble
    frequency*: cdouble
  ma_hishelf2_config_570426075 = struct_ma_hishelf2_config_570426074 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5074:3
  ma_hishelf_config_570426077 = struct_ma_hishelf2_config_570426074 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5074:23
  struct_ma_hishelf2_570426079 {.pure, inheritable, bycopy.} = object
    bq*: ma_biquad_570425982 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5078:9
  ma_hishelf2_570426081 = struct_ma_hishelf2_570426080 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5081:3
  struct_ma_delay_config_570426083 {.pure, inheritable, bycopy.} = object
    channels*: ma_uint32_570425831 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5096:9
    sampleRate*: ma_uint32_570425831
    delayInFrames*: ma_uint32_570425831
    delayStart*: ma_bool32_570425841
    decay*: cfloat
  ma_delay_config_570426085 = struct_ma_delay_config_570426084 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5103:3
  struct_ma_delay_570426087 {.pure, inheritable, bycopy.} = object
    config*: ma_delay_config_570426086 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5108:9
    cursor*: ma_uint32_570425831
    bufferSizeInFrames*: ma_uint32_570425831
    pBuffer*: ptr cfloat
  ma_delay_570426089 = struct_ma_delay_570426088 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5114:3
  struct_ma_gainer_config_570426091 {.pure, inheritable, bycopy.} = object
    channels*: ma_uint32_570425831 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5124:9
    smoothTimeInFrames*: ma_uint32_570425831
  ma_gainer_config_570426093 = struct_ma_gainer_config_570426092 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5128:3
  struct_ma_gainer_570426095 {.pure, inheritable, bycopy.} = object
    config*: ma_gainer_config_570426094 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5133:9
    t*: ma_uint32_570425831
    masterVolume*: cfloat
    pOldGains*: ptr cfloat
    pNewGains*: ptr cfloat
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_570425841
  ma_gainer_570426097 = struct_ma_gainer_570426096 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5144:3
  ma_pan_mode_570426101 = enum_ma_pan_mode_570426100 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5163:3
  struct_ma_panner_config_570426103 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5165:9
    channels*: ma_uint32_570425831
    mode*: ma_pan_mode_570426102
    pan*: cfloat
  ma_panner_config_570426105 = struct_ma_panner_config_570426104 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5171:3
  struct_ma_panner_570426107 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5176:9
    channels*: ma_uint32_570425831
    mode*: ma_pan_mode_570426102
    pan*: cfloat
  ma_panner_570426109 = struct_ma_panner_570426108 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5182:3
  struct_ma_fader_config_570426111 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5194:9
    channels*: ma_uint32_570425831
    sampleRate*: ma_uint32_570425831
  ma_fader_config_570426113 = struct_ma_fader_config_570426112 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5199:3
  struct_ma_fader_570426115 {.pure, inheritable, bycopy.} = object
    config*: ma_fader_config_570426114 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5203:9
    volumeBeg*: cfloat
    volumeEnd*: cfloat
    lengthInFrames*: ma_uint64_570425835
    cursorInFrames*: ma_int64_570425833
  ma_fader_570426117 = struct_ma_fader_570426116 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5210:3
  struct_ma_vec3f_570426119 {.pure, inheritable, bycopy.} = object
    x*: cfloat               ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5222:9
    y*: cfloat
    z*: cfloat
  ma_vec3f_570426121 = struct_ma_vec3f_570426120 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5227:3
  struct_ma_atomic_vec3f_570426123 {.pure, inheritable, bycopy.} = object
    v*: ma_vec3f_570426122   ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5229:9
    lock*: ma_spinlock_570425944
  ma_atomic_vec3f_570426125 = struct_ma_atomic_vec3f_570426124 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5233:3
  ma_attenuation_model_570426129 = enum_ma_attenuation_model_570426128 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5241:3
  ma_positioning_570426133 = enum_ma_positioning_570426132 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5247:3
  ma_handedness_570426137 = enum_ma_handedness_570426136 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5253:3
  struct_ma_spatializer_listener_config_570426139 {.pure, inheritable, bycopy.} = object
    channelsOut*: ma_uint32_570425831 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5256:9
    pChannelMapOut*: ptr ma_channel_570425871
    handedness*: ma_handedness_570426138
    coneInnerAngleInRadians*: cfloat
    coneOuterAngleInRadians*: cfloat
    coneOuterGain*: cfloat
    speedOfSound*: cfloat
    worldUp*: ma_vec3f_570426122
  ma_spatializer_listener_config_570426141 = struct_ma_spatializer_listener_config_570426140 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5266:3
  struct_ma_spatializer_listener_570426143 {.pure, inheritable, bycopy.} = object
    config*: ma_spatializer_listener_config_570426142 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5271:9
    position*: ma_atomic_vec3f_570426126
    direction*: ma_atomic_vec3f_570426126
    velocity*: ma_atomic_vec3f_570426126
    isEnabled*: ma_bool32_570425841
    internal_ownsHeap*: ma_bool32_570425841
    internal_pHeap*: pointer
  ma_spatializer_listener_570426145 = struct_ma_spatializer_listener_570426144 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5282:3
  struct_ma_spatializer_config_570426147 {.pure, inheritable, bycopy.} = object
    channelsIn*: ma_uint32_570425831 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5305:9
    channelsOut*: ma_uint32_570425831
    pChannelMapIn*: ptr ma_channel_570425871
    attenuationModel*: ma_attenuation_model_570426130
    positioning*: ma_positioning_570426134
    handedness*: ma_handedness_570426138
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
    gainSmoothTimeInFrames*: ma_uint32_570425831
  ma_spatializer_config_570426149 = struct_ma_spatializer_config_570426148 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5325:3
  struct_ma_spatializer_570426151 {.pure, inheritable, bycopy.} = object
    channelsIn*: ma_uint32_570425831 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5330:9
    channelsOut*: ma_uint32_570425831
    pChannelMapIn*: ptr ma_channel_570425871
    attenuationModel*: ma_attenuation_model_570426130
    positioning*: ma_positioning_570426134
    handedness*: ma_handedness_570426138
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
    gainSmoothTimeInFrames*: ma_uint32_570425831
    position*: ma_atomic_vec3f_570426126
    direction*: ma_atomic_vec3f_570426126
    velocity*: ma_atomic_vec3f_570426126
    dopplerPitch*: cfloat
    minSpatializationChannelGain*: cfloat
    gainer*: ma_gainer_570426098
    pNewChannelGainsOut*: ptr cfloat
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_570425841
  ma_spatializer_570426153 = struct_ma_spatializer_570426152 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5360:3
  struct_ma_linear_resampler_config_570426155 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5417:9
    channels*: ma_uint32_570425831
    sampleRateIn*: ma_uint32_570425831
    sampleRateOut*: ma_uint32_570425831
    lpfOrder*: ma_uint32_570425831
    lpfNyquistFactor*: cdouble
  ma_linear_resampler_config_570426157 = struct_ma_linear_resampler_config_570426156 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5425:3
  struct_ma_linear_resampler_x0_t {.union, bycopy.} = object
    f32*: ptr cfloat
    s16*: ptr ma_int16_570425825
  struct_ma_linear_resampler_x1_t {.union, bycopy.} = object
    f32*: ptr cfloat
    s16*: ptr ma_int16_570425825
  struct_ma_linear_resampler_570426159 {.pure, inheritable, bycopy.} = object
    config*: ma_linear_resampler_config_570426158 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5429:9
    inAdvanceInt*: ma_uint32_570425831
    inAdvanceFrac*: ma_uint32_570425831
    inTimeInt*: ma_uint32_570425831
    inTimeFrac*: ma_uint32_570425831
    x0*: struct_ma_linear_resampler_x0_t
    x1*: struct_ma_linear_resampler_x1_t
    lpf*: ma_lpf_570426004
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_570425841
  ma_linear_resampler_570426161 = struct_ma_linear_resampler_570426160 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5451:3
  ma_resampler_config_570426163 = struct_ma_resampler_config_570426166 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5467:36
  struct_ma_resampler_config_linear_t {.pure, inheritable, bycopy.} = object
    lpfOrder*: ma_uint32_570425831
  struct_ma_resampler_config_570426165 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5490:8
    channels*: ma_uint32_570425831
    sampleRateIn*: ma_uint32_570425831
    sampleRateOut*: ma_uint32_570425831
    algorithm*: ma_resample_algorithm_570426176
    pBackendVTable*: ptr ma_resampling_backend_vtable_570426172
    pBackendUserData*: pointer
    linear*: struct_ma_resampler_config_linear_t
  struct_ma_resampling_backend_vtable_570426169 {.pure, inheritable, bycopy.} = object
    onGetHeapSize*: proc (a0: pointer; a1: ptr ma_resampler_config_570426164;
                          a2: ptr csize_t): ma_result_570425879 {.cdecl.} ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5470:9
    onInit*: proc (a0: pointer; a1: ptr ma_resampler_config_570426164;
                   a2: pointer; a3: ptr pointer): ma_result_570425879 {.cdecl.}
    onUninit*: proc (a0: pointer; a1: pointer; a2: ptr ma_allocation_callbacks_570425918): void {.
        cdecl.}
    onProcess*: proc (a0: pointer; a1: pointer; a2: pointer; a3: ptr ma_uint64_570425835;
                      a4: pointer; a5: ptr ma_uint64_570425835): ma_result_570425879 {.
        cdecl.}
    onSetRate*: proc (a0: pointer; a1: pointer; a2: ma_uint32_570425831;
                      a3: ma_uint32_570425831): ma_result_570425879 {.cdecl.}
    onGetInputLatency*: proc (a0: pointer; a1: pointer): ma_uint64_570425835 {.
        cdecl.}
    onGetOutputLatency*: proc (a0: pointer; a1: pointer): ma_uint64_570425835 {.
        cdecl.}
    onGetRequiredInputFrameCount*: proc (a0: pointer; a1: pointer;
        a2: ma_uint64_570425835; a3: ptr ma_uint64_570425835): ma_result_570425879 {.
        cdecl.}
    onGetExpectedOutputFrameCount*: proc (a0: pointer; a1: pointer;
        a2: ma_uint64_570425835; a3: ptr ma_uint64_570425835): ma_result_570425879 {.
        cdecl.}
    onReset*: proc (a0: pointer; a1: pointer): ma_result_570425879 {.cdecl.}
  ma_resampling_backend_vtable_570426171 = struct_ma_resampling_backend_vtable_570426170 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5482:3
  ma_resample_algorithm_570426175 = enum_ma_resample_algorithm_570426174 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5488:3
  struct_ma_resampler_state_t {.union, bycopy.} = object
    linear*: ma_linear_resampler_570426162
  struct_ma_resampler_570426177 {.pure, inheritable, bycopy.} = object
    pBackend*: pointer       ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5507:9
    pBackendVTable*: ptr ma_resampling_backend_vtable_570426172
    pBackendUserData*: pointer
    format*: ma_format_570425895
    channels*: ma_uint32_570425831
    sampleRateIn*: ma_uint32_570425831
    sampleRateOut*: ma_uint32_570425831
    state*: struct_ma_resampler_state_t
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_570425841
  ma_resampler_570426179 = struct_ma_resampler_570426178 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5524:3
  ma_channel_conversion_path_570426183 = enum_ma_channel_conversion_path_570426182 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5620:3
  ma_mono_expansion_mode_570426187 = enum_ma_mono_expansion_mode_570426186 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5628:3
  struct_ma_channel_converter_config_570426189 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5630:9
    channelsIn*: ma_uint32_570425831
    channelsOut*: ma_uint32_570425831
    pChannelMapIn*: ptr ma_channel_570425871
    pChannelMapOut*: ptr ma_channel_570425871
    mixingMode*: ma_channel_mix_mode_570425910
    calculateLFEFromSpatialChannels*: ma_bool32_570425841
    ppWeights*: ptr ptr cfloat
  ma_channel_converter_config_570426191 = struct_ma_channel_converter_config_570426190 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5640:3
  struct_ma_channel_converter_weights_t {.union, bycopy.} = object
    f32*: ptr ptr cfloat
    s16*: ptr ptr ma_int32_570425829
  struct_ma_channel_converter_570426193 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5644:9
    channelsIn*: ma_uint32_570425831
    channelsOut*: ma_uint32_570425831
    mixingMode*: ma_channel_mix_mode_570425910
    conversionPath*: ma_channel_conversion_path_570426184
    pChannelMapIn*: ptr ma_channel_570425871
    pChannelMapOut*: ptr ma_channel_570425871
    pShuffleTable*: ptr ma_uint8_570425823
    weights*: struct_ma_channel_converter_weights_t
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_570425841
  ma_channel_converter_570426195 = struct_ma_channel_converter_570426194 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5663:3
  struct_ma_data_converter_config_570426197 {.pure, inheritable, bycopy.} = object
    formatIn*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5679:9
    formatOut*: ma_format_570425895
    channelsIn*: ma_uint32_570425831
    channelsOut*: ma_uint32_570425831
    sampleRateIn*: ma_uint32_570425831
    sampleRateOut*: ma_uint32_570425831
    pChannelMapIn*: ptr ma_channel_570425871
    pChannelMapOut*: ptr ma_channel_570425871
    ditherMode*: ma_dither_mode_570425891
    channelMixMode*: ma_channel_mix_mode_570425910
    calculateLFEFromSpatialChannels*: ma_bool32_570425841
    ppChannelWeights*: ptr ptr cfloat
    allowDynamicSampleRate*: ma_bool32_570425841
    resampling*: ma_resampler_config_570426164
  ma_data_converter_config_570426199 = struct_ma_data_converter_config_570426198 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5695:3
  ma_data_converter_execution_path_570426203 = enum_ma_data_converter_execution_path_570426202 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5709:3
  struct_ma_data_converter_570426205 {.pure, inheritable, bycopy.} = object
    formatIn*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5711:9
    formatOut*: ma_format_570425895
    channelsIn*: ma_uint32_570425831
    channelsOut*: ma_uint32_570425831
    sampleRateIn*: ma_uint32_570425831
    sampleRateOut*: ma_uint32_570425831
    ditherMode*: ma_dither_mode_570425891
    executionPath*: ma_data_converter_execution_path_570426204
    channelConverter*: ma_channel_converter_570426196
    resampler*: ma_resampler_570426180
    hasPreFormatConversion*: ma_bool8_570425839
    hasPostFormatConversion*: ma_bool8_570425839
    hasChannelConverter*: ma_bool8_570425839
    hasResampler*: ma_bool8_570425839
    isPassthrough*: ma_bool8_570425839
    internal_ownsHeap*: ma_bool8_570425839
    internal_pHeap*: pointer
  ma_data_converter_570426207 = struct_ma_data_converter_570426206 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5732:3
  struct_ma_data_source_vtable_570426211 {.pure, inheritable, bycopy.} = object
    onRead*: proc (a0: pointer; a1: pointer; a2: ma_uint64_570425835;
                   a3: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl.} ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5923:9
    onSeek*: proc (a0: pointer; a1: ma_uint64_570425835): ma_result_570425879 {.
        cdecl.}
    onGetDataFormat*: proc (a0: pointer; a1: ptr ma_format_570425895;
                            a2: ptr ma_uint32_570425831; a3: ptr ma_uint32_570425831;
                            a4: ptr ma_channel_570425871; a5: csize_t): ma_result_570425879 {.
        cdecl.}
    onGetCursor*: proc (a0: pointer; a1: ptr ma_uint64_570425835): ma_result_570425879 {.
        cdecl.}
    onGetLength*: proc (a0: pointer; a1: ptr ma_uint64_570425835): ma_result_570425879 {.
        cdecl.}
    onSetLooping*: proc (a0: pointer; a1: ma_bool32_570425841): ma_result_570425879 {.
        cdecl.}
    flags*: ma_uint32_570425831
  ma_data_source_vtable_570426213 = struct_ma_data_source_vtable_570426212 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5932:3
  ma_data_source_get_next_proc_570426215 = proc (a0: pointer): pointer {.cdecl.} ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5934:28
  struct_ma_data_source_config_570426217 {.pure, inheritable, bycopy.} = object
    vtable*: ptr ma_data_source_vtable_570426214 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5936:9
  ma_data_source_config_570426219 = struct_ma_data_source_config_570426218 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5939:3
  struct_ma_data_source_base_570426221 {.pure, inheritable, bycopy.} = object
    vtable*: ptr ma_data_source_vtable_570426214 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5944:9
    rangeBegInFrames*: ma_uint64_570425835
    rangeEndInFrames*: ma_uint64_570425835
    loopBegInFrames*: ma_uint64_570425835
    loopEndInFrames*: ma_uint64_570425835
    pCurrent*: pointer
    pNext*: pointer
    onGetNext*: ma_data_source_get_next_proc_570426216
    isLooping*: ma_bool32_570425841
  ma_data_source_base_570426223 = struct_ma_data_source_base_570426222 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5955:3
  struct_ma_audio_buffer_ref_570426225 {.pure, inheritable, bycopy.} = object
    ds*: ma_data_source_base_570426224 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5983:9
    format*: ma_format_570425895
    channels*: ma_uint32_570425831
    sampleRate*: ma_uint32_570425831
    cursor*: ma_uint64_570425835
    sizeInFrames*: ma_uint64_570425835
    pData*: pointer
  ma_audio_buffer_ref_570426227 = struct_ma_audio_buffer_ref_570426226 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5992:3
  struct_ma_audio_buffer_config_570426229 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6008:9
    channels*: ma_uint32_570425831
    sampleRate*: ma_uint32_570425831
    sizeInFrames*: ma_uint64_570425835
    pData*: pointer
    allocationCallbacks*: ma_allocation_callbacks_570425918
  ma_audio_buffer_config_570426231 = struct_ma_audio_buffer_config_570426230 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6016:3
  struct_ma_audio_buffer_570426233 {.pure, inheritable, bycopy.} = object
    ref_field*: ma_audio_buffer_ref_570426228 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6020:9
    allocationCallbacks*: ma_allocation_callbacks_570425918
    ownsData*: ma_bool32_570425841
    internal_pExtraData*: array[1'i64, ma_uint8_570425823]
  ma_audio_buffer_570426235 = struct_ma_audio_buffer_570426234 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6026:3
  ma_paged_audio_buffer_page_570426237 = struct_ma_paged_audio_buffer_page_570426240 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6054:43
  struct_ma_paged_audio_buffer_page_570426239 {.pure, inheritable, bycopy.} = object
    pNext*: ptr ma_paged_audio_buffer_page_570426238 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6055:8
    sizeInFrames*: ma_uint64_570425835
    pAudioData*: array[1'i64, ma_uint8_570425823]
  struct_ma_paged_audio_buffer_data_570426241 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6062:9
    channels*: ma_uint32_570425831
    head*: ma_paged_audio_buffer_page_570426238
    pTail*: ptr ma_paged_audio_buffer_page_570426238
  ma_paged_audio_buffer_data_570426243 = struct_ma_paged_audio_buffer_data_570426242 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6068:3
  struct_ma_paged_audio_buffer_config_570426245 {.pure, inheritable, bycopy.} = object
    pData*: ptr ma_paged_audio_buffer_data_570426244 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6081:9
  ma_paged_audio_buffer_config_570426247 = struct_ma_paged_audio_buffer_config_570426246 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6084:3
  struct_ma_paged_audio_buffer_570426249 {.pure, inheritable, bycopy.} = object
    ds*: ma_data_source_base_570426224 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6089:9
    pData*: ptr ma_paged_audio_buffer_data_570426244
    pCurrent*: ptr ma_paged_audio_buffer_page_570426238
    relativeCursor*: ma_uint64_570425835
    absoluteCursor*: ma_uint64_570425835
  ma_paged_audio_buffer_570426251 = struct_ma_paged_audio_buffer_570426250 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6096:3
  struct_ma_rb_570426253 {.pure, inheritable, bycopy.} = object
    pBuffer*: pointer        ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6112:9
    subbufferSizeInBytes*: ma_uint32_570425831
    subbufferCount*: ma_uint32_570425831
    subbufferStrideInBytes*: ma_uint32_570425831
    encodedReadOffset*: ma_uint32_570425831
    encodedWriteOffset*: ma_uint32_570425831
    ownsBuffer*: ma_bool8_570425839
    clearOnWriteAcquire*: ma_bool8_570425839
    allocationCallbacks*: ma_allocation_callbacks_570425918
  ma_rb_570426255 = struct_ma_rb_570426254 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6123:3
  struct_ma_pcm_rb_570426257 {.pure, inheritable, bycopy.} = object
    ds*: ma_data_source_base_570426224 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6144:9
    rb*: ma_rb_570426256
    format*: ma_format_570425895
    channels*: ma_uint32_570425831
    sampleRate*: ma_uint32_570425831
  ma_pcm_rb_570426259 = struct_ma_pcm_rb_570426258 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6151:3
  struct_ma_duplex_rb_570426261 {.pure, inheritable, bycopy.} = object
    rb*: ma_pcm_rb_570426260 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6186:9
  ma_duplex_rb_570426263 = struct_ma_duplex_rb_570426262 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6189:3
  struct_ma_fence_570426265 {.pure, inheritable, bycopy.} = object
    e*: ma_event_570425956   ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6352:9
    counter*: ma_uint32_570425831
  ma_fence_570426267 = struct_ma_fence_570426266 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6358:3
  struct_ma_async_notification_callbacks_570426271 {.pure, inheritable, bycopy.} = object
    onSignal*: proc (a0: pointer): void {.cdecl.} ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6373:9
    pUserData*: pointer
  ma_async_notification_callbacks_570426273 = struct_ma_async_notification_callbacks_570426272 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6377:3
  struct_ma_async_notification_poll_570426275 {.pure, inheritable, bycopy.} = object
    cb*: ma_async_notification_callbacks_570426274 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6387:9
    signalled*: ma_bool32_570425841
  ma_async_notification_poll_570426277 = struct_ma_async_notification_poll_570426276 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6391:3
  struct_ma_async_notification_event_570426279 {.pure, inheritable, bycopy.} = object
    cb*: ma_async_notification_callbacks_570426274 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6402:9
    e*: ma_event_570425956
  ma_async_notification_event_570426281 = struct_ma_async_notification_event_570426280 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6408:3
  struct_ma_slot_allocator_config_570426283 {.pure, inheritable, bycopy.} = object
    capacity*: ma_uint32_570425831 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6440:9
  ma_slot_allocator_config_570426285 = struct_ma_slot_allocator_config_570426284 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6443:3
  struct_ma_slot_allocator_group_570426287 {.pure, inheritable, bycopy.} = object
    bitfield*: ma_uint32_570425831 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6448:9
  ma_slot_allocator_group_570426289 = struct_ma_slot_allocator_group_570426288 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6451:3
  struct_ma_slot_allocator_570426291 {.pure, inheritable, bycopy.} = object
    pGroups*: ptr ma_slot_allocator_group_570426290 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6453:9
    pSlots*: ptr ma_uint32_570425831
    count*: ma_uint32_570425831
    capacity*: ma_uint32_570425831
    internal_ownsHeap*: ma_bool32_570425841
    internal_pHeap*: pointer
  ma_slot_allocator_570426293 = struct_ma_slot_allocator_570426292 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6463:3
  ma_job_570426295 = struct_ma_job_570426298 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6473:23
  struct_ma_job_toc_t_breakup_t {.pure, inheritable, bycopy.} = object
    code*: ma_uint16_570425827
    slot*: ma_uint16_570425827
    refcount*: ma_uint32_570425831
  struct_ma_job_toc_t {.union, bycopy.} = object
    breakup*: struct_ma_job_toc_t_breakup_t
    allocation*: ma_uint64_570425835
  struct_ma_job_data_t_custom_t {.pure, inheritable, bycopy.} = object
    proc_field*: ma_job_proc_570426300
    data0*: ma_uintptr_570425837
    data1*: ma_uintptr_570425837
  struct_ma_job_data_t_resourceManager_t_loadDataBufferNode_t {.pure,
      inheritable, bycopy.} = object
    pResourceManager*: pointer
    pDataBufferNode*: pointer
    pFilePath*: cstring
    pFilePathW*: ptr wchar_t_570426306
    flags*: ma_uint32_570425831
    pInitNotification*: pointer
    pDoneNotification*: pointer
    pInitFence*: ptr ma_fence_570426268
    pDoneFence*: ptr ma_fence_570426268
  struct_ma_job_data_t_resourceManager_t_freeDataBufferNode_t {.pure,
      inheritable, bycopy.} = object
    pResourceManager*: pointer
    pDataBufferNode*: pointer
    pDoneNotification*: pointer
    pDoneFence*: ptr ma_fence_570426268
  struct_ma_job_data_t_resourceManager_t_pageDataBufferNode_t {.pure,
      inheritable, bycopy.} = object
    pResourceManager*: pointer
    pDataBufferNode*: pointer
    pDecoder*: pointer
    pDoneNotification*: pointer
    pDoneFence*: ptr ma_fence_570426268
  struct_ma_job_data_t_resourceManager_t_loadDataBuffer_t {.pure, inheritable,
      bycopy.} = object
    pDataBuffer*: pointer
    pInitNotification*: pointer
    pDoneNotification*: pointer
    pInitFence*: ptr ma_fence_570426268
    pDoneFence*: ptr ma_fence_570426268
    rangeBegInPCMFrames*: ma_uint64_570425835
    rangeEndInPCMFrames*: ma_uint64_570425835
    loopPointBegInPCMFrames*: ma_uint64_570425835
    loopPointEndInPCMFrames*: ma_uint64_570425835
    isLooping*: ma_uint32_570425831
  struct_ma_job_data_t_resourceManager_t_freeDataBuffer_t {.pure, inheritable,
      bycopy.} = object
    pDataBuffer*: pointer
    pDoneNotification*: pointer
    pDoneFence*: ptr ma_fence_570426268
  struct_ma_job_data_t_resourceManager_t_loadDataStream_t {.pure, inheritable,
      bycopy.} = object
    pDataStream*: pointer
    pFilePath*: cstring
    pFilePathW*: ptr wchar_t_570426306
    initialSeekPoint*: ma_uint64_570425835
    pInitNotification*: pointer
    pInitFence*: ptr ma_fence_570426268
  struct_ma_job_data_t_resourceManager_t_freeDataStream_t {.pure, inheritable,
      bycopy.} = object
    pDataStream*: pointer
    pDoneNotification*: pointer
    pDoneFence*: ptr ma_fence_570426268
  struct_ma_job_data_t_resourceManager_t_pageDataStream_t {.pure, inheritable,
      bycopy.} = object
    pDataStream*: pointer
    pageIndex*: ma_uint32_570425831
  struct_ma_job_data_t_resourceManager_t_seekDataStream_t {.pure, inheritable,
      bycopy.} = object
    pDataStream*: pointer
    frameIndex*: ma_uint64_570425835
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
    deviceType*: ma_uint32_570425831
  struct_ma_job_data_t_device_t_aaudio_t {.union, bycopy.} = object
    reroute*: struct_ma_job_data_t_device_t_aaudio_t_reroute_t
  struct_ma_job_data_t_device_t {.union, bycopy.} = object
    aaudio*: struct_ma_job_data_t_device_t_aaudio_t
  struct_ma_job_data_t {.union, bycopy.} = object
    custom*: struct_ma_job_data_t_custom_t
    resourceManager*: struct_ma_job_data_t_resourceManager_t
    device*: struct_ma_job_data_t_device_t
  struct_ma_job_570426297 {.pure, inheritable, bycopy.} = object
    toc*: struct_ma_job_toc_t ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6506:8
    next*: ma_uint64_570425835
    order*: ma_uint32_570425831
    data*: struct_ma_job_data_t
  ma_job_proc_570426299 = proc (a0: ptr ma_job_570426296): ma_result_570425879 {.
      cdecl.}                ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6479:22
  ma_job_type_570426303 = enum_ma_job_type_570426302 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6504:3
  wchar_t_570426305 = cint   ## Generated based on /usr/lib/clang/20/include/__stddef_wchar_t.h:24:24
  ma_job_queue_flags_570426309 = enum_ma_job_queue_flags_570426308 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6637:3
  struct_ma_job_queue_config_570426311 {.pure, inheritable, bycopy.} = object
    flags*: ma_uint32_570425831 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6639:9
    capacity*: ma_uint32_570425831
  ma_job_queue_config_570426313 = struct_ma_job_queue_config_570426312 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6643:3
  struct_ma_job_queue_570426315 {.pure, inheritable, bycopy.} = object
    flags*: ma_uint32_570425831 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6648:9
    capacity*: ma_uint32_570425831
    head*: ma_uint64_570425835
    tail*: ma_uint64_570425835
    sem*: ma_semaphore_570425960
    allocator*: ma_slot_allocator_570426294
    pJobs*: ptr ma_job_570426296
    lock*: ma_spinlock_570425944
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_570425841
  ma_job_queue_570426317 = struct_ma_job_queue_570426316 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6666:3
  ma_context_570426319 = struct_ma_context_570426322 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6689:41
  struct_ma_context_570426321 {.pure, inheritable, bycopy.} = object
    pVTable*: ptr ma_device_backend_vtable_570426340 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7695:8
    pBackendState*: pointer
    pLog*: ptr ma_log_570425970
    log*: ma_log_570425970
    threadPriority*: ma_thread_priority_570425948
    threadStackSize*: csize_t
    pUserData*: pointer
    allocationCallbacks*: ma_allocation_callbacks_570425918
    deviceEnumLock*: ma_mutex_570425952
    deviceInfoCapacity*: ma_uint32_570425831
    playbackDeviceInfoCount*: ma_uint32_570425831
    captureDeviceInfoCount*: ma_uint32_570425831
    pDeviceInfos*: ptr ma_device_info_570426574
  ma_context_config_570426323 = struct_ma_context_config_570426326 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6690:41
  struct_ma_context_config_570426325 {.pure, inheritable, bycopy.} = object
    pLog*: ptr ma_log_570425970 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7670:8
    threadPriority*: ma_thread_priority_570425948
    threadStackSize*: csize_t
    pUserData*: pointer
    allocationCallbacks*: ma_allocation_callbacks_570425918
    wasapi*: ma_context_config_wasapi_570426350
    dsound*: ma_context_config_dsound_570426358
    winmm*: ma_context_config_winmm_570426366
    coreaudio*: ma_context_config_coreaudio_570426382
    pulseaudio*: ma_context_config_pulseaudio_570426390
    alsa*: ma_context_config_alsa_570426398
    jack*: ma_context_config_jack_570426406
    sndio*: ma_context_config_sndio_570426414
    audio4*: ma_context_config_audio4_570426422
    oss*: ma_context_config_oss_570426430
    aaudio*: ma_context_config_aaudio_570426458
    opensl*: ma_context_config_opensl_570426474
    webaudio*: ma_context_config_webaudio_570426486
    null_backend*: ma_context_config_null_570426494
  ma_device_570426327 = struct_ma_device_570426330 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6691:41
  struct_ma_device_resampling_t_linear_t {.pure, inheritable, bycopy.} = object
    lpfOrder*: ma_uint32_570425831
  struct_ma_device_resampling_t {.pure, inheritable, bycopy.} = object
    algorithm*: ma_resample_algorithm_570426176
    pBackendVTable*: ptr ma_resampling_backend_vtable_570426172
    pBackendUserData*: pointer
    linear*: struct_ma_device_resampling_t_linear_t
  struct_ma_device_playback_t {.pure, inheritable, bycopy.} = object
    pID*: ptr ma_device_id_570426570
    id*: ma_device_id_570426570
    shareMode*: ma_share_mode_570426562
    format*: ma_format_570425895
    channels*: ma_uint32_570425831
    channelMap*: array[254'i64, ma_channel_570425871]
    internalFormat*: ma_format_570425895
    internalChannels*: ma_uint32_570425831
    internalSampleRate*: ma_uint32_570425831
    internalChannelMap*: array[254'i64, ma_channel_570425871]
    internalPeriodSizeInFrames*: ma_uint32_570425831
    internalPeriods*: ma_uint32_570425831
    channelMixMode*: ma_channel_mix_mode_570425910
    calculateLFEFromSpatialChannels*: ma_bool32_570425841
    converter_field*: ma_data_converter_570426208
    pIntermediaryBuffer*: pointer
    intermediaryBufferCap*: ma_uint32_570425831
    intermediaryBufferLen*: ma_uint32_570425831
    pInputCache*: pointer
    inputCacheCap*: ma_uint64_570425835
    inputCacheConsumed*: ma_uint64_570425835
    inputCacheRemaining*: ma_uint64_570425835
  struct_ma_device_capture_t {.pure, inheritable, bycopy.} = object
    pID*: ptr ma_device_id_570426570
    id*: ma_device_id_570426570
    shareMode*: ma_share_mode_570426562
    format*: ma_format_570425895
    channels*: ma_uint32_570425831
    channelMap*: array[254'i64, ma_channel_570425871]
    internalFormat*: ma_format_570425895
    internalChannels*: ma_uint32_570425831
    internalSampleRate*: ma_uint32_570425831
    internalChannelMap*: array[254'i64, ma_channel_570425871]
    internalPeriodSizeInFrames*: ma_uint32_570425831
    internalPeriods*: ma_uint32_570425831
    channelMixMode*: ma_channel_mix_mode_570425910
    calculateLFEFromSpatialChannels*: ma_bool32_570425841
    converter_field*: ma_data_converter_570426208
    pIntermediaryBuffer*: pointer
    intermediaryBufferCap*: ma_uint32_570425831
    intermediaryBufferLen*: ma_uint32_570425831
  struct_ma_device_570426329 {.pure, inheritable, bycopy.} = object
    pContext*: ptr ma_context_570426320 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7737:8
    type_field*: ma_device_type_570426558
    sampleRate*: ma_uint32_570425831
    state*: ma_atomic_device_status_570426514
    onData*: ma_device_data_proc_570426554
    onNotification*: ma_device_notification_proc_570426552
    pUserData*: pointer
    pBackendState*: pointer
    opQueue*: ma_device_op_queue_570426542
    opCompletionEvent*: ma_device_op_completion_event_570426526
    audioThread*: ma_thread_570425950
    startStopLock*: ma_mutex_570425952
    isOwnerOfContext*: ma_bool8_570425839
    noPreSilencedOutputBuffer*: ma_bool8_570425839
    noClip*: ma_bool8_570425839
    noDisableDenormals*: ma_bool8_570425839
    noFixedSizedCallback*: ma_bool8_570425839
    masterVolumeFactor*: ma_atomic_float_570425938
    duplexRB*: ma_duplex_rb_570426264
    resampling*: struct_ma_device_resampling_t
    playback*: struct_ma_device_playback_t
    capture*: struct_ma_device_capture_t
  ma_device_config_570426331 = struct_ma_device_config_570426334 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6692:41
  struct_ma_device_config_playback_t {.pure, inheritable, bycopy.} = object
    pDeviceID*: ptr ma_device_id_570426570
    format*: ma_format_570425895
    channels*: ma_uint32_570425831
    pChannelMap*: ptr ma_channel_570425871
    channelMixMode*: ma_channel_mix_mode_570425910
    calculateLFEFromSpatialChannels*: ma_bool32_570425841
    shareMode*: ma_share_mode_570426562
  struct_ma_device_config_capture_t {.pure, inheritable, bycopy.} = object
    pDeviceID*: ptr ma_device_id_570426570
    format*: ma_format_570425895
    channels*: ma_uint32_570425831
    pChannelMap*: ptr ma_channel_570425871
    channelMixMode*: ma_channel_mix_mode_570425910
    calculateLFEFromSpatialChannels*: ma_bool32_570425841
    shareMode*: ma_share_mode_570426562
  struct_ma_device_config_570426333 {.pure, inheritable, bycopy.} = object
    deviceType*: ma_device_type_570426558 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7500:8
    sampleRate*: ma_uint32_570425831
    periodSizeInFrames*: ma_uint32_570425831
    periodSizeInMilliseconds*: ma_uint32_570425831
    periods*: ma_uint32_570425831
    noPreSilencedOutputBuffer*: ma_bool8_570425839
    noClip*: ma_bool8_570425839
    noDisableDenormals*: ma_bool8_570425839
    noFixedSizedCallback*: ma_bool8_570425839
    dataCallback*: ma_device_data_proc_570426554
    notificationCallback*: ma_device_notification_proc_570426552
    pUserData*: pointer
    pBackendConfigs*: ptr ma_device_backend_config_570426502
    backendConfigCount*: csize_t
    resampling*: ma_resampler_config_570426164
    playback*: struct_ma_device_config_playback_t
    capture*: struct_ma_device_config_capture_t
    wasapi*: ma_device_config_wasapi_570426354
    dsound*: ma_device_config_dsound_570426362
    winmm*: ma_device_config_winmm_570426370
    coreaudio*: ma_device_config_coreaudio_570426386
    pulseaudio*: ma_device_config_pulseaudio_570426394
    alsa*: ma_device_config_alsa_570426402
    jack*: ma_device_config_jack_570426410
    sndio*: ma_device_config_sndio_570426418
    audio4*: ma_device_config_audio4_570426426
    oss*: ma_device_config_oss_570426434
    aaudio*: ma_device_config_aaudio_570426462
    opensl*: ma_device_config_opensl_570426478
    webaudio*: ma_device_config_webaudio_570426490
    null_backend*: ma_device_config_null_570426498
  ma_device_descriptor_570426335 = struct_ma_device_descriptor_570426338 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6693:41
  struct_ma_device_descriptor_570426337 {.pure, inheritable, bycopy.} = object
    pDeviceID*: ptr ma_device_id_570426570 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7462:8
    shareMode*: ma_share_mode_570426562
    format*: ma_format_570425895
    channels*: ma_uint32_570425831
    sampleRate*: ma_uint32_570425831
    channelMap*: array[254'i64, ma_channel_570425871]
    periodSizeInFrames*: ma_uint32_570425831
    periodSizeInMilliseconds*: ma_uint32_570425831
    periodCount*: ma_uint32_570425831
  ma_device_backend_vtable_570426339 = struct_ma_device_backend_vtable_570426342 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6694:41
  struct_ma_device_backend_vtable_570426341 {.pure, inheritable, bycopy.} = object
    onBackendInfo*: proc (a0: ptr ma_device_backend_info_570426506): void {.
        cdecl.}              ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7654:8
    onContextInit*: proc (a0: ptr ma_context_570426320; a1: pointer;
                          a2: ptr pointer): ma_result_570425879 {.cdecl.}
    onContextUninit*: proc (a0: ptr ma_context_570426320): void {.cdecl.}
    onContextEnumerateDevices*: proc (a0: ptr ma_context_570426320;
                                      a1: ma_enum_devices_callback_proc_570426580;
                                      a2: pointer): ma_result_570425879 {.cdecl.}
    onDeviceInit*: proc (a0: ptr ma_device_570426328; a1: pointer;
                         a2: ptr ma_device_descriptor_570426336;
                         a3: ptr ma_device_descriptor_570426336; a4: ptr pointer): ma_result_570425879 {.
        cdecl.}
    onDeviceUninit*: proc (a0: ptr ma_device_570426328): void {.cdecl.}
    onDeviceStart*: proc (a0: ptr ma_device_570426328): ma_result_570425879 {.
        cdecl.}
    onDeviceStop*: proc (a0: ptr ma_device_570426328): ma_result_570425879 {.
        cdecl.}
    onDeviceRead*: proc (a0: ptr ma_device_570426328; a1: pointer;
                         a2: ma_uint32_570425831; a3: ptr ma_uint32_570425831): ma_result_570425879 {.
        cdecl.}
    onDeviceWrite*: proc (a0: ptr ma_device_570426328; a1: pointer;
                          a2: ma_uint32_570425831; a3: ptr ma_uint32_570425831): ma_result_570425879 {.
        cdecl.}
    onDeviceLoop*: proc (a0: ptr ma_device_570426328): void {.cdecl.}
    onDeviceWakeup*: proc (a0: ptr ma_device_570426328): void {.cdecl.}
  ma_wasapi_usage_570426345 = enum_ma_wasapi_usage_570426344 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6709:3
  struct_ma_context_config_wasapi_570426347 {.pure, inheritable, bycopy.} = object
    internal_unused*: cint   ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6712:16
  ma_context_config_wasapi_570426349 = struct_ma_context_config_wasapi_570426348 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6715:3
  struct_ma_device_config_wasapi_570426351 {.pure, inheritable, bycopy.} = object
    usage*: ma_wasapi_usage_570426346 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6720:16
    noAutoConvertSRC*: ma_bool8_570425839
    noDefaultQualitySRC*: ma_bool8_570425839
    noAutoStreamRouting*: ma_bool8_570425839
    noHardwareOffloading*: ma_bool8_570425839
    loopbackProcessID*: ma_uint32_570425831
    loopbackProcessExclude*: ma_bool8_570425839
  ma_device_config_wasapi_570426353 = struct_ma_device_config_wasapi_570426352 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6729:3
  struct_ma_context_config_dsound_570426355 {.pure, inheritable, bycopy.} = object
    hWnd*: ma_handle_570425847 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6739:16
  ma_context_config_dsound_570426357 = struct_ma_context_config_dsound_570426356 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6742:3
  struct_ma_device_config_dsound_570426359 {.pure, inheritable, bycopy.} = object
    internal_unused*: cint   ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6747:16
  ma_device_config_dsound_570426361 = struct_ma_device_config_dsound_570426360 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6750:3
  struct_ma_context_config_winmm_570426363 {.pure, inheritable, bycopy.} = object
    internal_unused*: cint   ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6760:16
  ma_context_config_winmm_570426365 = struct_ma_context_config_winmm_570426364 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6763:3
  struct_ma_device_config_winmm_570426367 {.pure, inheritable, bycopy.} = object
    internal_unused*: cint   ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6768:16
  ma_device_config_winmm_570426369 = struct_ma_device_config_winmm_570426368 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6771:3
  ma_ios_session_category_570426373 = enum_ma_ios_session_category_570426372 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6792:3
  ma_ios_session_category_option_570426377 = enum_ma_ios_session_category_option_570426376 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6804:3
  struct_ma_context_config_coreaudio_570426379 {.pure, inheritable, bycopy.} = object
    sessionCategory*: ma_ios_session_category_570426374 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6807:16
    sessionCategoryOptions*: ma_uint32_570425831
    noAudioSessionActivate*: ma_bool32_570425841
    noAudioSessionDeactivate*: ma_bool32_570425841
  ma_context_config_coreaudio_570426381 = struct_ma_context_config_coreaudio_570426380 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6813:3
  struct_ma_device_config_coreaudio_570426383 {.pure, inheritable, bycopy.} = object
    allowNominalSampleRateChange*: ma_bool32_570425841 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6818:16
  ma_device_config_coreaudio_570426385 = struct_ma_device_config_coreaudio_570426384 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6821:3
  struct_ma_context_config_pulseaudio_570426387 {.pure, inheritable, bycopy.} = object
    pApplicationName*: cstring ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6831:16
    pServerName*: cstring
    tryAutoSpawn*: ma_bool32_570425841
  ma_context_config_pulseaudio_570426389 = struct_ma_context_config_pulseaudio_570426388 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6836:3
  struct_ma_device_config_pulseaudio_570426391 {.pure, inheritable, bycopy.} = object
    pStreamNamePlayback*: cstring ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6841:16
    pStreamNameCapture*: cstring
    channelMap*: cint
  ma_device_config_pulseaudio_570426393 = struct_ma_device_config_pulseaudio_570426392 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6846:3
  struct_ma_context_config_alsa_570426395 {.pure, inheritable, bycopy.} = object
    useVerboseDeviceEnumeration*: ma_bool32_570425841 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6856:16
  ma_context_config_alsa_570426397 = struct_ma_context_config_alsa_570426396 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6859:3
  struct_ma_device_config_alsa_570426399 {.pure, inheritable, bycopy.} = object
    noMMap*: ma_bool32_570425841 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6864:16
    noAutoFormat*: ma_bool32_570425841
    noAutoChannels*: ma_bool32_570425841
    noAutoResample*: ma_bool32_570425841
    assumeDefaultChannelLayout*: ma_bool32_570425841
  ma_device_config_alsa_570426401 = struct_ma_device_config_alsa_570426400 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6871:3
  struct_ma_context_config_jack_570426403 {.pure, inheritable, bycopy.} = object
    pClientName*: cstring    ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6881:16
    tryStartServer*: ma_bool32_570425841
  ma_context_config_jack_570426405 = struct_ma_context_config_jack_570426404 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6885:3
  struct_ma_device_config_jack_570426407 {.pure, inheritable, bycopy.} = object
    noAutoConnect*: ma_bool32_570425841 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6890:16
  ma_device_config_jack_570426409 = struct_ma_device_config_jack_570426408 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6893:3
  struct_ma_context_config_sndio_570426411 {.pure, inheritable, bycopy.} = object
    internal_unused*: cint   ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6903:16
  ma_context_config_sndio_570426413 = struct_ma_context_config_sndio_570426412 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6906:3
  struct_ma_device_config_sndio_570426415 {.pure, inheritable, bycopy.} = object
    internal_unused*: cint   ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6911:16
  ma_device_config_sndio_570426417 = struct_ma_device_config_sndio_570426416 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6914:3
  struct_ma_context_config_audio4_570426419 {.pure, inheritable, bycopy.} = object
    internal_unused*: cint   ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6924:16
  ma_context_config_audio4_570426421 = struct_ma_context_config_audio4_570426420 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6927:3
  struct_ma_device_config_audio4_570426423 {.pure, inheritable, bycopy.} = object
    internal_unused*: cint   ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6932:16
  ma_device_config_audio4_570426425 = struct_ma_device_config_audio4_570426424 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6935:3
  struct_ma_context_config_oss_570426427 {.pure, inheritable, bycopy.} = object
    internal_unused*: cint   ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6945:16
  ma_context_config_oss_570426429 = struct_ma_context_config_oss_570426428 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6948:3
  struct_ma_device_config_oss_570426431 {.pure, inheritable, bycopy.} = object
    internal_unused*: cint   ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6953:16
  ma_device_config_oss_570426433 = struct_ma_device_config_oss_570426432 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6956:3
  ma_aaudio_usage_570426437 = enum_ma_aaudio_usage_570426436 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6986:3
  ma_aaudio_content_type_570426441 = enum_ma_aaudio_content_type_570426440 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:6996:3
  ma_aaudio_input_preset_570426445 = enum_ma_aaudio_input_preset_570426444 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7008:3
  ma_aaudio_allowed_capture_policy_570426449 = enum_ma_aaudio_allowed_capture_policy_570426448 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7016:3
  ma_aaudio_performance_mode_570426453 = enum_ma_aaudio_performance_mode_570426452 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7024:3
  struct_ma_context_config_aaudio_570426455 {.pure, inheritable, bycopy.} = object
    internal_unused*: cint   ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7027:16
  ma_context_config_aaudio_570426457 = struct_ma_context_config_aaudio_570426456 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7030:3
  struct_ma_device_config_aaudio_570426459 {.pure, inheritable, bycopy.} = object
    usage*: ma_aaudio_usage_570426438 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7035:16
    contentType*: ma_aaudio_content_type_570426442
    inputPreset*: ma_aaudio_input_preset_570426446
    allowedCapturePolicy*: ma_aaudio_allowed_capture_policy_570426450
    performanceMode*: ma_aaudio_performance_mode_570426454
    noAutoStartAfterReroute*: ma_bool32_570425841
    allowSetBufferCapacity*: ma_bool32_570425841
  ma_device_config_aaudio_570426461 = struct_ma_device_config_aaudio_570426460 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7044:3
  ma_opensl_stream_type_570426465 = enum_ma_opensl_stream_type_570426464 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7064:3
  ma_opensl_recording_preset_570426469 = enum_ma_opensl_recording_preset_570426468 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7075:3
  struct_ma_context_config_opensl_570426471 {.pure, inheritable, bycopy.} = object
    internal_unused*: cint   ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7078:16
  ma_context_config_opensl_570426473 = struct_ma_context_config_opensl_570426472 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7081:3
  struct_ma_device_config_opensl_570426475 {.pure, inheritable, bycopy.} = object
    streamType*: ma_opensl_stream_type_570426466 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7086:16
    recordingPreset*: ma_opensl_recording_preset_570426470
  ma_device_config_opensl_570426477 = struct_ma_device_config_opensl_570426476 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7090:3
  ma_webaudio_latency_hint_570426481 = enum_ma_webaudio_latency_hint_570426480 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7105:3
  struct_ma_context_config_webaudio_570426483 {.pure, inheritable, bycopy.} = object
    internal_unused*: cint   ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7108:16
  ma_context_config_webaudio_570426485 = struct_ma_context_config_webaudio_570426484 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7111:3
  struct_ma_device_config_webaudio_570426487 {.pure, inheritable, bycopy.} = object
    latencyHint*: ma_webaudio_latency_hint_570426482 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7116:16
  ma_device_config_webaudio_570426489 = struct_ma_device_config_webaudio_570426488 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7119:3
  struct_ma_context_config_null_570426491 {.pure, inheritable, bycopy.} = object
    internal_unused*: cint   ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7129:16
  ma_context_config_null_570426493 = struct_ma_context_config_null_570426492 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7132:3
  struct_ma_device_config_null_570426495 {.pure, inheritable, bycopy.} = object
    internal_unused*: cint   ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7137:16
  ma_device_config_null_570426497 = struct_ma_device_config_null_570426496 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7140:3
  struct_ma_device_backend_config_570426499 {.pure, inheritable, bycopy.} = object
    pVTable*: ptr ma_device_backend_vtable_570426340 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7162:16
    pConfig*: pointer
  ma_device_backend_config_570426501 = struct_ma_device_backend_config_570426500 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7166:3
  struct_ma_device_backend_info_570426503 {.pure, inheritable, bycopy.} = object
    pName*: cstring          ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7175:16
    isLoopbackSupported*: ma_bool32_570425841
  ma_device_backend_info_570426505 = struct_ma_device_backend_info_570426504 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7179:3
  ma_device_status_570426509 = enum_ma_device_status_570426508 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7195:3
  struct_ma_atomic_device_status_570426511 {.pure, inheritable, bycopy.} = object
    value*: ma_device_status_570426510 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7197:1
  ma_atomic_device_status_570426513 = struct_ma_atomic_device_status_570426512 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7197:1
  struct_ma_device_job_thread_config_570426515 {.pure, inheritable, bycopy.} = object
    noThread*: ma_bool32_570425841 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7207:9
    jobQueueCapacity*: ma_uint32_570425831
    jobQueueFlags*: ma_uint32_570425831
  ma_device_job_thread_config_570426517 = struct_ma_device_job_thread_config_570426516 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7212:3
  struct_ma_device_job_thread_570426519 {.pure, inheritable, bycopy.} = object
    thread*: ma_thread_570425950 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7216:9
    jobQueue*: ma_job_queue_570426318
    internal_hasThread*: ma_bool32_570425841
  ma_device_job_thread_570426521 = struct_ma_device_job_thread_570426520 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7221:3
  struct_ma_device_op_completion_event_570426523 {.pure, inheritable, bycopy.} = object
    result*: ma_result_570425879 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7234:16
    event*: ma_event_570425956
  ma_device_op_completion_event_570426525 = struct_ma_device_op_completion_event_570426524 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7240:3
  ma_device_op_type_570426529 = enum_ma_device_op_type_570426528 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7248:3
  union_ma_device_op_params_init_t {.pure, inheritable, bycopy.} = object
    pDeviceBackendConfig*: pointer
    pDescriptorPlayback*: ptr ma_device_descriptor_570426336
    pDescriptorCapture*: ptr ma_device_descriptor_570426336
  union_ma_device_op_params_570426531 {.union, bycopy.} = object
    init*: union_ma_device_op_params_init_t ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7250:15
  ma_device_op_params_570426533 = union_ma_device_op_params_570426532 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7258:3
  struct_ma_device_op_570426535 {.pure, inheritable, bycopy.} = object
    type_field*: ma_device_op_type_570426530 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7260:16
    params*: ma_device_op_params_570426534
    pCompletionEvent*: ptr ma_device_op_completion_event_570426526
  ma_device_op_570426537 = struct_ma_device_op_570426536 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7265:3
  struct_ma_device_op_queue_570426539 {.pure, inheritable, bycopy.} = object
    lock*: ma_mutex_570425952 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7271:16
    sem*: ma_semaphore_570425960
    count*: ma_uint32_570425831
    tail*: ma_uint32_570425831
    pItems*: array[16'i64, ma_device_op_570426538]
  ma_device_op_queue_570426541 = struct_ma_device_op_queue_570426540 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7280:3
  ma_device_notification_type_570426545 = enum_ma_device_notification_type_570426544 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7293:3
  struct_ma_device_notification_data_t_started_t {.pure, inheritable, bycopy.} = object
    internal_unused*: cint
  struct_ma_device_notification_data_t_stopped_t {.pure, inheritable, bycopy.} = object
    internal_unused*: cint
  struct_ma_device_notification_data_t_rerouted_t {.pure, inheritable, bycopy.} = object
    internal_unused*: cint
  struct_ma_device_notification_data_t_interruption_t {.pure, inheritable,
      bycopy.} = object
    internal_unused*: cint
  struct_ma_device_notification_data_t_unlocked_t {.pure, inheritable, bycopy.} = object
    internal_unused*: cint
  struct_ma_device_notification_data_t {.union, bycopy.} = object
    started*: struct_ma_device_notification_data_t_started_t
    stopped*: struct_ma_device_notification_data_t_stopped_t
    rerouted*: struct_ma_device_notification_data_t_rerouted_t
    interruption*: struct_ma_device_notification_data_t_interruption_t
    unlocked*: struct_ma_device_notification_data_t_unlocked_t
  struct_ma_device_notification_570426547 {.pure, inheritable, bycopy.} = object
    pDevice*: ptr ma_device_570426328 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7295:9
    type_field*: ma_device_notification_type_570426546
    data*: struct_ma_device_notification_data_t
  ma_device_notification_570426549 = struct_ma_device_notification_570426548 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7322:3
  ma_device_notification_proc_570426551 = proc (a0: ptr ma_device_notification_570426550): void {.
      cdecl.}                ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7364:17
  ma_device_data_proc_570426553 = proc (a0: ptr ma_device_570426328;
                                        a1: pointer; a2: pointer; a3: ma_uint32_570425831): void {.
      cdecl.}                ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7407:17
  ma_device_type_570426557 = enum_ma_device_type_570426556 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7417:3
  ma_share_mode_570426561 = enum_ma_share_mode_570426560 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7423:3
  union_ma_timer_570426563 {.union, bycopy.} = object
    counter*: ma_int64_570425833 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7426:9
    counterD*: cdouble
  ma_timer_570426565 = union_ma_timer_570426564 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7430:3
  union_ma_device_id_custom_t {.union, bycopy.} = object
    i*: cint
    s*: array[256'i64, cschar]
    p*: pointer
  union_ma_device_id_570426567 {.union, bycopy.} = object
    wasapi*: array[64'i64, ma_wchar_win32_570425865] ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7432:9
    dsound*: array[16'i64, ma_uint8_570425823]
    winmm*: ma_uint32_570425831
    alsa*: array[256'i64, cschar]
    pulse*: array[256'i64, cschar]
    jack*: cint
    coreaudio*: array[256'i64, cschar]
    sndio*: array[256'i64, cschar]
    audio4*: array[256'i64, cschar]
    oss*: array[64'i64, cschar]
    aaudio*: ma_int32_570425829
    opensl*: ma_uint32_570425831
    webaudio*: array[32'i64, cschar]
    nullbackend*: cint
    custom*: union_ma_device_id_custom_t
  ma_device_id_570426569 = union_ma_device_id_570426568 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7454:3
  struct_ma_device_info_nativeDataFormats_t {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895
    channels*: ma_uint32_570425831
    sampleRate*: ma_uint32_570425831
    flags*: ma_uint32_570425831
  struct_ma_device_info_570426571 {.pure, inheritable, bycopy.} = object
    id*: ma_device_id_570426570 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7483:9
    name*: array[256'i64, cschar]
    isDefault*: ma_bool32_570425841
    nativeDataFormatCount*: ma_uint32_570425831
    nativeDataFormats*: array[64'i64, struct_ma_device_info_nativeDataFormats_t]
  ma_device_info_570426573 = struct_ma_device_info_570426572 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7498:3
  ma_device_enumeration_result_570426577 = enum_ma_device_enumeration_result_570426576 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7560:3
  ma_enum_devices_callback_proc_570426579 = proc (a0: ma_device_type_570426558;
      a1: ptr ma_device_info_570426574; a2: pointer): ma_device_enumeration_result_570426578 {.
      cdecl.}                ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7585:41
  ma_vfs_file_570426583 = ma_handle_570425847 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9620:19
  ma_open_mode_flags_570426587 = enum_ma_open_mode_flags_570426586 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9626:3
  ma_seek_origin_570426591 = enum_ma_seek_origin_570426590 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9633:3
  struct_ma_file_info_570426593 {.pure, inheritable, bycopy.} = object
    sizeInBytes*: ma_uint64_570425835 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9635:9
  ma_file_info_570426595 = struct_ma_file_info_570426594 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9638:3
  struct_ma_vfs_callbacks_570426597 {.pure, inheritable, bycopy.} = object
    onOpen*: proc (a0: pointer; a1: cstring; a2: ma_uint32_570425831;
                   a3: ptr ma_vfs_file_570426584): ma_result_570425879 {.cdecl.} ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9640:9
    onOpenW*: proc (a0: pointer; a1: ptr wchar_t_570426306; a2: ma_uint32_570425831;
                    a3: ptr ma_vfs_file_570426584): ma_result_570425879 {.cdecl.}
    onClose*: proc (a0: pointer; a1: ma_vfs_file_570426584): ma_result_570425879 {.
        cdecl.}
    onRead*: proc (a0: pointer; a1: ma_vfs_file_570426584; a2: pointer;
                   a3: csize_t; a4: ptr csize_t): ma_result_570425879 {.cdecl.}
    onWrite*: proc (a0: pointer; a1: ma_vfs_file_570426584; a2: pointer;
                    a3: csize_t; a4: ptr csize_t): ma_result_570425879 {.cdecl.}
    onSeek*: proc (a0: pointer; a1: ma_vfs_file_570426584; a2: ma_int64_570425833;
                   a3: ma_seek_origin_570426592): ma_result_570425879 {.cdecl.}
    onTell*: proc (a0: pointer; a1: ma_vfs_file_570426584; a2: ptr ma_int64_570425833): ma_result_570425879 {.
        cdecl.}
    onInfo*: proc (a0: pointer; a1: ma_vfs_file_570426584; a2: ptr ma_file_info_570426596): ma_result_570425879 {.
        cdecl.}
  ma_vfs_callbacks_570426599 = struct_ma_vfs_callbacks_570426598 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9650:3
  struct_ma_default_vfs_570426601 {.pure, inheritable, bycopy.} = object
    cb*: ma_vfs_callbacks_570426600 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9662:9
    allocationCallbacks*: ma_allocation_callbacks_570425918
  ma_default_vfs_570426603 = struct_ma_default_vfs_570426602 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9666:3
  ma_read_proc_570426605 = proc (a0: pointer; a1: pointer; a2: csize_t;
                                 a3: ptr csize_t): ma_result_570425879 {.cdecl.} ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9672:22
  ma_seek_proc_570426607 = proc (a0: pointer; a1: ma_int64_570425833;
                                 a2: ma_seek_origin_570426592): ma_result_570425879 {.
      cdecl.}                ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9673:22
  ma_tell_proc_570426609 = proc (a0: pointer; a1: ptr ma_int64_570425833): ma_result_570425879 {.
      cdecl.}                ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9674:22
  ma_encoding_format_570426613 = enum_ma_encoding_format_570426612 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9687:3
  ma_decoder_570426615 = struct_ma_decoder_570426618 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9700:27
  struct_ma_decoder_data_t_vfs_t {.pure, inheritable, bycopy.} = object
    pVFS*: pointer
    file*: ma_vfs_file_570426584
  struct_ma_decoder_data_t_memory_t {.pure, inheritable, bycopy.} = object
    pData*: ptr ma_uint8_570425823
    dataSize*: csize_t
    currentReadPos*: csize_t
  struct_ma_decoder_data_t {.union, bycopy.} = object
    vfs*: struct_ma_decoder_data_t_vfs_t
    memory*: struct_ma_decoder_data_t_memory_t
  struct_ma_decoder_570426617 {.pure, inheritable, bycopy.} = object
    ds*: ma_data_source_base_570426224 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9746:8
    pBackend*: pointer
    pBackendVTable*: ptr ma_decoding_backend_vtable_570426626
    pBackendUserData*: pointer
    onRead*: ma_decoder_read_proc_570426628
    onSeek*: ma_decoder_seek_proc_570426630
    onTell*: ma_decoder_tell_proc_570426632
    pUserData*: pointer
    readPointerInPCMFrames*: ma_uint64_570425835
    outputFormat*: ma_format_570425895
    outputChannels*: ma_uint32_570425831
    outputSampleRate*: ma_uint32_570425831
    converter_field*: ma_data_converter_570426208
    pInputCache*: pointer
    inputCacheCap*: ma_uint64_570425835
    inputCacheConsumed*: ma_uint64_570425835
    inputCacheRemaining*: ma_uint64_570425835
    allocationCallbacks*: ma_allocation_callbacks_570425918
    data*: struct_ma_decoder_data_t
  struct_ma_decoding_backend_config_570426619 {.pure, inheritable, bycopy.} = object
    preferredFormat*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9707:9
    seekPointCount*: ma_uint32_570425831
    encodingFormat*: ma_encoding_format_570426614
  ma_decoding_backend_config_570426621 = struct_ma_decoding_backend_config_570426620 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9712:3
  struct_ma_decoding_backend_vtable_570426623 {.pure, inheritable, bycopy.} = object
    onInit*: proc (a0: pointer; a1: ma_read_proc_570426606; a2: ma_seek_proc_570426608;
                   a3: ma_tell_proc_570426610; a4: pointer;
                   a5: ptr ma_decoding_backend_config_570426622;
                   a6: ptr ma_allocation_callbacks_570425918; a7: ptr pointer): ma_result_570425879 {.
        cdecl.}              ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9714:9
    onInitFile*: proc (a0: pointer; a1: cstring;
                       a2: ptr ma_decoding_backend_config_570426622;
                       a3: ptr ma_allocation_callbacks_570425918;
                       a4: ptr pointer): ma_result_570425879 {.cdecl.}
    onInitFileW*: proc (a0: pointer; a1: ptr wchar_t_570426306;
                        a2: ptr ma_decoding_backend_config_570426622;
                        a3: ptr ma_allocation_callbacks_570425918;
                        a4: ptr pointer): ma_result_570425879 {.cdecl.}
    onInitMemory*: proc (a0: pointer; a1: pointer; a2: csize_t;
                         a3: ptr ma_decoding_backend_config_570426622;
                         a4: ptr ma_allocation_callbacks_570425918;
                         a5: ptr pointer): ma_result_570425879 {.cdecl.}
    onUninit*: proc (a0: pointer; a1: pointer; a2: ptr ma_allocation_callbacks_570425918): void {.
        cdecl.}
    onGetEncodingFormat*: proc (a0: pointer; a1: pointer): ma_encoding_format_570426614 {.
        cdecl.}
  ma_decoding_backend_vtable_570426625 = struct_ma_decoding_backend_vtable_570426624 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9722:3
  ma_decoder_read_proc_570426627 = proc (a0: ptr ma_decoder_570426616;
      a1: pointer; a2: csize_t; a3: ptr csize_t): ma_result_570425879 {.cdecl.} ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9725:22
  ma_decoder_seek_proc_570426629 = proc (a0: ptr ma_decoder_570426616;
      a1: ma_int64_570425833; a2: ma_seek_origin_570426592): ma_result_570425879 {.
      cdecl.}                ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9726:22
  ma_decoder_tell_proc_570426631 = proc (a0: ptr ma_decoder_570426616;
      a1: ptr ma_int64_570425833): ma_result_570425879 {.cdecl.} ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9727:22
  struct_ma_decoder_config_570426633 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9729:9
    channels*: ma_uint32_570425831
    sampleRate*: ma_uint32_570425831
    pChannelMap*: ptr ma_channel_570425871
    channelMixMode*: ma_channel_mix_mode_570425910
    ditherMode*: ma_dither_mode_570425891
    resampling*: ma_resampler_config_570426164
    allocationCallbacks*: ma_allocation_callbacks_570425918
    encodingFormat*: ma_encoding_format_570426614
    seekPointCount*: ma_uint32_570425831
    ppBackendVTables*: ptr ptr ma_decoding_backend_vtable_570426626
    ppBackendUserData*: ptr pointer
    backendCount*: ma_uint32_570425831
  ma_decoder_config_570426635 = struct_ma_decoder_config_570426634 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9744:3
  ma_encoder_570426637 = struct_ma_encoder_570426640 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9882:27
  struct_ma_encoder_data_t_vfs_t {.pure, inheritable, bycopy.} = object
    pVFS*: pointer
    file*: ma_vfs_file_570426584
  struct_ma_encoder_data_t {.union, bycopy.} = object
    vfs*: struct_ma_encoder_data_t_vfs_t
  struct_ma_encoder_570426639 {.pure, inheritable, bycopy.} = object
    config*: ma_encoder_config_570426654 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9901:8
    onWrite*: ma_encoder_write_proc_570426642
    onSeek*: ma_encoder_seek_proc_570426644
    onInit*: ma_encoder_init_proc_570426646
    onUninit*: ma_encoder_uninit_proc_570426648
    onWritePCMFrames*: ma_encoder_write_pcm_frames_proc_570426650
    pUserData*: pointer
    pInternalEncoder*: pointer
    data*: struct_ma_encoder_data_t
  ma_encoder_write_proc_570426641 = proc (a0: ptr ma_encoder_570426638;
      a1: pointer; a2: csize_t; a3: ptr csize_t): ma_result_570425879 {.cdecl.} ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9884:22
  ma_encoder_seek_proc_570426643 = proc (a0: ptr ma_encoder_570426638;
      a1: ma_int64_570425833; a2: ma_seek_origin_570426592): ma_result_570425879 {.
      cdecl.}                ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9885:22
  ma_encoder_init_proc_570426645 = proc (a0: ptr ma_encoder_570426638): ma_result_570425879 {.
      cdecl.}                ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9886:22
  ma_encoder_uninit_proc_570426647 = proc (a0: ptr ma_encoder_570426638): void {.
      cdecl.}                ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9887:22
  ma_encoder_write_pcm_frames_proc_570426649 = proc (a0: ptr ma_encoder_570426638;
      a1: pointer; a2: ma_uint64_570425835; a3: ptr ma_uint64_570425835): ma_result_570425879 {.
      cdecl.}                ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9888:22
  struct_ma_encoder_config_570426651 {.pure, inheritable, bycopy.} = object
    encodingFormat*: ma_encoding_format_570426614 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9890:9
    format*: ma_format_570425895
    channels*: ma_uint32_570425831
    sampleRate*: ma_uint32_570425831
    allocationCallbacks*: ma_allocation_callbacks_570425918
  ma_encoder_config_570426653 = struct_ma_encoder_config_570426652 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9897:3
  ma_waveform_type_570426657 = enum_ma_waveform_type_570426656 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9944:3
  struct_ma_waveform_config_570426659 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9946:9
    channels*: ma_uint32_570425831
    sampleRate*: ma_uint32_570425831
    type_field*: ma_waveform_type_570426658
    amplitude*: cdouble
    frequency*: cdouble
  ma_waveform_config_570426661 = struct_ma_waveform_config_570426660 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9954:3
  struct_ma_waveform_570426663 {.pure, inheritable, bycopy.} = object
    ds*: ma_data_source_base_570426224 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9958:9
    config*: ma_waveform_config_570426662
    advance*: cdouble
    time*: cdouble
  ma_waveform_570426665 = struct_ma_waveform_570426664 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9964:3
  struct_ma_pulsewave_config_570426667 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9975:9
    channels*: ma_uint32_570425831
    sampleRate*: ma_uint32_570425831
    dutyCycle*: cdouble
    amplitude*: cdouble
    frequency*: cdouble
  ma_pulsewave_config_570426669 = struct_ma_pulsewave_config_570426668 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9983:3
  struct_ma_pulsewave_570426671 {.pure, inheritable, bycopy.} = object
    waveform*: ma_waveform_570426666 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9987:9
    config*: ma_pulsewave_config_570426670
  ma_pulsewave_570426673 = struct_ma_pulsewave_570426672 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:9991:3
  ma_noise_type_570426677 = enum_ma_noise_type_570426676 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10007:3
  struct_ma_noise_config_570426679 {.pure, inheritable, bycopy.} = object
    format*: ma_format_570425895 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10010:9
    channels*: ma_uint32_570425831
    type_field*: ma_noise_type_570426678
    seed*: ma_int32_570425829
    amplitude*: cdouble
    duplicateChannels*: ma_bool32_570425841
  ma_noise_config_570426681 = struct_ma_noise_config_570426680 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10018:3
  struct_ma_noise_state_t_pink_t {.pure, inheritable, bycopy.} = object
    bin*: ptr ptr cdouble
    accumulation*: ptr cdouble
    counter*: ptr ma_uint32_570425831
  struct_ma_noise_state_t_brownian_t {.pure, inheritable, bycopy.} = object
    accumulation*: ptr cdouble
  struct_ma_noise_state_t {.union, bycopy.} = object
    pink*: struct_ma_noise_state_t_pink_t
    brownian*: struct_ma_noise_state_t_brownian_t
  struct_ma_noise_570426683 {.pure, inheritable, bycopy.} = object
    ds*: ma_data_source_base_570426224 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10022:9
    config*: ma_noise_config_570426682
    lcg*: ma_lcg_570425922
    state*: struct_ma_noise_state_t
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_570425841
  ma_noise_570426685 = struct_ma_noise_570426684 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10044:3
  ma_resource_manager_570426687 = struct_ma_resource_manager_570426690 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10069:53
  struct_ma_resource_manager_570426689 {.pure, inheritable, bycopy.} = object
    config*: ma_resource_manager_config_570426738 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10267:8
    pRootDataBufferNode*: ptr ma_resource_manager_data_buffer_node_570426692
    dataBufferBSTLock*: ma_mutex_570425952
    jobThreads*: array[64'i64, ma_thread_570425950]
    jobQueue*: ma_job_queue_570426318
    defaultVFS*: ma_default_vfs_570426604
    log*: ma_log_570425970
  ma_resource_manager_data_buffer_node_570426691 = struct_ma_resource_manager_data_buffer_node_570426694 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10070:53
  struct_ma_resource_manager_data_buffer_node_570426693 {.pure, inheritable,
      bycopy.} = object
    hashedName32*: ma_uint32_570425831 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10172:8
    refCount*: ma_uint32_570425831
    result*: ma_result_570425879
    executionCounter*: ma_uint32_570425831
    executionPointer*: ma_uint32_570425831
    isDataOwnedByResourceManager*: ma_bool32_570425841
    data*: ma_resource_manager_data_supply_570426734
    pParent*: ptr ma_resource_manager_data_buffer_node_570426692
    pChildLo*: ptr ma_resource_manager_data_buffer_node_570426692
    pChildHi*: ptr ma_resource_manager_data_buffer_node_570426692
  ma_resource_manager_data_buffer_570426695 = struct_ma_resource_manager_data_buffer_570426698 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10071:53
  struct_ma_resource_manager_data_buffer_connector_t {.union, bycopy.} = object
    decoder*: ma_decoder_570426616
    buffer*: ma_audio_buffer_570426236
    pagedBuffer*: ma_paged_audio_buffer_570426252
  struct_ma_resource_manager_data_buffer_570426697 {.pure, inheritable, bycopy.} = object
    ds*: ma_data_source_base_570426224 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10186:8
    pResourceManager*: ptr ma_resource_manager_570426688
    pNode*: ptr ma_resource_manager_data_buffer_node_570426692
    flags*: ma_uint32_570425831
    executionCounter*: ma_uint32_570425831
    executionPointer*: ma_uint32_570425831
    seekTargetInPCMFrames*: ma_uint64_570425835
    seekToCursorOnNextRead*: ma_bool32_570425841
    result*: ma_result_570425879
    isLooping*: ma_bool32_570425841
    isConnectorInitialized*: ma_atomic_bool32_570425942
    connector*: struct_ma_resource_manager_data_buffer_connector_t
  ma_resource_manager_data_stream_570426699 = struct_ma_resource_manager_data_stream_570426702 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10072:53
  struct_ma_resource_manager_data_stream_570426701 {.pure, inheritable, bycopy.} = object
    ds*: ma_data_source_base_570426224 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10207:8
    pResourceManager*: ptr ma_resource_manager_570426688
    flags*: ma_uint32_570425831
    decoder*: ma_decoder_570426616
    isDecoderInitialized*: ma_bool32_570425841
    totalLengthInPCMFrames*: ma_uint64_570425835
    relativeCursor*: ma_uint32_570425831
    absoluteCursor*: ma_uint64_570425835
    currentPageIndex*: ma_uint32_570425831
    executionCounter*: ma_uint32_570425831
    executionPointer*: ma_uint32_570425831
    isLooping*: ma_bool32_570425841
    pPageData*: pointer
    pageFrameCount*: array[2'i64, ma_uint32_570425831]
    result*: ma_result_570425879
    isDecoderAtEnd*: ma_bool32_570425841
    isPageValid*: array[2'i64, ma_bool32_570425841]
    seekCounter*: ma_bool32_570425841
  ma_resource_manager_data_source_570426703 = struct_ma_resource_manager_data_source_570426706 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10073:53
  struct_ma_resource_manager_data_source_backend_t {.union, bycopy.} = object
    buffer*: ma_resource_manager_data_buffer_570426696
    stream*: ma_resource_manager_data_stream_570426700
  struct_ma_resource_manager_data_source_570426705 {.pure, inheritable, bycopy.} = object
    backend*: struct_ma_resource_manager_data_source_backend_t ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10235:8
    flags*: ma_uint32_570425831
    executionCounter*: ma_uint32_570425831
    executionPointer*: ma_uint32_570425831
  ma_resource_manager_data_source_flags_570426709 = enum_ma_resource_manager_data_source_flags_570426708 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10083:3
  struct_ma_resource_manager_pipeline_stage_notification_570426711 {.pure,
      inheritable, bycopy.} = object
    pNotification*: pointer  ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10089:9
    pFence*: ptr ma_fence_570426268
  ma_resource_manager_pipeline_stage_notification_570426713 = struct_ma_resource_manager_pipeline_stage_notification_570426712 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10093:3
  struct_ma_resource_manager_pipeline_notifications_570426715 {.pure,
      inheritable, bycopy.} = object
    init*: ma_resource_manager_pipeline_stage_notification_570426714 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10095:9
    done*: ma_resource_manager_pipeline_stage_notification_570426714
  ma_resource_manager_pipeline_notifications_570426717 = struct_ma_resource_manager_pipeline_notifications_570426716 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10099:3
  ma_resource_manager_flags_570426721 = enum_ma_resource_manager_flags_570426720 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10118:3
  struct_ma_resource_manager_data_source_config_570426723 {.pure, inheritable,
      bycopy.} = object
    pFilePath*: cstring      ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10120:9
    pFilePathW*: ptr wchar_t_570426306
    pNotifications*: ptr ma_resource_manager_pipeline_notifications_570426718
    initialSeekPointInPCMFrames*: ma_uint64_570425835
    rangeBegInPCMFrames*: ma_uint64_570425835
    rangeEndInPCMFrames*: ma_uint64_570425835
    loopPointBegInPCMFrames*: ma_uint64_570425835
    loopPointEndInPCMFrames*: ma_uint64_570425835
    flags*: ma_uint32_570425831
  ma_resource_manager_data_source_config_570426725 = struct_ma_resource_manager_data_source_config_570426724 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10131:3
  ma_resource_manager_data_supply_type_570426729 = enum_ma_resource_manager_data_supply_type_570426728 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10142:3
  struct_ma_resource_manager_data_supply_backend_t_encoded_t {.pure,
      inheritable, bycopy.} = object
    pData*: pointer
    sizeInBytes*: csize_t
  struct_ma_resource_manager_data_supply_backend_t_decoded_t {.pure,
      inheritable, bycopy.} = object
    pData*: pointer
    totalFrameCount*: ma_uint64_570425835
    decodedFrameCount*: ma_uint64_570425835
    format*: ma_format_570425895
    channels*: ma_uint32_570425831
    sampleRate*: ma_uint32_570425831
  struct_ma_resource_manager_data_supply_backend_t_decodedPaged_t {.pure,
      inheritable, bycopy.} = object
    data*: ma_paged_audio_buffer_data_570426244
    decodedFrameCount*: ma_uint64_570425835
    sampleRate*: ma_uint32_570425831
  struct_ma_resource_manager_data_supply_backend_t {.union, bycopy.} = object
    encoded*: struct_ma_resource_manager_data_supply_backend_t_encoded_t
    decoded*: struct_ma_resource_manager_data_supply_backend_t_decoded_t
    decodedPaged*: struct_ma_resource_manager_data_supply_backend_t_decodedPaged_t
  struct_ma_resource_manager_data_supply_570426731 {.pure, inheritable, bycopy.} = object
    type_field*: ma_resource_manager_data_supply_type_570426730 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10144:9
    backend*: struct_ma_resource_manager_data_supply_backend_t
  ma_resource_manager_data_supply_570426733 = struct_ma_resource_manager_data_supply_570426732 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10170:3
  struct_ma_resource_manager_config_570426735 {.pure, inheritable, bycopy.} = object
    allocationCallbacks*: ma_allocation_callbacks_570425918 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10248:9
    pLog*: ptr ma_log_570425970
    decodedFormat*: ma_format_570425895
    decodedChannels*: ma_uint32_570425831
    decodedSampleRate*: ma_uint32_570425831
    jobThreadCount*: ma_uint32_570425831
    jobThreadStackSize*: csize_t
    jobQueueCapacity*: ma_uint32_570425831
    flags*: ma_uint32_570425831
    pVFS*: pointer
    ppDecodingBackendVTables*: ptr ptr ma_decoding_backend_vtable_570426626
    decodingBackendCount*: ma_uint32_570425831
    ppDecodingBackendUserData*: ptr pointer
  ma_resource_manager_config_570426737 = struct_ma_resource_manager_config_570426736 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10263:3
  struct_ma_stack_570426739 {.pure, inheritable, bycopy.} = object
    offset*: csize_t         ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10375:9
    sizeInBytes*: csize_t
    internal_data*: array[1'i64, uint8]
  ma_stack_570426741 = struct_ma_stack_570426740 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10380:3
  ma_node_graph_570426743 = struct_ma_node_graph_570426746 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10383:30
  struct_ma_node_graph_570426745 {.pure, inheritable, bycopy.} = object
    ds*: ma_data_source_base_570426224 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10567:8
    endpoint*: ma_node_base_570426774
    pProcessingCache*: ptr cfloat
    processingCacheFramesRemaining*: ma_uint32_570425831
    processingSizeInFrames*: ma_uint32_570425831
    isReading*: ma_bool32_570425841
    pPreMixStack*: ptr ma_stack_570426742
  ma_node_flags_570426751 = enum_ma_node_flags_570426750 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10395:3
  ma_node_state_570426755 = enum_ma_node_state_570426754 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10403:3
  struct_ma_node_vtable_570426757 {.pure, inheritable, bycopy.} = object
    onProcess*: proc (a0: pointer; a1: ptr ptr cfloat; a2: ptr ma_uint32_570425831;
                      a3: ptr ptr cfloat; a4: ptr ma_uint32_570425831): void {.
        cdecl.}              ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10406:9
    onGetRequiredInputFrameCount*: proc (a0: pointer; a1: ma_uint32_570425831;
        a2: ptr ma_uint32_570425831): ma_result_570425879 {.cdecl.}
    inputBusCount*: ma_uint8_570425823
    outputBusCount*: ma_uint8_570425823
    flags*: ma_uint32_570425831
  ma_node_vtable_570426759 = struct_ma_node_vtable_570426758 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10447:3
  struct_ma_node_config_570426761 {.pure, inheritable, bycopy.} = object
    vtable*: ptr ma_node_vtable_570426760 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10449:9
    initialState*: ma_node_state_570426756
    inputBusCount*: ma_uint32_570425831
    outputBusCount*: ma_uint32_570425831
    pInputChannels*: ptr ma_uint32_570425831
    pOutputChannels*: ptr ma_uint32_570425831
  ma_node_config_570426763 = struct_ma_node_config_570426762 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10457:3
  ma_node_output_bus_570426765 = struct_ma_node_output_bus_570426768 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10466:35
  struct_ma_node_output_bus_570426767 {.pure, inheritable, bycopy.} = object
    pNode*: pointer          ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10467:8
    outputBusIndex*: ma_uint8_570425823
    channels*: ma_uint8_570425823
    inputNodeInputBusIndex*: ma_uint8_570425823
    flags*: ma_uint32_570425831
    refCount*: ma_uint32_570425831
    isAttached*: ma_bool32_570425841
    lock*: ma_spinlock_570425944
    volume*: cfloat
    pNext*: ptr ma_node_output_bus_570426766
    pPrev*: ptr ma_node_output_bus_570426766
    pInputNode*: pointer
  ma_node_input_bus_570426769 = struct_ma_node_input_bus_570426772 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10490:34
  struct_ma_node_input_bus_570426771 {.pure, inheritable, bycopy.} = object
    head*: ma_node_output_bus_570426766 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10491:8
    nextCounter*: ma_uint32_570425831
    lock*: ma_spinlock_570425944
    channels*: ma_uint8_570425823
  ma_node_base_570426773 = struct_ma_node_base_570426776 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10503:29
  struct_ma_node_base_570426775 {.pure, inheritable, bycopy.} = object
    pNodeGraph*: ptr ma_node_graph_570426744 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10504:8
    vtable*: ptr ma_node_vtable_570426760
    inputBusCount*: ma_uint32_570425831
    outputBusCount*: ma_uint32_570425831
    pInputBuses*: ptr ma_node_input_bus_570426770
    pOutputBuses*: ptr ma_node_output_bus_570426766
    pCachedData*: ptr cfloat
    cachedDataCapInFramesPerBus*: ma_uint16_570425827
    cachedFrameCountOut*: ma_uint16_570425827
    cachedFrameCountIn*: ma_uint16_570425827
    consumedFrameCountIn*: ma_uint16_570425827
    state*: ma_node_state_570426756
    stateTimes*: array[2'i64, ma_uint64_570425835]
    localTime*: ma_uint64_570425835
    internal_inputBuses*: array[2'i64, ma_node_input_bus_570426770]
    internal_outputBuses*: array[2'i64, ma_node_output_bus_570426766]
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_570425841
  struct_ma_node_graph_config_570426777 {.pure, inheritable, bycopy.} = object
    channels*: ma_uint32_570425831 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10557:9
    processingSizeInFrames*: ma_uint32_570425831
    preMixStackSizeInBytes*: csize_t
  ma_node_graph_config_570426779 = struct_ma_node_graph_config_570426778 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10562:3
  struct_ma_data_source_node_config_570426781 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_570426764 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10595:9
    pDataSource*: pointer
  ma_data_source_node_config_570426783 = struct_ma_data_source_node_config_570426782 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10599:3
  struct_ma_data_source_node_570426785 {.pure, inheritable, bycopy.} = object
    base*: ma_node_base_570426774 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10604:9
    pDataSource*: pointer
  ma_data_source_node_570426787 = struct_ma_data_source_node_570426786 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10608:3
  struct_ma_splitter_node_config_570426789 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_570426764 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10617:9
    channels*: ma_uint32_570425831
    outputBusCount*: ma_uint32_570425831
  ma_splitter_node_config_570426791 = struct_ma_splitter_node_config_570426790 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10622:3
  struct_ma_splitter_node_570426793 {.pure, inheritable, bycopy.} = object
    base*: ma_node_base_570426774 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10627:9
  ma_splitter_node_570426795 = struct_ma_splitter_node_570426794 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10630:3
  struct_ma_biquad_node_config_570426797 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_570426764 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10639:9
    biquad*: ma_biquad_config_570425978
  ma_biquad_node_config_570426799 = struct_ma_biquad_node_config_570426798 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10643:3
  struct_ma_biquad_node_570426801 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_570426774 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10648:9
    biquad*: ma_biquad_570425982
  ma_biquad_node_570426803 = struct_ma_biquad_node_570426802 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10652:3
  struct_ma_lpf_node_config_570426805 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_570426764 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10662:9
    lpf*: ma_lpf_config_570426000
  ma_lpf_node_config_570426807 = struct_ma_lpf_node_config_570426806 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10666:3
  struct_ma_lpf_node_570426809 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_570426774 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10671:9
    lpf*: ma_lpf_570426004
  ma_lpf_node_570426811 = struct_ma_lpf_node_570426810 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10675:3
  struct_ma_hpf_node_config_570426813 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_570426764 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10685:9
    hpf*: ma_hpf_config_570426022
  ma_hpf_node_config_570426815 = struct_ma_hpf_node_config_570426814 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10689:3
  struct_ma_hpf_node_570426817 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_570426774 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10694:9
    hpf*: ma_hpf_570426026
  ma_hpf_node_570426819 = struct_ma_hpf_node_570426818 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10698:3
  struct_ma_bpf_node_config_570426821 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_570426764 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10708:9
    bpf*: ma_bpf_config_570426038
  ma_bpf_node_config_570426823 = struct_ma_bpf_node_config_570426822 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10712:3
  struct_ma_bpf_node_570426825 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_570426774 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10717:9
    bpf*: ma_bpf_570426042
  ma_bpf_node_570426827 = struct_ma_bpf_node_570426826 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10721:3
  struct_ma_notch_node_config_570426829 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_570426764 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10731:9
    notch*: ma_notch_config_570426048
  ma_notch_node_config_570426831 = struct_ma_notch_node_config_570426830 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10735:3
  struct_ma_notch_node_570426833 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_570426774 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10740:9
    notch*: ma_notch2_570426052
  ma_notch_node_570426835 = struct_ma_notch_node_570426834 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10744:3
  struct_ma_peak_node_config_570426837 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_570426764 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10754:9
    peak*: ma_peak_config_570426058
  ma_peak_node_config_570426839 = struct_ma_peak_node_config_570426838 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10758:3
  struct_ma_peak_node_570426841 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_570426774 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10763:9
    peak*: ma_peak2_570426062
  ma_peak_node_570426843 = struct_ma_peak_node_570426842 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10767:3
  struct_ma_loshelf_node_config_570426845 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_570426764 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10777:9
    loshelf*: ma_loshelf_config_570426068
  ma_loshelf_node_config_570426847 = struct_ma_loshelf_node_config_570426846 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10781:3
  struct_ma_loshelf_node_570426849 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_570426774 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10786:9
    loshelf*: ma_loshelf2_570426072
  ma_loshelf_node_570426851 = struct_ma_loshelf_node_570426850 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10790:3
  struct_ma_hishelf_node_config_570426853 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_570426764 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10800:9
    hishelf*: ma_hishelf_config_570426078
  ma_hishelf_node_config_570426855 = struct_ma_hishelf_node_config_570426854 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10804:3
  struct_ma_hishelf_node_570426857 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_570426774 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10809:9
    hishelf*: ma_hishelf2_570426082
  ma_hishelf_node_570426859 = struct_ma_hishelf_node_570426858 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10813:3
  struct_ma_delay_node_config_570426861 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_570426764 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10820:9
    delay*: ma_delay_config_570426086
  ma_delay_node_config_570426863 = struct_ma_delay_node_config_570426862 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10824:3
  struct_ma_delay_node_570426865 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_570426774 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10829:9
    delay*: ma_delay_570426090
  ma_delay_node_570426867 = struct_ma_delay_node_570426866 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10833:3
  ma_engine_570426869 = struct_ma_engine_570426872 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10849:26
  struct_ma_engine_570426871 {.pure, inheritable, bycopy.} = object
    nodeGraph*: ma_node_graph_570426744 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:11046:8
    pResourceManager*: ptr ma_resource_manager_570426688
    pDevice*: ptr ma_device_570426328
    pLog*: ptr ma_log_570425970
    sampleRate*: ma_uint32_570425831
    listenerCount*: ma_uint32_570425831
    listeners*: array[4'i64, ma_spatializer_listener_570426146]
    allocationCallbacks*: ma_allocation_callbacks_570425918
    ownsResourceManager*: ma_bool8_570425839
    ownsDevice*: ma_bool8_570425839
    inlinedSoundLock*: ma_spinlock_570425944
    pInlinedSoundHead*: ptr ma_sound_inlined_570426902
    inlinedSoundCount*: ma_uint32_570425831
    spatializationVolumeSmoothTimeInFrames*: ma_uint32_570425831
    defaultVolumeSmoothTimeInFrames*: ma_uint32_570425831
    monoExpansionMode*: ma_mono_expansion_mode_570426188
    onProcess*: ma_engine_process_proc_570426910
    pProcessUserData*: pointer
  ma_sound_570426873 = struct_ma_sound_570426876 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10850:26
  struct_ma_sound_570426875 {.pure, inheritable, bycopy.} = object
    engineNode*: ma_engine_node_570426892 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10976:8
    pDataSource*: pointer
    seekTarget*: ma_uint64_570425835
    atEnd*: ma_bool32_570425841
    notifications*: ma_sound_notifications_570426896
    ownsDataSource*: ma_bool8_570425839
    pResourceManagerDataSource*: ptr ma_resource_manager_data_source_570426704
    resourceManagerDoneNotification*: ma_async_notification_callbacks_570426274
  ma_sound_flags_570426879 = enum_ma_sound_flags_570426878 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10868:3
  ma_engine_node_type_570426883 = enum_ma_engine_node_type_570426882 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10880:3
  struct_ma_engine_node_config_570426885 {.pure, inheritable, bycopy.} = object
    pEngine*: ptr ma_engine_570426870 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10882:9
    type_field*: ma_engine_node_type_570426884
    channelsIn*: ma_uint32_570425831
    channelsOut*: ma_uint32_570425831
    sampleRate*: ma_uint32_570425831
    volumeSmoothTimeInPCMFrames*: ma_uint32_570425831
    monoExpansionMode*: ma_mono_expansion_mode_570426188
    isPitchDisabled*: ma_bool8_570425839
    isSpatializationDisabled*: ma_bool8_570425839
    pinnedListenerIndex*: ma_uint8_570425823
  ma_engine_node_config_570426887 = struct_ma_engine_node_config_570426886 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10894:3
  struct_ma_engine_node_fadeSettings_t {.pure, inheritable, bycopy.} = object
    volumeBeg*: ma_atomic_float_570425938
    volumeEnd*: ma_atomic_float_570425938
    fadeLengthInFrames*: ma_atomic_uint64_570425934
    absoluteGlobalTimeInFrames*: ma_atomic_uint64_570425934
  struct_ma_engine_node_570426889 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_570426774 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10900:9
    pEngine*: ptr ma_engine_570426870
    sampleRate*: ma_uint32_570425831
    volumeSmoothTimeInPCMFrames*: ma_uint32_570425831
    monoExpansionMode*: ma_mono_expansion_mode_570426188
    fader*: ma_fader_570426118
    resampler*: ma_linear_resampler_570426162
    spatializer*: ma_spatializer_570426154
    panner*: ma_panner_570426110
    volumeGainer*: ma_gainer_570426098
    volume*: ma_atomic_float_570425938
    pitch*: cfloat
    oldPitch*: cfloat
    oldDopplerPitch*: cfloat
    isPitchDisabled*: ma_bool32_570425841
    isSpatializationDisabled*: ma_bool32_570425841
    pinnedListenerIndex*: ma_uint32_570425831
    fadeSettings*: struct_ma_engine_node_fadeSettings_t
    internal_ownsHeap*: ma_bool8_570425839
    internal_pHeap*: pointer
  ma_engine_node_570426891 = struct_ma_engine_node_570426890 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10932:3
  struct_ma_sound_notifications_570426893 {.pure, inheritable, bycopy.} = object
    pLoadedFence*: ptr ma_fence_570426268 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10942:9
    onLoaded*: proc (a0: pointer; a1: ptr ma_sound_570426874): void {.cdecl.}
    onAtEnd*: proc (a0: pointer; a1: ptr ma_sound_570426874): void {.cdecl.}
    onProcess*: proc (a0: pointer; a1: ptr ma_sound_570426874; a2: ptr cfloat;
                      a3: ma_uint64_570425835): void {.cdecl.}
    pUserData*: pointer
  ma_sound_notifications_570426895 = struct_ma_sound_notifications_570426894 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10949:3
  struct_ma_sound_config_570426897 {.pure, inheritable, bycopy.} = object
    pFilePath*: cstring      ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10954:9
    pFilePathW*: ptr wchar_t_570426306
    pDataSource*: pointer
    pInitialAttachment*: pointer
    initialAttachmentInputBusIndex*: ma_uint32_570425831
    channelsIn*: ma_uint32_570425831
    channelsOut*: ma_uint32_570425831
    monoExpansionMode*: ma_mono_expansion_mode_570426188
    flags*: ma_uint32_570425831
    volumeSmoothTimeInPCMFrames*: ma_uint32_570425831
    initialSeekPointInPCMFrames*: ma_uint64_570425835
    rangeBegInPCMFrames*: ma_uint64_570425835
    rangeEndInPCMFrames*: ma_uint64_570425835
    loopPointBegInPCMFrames*: ma_uint64_570425835
    loopPointEndInPCMFrames*: ma_uint64_570425835
    pNotifications*: ptr ma_sound_notifications_570426896
  ma_sound_config_570426899 = struct_ma_sound_config_570426898 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10972:3
  ma_sound_inlined_570426901 = struct_ma_sound_inlined_570426904 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10996:33
  struct_ma_sound_inlined_570426903 {.pure, inheritable, bycopy.} = object
    sound*: ma_sound_570426874 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10997:8
    pNext*: ptr ma_sound_inlined_570426902
    pPrev*: ptr ma_sound_inlined_570426902
  ma_sound_group_config_570426905 = ma_sound_config_570426900 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:11005:25
  ma_sound_group_570426907 = ma_sound_570426874 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:11006:25
  ma_engine_process_proc_570426909 = proc (a0: pointer; a1: ptr cfloat;
      a2: ma_uint64_570425835): void {.cdecl.} ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:11010:17
  struct_ma_engine_config_570426911 {.pure, inheritable, bycopy.} = object
    pResourceManager*: ptr ma_resource_manager_570426688 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:11012:9
    pContext*: ptr ma_context_570426320
    pDevice*: ptr ma_device_570426328
    pPlaybackDeviceID*: ptr ma_device_id_570426570
    dataCallback*: ma_device_data_proc_570426554
    notificationCallback*: ma_device_notification_proc_570426552
    pLog*: ptr ma_log_570425970
    listenerCount*: ma_uint32_570425831
    channels*: ma_uint32_570425831
    sampleRate*: ma_uint32_570425831
    periodSizeInFrames*: ma_uint32_570425831
    periodSizeInMilliseconds*: ma_uint32_570425831
    spatializationVolumeSmoothTimeInFrames*: ma_uint32_570425831
    spatializationVolumeSmoothTimeInMilliseconds*: ma_uint32_570425831
    defaultVolumeSmoothTimeInFrames*: ma_uint32_570425831
    preMixStackSizeInBytes*: ma_uint32_570425831
    allocationCallbacks*: ma_allocation_callbacks_570425918
    noAutoStart*: ma_bool32_570425841
    noDevice*: ma_bool32_570425841
    monoExpansionMode*: ma_mono_expansion_mode_570426188
    pResourceManagerVFS*: pointer
    onProcess*: ma_engine_process_proc_570426910
    pProcessUserData*: pointer
  ma_engine_config_570426913 = struct_ma_engine_config_570426912 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:11041:3
  union_pthread_mutex_t_570426915 {.union, bycopy.} = object
    compiler_data*: struct_pthread_mutex_s_570426920 ## Generated based on /usr/include/bits/pthreadtypes.h:67:9
    compiler_size*: array[40'i64, cschar]
    compiler_align*: clong
  union_pthread_cond_t_570426917 {.union, bycopy.} = object
    compiler_data*: struct_pthread_cond_s_570426922 ## Generated based on /usr/include/bits/pthreadtypes.h:75:9
    compiler_size*: array[48'i64, cschar]
    compiler_align*: clonglong
  struct_pthread_mutex_s_570426919 {.pure, inheritable, bycopy.} = object
    compiler_lock*: cint     ## Generated based on /usr/include/bits/struct_mutex.h:22:8
    compiler_count*: cuint
    compiler_owner*: cint
    compiler_nusers*: cuint
    compiler_kind*: cint
    compiler_spins*: cshort
    compiler_elision*: cshort
    compiler_list*: compiler_pthread_list_t_570426924
  struct_pthread_cond_s_570426921 {.pure, inheritable, bycopy.} = object
    compiler_wseq*: compiler_atomic_wide_counter_570426926 ## Generated based on /usr/include/bits/thread-shared-types.h:94:8
    compiler_g1_start*: compiler_atomic_wide_counter_570426926
    compiler_g_size*: array[2'i64, cuint]
    compiler_g1_orig_size*: cuint
    compiler_wrefs*: cuint
    compiler_g_signals*: array[2'i64, cuint]
    compiler_unused_initialized_1*: cuint
    compiler_unused_initialized_2*: cuint
  compiler_pthread_list_t_570426923 = struct_pthread_internal_list_570426928 ## Generated based on /usr/include/bits/thread-shared-types.h:55:3
  compiler_atomic_wide_counter_570426925 = union_atomic_wide_counter_570426930 ## Generated based on /usr/include/bits/atomic_wide_counter.h:33:3
  struct_pthread_internal_list_570426927 {.pure, inheritable, bycopy.} = object
    compiler_prev*: ptr struct_pthread_internal_list_570426928 ## Generated based on /usr/include/bits/thread-shared-types.h:51:16
    compiler_next*: ptr struct_pthread_internal_list_570426928
  union_atomic_wide_counter_compiler_value32_t {.pure, inheritable, bycopy.} = object
    compiler_low*: cuint
    compiler_high*: cuint
  union_atomic_wide_counter_570426929 {.union, bycopy.} = object
    compiler_value64*: culonglong ## Generated based on /usr/include/bits/atomic_wide_counter.h:25:9
    compiler_value32*: union_atomic_wide_counter_compiler_value32_t
  ma_pulsewave_570426674 = (when declared(ma_pulsewave):
    when ownSizeof(ma_pulsewave) != ownSizeof(ma_pulsewave_570426673):
      static :
        warning("Declaration of " & "ma_pulsewave" &
            " exists but with different size")
    ma_pulsewave
  else:
    ma_pulsewave_570426673)
  struct_ma_device_op_queue_570426540 = (when declared(struct_ma_device_op_queue):
    when ownSizeof(struct_ma_device_op_queue) !=
        ownSizeof(struct_ma_device_op_queue_570426539):
      static :
        warning("Declaration of " & "struct_ma_device_op_queue" &
            " exists but with different size")
    struct_ma_device_op_queue
  else:
    struct_ma_device_op_queue_570426539)
  ma_waveform_config_570426662 = (when declared(ma_waveform_config):
    when ownSizeof(ma_waveform_config) != ownSizeof(ma_waveform_config_570426661):
      static :
        warning("Declaration of " & "ma_waveform_config" &
            " exists but with different size")
    ma_waveform_config
  else:
    ma_waveform_config_570426661)
  enum_ma_resource_manager_data_supply_type_570426728 = (when declared(
      enum_ma_resource_manager_data_supply_type):
    when ownSizeof(enum_ma_resource_manager_data_supply_type) !=
        ownSizeof(enum_ma_resource_manager_data_supply_type_570426727):
      static :
        warning("Declaration of " & "enum_ma_resource_manager_data_supply_type" &
            " exists but with different size")
    enum_ma_resource_manager_data_supply_type
  else:
    enum_ma_resource_manager_data_supply_type_570426727)
  struct_ma_data_converter_config_570426198 = (when declared(
      struct_ma_data_converter_config):
    when ownSizeof(struct_ma_data_converter_config) !=
        ownSizeof(struct_ma_data_converter_config_570426197):
      static :
        warning("Declaration of " & "struct_ma_data_converter_config" &
            " exists but with different size")
    struct_ma_data_converter_config
  else:
    struct_ma_data_converter_config_570426197)
  ma_bpf2_570426034 = (when declared(ma_bpf2):
    when ownSizeof(ma_bpf2) != ownSizeof(ma_bpf2_570426033):
      static :
        warning("Declaration of " & "ma_bpf2" &
            " exists but with different size")
    ma_bpf2
  else:
    ma_bpf2_570426033)
  union_ma_device_id_570426568 = (when declared(union_ma_device_id):
    when ownSizeof(union_ma_device_id) != ownSizeof(union_ma_device_id_570426567):
      static :
        warning("Declaration of " & "union_ma_device_id" &
            " exists but with different size")
    union_ma_device_id
  else:
    union_ma_device_id_570426567)
  ma_device_descriptor_570426336 = (when declared(ma_device_descriptor):
    when ownSizeof(ma_device_descriptor) != ownSizeof(ma_device_descriptor_570426335):
      static :
        warning("Declaration of " & "ma_device_descriptor" &
            " exists but with different size")
    ma_device_descriptor
  else:
    ma_device_descriptor_570426335)
  struct_ma_event_570425954 = (when declared(struct_ma_event):
    when ownSizeof(struct_ma_event) != ownSizeof(struct_ma_event_570425953):
      static :
        warning("Declaration of " & "struct_ma_event" &
            " exists but with different size")
    struct_ma_event
  else:
    struct_ma_event_570425953)
  struct_pthread_cond_s_570426922 = (when declared(struct_pthread_cond_s):
    when ownSizeof(struct_pthread_cond_s) != ownSizeof(struct_pthread_cond_s_570426921):
      static :
        warning("Declaration of " & "struct_pthread_cond_s" &
            " exists but with different size")
    struct_pthread_cond_s
  else:
    struct_pthread_cond_s_570426921)
  ma_read_proc_570426606 = (when declared(ma_read_proc):
    when ownSizeof(ma_read_proc) != ownSizeof(ma_read_proc_570426605):
      static :
        warning("Declaration of " & "ma_read_proc" &
            " exists but with different size")
    ma_read_proc
  else:
    ma_read_proc_570426605)
  ma_ptr_570425849 = (when declared(ma_ptr):
    when ownSizeof(ma_ptr) != ownSizeof(ma_ptr_570425848):
      static :
        warning("Declaration of " & "ma_ptr" & " exists but with different size")
    ma_ptr
  else:
    ma_ptr_570425848)
  struct_ma_lpf1_config_570425984 = (when declared(struct_ma_lpf1_config):
    when ownSizeof(struct_ma_lpf1_config) != ownSizeof(struct_ma_lpf1_config_570425983):
      static :
        warning("Declaration of " & "struct_ma_lpf1_config" &
            " exists but with different size")
    struct_ma_lpf1_config
  else:
    struct_ma_lpf1_config_570425983)
  ma_channel_converter_570426196 = (when declared(ma_channel_converter):
    when ownSizeof(ma_channel_converter) != ownSizeof(ma_channel_converter_570426195):
      static :
        warning("Declaration of " & "ma_channel_converter" &
            " exists but with different size")
    ma_channel_converter
  else:
    ma_channel_converter_570426195)
  struct_ma_stack_570426740 = (when declared(struct_ma_stack):
    when ownSizeof(struct_ma_stack) != ownSizeof(struct_ma_stack_570426739):
      static :
        warning("Declaration of " & "struct_ma_stack" &
            " exists but with different size")
    struct_ma_stack
  else:
    struct_ma_stack_570426739)
  ma_log_570425970 = (when declared(ma_log):
    when ownSizeof(ma_log) != ownSizeof(ma_log_570425969):
      static :
        warning("Declaration of " & "ma_log" & " exists but with different size")
    ma_log
  else:
    ma_log_570425969)
  ma_fader_570426118 = (when declared(ma_fader):
    when ownSizeof(ma_fader) != ownSizeof(ma_fader_570426117):
      static :
        warning("Declaration of " & "ma_fader" &
            " exists but with different size")
    ma_fader
  else:
    ma_fader_570426117)
  ma_device_backend_info_570426506 = (when declared(ma_device_backend_info):
    when ownSizeof(ma_device_backend_info) != ownSizeof(ma_device_backend_info_570426505):
      static :
        warning("Declaration of " & "ma_device_backend_info" &
            " exists but with different size")
    ma_device_backend_info
  else:
    ma_device_backend_info_570426505)
  struct_ma_lpf_570426002 = (when declared(struct_ma_lpf):
    when ownSizeof(struct_ma_lpf) != ownSizeof(struct_ma_lpf_570426001):
      static :
        warning("Declaration of " & "struct_ma_lpf" &
            " exists but with different size")
    struct_ma_lpf
  else:
    struct_ma_lpf_570426001)
  struct_ma_lpf_node_config_570426806 = (when declared(struct_ma_lpf_node_config):
    when ownSizeof(struct_ma_lpf_node_config) !=
        ownSizeof(struct_ma_lpf_node_config_570426805):
      static :
        warning("Declaration of " & "struct_ma_lpf_node_config" &
            " exists but with different size")
    struct_ma_lpf_node_config
  else:
    struct_ma_lpf_node_config_570426805)
  struct_ma_panner_config_570426104 = (when declared(struct_ma_panner_config):
    when ownSizeof(struct_ma_panner_config) !=
        ownSizeof(struct_ma_panner_config_570426103):
      static :
        warning("Declaration of " & "struct_ma_panner_config" &
            " exists but with different size")
    struct_ma_panner_config
  else:
    struct_ma_panner_config_570426103)
  struct_ma_sound_inlined_570426904 = (when declared(struct_ma_sound_inlined):
    when ownSizeof(struct_ma_sound_inlined) !=
        ownSizeof(struct_ma_sound_inlined_570426903):
      static :
        warning("Declaration of " & "struct_ma_sound_inlined" &
            " exists but with different size")
    struct_ma_sound_inlined
  else:
    struct_ma_sound_inlined_570426903)
  ma_slot_allocator_570426294 = (when declared(ma_slot_allocator):
    when ownSizeof(ma_slot_allocator) != ownSizeof(ma_slot_allocator_570426293):
      static :
        warning("Declaration of " & "ma_slot_allocator" &
            " exists but with different size")
    ma_slot_allocator
  else:
    ma_slot_allocator_570426293)
  ma_job_570426296 = (when declared(ma_job):
    when ownSizeof(ma_job) != ownSizeof(ma_job_570426295):
      static :
        warning("Declaration of " & "ma_job" & " exists but with different size")
    ma_job
  else:
    ma_job_570426295)
  struct_ma_gainer_570426096 = (when declared(struct_ma_gainer):
    when ownSizeof(struct_ma_gainer) != ownSizeof(struct_ma_gainer_570426095):
      static :
        warning("Declaration of " & "struct_ma_gainer" &
            " exists but with different size")
    struct_ma_gainer
  else:
    struct_ma_gainer_570426095)
  ma_proc_570425851 = (when declared(ma_proc):
    when ownSizeof(ma_proc) != ownSizeof(ma_proc_570425850):
      static :
        warning("Declaration of " & "ma_proc" &
            " exists but with different size")
    ma_proc
  else:
    ma_proc_570425850)
  struct_ma_context_config_pulseaudio_570426388 = (when declared(
      struct_ma_context_config_pulseaudio):
    when ownSizeof(struct_ma_context_config_pulseaudio) !=
        ownSizeof(struct_ma_context_config_pulseaudio_570426387):
      static :
        warning("Declaration of " & "struct_ma_context_config_pulseaudio" &
            " exists but with different size")
    struct_ma_context_config_pulseaudio
  else:
    struct_ma_context_config_pulseaudio_570426387)
  ma_node_graph_config_570426780 = (when declared(ma_node_graph_config):
    when ownSizeof(ma_node_graph_config) != ownSizeof(ma_node_graph_config_570426779):
      static :
        warning("Declaration of " & "ma_node_graph_config" &
            " exists but with different size")
    ma_node_graph_config
  else:
    ma_node_graph_config_570426779)
  ma_biquad_node_570426804 = (when declared(ma_biquad_node):
    when ownSizeof(ma_biquad_node) != ownSizeof(ma_biquad_node_570426803):
      static :
        warning("Declaration of " & "ma_biquad_node" &
            " exists but with different size")
    ma_biquad_node
  else:
    ma_biquad_node_570426803)
  enum_ma_seek_origin_570426590 = (when declared(enum_ma_seek_origin):
    when ownSizeof(enum_ma_seek_origin) != ownSizeof(enum_ma_seek_origin_570426589):
      static :
        warning("Declaration of " & "enum_ma_seek_origin" &
            " exists but with different size")
    enum_ma_seek_origin
  else:
    enum_ma_seek_origin_570426589)
  struct_ma_device_config_webaudio_570426488 = (when declared(
      struct_ma_device_config_webaudio):
    when ownSizeof(struct_ma_device_config_webaudio) !=
        ownSizeof(struct_ma_device_config_webaudio_570426487):
      static :
        warning("Declaration of " & "struct_ma_device_config_webaudio" &
            " exists but with different size")
    struct_ma_device_config_webaudio
  else:
    struct_ma_device_config_webaudio_570426487)
  enum_ma_noise_type_570426676 = (when declared(enum_ma_noise_type):
    when ownSizeof(enum_ma_noise_type) != ownSizeof(enum_ma_noise_type_570426675):
      static :
        warning("Declaration of " & "enum_ma_noise_type" &
            " exists but with different size")
    enum_ma_noise_type
  else:
    enum_ma_noise_type_570426675)
  struct_ma_engine_node_config_570426886 = (when declared(
      struct_ma_engine_node_config):
    when ownSizeof(struct_ma_engine_node_config) !=
        ownSizeof(struct_ma_engine_node_config_570426885):
      static :
        warning("Declaration of " & "struct_ma_engine_node_config" &
            " exists but with different size")
    struct_ma_engine_node_config
  else:
    struct_ma_engine_node_config_570426885)
  struct_ma_context_config_aaudio_570426456 = (when declared(
      struct_ma_context_config_aaudio):
    when ownSizeof(struct_ma_context_config_aaudio) !=
        ownSizeof(struct_ma_context_config_aaudio_570426455):
      static :
        warning("Declaration of " & "struct_ma_context_config_aaudio" &
            " exists but with different size")
    struct_ma_context_config_aaudio
  else:
    struct_ma_context_config_aaudio_570426455)
  enum_ma_standard_channel_map_570425912 = (when declared(
      enum_ma_standard_channel_map):
    when ownSizeof(enum_ma_standard_channel_map) !=
        ownSizeof(enum_ma_standard_channel_map_570425911):
      static :
        warning("Declaration of " & "enum_ma_standard_channel_map" &
            " exists but with different size")
    enum_ma_standard_channel_map
  else:
    enum_ma_standard_channel_map_570425911)
  struct_ma_hpf1_570426012 = (when declared(struct_ma_hpf1):
    when ownSizeof(struct_ma_hpf1) != ownSizeof(struct_ma_hpf1_570426011):
      static :
        warning("Declaration of " & "struct_ma_hpf1" &
            " exists but with different size")
    struct_ma_hpf1
  else:
    struct_ma_hpf1_570426011)
  struct_ma_data_source_config_570426218 = (when declared(
      struct_ma_data_source_config):
    when ownSizeof(struct_ma_data_source_config) !=
        ownSizeof(struct_ma_data_source_config_570426217):
      static :
        warning("Declaration of " & "struct_ma_data_source_config" &
            " exists but with different size")
    struct_ma_data_source_config
  else:
    struct_ma_data_source_config_570426217)
  enum_ma_channel_mix_mode_570425901 = (when declared(enum_ma_channel_mix_mode):
    when ownSizeof(enum_ma_channel_mix_mode) !=
        ownSizeof(enum_ma_channel_mix_mode_570425900):
      static :
        warning("Declaration of " & "enum_ma_channel_mix_mode" &
            " exists but with different size")
    enum_ma_channel_mix_mode
  else:
    enum_ma_channel_mix_mode_570425900)
  struct_ma_delay_config_570426084 = (when declared(struct_ma_delay_config):
    when ownSizeof(struct_ma_delay_config) != ownSizeof(struct_ma_delay_config_570426083):
      static :
        warning("Declaration of " & "struct_ma_delay_config" &
            " exists but with different size")
    struct_ma_delay_config
  else:
    struct_ma_delay_config_570426083)
  ma_panner_config_570426106 = (when declared(ma_panner_config):
    when ownSizeof(ma_panner_config) != ownSizeof(ma_panner_config_570426105):
      static :
        warning("Declaration of " & "ma_panner_config" &
            " exists but with different size")
    ma_panner_config
  else:
    ma_panner_config_570426105)
  enum_ma_positioning_570426132 = (when declared(enum_ma_positioning):
    when ownSizeof(enum_ma_positioning) != ownSizeof(enum_ma_positioning_570426131):
      static :
        warning("Declaration of " & "enum_ma_positioning" &
            " exists but with different size")
    enum_ma_positioning
  else:
    enum_ma_positioning_570426131)
  struct_ma_audio_buffer_config_570426230 = (when declared(
      struct_ma_audio_buffer_config):
    when ownSizeof(struct_ma_audio_buffer_config) !=
        ownSizeof(struct_ma_audio_buffer_config_570426229):
      static :
        warning("Declaration of " & "struct_ma_audio_buffer_config" &
            " exists but with different size")
    struct_ma_audio_buffer_config
  else:
    struct_ma_audio_buffer_config_570426229)
  ma_device_info_570426574 = (when declared(ma_device_info):
    when ownSizeof(ma_device_info) != ownSizeof(ma_device_info_570426573):
      static :
        warning("Declaration of " & "ma_device_info" &
            " exists but with different size")
    ma_device_info
  else:
    ma_device_info_570426573)
  ma_encoder_uninit_proc_570426648 = (when declared(ma_encoder_uninit_proc):
    when ownSizeof(ma_encoder_uninit_proc) != ownSizeof(ma_encoder_uninit_proc_570426647):
      static :
        warning("Declaration of " & "ma_encoder_uninit_proc" &
            " exists but with different size")
    ma_encoder_uninit_proc
  else:
    ma_encoder_uninit_proc_570426647)
  ma_hpf2_config_570426010 = (when declared(ma_hpf2_config):
    when ownSizeof(ma_hpf2_config) != ownSizeof(ma_hpf2_config_570426009):
      static :
        warning("Declaration of " & "ma_hpf2_config" &
            " exists but with different size")
    ma_hpf2_config
  else:
    ma_hpf2_config_570426009)
  ma_job_proc_570426300 = (when declared(ma_job_proc):
    when ownSizeof(ma_job_proc) != ownSizeof(ma_job_proc_570426299):
      static :
        warning("Declaration of " & "ma_job_proc" &
            " exists but with different size")
    ma_job_proc
  else:
    ma_job_proc_570426299)
  ma_uint64_570425835 = (when declared(ma_uint64):
    when ownSizeof(ma_uint64) != ownSizeof(ma_uint64_570425834):
      static :
        warning("Declaration of " & "ma_uint64" &
            " exists but with different size")
    ma_uint64
  else:
    ma_uint64_570425834)
  struct_ma_context_config_wasapi_570426348 = (when declared(
      struct_ma_context_config_wasapi):
    when ownSizeof(struct_ma_context_config_wasapi) !=
        ownSizeof(struct_ma_context_config_wasapi_570426347):
      static :
        warning("Declaration of " & "struct_ma_context_config_wasapi" &
            " exists but with different size")
    struct_ma_context_config_wasapi
  else:
    struct_ma_context_config_wasapi_570426347)
  struct_ma_fader_570426116 = (when declared(struct_ma_fader):
    when ownSizeof(struct_ma_fader) != ownSizeof(struct_ma_fader_570426115):
      static :
        warning("Declaration of " & "struct_ma_fader" &
            " exists but with different size")
    struct_ma_fader
  else:
    struct_ma_fader_570426115)
  ma_audio_buffer_config_570426232 = (when declared(ma_audio_buffer_config):
    when ownSizeof(ma_audio_buffer_config) != ownSizeof(ma_audio_buffer_config_570426231):
      static :
        warning("Declaration of " & "ma_audio_buffer_config" &
            " exists but with different size")
    ma_audio_buffer_config
  else:
    ma_audio_buffer_config_570426231)
  struct_ma_device_config_coreaudio_570426384 = (when declared(
      struct_ma_device_config_coreaudio):
    when ownSizeof(struct_ma_device_config_coreaudio) !=
        ownSizeof(struct_ma_device_config_coreaudio_570426383):
      static :
        warning("Declaration of " & "struct_ma_device_config_coreaudio" &
            " exists but with different size")
    struct_ma_device_config_coreaudio
  else:
    struct_ma_device_config_coreaudio_570426383)
  ma_int16_570425825 = (when declared(ma_int16):
    when ownSizeof(ma_int16) != ownSizeof(ma_int16_570425824):
      static :
        warning("Declaration of " & "ma_int16" &
            " exists but with different size")
    ma_int16
  else:
    ma_int16_570425824)
  ma_device_config_audio4_570426426 = (when declared(ma_device_config_audio4):
    when ownSizeof(ma_device_config_audio4) !=
        ownSizeof(ma_device_config_audio4_570426425):
      static :
        warning("Declaration of " & "ma_device_config_audio4" &
            " exists but with different size")
    ma_device_config_audio4
  else:
    ma_device_config_audio4_570426425)
  struct_ma_hpf_node_570426818 = (when declared(struct_ma_hpf_node):
    when ownSizeof(struct_ma_hpf_node) != ownSizeof(struct_ma_hpf_node_570426817):
      static :
        warning("Declaration of " & "struct_ma_hpf_node" &
            " exists but with different size")
    struct_ma_hpf_node
  else:
    struct_ma_hpf_node_570426817)
  ma_channel_converter_config_570426192 = (when declared(
      ma_channel_converter_config):
    when ownSizeof(ma_channel_converter_config) !=
        ownSizeof(ma_channel_converter_config_570426191):
      static :
        warning("Declaration of " & "ma_channel_converter_config" &
            " exists but with different size")
    ma_channel_converter_config
  else:
    ma_channel_converter_config_570426191)
  ma_audio_buffer_ref_570426228 = (when declared(ma_audio_buffer_ref):
    when ownSizeof(ma_audio_buffer_ref) != ownSizeof(ma_audio_buffer_ref_570426227):
      static :
        warning("Declaration of " & "ma_audio_buffer_ref" &
            " exists but with different size")
    ma_audio_buffer_ref
  else:
    ma_audio_buffer_ref_570426227)
  struct_ma_fence_570426266 = (when declared(struct_ma_fence):
    when ownSizeof(struct_ma_fence) != ownSizeof(struct_ma_fence_570426265):
      static :
        warning("Declaration of " & "struct_ma_fence" &
            " exists but with different size")
    struct_ma_fence
  else:
    struct_ma_fence_570426265)
  struct_ma_hpf_config_570426020 = (when declared(struct_ma_hpf_config):
    when ownSizeof(struct_ma_hpf_config) != ownSizeof(struct_ma_hpf_config_570426019):
      static :
        warning("Declaration of " & "struct_ma_hpf_config" &
            " exists but with different size")
    struct_ma_hpf_config
  else:
    struct_ma_hpf_config_570426019)
  ma_device_enumeration_result_570426578 = (when declared(
      ma_device_enumeration_result):
    when ownSizeof(ma_device_enumeration_result) !=
        ownSizeof(ma_device_enumeration_result_570426577):
      static :
        warning("Declaration of " & "ma_device_enumeration_result" &
            " exists but with different size")
    ma_device_enumeration_result
  else:
    ma_device_enumeration_result_570426577)
  ma_stream_layout_570425887 = (when declared(ma_stream_layout):
    when ownSizeof(ma_stream_layout) != ownSizeof(ma_stream_layout_570425886):
      static :
        warning("Declaration of " & "ma_stream_layout" &
            " exists but with different size")
    ma_stream_layout
  else:
    ma_stream_layout_570425886)
  struct_ma_device_config_opensl_570426476 = (when declared(
      struct_ma_device_config_opensl):
    when ownSizeof(struct_ma_device_config_opensl) !=
        ownSizeof(struct_ma_device_config_opensl_570426475):
      static :
        warning("Declaration of " & "struct_ma_device_config_opensl" &
            " exists but with different size")
    struct_ma_device_config_opensl
  else:
    struct_ma_device_config_opensl_570426475)
  struct_ma_atomic_vec3f_570426124 = (when declared(struct_ma_atomic_vec3f):
    when ownSizeof(struct_ma_atomic_vec3f) != ownSizeof(struct_ma_atomic_vec3f_570426123):
      static :
        warning("Declaration of " & "struct_ma_atomic_vec3f" &
            " exists but with different size")
    struct_ma_atomic_vec3f
  else:
    struct_ma_atomic_vec3f_570426123)
  ma_loshelf2_570426072 = (when declared(ma_loshelf2):
    when ownSizeof(ma_loshelf2) != ownSizeof(ma_loshelf2_570426071):
      static :
        warning("Declaration of " & "ma_loshelf2" &
            " exists but with different size")
    ma_loshelf2
  else:
    ma_loshelf2_570426071)
  struct_ma_slot_allocator_config_570426284 = (when declared(
      struct_ma_slot_allocator_config):
    when ownSizeof(struct_ma_slot_allocator_config) !=
        ownSizeof(struct_ma_slot_allocator_config_570426283):
      static :
        warning("Declaration of " & "struct_ma_slot_allocator_config" &
            " exists but with different size")
    struct_ma_slot_allocator_config
  else:
    struct_ma_slot_allocator_config_570426283)
  struct_ma_default_vfs_570426602 = (when declared(struct_ma_default_vfs):
    when ownSizeof(struct_ma_default_vfs) != ownSizeof(struct_ma_default_vfs_570426601):
      static :
        warning("Declaration of " & "struct_ma_default_vfs" &
            " exists but with different size")
    struct_ma_default_vfs
  else:
    struct_ma_default_vfs_570426601)
  ma_decoder_read_proc_570426628 = (when declared(ma_decoder_read_proc):
    when ownSizeof(ma_decoder_read_proc) != ownSizeof(ma_decoder_read_proc_570426627):
      static :
        warning("Declaration of " & "ma_decoder_read_proc" &
            " exists but with different size")
    ma_decoder_read_proc
  else:
    ma_decoder_read_proc_570426627)
  ma_decoder_config_570426636 = (when declared(ma_decoder_config):
    when ownSizeof(ma_decoder_config) != ownSizeof(ma_decoder_config_570426635):
      static :
        warning("Declaration of " & "ma_decoder_config" &
            " exists but with different size")
    ma_decoder_config
  else:
    ma_decoder_config_570426635)
  ma_resource_manager_flags_570426722 = (when declared(ma_resource_manager_flags):
    when ownSizeof(ma_resource_manager_flags) !=
        ownSizeof(ma_resource_manager_flags_570426721):
      static :
        warning("Declaration of " & "ma_resource_manager_flags" &
            " exists but with different size")
    ma_resource_manager_flags
  else:
    ma_resource_manager_flags_570426721)
  ma_lpf_config_570426000 = (when declared(ma_lpf_config):
    when ownSizeof(ma_lpf_config) != ownSizeof(ma_lpf_config_570425999):
      static :
        warning("Declaration of " & "ma_lpf_config" &
            " exists but with different size")
    ma_lpf_config
  else:
    ma_lpf_config_570425999)
  ma_resource_manager_config_570426738 = (when declared(
      ma_resource_manager_config):
    when ownSizeof(ma_resource_manager_config) !=
        ownSizeof(ma_resource_manager_config_570426737):
      static :
        warning("Declaration of " & "ma_resource_manager_config" &
            " exists but with different size")
    ma_resource_manager_config
  else:
    ma_resource_manager_config_570426737)
  ma_node_flags_570426752 = (when declared(ma_node_flags):
    when ownSizeof(ma_node_flags) != ownSizeof(ma_node_flags_570426751):
      static :
        warning("Declaration of " & "ma_node_flags" &
            " exists but with different size")
    ma_node_flags
  else:
    ma_node_flags_570426751)
  ma_semaphore_570425960 = (when declared(ma_semaphore):
    when ownSizeof(ma_semaphore) != ownSizeof(ma_semaphore_570425959):
      static :
        warning("Declaration of " & "ma_semaphore" &
            " exists but with different size")
    ma_semaphore
  else:
    ma_semaphore_570425959)
  ma_loshelf_node_config_570426848 = (when declared(ma_loshelf_node_config):
    when ownSizeof(ma_loshelf_node_config) != ownSizeof(ma_loshelf_node_config_570426847):
      static :
        warning("Declaration of " & "ma_loshelf_node_config" &
            " exists but with different size")
    ma_loshelf_node_config
  else:
    ma_loshelf_node_config_570426847)
  struct_ma_resource_manager_570426690 = (when declared(
      struct_ma_resource_manager):
    when ownSizeof(struct_ma_resource_manager) !=
        ownSizeof(struct_ma_resource_manager_570426689):
      static :
        warning("Declaration of " & "struct_ma_resource_manager" &
            " exists but with different size")
    struct_ma_resource_manager
  else:
    struct_ma_resource_manager_570426689)
  ma_resource_manager_data_buffer_node_570426692 = (when declared(
      ma_resource_manager_data_buffer_node):
    when ownSizeof(ma_resource_manager_data_buffer_node) !=
        ownSizeof(ma_resource_manager_data_buffer_node_570426691):
      static :
        warning("Declaration of " & "ma_resource_manager_data_buffer_node" &
            " exists but with different size")
    ma_resource_manager_data_buffer_node
  else:
    ma_resource_manager_data_buffer_node_570426691)
  ma_resource_manager_pipeline_notifications_570426718 = (when declared(
      ma_resource_manager_pipeline_notifications):
    when ownSizeof(ma_resource_manager_pipeline_notifications) !=
        ownSizeof(ma_resource_manager_pipeline_notifications_570426717):
      static :
        warning("Declaration of " & "ma_resource_manager_pipeline_notifications" &
            " exists but with different size")
    ma_resource_manager_pipeline_notifications
  else:
    ma_resource_manager_pipeline_notifications_570426717)
  ma_pthread_mutex_t_570425857 = (when declared(ma_pthread_mutex_t):
    when ownSizeof(ma_pthread_mutex_t) != ownSizeof(ma_pthread_mutex_t_570425856):
      static :
        warning("Declaration of " & "ma_pthread_mutex_t" &
            " exists but with different size")
    ma_pthread_mutex_t
  else:
    ma_pthread_mutex_t_570425856)
  ma_atomic_uint32_570425926 = (when declared(ma_atomic_uint32):
    when ownSizeof(ma_atomic_uint32) != ownSizeof(ma_atomic_uint32_570425925):
      static :
        warning("Declaration of " & "ma_atomic_uint32" &
            " exists but with different size")
    ma_atomic_uint32
  else:
    ma_atomic_uint32_570425925)
  struct_ma_node_vtable_570426758 = (when declared(struct_ma_node_vtable):
    when ownSizeof(struct_ma_node_vtable) != ownSizeof(struct_ma_node_vtable_570426757):
      static :
        warning("Declaration of " & "struct_ma_node_vtable" &
            " exists but with different size")
    struct_ma_node_vtable
  else:
    struct_ma_node_vtable_570426757)
  ma_device_config_sndio_570426418 = (when declared(ma_device_config_sndio):
    when ownSizeof(ma_device_config_sndio) != ownSizeof(ma_device_config_sndio_570426417):
      static :
        warning("Declaration of " & "ma_device_config_sndio" &
            " exists but with different size")
    ma_device_config_sndio
  else:
    ma_device_config_sndio_570426417)
  struct_ma_engine_node_570426890 = (when declared(struct_ma_engine_node):
    when ownSizeof(struct_ma_engine_node) != ownSizeof(struct_ma_engine_node_570426889):
      static :
        warning("Declaration of " & "struct_ma_engine_node" &
            " exists but with different size")
    struct_ma_engine_node
  else:
    struct_ma_engine_node_570426889)
  ma_context_config_570426324 = (when declared(ma_context_config):
    when ownSizeof(ma_context_config) != ownSizeof(ma_context_config_570426323):
      static :
        warning("Declaration of " & "ma_context_config" &
            " exists but with different size")
    ma_context_config
  else:
    ma_context_config_570426323)
  ma_uint32_570425831 = (when declared(ma_uint32):
    when ownSizeof(ma_uint32) != ownSizeof(ma_uint32_570425830):
      static :
        warning("Declaration of " & "ma_uint32" &
            " exists but with different size")
    ma_uint32
  else:
    ma_uint32_570425830)
  ma_hishelf2_570426082 = (when declared(ma_hishelf2):
    when ownSizeof(ma_hishelf2) != ownSizeof(ma_hishelf2_570426081):
      static :
        warning("Declaration of " & "ma_hishelf2" &
            " exists but with different size")
    ma_hishelf2
  else:
    ma_hishelf2_570426081)
  struct_ma_paged_audio_buffer_config_570426246 = (when declared(
      struct_ma_paged_audio_buffer_config):
    when ownSizeof(struct_ma_paged_audio_buffer_config) !=
        ownSizeof(struct_ma_paged_audio_buffer_config_570426245):
      static :
        warning("Declaration of " & "struct_ma_paged_audio_buffer_config" &
            " exists but with different size")
    struct_ma_paged_audio_buffer_config
  else:
    struct_ma_paged_audio_buffer_config_570426245)
  struct_ma_pulsewave_570426672 = (when declared(struct_ma_pulsewave):
    when ownSizeof(struct_ma_pulsewave) != ownSizeof(struct_ma_pulsewave_570426671):
      static :
        warning("Declaration of " & "struct_ma_pulsewave" &
            " exists but with different size")
    struct_ma_pulsewave
  else:
    struct_ma_pulsewave_570426671)
  ma_decoder_570426616 = (when declared(ma_decoder):
    when ownSizeof(ma_decoder) != ownSizeof(ma_decoder_570426615):
      static :
        warning("Declaration of " & "ma_decoder" &
            " exists but with different size")
    ma_decoder
  else:
    ma_decoder_570426615)
  pthread_t_570425855 = (when declared(pthread_t):
    when ownSizeof(pthread_t) != ownSizeof(pthread_t_570425854):
      static :
        warning("Declaration of " & "pthread_t" &
            " exists but with different size")
    pthread_t
  else:
    pthread_t_570425854)
  struct_ma_resource_manager_data_stream_570426702 = (when declared(
      struct_ma_resource_manager_data_stream):
    when ownSizeof(struct_ma_resource_manager_data_stream) !=
        ownSizeof(struct_ma_resource_manager_data_stream_570426701):
      static :
        warning("Declaration of " & "struct_ma_resource_manager_data_stream" &
            " exists but with different size")
    struct_ma_resource_manager_data_stream
  else:
    struct_ma_resource_manager_data_stream_570426701)
  ma_loshelf_node_570426852 = (when declared(ma_loshelf_node):
    when ownSizeof(ma_loshelf_node) != ownSizeof(ma_loshelf_node_570426851):
      static :
        warning("Declaration of " & "ma_loshelf_node" &
            " exists but with different size")
    ma_loshelf_node
  else:
    ma_loshelf_node_570426851)
  struct_ma_async_notification_poll_570426276 = (when declared(
      struct_ma_async_notification_poll):
    when ownSizeof(struct_ma_async_notification_poll) !=
        ownSizeof(struct_ma_async_notification_poll_570426275):
      static :
        warning("Declaration of " & "struct_ma_async_notification_poll" &
            " exists but with different size")
    struct_ma_async_notification_poll
  else:
    struct_ma_async_notification_poll_570426275)
  ma_sound_flags_570426880 = (when declared(ma_sound_flags):
    when ownSizeof(ma_sound_flags) != ownSizeof(ma_sound_flags_570426879):
      static :
        warning("Declaration of " & "ma_sound_flags" &
            " exists but with different size")
    ma_sound_flags
  else:
    ma_sound_flags_570426879)
  struct_ma_device_op_completion_event_570426524 = (when declared(
      struct_ma_device_op_completion_event):
    when ownSizeof(struct_ma_device_op_completion_event) !=
        ownSizeof(struct_ma_device_op_completion_event_570426523):
      static :
        warning("Declaration of " & "struct_ma_device_op_completion_event" &
            " exists but with different size")
    struct_ma_device_op_completion_event
  else:
    struct_ma_device_op_completion_event_570426523)
  ma_device_notification_570426550 = (when declared(ma_device_notification):
    when ownSizeof(ma_device_notification) != ownSizeof(ma_device_notification_570426549):
      static :
        warning("Declaration of " & "ma_device_notification" &
            " exists but with different size")
    ma_device_notification
  else:
    ma_device_notification_570426549)
  ma_fader_config_570426114 = (when declared(ma_fader_config):
    when ownSizeof(ma_fader_config) != ownSizeof(ma_fader_config_570426113):
      static :
        warning("Declaration of " & "ma_fader_config" &
            " exists but with different size")
    ma_fader_config
  else:
    ma_fader_config_570426113)
  ma_loshelf2_config_570426066 = (when declared(ma_loshelf2_config):
    when ownSizeof(ma_loshelf2_config) != ownSizeof(ma_loshelf2_config_570426065):
      static :
        warning("Declaration of " & "ma_loshelf2_config" &
            " exists but with different size")
    ma_loshelf2_config
  else:
    ma_loshelf2_config_570426065)
  ma_paged_audio_buffer_570426252 = (when declared(ma_paged_audio_buffer):
    when ownSizeof(ma_paged_audio_buffer) != ownSizeof(ma_paged_audio_buffer_570426251):
      static :
        warning("Declaration of " & "ma_paged_audio_buffer" &
            " exists but with different size")
    ma_paged_audio_buffer
  else:
    ma_paged_audio_buffer_570426251)
  ma_atomic_int32_570425930 = (when declared(ma_atomic_int32):
    when ownSizeof(ma_atomic_int32) != ownSizeof(ma_atomic_int32_570425929):
      static :
        warning("Declaration of " & "ma_atomic_int32" &
            " exists but with different size")
    ma_atomic_int32
  else:
    ma_atomic_int32_570425929)
  ma_pthread_cond_t_570425861 = (when declared(ma_pthread_cond_t):
    when ownSizeof(ma_pthread_cond_t) != ownSizeof(ma_pthread_cond_t_570425860):
      static :
        warning("Declaration of " & "ma_pthread_cond_t" &
            " exists but with different size")
    ma_pthread_cond_t
  else:
    ma_pthread_cond_t_570425860)
  struct_ma_biquad_570425980 = (when declared(struct_ma_biquad):
    when ownSizeof(struct_ma_biquad) != ownSizeof(struct_ma_biquad_570425979):
      static :
        warning("Declaration of " & "struct_ma_biquad" &
            " exists but with different size")
    struct_ma_biquad
  else:
    struct_ma_biquad_570425979)
  struct_ma_lpf2_570425994 = (when declared(struct_ma_lpf2):
    when ownSizeof(struct_ma_lpf2) != ownSizeof(struct_ma_lpf2_570425993):
      static :
        warning("Declaration of " & "struct_ma_lpf2" &
            " exists but with different size")
    struct_ma_lpf2
  else:
    struct_ma_lpf2_570425993)
  struct_ma_atomic_uint32_570425924 = (when declared(struct_ma_atomic_uint32):
    when ownSizeof(struct_ma_atomic_uint32) !=
        ownSizeof(struct_ma_atomic_uint32_570425923):
      static :
        warning("Declaration of " & "struct_ma_atomic_uint32" &
            " exists but with different size")
    struct_ma_atomic_uint32
  else:
    struct_ma_atomic_uint32_570425923)
  struct_ma_hishelf2_570426080 = (when declared(struct_ma_hishelf2):
    when ownSizeof(struct_ma_hishelf2) != ownSizeof(struct_ma_hishelf2_570426079):
      static :
        warning("Declaration of " & "struct_ma_hishelf2" &
            " exists but with different size")
    struct_ma_hishelf2
  else:
    struct_ma_hishelf2_570426079)
  ma_async_notification_event_570426282 = (when declared(
      ma_async_notification_event):
    when ownSizeof(ma_async_notification_event) !=
        ownSizeof(ma_async_notification_event_570426281):
      static :
        warning("Declaration of " & "ma_async_notification_event" &
            " exists but with different size")
    ma_async_notification_event
  else:
    ma_async_notification_event_570426281)
  ma_delay_node_570426868 = (when declared(ma_delay_node):
    when ownSizeof(ma_delay_node) != ownSizeof(ma_delay_node_570426867):
      static :
        warning("Declaration of " & "ma_delay_node" &
            " exists but with different size")
    ma_delay_node
  else:
    ma_delay_node_570426867)
  ma_device_op_completion_event_570426526 = (when declared(
      ma_device_op_completion_event):
    when ownSizeof(ma_device_op_completion_event) !=
        ownSizeof(ma_device_op_completion_event_570426525):
      static :
        warning("Declaration of " & "ma_device_op_completion_event" &
            " exists but with different size")
    ma_device_op_completion_event
  else:
    ma_device_op_completion_event_570426525)
  struct_ma_hishelf_node_570426858 = (when declared(struct_ma_hishelf_node):
    when ownSizeof(struct_ma_hishelf_node) != ownSizeof(struct_ma_hishelf_node_570426857):
      static :
        warning("Declaration of " & "struct_ma_hishelf_node" &
            " exists but with different size")
    struct_ma_hishelf_node
  else:
    struct_ma_hishelf_node_570426857)
  struct_ma_loshelf2_570426070 = (when declared(struct_ma_loshelf2):
    when ownSizeof(struct_ma_loshelf2) != ownSizeof(struct_ma_loshelf2_570426069):
      static :
        warning("Declaration of " & "struct_ma_loshelf2" &
            " exists but with different size")
    struct_ma_loshelf2
  else:
    struct_ma_loshelf2_570426069)
  ma_device_type_570426558 = (when declared(ma_device_type):
    when ownSizeof(ma_device_type) != ownSizeof(ma_device_type_570426557):
      static :
        warning("Declaration of " & "ma_device_type" &
            " exists but with different size")
    ma_device_type
  else:
    ma_device_type_570426557)
  enum_ma_resample_algorithm_570426174 = (when declared(
      enum_ma_resample_algorithm):
    when ownSizeof(enum_ma_resample_algorithm) !=
        ownSizeof(enum_ma_resample_algorithm_570426173):
      static :
        warning("Declaration of " & "enum_ma_resample_algorithm" &
            " exists but with different size")
    enum_ma_resample_algorithm
  else:
    enum_ma_resample_algorithm_570426173)
  ma_panner_570426110 = (when declared(ma_panner):
    when ownSizeof(ma_panner) != ownSizeof(ma_panner_570426109):
      static :
        warning("Declaration of " & "ma_panner" &
            " exists but with different size")
    ma_panner
  else:
    ma_panner_570426109)
  ma_resource_manager_pipeline_stage_notification_570426714 = (when declared(
      ma_resource_manager_pipeline_stage_notification):
    when ownSizeof(ma_resource_manager_pipeline_stage_notification) !=
        ownSizeof(ma_resource_manager_pipeline_stage_notification_570426713):
      static :
        warning("Declaration of " &
            "ma_resource_manager_pipeline_stage_notification" &
            " exists but with different size")
    ma_resource_manager_pipeline_stage_notification
  else:
    ma_resource_manager_pipeline_stage_notification_570426713)
  struct_ma_device_config_sndio_570426416 = (when declared(
      struct_ma_device_config_sndio):
    when ownSizeof(struct_ma_device_config_sndio) !=
        ownSizeof(struct_ma_device_config_sndio_570426415):
      static :
        warning("Declaration of " & "struct_ma_device_config_sndio" &
            " exists but with different size")
    struct_ma_device_config_sndio
  else:
    struct_ma_device_config_sndio_570426415)
  struct_ma_resource_manager_data_source_config_570426724 = (when declared(
      struct_ma_resource_manager_data_source_config):
    when ownSizeof(struct_ma_resource_manager_data_source_config) !=
        ownSizeof(struct_ma_resource_manager_data_source_config_570426723):
      static :
        warning("Declaration of " &
            "struct_ma_resource_manager_data_source_config" &
            " exists but with different size")
    struct_ma_resource_manager_data_source_config
  else:
    struct_ma_resource_manager_data_source_config_570426723)
  struct_ma_linear_resampler_config_570426156 = (when declared(
      struct_ma_linear_resampler_config):
    when ownSizeof(struct_ma_linear_resampler_config) !=
        ownSizeof(struct_ma_linear_resampler_config_570426155):
      static :
        warning("Declaration of " & "struct_ma_linear_resampler_config" &
            " exists but with different size")
    struct_ma_linear_resampler_config
  else:
    struct_ma_linear_resampler_config_570426155)
  ma_rb_570426256 = (when declared(ma_rb):
    when ownSizeof(ma_rb) != ownSizeof(ma_rb_570426255):
      static :
        warning("Declaration of " & "ma_rb" & " exists but with different size")
    ma_rb
  else:
    ma_rb_570426255)
  ma_hpf_config_570426022 = (when declared(ma_hpf_config):
    when ownSizeof(ma_hpf_config) != ownSizeof(ma_hpf_config_570426021):
      static :
        warning("Declaration of " & "ma_hpf_config" &
            " exists but with different size")
    ma_hpf_config
  else:
    ma_hpf_config_570426021)
  ma_peak_node_config_570426840 = (when declared(ma_peak_node_config):
    when ownSizeof(ma_peak_node_config) != ownSizeof(ma_peak_node_config_570426839):
      static :
        warning("Declaration of " & "ma_peak_node_config" &
            " exists but with different size")
    ma_peak_node_config
  else:
    ma_peak_node_config_570426839)
  struct_ma_device_config_aaudio_570426460 = (when declared(
      struct_ma_device_config_aaudio):
    when ownSizeof(struct_ma_device_config_aaudio) !=
        ownSizeof(struct_ma_device_config_aaudio_570426459):
      static :
        warning("Declaration of " & "struct_ma_device_config_aaudio" &
            " exists but with different size")
    struct_ma_device_config_aaudio
  else:
    struct_ma_device_config_aaudio_570426459)
  ma_log_level_570425869 = (when declared(ma_log_level):
    when ownSizeof(ma_log_level) != ownSizeof(ma_log_level_570425868):
      static :
        warning("Declaration of " & "ma_log_level" &
            " exists but with different size")
    ma_log_level
  else:
    ma_log_level_570425868)
  enum_ma_resource_manager_data_source_flags_570426708 = (when declared(
      enum_ma_resource_manager_data_source_flags):
    when ownSizeof(enum_ma_resource_manager_data_source_flags) !=
        ownSizeof(enum_ma_resource_manager_data_source_flags_570426707):
      static :
        warning("Declaration of " & "enum_ma_resource_manager_data_source_flags" &
            " exists but with different size")
    enum_ma_resource_manager_data_source_flags
  else:
    enum_ma_resource_manager_data_source_flags_570426707)
  ma_data_source_vtable_570426214 = (when declared(ma_data_source_vtable):
    when ownSizeof(ma_data_source_vtable) != ownSizeof(ma_data_source_vtable_570426213):
      static :
        warning("Declaration of " & "ma_data_source_vtable" &
            " exists but with different size")
    ma_data_source_vtable
  else:
    ma_data_source_vtable_570426213)
  enum_ma_sound_flags_570426878 = (when declared(enum_ma_sound_flags):
    when ownSizeof(enum_ma_sound_flags) != ownSizeof(enum_ma_sound_flags_570426877):
      static :
        warning("Declaration of " & "enum_ma_sound_flags" &
            " exists but with different size")
    enum_ma_sound_flags
  else:
    enum_ma_sound_flags_570426877)
  struct_ma_bpf_570426040 = (when declared(struct_ma_bpf):
    when ownSizeof(struct_ma_bpf) != ownSizeof(struct_ma_bpf_570426039):
      static :
        warning("Declaration of " & "struct_ma_bpf" &
            " exists but with different size")
    struct_ma_bpf
  else:
    struct_ma_bpf_570426039)
  ma_aaudio_performance_mode_570426454 = (when declared(
      ma_aaudio_performance_mode):
    when ownSizeof(ma_aaudio_performance_mode) !=
        ownSizeof(ma_aaudio_performance_mode_570426453):
      static :
        warning("Declaration of " & "ma_aaudio_performance_mode" &
            " exists but with different size")
    ma_aaudio_performance_mode
  else:
    ma_aaudio_performance_mode_570426453)
  struct_ma_pulsewave_config_570426668 = (when declared(
      struct_ma_pulsewave_config):
    when ownSizeof(struct_ma_pulsewave_config) !=
        ownSizeof(struct_ma_pulsewave_config_570426667):
      static :
        warning("Declaration of " & "struct_ma_pulsewave_config" &
            " exists but with different size")
    struct_ma_pulsewave_config
  else:
    struct_ma_pulsewave_config_570426667)
  enum_ma_aaudio_content_type_570426440 = (when declared(
      enum_ma_aaudio_content_type):
    when ownSizeof(enum_ma_aaudio_content_type) !=
        ownSizeof(enum_ma_aaudio_content_type_570426439):
      static :
        warning("Declaration of " & "enum_ma_aaudio_content_type" &
            " exists but with different size")
    enum_ma_aaudio_content_type
  else:
    enum_ma_aaudio_content_type_570426439)
  ma_peak_config_570426058 = (when declared(ma_peak_config):
    when ownSizeof(ma_peak_config) != ownSizeof(ma_peak_config_570426057):
      static :
        warning("Declaration of " & "ma_peak_config" &
            " exists but with different size")
    ma_peak_config
  else:
    ma_peak_config_570426057)
  ma_noise_config_570426682 = (when declared(ma_noise_config):
    when ownSizeof(ma_noise_config) != ownSizeof(ma_noise_config_570426681):
      static :
        warning("Declaration of " & "ma_noise_config" &
            " exists but with different size")
    ma_noise_config
  else:
    ma_noise_config_570426681)
  union_pthread_mutex_t_570426916 = (when declared(union_pthread_mutex_t):
    when ownSizeof(union_pthread_mutex_t) != ownSizeof(union_pthread_mutex_t_570426915):
      static :
        warning("Declaration of " & "union_pthread_mutex_t" &
            " exists but with different size")
    union_pthread_mutex_t
  else:
    union_pthread_mutex_t_570426915)
  struct_pthread_internal_list_570426928 = (when declared(
      struct_pthread_internal_list):
    when ownSizeof(struct_pthread_internal_list) !=
        ownSizeof(struct_pthread_internal_list_570426927):
      static :
        warning("Declaration of " & "struct_pthread_internal_list" &
            " exists but with different size")
    struct_pthread_internal_list
  else:
    struct_pthread_internal_list_570426927)
  struct_ma_job_queue_570426316 = (when declared(struct_ma_job_queue):
    when ownSizeof(struct_ma_job_queue) != ownSizeof(struct_ma_job_queue_570426315):
      static :
        warning("Declaration of " & "struct_ma_job_queue" &
            " exists but with different size")
    struct_ma_job_queue
  else:
    struct_ma_job_queue_570426315)
  ma_data_source_node_config_570426784 = (when declared(
      ma_data_source_node_config):
    when ownSizeof(ma_data_source_node_config) !=
        ownSizeof(ma_data_source_node_config_570426783):
      static :
        warning("Declaration of " & "ma_data_source_node_config" &
            " exists but with different size")
    ma_data_source_node_config
  else:
    ma_data_source_node_config_570426783)
  enum_ma_device_op_type_570426528 = (when declared(enum_ma_device_op_type):
    when ownSizeof(enum_ma_device_op_type) != ownSizeof(enum_ma_device_op_type_570426527):
      static :
        warning("Declaration of " & "enum_ma_device_op_type" &
            " exists but with different size")
    enum_ma_device_op_type
  else:
    enum_ma_device_op_type_570426527)
  ma_resource_manager_data_source_flags_570426710 = (when declared(
      ma_resource_manager_data_source_flags):
    when ownSizeof(ma_resource_manager_data_source_flags) !=
        ownSizeof(ma_resource_manager_data_source_flags_570426709):
      static :
        warning("Declaration of " & "ma_resource_manager_data_source_flags" &
            " exists but with different size")
    ma_resource_manager_data_source_flags
  else:
    ma_resource_manager_data_source_flags_570426709)
  ma_sound_570426874 = (when declared(ma_sound):
    when ownSizeof(ma_sound) != ownSizeof(ma_sound_570426873):
      static :
        warning("Declaration of " & "ma_sound" &
            " exists but with different size")
    ma_sound
  else:
    ma_sound_570426873)
  struct_ma_notch_node_config_570426830 = (when declared(
      struct_ma_notch_node_config):
    when ownSizeof(struct_ma_notch_node_config) !=
        ownSizeof(struct_ma_notch_node_config_570426829):
      static :
        warning("Declaration of " & "struct_ma_notch_node_config" &
            " exists but with different size")
    struct_ma_notch_node_config
  else:
    struct_ma_notch_node_config_570426829)
  enum_ma_result_570425877 = (when declared(enum_ma_result):
    when ownSizeof(enum_ma_result) != ownSizeof(enum_ma_result_570425876):
      static :
        warning("Declaration of " & "enum_ma_result" &
            " exists but with different size")
    enum_ma_result
  else:
    enum_ma_result_570425876)
  enum_ma_share_mode_570426560 = (when declared(enum_ma_share_mode):
    when ownSizeof(enum_ma_share_mode) != ownSizeof(enum_ma_share_mode_570426559):
      static :
        warning("Declaration of " & "enum_ma_share_mode" &
            " exists but with different size")
    enum_ma_share_mode
  else:
    enum_ma_share_mode_570426559)
  struct_ma_resource_manager_data_buffer_570426698 = (when declared(
      struct_ma_resource_manager_data_buffer):
    when ownSizeof(struct_ma_resource_manager_data_buffer) !=
        ownSizeof(struct_ma_resource_manager_data_buffer_570426697):
      static :
        warning("Declaration of " & "struct_ma_resource_manager_data_buffer" &
            " exists but with different size")
    struct_ma_resource_manager_data_buffer
  else:
    struct_ma_resource_manager_data_buffer_570426697)
  ma_gainer_config_570426094 = (when declared(ma_gainer_config):
    when ownSizeof(ma_gainer_config) != ownSizeof(ma_gainer_config_570426093):
      static :
        warning("Declaration of " & "ma_gainer_config" &
            " exists but with different size")
    ma_gainer_config
  else:
    ma_gainer_config_570426093)
  ma_notch_config_570426048 = (when declared(ma_notch_config):
    when ownSizeof(ma_notch_config) != ownSizeof(ma_notch_config_570426047):
      static :
        warning("Declaration of " & "ma_notch_config" &
            " exists but with different size")
    ma_notch_config
  else:
    ma_notch_config_570426047)
  ma_lpf_node_570426812 = (when declared(ma_lpf_node):
    when ownSizeof(ma_lpf_node) != ownSizeof(ma_lpf_node_570426811):
      static :
        warning("Declaration of " & "ma_lpf_node" &
            " exists but with different size")
    ma_lpf_node
  else:
    ma_lpf_node_570426811)
  ma_aaudio_input_preset_570426446 = (when declared(ma_aaudio_input_preset):
    when ownSizeof(ma_aaudio_input_preset) != ownSizeof(ma_aaudio_input_preset_570426445):
      static :
        warning("Declaration of " & "ma_aaudio_input_preset" &
            " exists but with different size")
    ma_aaudio_input_preset
  else:
    ma_aaudio_input_preset_570426445)
  ma_device_op_type_570426530 = (when declared(ma_device_op_type):
    when ownSizeof(ma_device_op_type) != ownSizeof(ma_device_op_type_570426529):
      static :
        warning("Declaration of " & "ma_device_op_type" &
            " exists but with different size")
    ma_device_op_type
  else:
    ma_device_op_type_570426529)
  ma_enum_devices_callback_proc_570426580 = (when declared(
      ma_enum_devices_callback_proc):
    when ownSizeof(ma_enum_devices_callback_proc) !=
        ownSizeof(ma_enum_devices_callback_proc_570426579):
      static :
        warning("Declaration of " & "ma_enum_devices_callback_proc" &
            " exists but with different size")
    ma_enum_devices_callback_proc
  else:
    ma_enum_devices_callback_proc_570426579)
  ma_context_config_dsound_570426358 = (when declared(ma_context_config_dsound):
    when ownSizeof(ma_context_config_dsound) !=
        ownSizeof(ma_context_config_dsound_570426357):
      static :
        warning("Declaration of " & "ma_context_config_dsound" &
            " exists but with different size")
    ma_context_config_dsound
  else:
    ma_context_config_dsound_570426357)
  struct_ma_lpf1_570425990 = (when declared(struct_ma_lpf1):
    when ownSizeof(struct_ma_lpf1) != ownSizeof(struct_ma_lpf1_570425989):
      static :
        warning("Declaration of " & "struct_ma_lpf1" &
            " exists but with different size")
    struct_ma_lpf1
  else:
    struct_ma_lpf1_570425989)
  enum_ma_channel_position_570425873 = (when declared(enum_ma_channel_position):
    when ownSizeof(enum_ma_channel_position) !=
        ownSizeof(enum_ma_channel_position_570425872):
      static :
        warning("Declaration of " & "enum_ma_channel_position" &
            " exists but with different size")
    enum_ma_channel_position
  else:
    enum_ma_channel_position_570425872)
  ma_context_config_oss_570426430 = (when declared(ma_context_config_oss):
    when ownSizeof(ma_context_config_oss) != ownSizeof(ma_context_config_oss_570426429):
      static :
        warning("Declaration of " & "ma_context_config_oss" &
            " exists but with different size")
    ma_context_config_oss
  else:
    ma_context_config_oss_570426429)
  ma_opensl_recording_preset_570426470 = (when declared(
      ma_opensl_recording_preset):
    when ownSizeof(ma_opensl_recording_preset) !=
        ownSizeof(ma_opensl_recording_preset_570426469):
      static :
        warning("Declaration of " & "ma_opensl_recording_preset" &
            " exists but with different size")
    ma_opensl_recording_preset
  else:
    ma_opensl_recording_preset_570426469)
  ma_device_config_pulseaudio_570426394 = (when declared(
      ma_device_config_pulseaudio):
    when ownSizeof(ma_device_config_pulseaudio) !=
        ownSizeof(ma_device_config_pulseaudio_570426393):
      static :
        warning("Declaration of " & "ma_device_config_pulseaudio" &
            " exists but with different size")
    ma_device_config_pulseaudio
  else:
    ma_device_config_pulseaudio_570426393)
  ma_stack_570426742 = (when declared(ma_stack):
    when ownSizeof(ma_stack) != ownSizeof(ma_stack_570426741):
      static :
        warning("Declaration of " & "ma_stack" &
            " exists but with different size")
    ma_stack
  else:
    ma_stack_570426741)
  struct_ma_device_config_oss_570426432 = (when declared(
      struct_ma_device_config_oss):
    when ownSizeof(struct_ma_device_config_oss) !=
        ownSizeof(struct_ma_device_config_oss_570426431):
      static :
        warning("Declaration of " & "struct_ma_device_config_oss" &
            " exists but with different size")
    struct_ma_device_config_oss
  else:
    struct_ma_device_config_oss_570426431)
  ma_resampling_backend_vtable_570426172 = (when declared(
      ma_resampling_backend_vtable):
    when ownSizeof(ma_resampling_backend_vtable) !=
        ownSizeof(ma_resampling_backend_vtable_570426171):
      static :
        warning("Declaration of " & "ma_resampling_backend_vtable" &
            " exists but with different size")
    ma_resampling_backend_vtable
  else:
    ma_resampling_backend_vtable_570426171)
  struct_ma_atomic_device_status_570426512 = (when declared(
      struct_ma_atomic_device_status):
    when ownSizeof(struct_ma_atomic_device_status) !=
        ownSizeof(struct_ma_atomic_device_status_570426511):
      static :
        warning("Declaration of " & "struct_ma_atomic_device_status" &
            " exists but with different size")
    struct_ma_atomic_device_status
  else:
    struct_ma_atomic_device_status_570426511)
  struct_ma_spatializer_570426152 = (when declared(struct_ma_spatializer):
    when ownSizeof(struct_ma_spatializer) != ownSizeof(struct_ma_spatializer_570426151):
      static :
        warning("Declaration of " & "struct_ma_spatializer" &
            " exists but with different size")
    struct_ma_spatializer
  else:
    struct_ma_spatializer_570426151)
  ma_float_570425843 = (when declared(ma_float):
    when ownSizeof(ma_float) != ownSizeof(ma_float_570425842):
      static :
        warning("Declaration of " & "ma_float" &
            " exists but with different size")
    ma_float
  else:
    ma_float_570425842)
  ma_mutex_570425952 = (when declared(ma_mutex):
    when ownSizeof(ma_mutex) != ownSizeof(ma_mutex_570425951):
      static :
        warning("Declaration of " & "ma_mutex" &
            " exists but with different size")
    ma_mutex
  else:
    ma_mutex_570425951)
  ma_log_callback_proc_570425962 = (when declared(ma_log_callback_proc):
    when ownSizeof(ma_log_callback_proc) != ownSizeof(ma_log_callback_proc_570425961):
      static :
        warning("Declaration of " & "ma_log_callback_proc" &
            " exists but with different size")
    ma_log_callback_proc
  else:
    ma_log_callback_proc_570425961)
  ma_pthread_t_570425853 = (when declared(ma_pthread_t):
    when ownSizeof(ma_pthread_t) != ownSizeof(ma_pthread_t_570425852):
      static :
        warning("Declaration of " & "ma_pthread_t" &
            " exists but with different size")
    ma_pthread_t
  else:
    ma_pthread_t_570425852)
  pthread_cond_t_570425863 = (when declared(pthread_cond_t):
    when ownSizeof(pthread_cond_t) != ownSizeof(pthread_cond_t_570425862):
      static :
        warning("Declaration of " & "pthread_cond_t" &
            " exists but with different size")
    pthread_cond_t
  else:
    pthread_cond_t_570425862)
  ma_handedness_570426138 = (when declared(ma_handedness):
    when ownSizeof(ma_handedness) != ownSizeof(ma_handedness_570426137):
      static :
        warning("Declaration of " & "ma_handedness" &
            " exists but with different size")
    ma_handedness
  else:
    ma_handedness_570426137)
  ma_channel_conversion_path_570426184 = (when declared(
      ma_channel_conversion_path):
    when ownSizeof(ma_channel_conversion_path) !=
        ownSizeof(ma_channel_conversion_path_570426183):
      static :
        warning("Declaration of " & "ma_channel_conversion_path" &
            " exists but with different size")
    ma_channel_conversion_path
  else:
    ma_channel_conversion_path_570426183)
  ma_data_source_config_570426220 = (when declared(ma_data_source_config):
    when ownSizeof(ma_data_source_config) != ownSizeof(ma_data_source_config_570426219):
      static :
        warning("Declaration of " & "ma_data_source_config" &
            " exists but with different size")
    ma_data_source_config
  else:
    ma_data_source_config_570426219)
  ma_standard_sample_rate_570425899 = (when declared(ma_standard_sample_rate):
    when ownSizeof(ma_standard_sample_rate) !=
        ownSizeof(ma_standard_sample_rate_570425898):
      static :
        warning("Declaration of " & "ma_standard_sample_rate" &
            " exists but with different size")
    ma_standard_sample_rate
  else:
    ma_standard_sample_rate_570425898)
  struct_ma_linear_resampler_570426160 = (when declared(
      struct_ma_linear_resampler):
    when ownSizeof(struct_ma_linear_resampler) !=
        ownSizeof(struct_ma_linear_resampler_570426159):
      static :
        warning("Declaration of " & "struct_ma_linear_resampler" &
            " exists but with different size")
    struct_ma_linear_resampler
  else:
    struct_ma_linear_resampler_570426159)
  struct_ma_rb_570426254 = (when declared(struct_ma_rb):
    when ownSizeof(struct_ma_rb) != ownSizeof(struct_ma_rb_570426253):
      static :
        warning("Declaration of " & "struct_ma_rb" &
            " exists but with different size")
    struct_ma_rb
  else:
    struct_ma_rb_570426253)
  struct_ma_encoder_config_570426652 = (when declared(struct_ma_encoder_config):
    when ownSizeof(struct_ma_encoder_config) !=
        ownSizeof(struct_ma_encoder_config_570426651):
      static :
        warning("Declaration of " & "struct_ma_encoder_config" &
            " exists but with different size")
    struct_ma_encoder_config
  else:
    struct_ma_encoder_config_570426651)
  ma_bpf_570426042 = (when declared(ma_bpf):
    when ownSizeof(ma_bpf) != ownSizeof(ma_bpf_570426041):
      static :
        warning("Declaration of " & "ma_bpf" & " exists but with different size")
    ma_bpf
  else:
    ma_bpf_570426041)
  struct_ma_sound_570426876 = (when declared(struct_ma_sound):
    when ownSizeof(struct_ma_sound) != ownSizeof(struct_ma_sound_570426875):
      static :
        warning("Declaration of " & "struct_ma_sound" &
            " exists but with different size")
    struct_ma_sound
  else:
    struct_ma_sound_570426875)
  enum_ma_open_mode_flags_570426586 = (when declared(enum_ma_open_mode_flags):
    when ownSizeof(enum_ma_open_mode_flags) !=
        ownSizeof(enum_ma_open_mode_flags_570426585):
      static :
        warning("Declaration of " & "enum_ma_open_mode_flags" &
            " exists but with different size")
    enum_ma_open_mode_flags
  else:
    enum_ma_open_mode_flags_570426585)
  ma_spatializer_config_570426150 = (when declared(ma_spatializer_config):
    when ownSizeof(ma_spatializer_config) != ownSizeof(ma_spatializer_config_570426149):
      static :
        warning("Declaration of " & "ma_spatializer_config" &
            " exists but with different size")
    ma_spatializer_config
  else:
    ma_spatializer_config_570426149)
  ma_double_570425845 = (when declared(ma_double):
    when ownSizeof(ma_double) != ownSizeof(ma_double_570425844):
      static :
        warning("Declaration of " & "ma_double" &
            " exists but with different size")
    ma_double
  else:
    ma_double_570425844)
  enum_ma_aaudio_input_preset_570426444 = (when declared(
      enum_ma_aaudio_input_preset):
    when ownSizeof(enum_ma_aaudio_input_preset) !=
        ownSizeof(enum_ma_aaudio_input_preset_570426443):
      static :
        warning("Declaration of " & "enum_ma_aaudio_input_preset" &
            " exists but with different size")
    enum_ma_aaudio_input_preset
  else:
    enum_ma_aaudio_input_preset_570426443)
  ma_device_op_params_570426534 = (when declared(ma_device_op_params):
    when ownSizeof(ma_device_op_params) != ownSizeof(ma_device_op_params_570426533):
      static :
        warning("Declaration of " & "ma_device_op_params" &
            " exists but with different size")
    ma_device_op_params
  else:
    ma_device_op_params_570426533)
  struct_ma_splitter_node_570426794 = (when declared(struct_ma_splitter_node):
    when ownSizeof(struct_ma_splitter_node) !=
        ownSizeof(struct_ma_splitter_node_570426793):
      static :
        warning("Declaration of " & "struct_ma_splitter_node" &
            " exists but with different size")
    struct_ma_splitter_node
  else:
    struct_ma_splitter_node_570426793)
  ma_int8_570425821 = (when declared(ma_int8):
    when ownSizeof(ma_int8) != ownSizeof(ma_int8_570425820):
      static :
        warning("Declaration of " & "ma_int8" &
            " exists but with different size")
    ma_int8
  else:
    ma_int8_570425820)
  ma_hpf1_config_570426008 = (when declared(ma_hpf1_config):
    when ownSizeof(ma_hpf1_config) != ownSizeof(ma_hpf1_config_570426007):
      static :
        warning("Declaration of " & "ma_hpf1_config" &
            " exists but with different size")
    ma_hpf1_config
  else:
    ma_hpf1_config_570426007)
  struct_ma_context_config_winmm_570426364 = (when declared(
      struct_ma_context_config_winmm):
    when ownSizeof(struct_ma_context_config_winmm) !=
        ownSizeof(struct_ma_context_config_winmm_570426363):
      static :
        warning("Declaration of " & "struct_ma_context_config_winmm" &
            " exists but with different size")
    struct_ma_context_config_winmm
  else:
    struct_ma_context_config_winmm_570426363)
  ma_atomic_bool32_570425942 = (when declared(ma_atomic_bool32):
    when ownSizeof(ma_atomic_bool32) != ownSizeof(ma_atomic_bool32_570425941):
      static :
        warning("Declaration of " & "ma_atomic_bool32" &
            " exists but with different size")
    ma_atomic_bool32
  else:
    ma_atomic_bool32_570425941)
  ma_context_config_sndio_570426414 = (when declared(ma_context_config_sndio):
    when ownSizeof(ma_context_config_sndio) !=
        ownSizeof(ma_context_config_sndio_570426413):
      static :
        warning("Declaration of " & "ma_context_config_sndio" &
            " exists but with different size")
    ma_context_config_sndio
  else:
    ma_context_config_sndio_570426413)
  struct_ma_peak_node_config_570426838 = (when declared(
      struct_ma_peak_node_config):
    when ownSizeof(struct_ma_peak_node_config) !=
        ownSizeof(struct_ma_peak_node_config_570426837):
      static :
        warning("Declaration of " & "struct_ma_peak_node_config" &
            " exists but with different size")
    struct_ma_peak_node_config
  else:
    struct_ma_peak_node_config_570426837)
  enum_ma_node_state_570426754 = (when declared(enum_ma_node_state):
    when ownSizeof(enum_ma_node_state) != ownSizeof(enum_ma_node_state_570426753):
      static :
        warning("Declaration of " & "enum_ma_node_state" &
            " exists but with different size")
    enum_ma_node_state
  else:
    enum_ma_node_state_570426753)
  struct_ma_device_info_570426572 = (when declared(struct_ma_device_info):
    when ownSizeof(struct_ma_device_info) != ownSizeof(struct_ma_device_info_570426571):
      static :
        warning("Declaration of " & "struct_ma_device_info" &
            " exists but with different size")
    struct_ma_device_info
  else:
    struct_ma_device_info_570426571)
  ma_file_info_570426596 = (when declared(ma_file_info):
    when ownSizeof(ma_file_info) != ownSizeof(ma_file_info_570426595):
      static :
        warning("Declaration of " & "ma_file_info" &
            " exists but with different size")
    ma_file_info
  else:
    ma_file_info_570426595)
  struct_ma_job_570426298 = (when declared(struct_ma_job):
    when ownSizeof(struct_ma_job) != ownSizeof(struct_ma_job_570426297):
      static :
        warning("Declaration of " & "struct_ma_job" &
            " exists but with different size")
    struct_ma_job
  else:
    struct_ma_job_570426297)
  ma_bpf2_config_570426030 = (when declared(ma_bpf2_config):
    when ownSizeof(ma_bpf2_config) != ownSizeof(ma_bpf2_config_570426029):
      static :
        warning("Declaration of " & "ma_bpf2_config" &
            " exists but with different size")
    ma_bpf2_config
  else:
    ma_bpf2_config_570426029)
  ma_data_source_get_next_proc_570426216 = (when declared(
      ma_data_source_get_next_proc):
    when ownSizeof(ma_data_source_get_next_proc) !=
        ownSizeof(ma_data_source_get_next_proc_570426215):
      static :
        warning("Declaration of " & "ma_data_source_get_next_proc" &
            " exists but with different size")
    ma_data_source_get_next_proc
  else:
    ma_data_source_get_next_proc_570426215)
  struct_ma_splitter_node_config_570426790 = (when declared(
      struct_ma_splitter_node_config):
    when ownSizeof(struct_ma_splitter_node_config) !=
        ownSizeof(struct_ma_splitter_node_config_570426789):
      static :
        warning("Declaration of " & "struct_ma_splitter_node_config" &
            " exists but with different size")
    struct_ma_splitter_node_config
  else:
    struct_ma_splitter_node_config_570426789)
  ma_uintptr_570425837 = (when declared(ma_uintptr):
    when ownSizeof(ma_uintptr) != ownSizeof(ma_uintptr_570425836):
      static :
        warning("Declaration of " & "ma_uintptr" &
            " exists but with different size")
    ma_uintptr
  else:
    ma_uintptr_570425836)
  ma_seek_proc_570426608 = (when declared(ma_seek_proc):
    when ownSizeof(ma_seek_proc) != ownSizeof(ma_seek_proc_570426607):
      static :
        warning("Declaration of " & "ma_seek_proc" &
            " exists but with different size")
    ma_seek_proc
  else:
    ma_seek_proc_570426607)
  ma_paged_audio_buffer_data_570426244 = (when declared(
      ma_paged_audio_buffer_data):
    when ownSizeof(ma_paged_audio_buffer_data) !=
        ownSizeof(ma_paged_audio_buffer_data_570426243):
      static :
        warning("Declaration of " & "ma_paged_audio_buffer_data" &
            " exists but with different size")
    ma_paged_audio_buffer_data
  else:
    ma_paged_audio_buffer_data_570426243)
  struct_ma_context_config_sndio_570426412 = (when declared(
      struct_ma_context_config_sndio):
    when ownSizeof(struct_ma_context_config_sndio) !=
        ownSizeof(struct_ma_context_config_sndio_570426411):
      static :
        warning("Declaration of " & "struct_ma_context_config_sndio" &
            " exists but with different size")
    struct_ma_context_config_sndio
  else:
    struct_ma_context_config_sndio_570426411)
  struct_ma_noise_570426684 = (when declared(struct_ma_noise):
    when ownSizeof(struct_ma_noise) != ownSizeof(struct_ma_noise_570426683):
      static :
        warning("Declaration of " & "struct_ma_noise" &
            " exists but with different size")
    struct_ma_noise
  else:
    struct_ma_noise_570426683)
  struct_ma_notch2_570426050 = (when declared(struct_ma_notch2):
    when ownSizeof(struct_ma_notch2) != ownSizeof(struct_ma_notch2_570426049):
      static :
        warning("Declaration of " & "struct_ma_notch2" &
            " exists but with different size")
    struct_ma_notch2
  else:
    struct_ma_notch2_570426049)
  enum_ma_opensl_stream_type_570426464 = (when declared(
      enum_ma_opensl_stream_type):
    when ownSizeof(enum_ma_opensl_stream_type) !=
        ownSizeof(enum_ma_opensl_stream_type_570426463):
      static :
        warning("Declaration of " & "enum_ma_opensl_stream_type" &
            " exists but with different size")
    enum_ma_opensl_stream_type
  else:
    enum_ma_opensl_stream_type_570426463)
  union_ma_biquad_coefficient_570425972 = (when declared(
      union_ma_biquad_coefficient):
    when ownSizeof(union_ma_biquad_coefficient) !=
        ownSizeof(union_ma_biquad_coefficient_570425971):
      static :
        warning("Declaration of " & "union_ma_biquad_coefficient" &
            " exists but with different size")
    union_ma_biquad_coefficient
  else:
    union_ma_biquad_coefficient_570425971)
  ma_sound_notifications_570426896 = (when declared(ma_sound_notifications):
    when ownSizeof(ma_sound_notifications) != ownSizeof(ma_sound_notifications_570426895):
      static :
        warning("Declaration of " & "ma_sound_notifications" &
            " exists but with different size")
    ma_sound_notifications
  else:
    ma_sound_notifications_570426895)
  ma_data_source_node_570426788 = (when declared(ma_data_source_node):
    when ownSizeof(ma_data_source_node) != ownSizeof(ma_data_source_node_570426787):
      static :
        warning("Declaration of " & "ma_data_source_node" &
            " exists but with different size")
    ma_data_source_node
  else:
    ma_data_source_node_570426787)
  ma_notch_node_config_570426832 = (when declared(ma_notch_node_config):
    when ownSizeof(ma_notch_node_config) != ownSizeof(ma_notch_node_config_570426831):
      static :
        warning("Declaration of " & "ma_notch_node_config" &
            " exists but with different size")
    ma_notch_node_config
  else:
    ma_notch_node_config_570426831)
  struct_ma_spatializer_config_570426148 = (when declared(
      struct_ma_spatializer_config):
    when ownSizeof(struct_ma_spatializer_config) !=
        ownSizeof(struct_ma_spatializer_config_570426147):
      static :
        warning("Declaration of " & "struct_ma_spatializer_config" &
            " exists but with different size")
    struct_ma_spatializer_config
  else:
    struct_ma_spatializer_config_570426147)
  ma_context_config_webaudio_570426486 = (when declared(
      ma_context_config_webaudio):
    when ownSizeof(ma_context_config_webaudio) !=
        ownSizeof(ma_context_config_webaudio_570426485):
      static :
        warning("Declaration of " & "ma_context_config_webaudio" &
            " exists but with different size")
    ma_context_config_webaudio
  else:
    ma_context_config_webaudio_570426485)
  struct_ma_channel_converter_config_570426190 = (when declared(
      struct_ma_channel_converter_config):
    when ownSizeof(struct_ma_channel_converter_config) !=
        ownSizeof(struct_ma_channel_converter_config_570426189):
      static :
        warning("Declaration of " & "struct_ma_channel_converter_config" &
            " exists but with different size")
    struct_ma_channel_converter_config
  else:
    struct_ma_channel_converter_config_570426189)
  ma_sound_config_570426900 = (when declared(ma_sound_config):
    when ownSizeof(ma_sound_config) != ownSizeof(ma_sound_config_570426899):
      static :
        warning("Declaration of " & "ma_sound_config" &
            " exists but with different size")
    ma_sound_config
  else:
    ma_sound_config_570426899)
  ma_wasapi_usage_570426346 = (when declared(ma_wasapi_usage):
    when ownSizeof(ma_wasapi_usage) != ownSizeof(ma_wasapi_usage_570426345):
      static :
        warning("Declaration of " & "ma_wasapi_usage" &
            " exists but with different size")
    ma_wasapi_usage
  else:
    ma_wasapi_usage_570426345)
  ma_biquad_570425982 = (when declared(ma_biquad):
    when ownSizeof(ma_biquad) != ownSizeof(ma_biquad_570425981):
      static :
        warning("Declaration of " & "ma_biquad" &
            " exists but with different size")
    ma_biquad
  else:
    ma_biquad_570425981)
  struct_ma_hpf_node_config_570426814 = (when declared(struct_ma_hpf_node_config):
    when ownSizeof(struct_ma_hpf_node_config) !=
        ownSizeof(struct_ma_hpf_node_config_570426813):
      static :
        warning("Declaration of " & "struct_ma_hpf_node_config" &
            " exists but with different size")
    struct_ma_hpf_node_config
  else:
    struct_ma_hpf_node_config_570426813)
  struct_ma_peak_node_570426842 = (when declared(struct_ma_peak_node):
    when ownSizeof(struct_ma_peak_node) != ownSizeof(struct_ma_peak_node_570426841):
      static :
        warning("Declaration of " & "struct_ma_peak_node" &
            " exists but with different size")
    struct_ma_peak_node
  else:
    struct_ma_peak_node_570426841)
  struct_ma_resource_manager_data_buffer_node_570426694 = (when declared(
      struct_ma_resource_manager_data_buffer_node):
    when ownSizeof(struct_ma_resource_manager_data_buffer_node) !=
        ownSizeof(struct_ma_resource_manager_data_buffer_node_570426693):
      static :
        warning("Declaration of " &
            "struct_ma_resource_manager_data_buffer_node" &
            " exists but with different size")
    struct_ma_resource_manager_data_buffer_node
  else:
    struct_ma_resource_manager_data_buffer_node_570426693)
  struct_ma_node_input_bus_570426772 = (when declared(struct_ma_node_input_bus):
    when ownSizeof(struct_ma_node_input_bus) !=
        ownSizeof(struct_ma_node_input_bus_570426771):
      static :
        warning("Declaration of " & "struct_ma_node_input_bus" &
            " exists but with different size")
    struct_ma_node_input_bus
  else:
    struct_ma_node_input_bus_570426771)
  ma_resampler_570426180 = (when declared(ma_resampler):
    when ownSizeof(ma_resampler) != ownSizeof(ma_resampler_570426179):
      static :
        warning("Declaration of " & "ma_resampler" &
            " exists but with different size")
    ma_resampler
  else:
    ma_resampler_570426179)
  ma_paged_audio_buffer_config_570426248 = (when declared(
      ma_paged_audio_buffer_config):
    when ownSizeof(ma_paged_audio_buffer_config) !=
        ownSizeof(ma_paged_audio_buffer_config_570426247):
      static :
        warning("Declaration of " & "ma_paged_audio_buffer_config" &
            " exists but with different size")
    ma_paged_audio_buffer_config
  else:
    ma_paged_audio_buffer_config_570426247)
  ma_device_config_aaudio_570426462 = (when declared(ma_device_config_aaudio):
    when ownSizeof(ma_device_config_aaudio) !=
        ownSizeof(ma_device_config_aaudio_570426461):
      static :
        warning("Declaration of " & "ma_device_config_aaudio" &
            " exists but with different size")
    ma_device_config_aaudio
  else:
    ma_device_config_aaudio_570426461)
  ma_data_source_base_570426224 = (when declared(ma_data_source_base):
    when ownSizeof(ma_data_source_base) != ownSizeof(ma_data_source_base_570426223):
      static :
        warning("Declaration of " & "ma_data_source_base" &
            " exists but with different size")
    ma_data_source_base
  else:
    ma_data_source_base_570426223)
  ma_job_type_570426304 = (when declared(ma_job_type):
    when ownSizeof(ma_job_type) != ownSizeof(ma_job_type_570426303):
      static :
        warning("Declaration of " & "ma_job_type" &
            " exists but with different size")
    ma_job_type
  else:
    ma_job_type_570426303)
  ma_slot_allocator_group_570426290 = (when declared(ma_slot_allocator_group):
    when ownSizeof(ma_slot_allocator_group) !=
        ownSizeof(ma_slot_allocator_group_570426289):
      static :
        warning("Declaration of " & "ma_slot_allocator_group" &
            " exists but with different size")
    ma_slot_allocator_group
  else:
    ma_slot_allocator_group_570426289)
  struct_ma_resource_manager_config_570426736 = (when declared(
      struct_ma_resource_manager_config):
    when ownSizeof(struct_ma_resource_manager_config) !=
        ownSizeof(struct_ma_resource_manager_config_570426735):
      static :
        warning("Declaration of " & "struct_ma_resource_manager_config" &
            " exists but with different size")
    struct_ma_resource_manager_config
  else:
    struct_ma_resource_manager_config_570426735)
  struct_ma_node_graph_570426746 = (when declared(struct_ma_node_graph):
    when ownSizeof(struct_ma_node_graph) != ownSizeof(struct_ma_node_graph_570426745):
      static :
        warning("Declaration of " & "struct_ma_node_graph" &
            " exists but with different size")
    struct_ma_node_graph
  else:
    struct_ma_node_graph_570426745)
  enum_ma_job_queue_flags_570426308 = (when declared(enum_ma_job_queue_flags):
    when ownSizeof(enum_ma_job_queue_flags) !=
        ownSizeof(enum_ma_job_queue_flags_570426307):
      static :
        warning("Declaration of " & "enum_ma_job_queue_flags" &
            " exists but with different size")
    enum_ma_job_queue_flags
  else:
    enum_ma_job_queue_flags_570426307)
  struct_ma_peak2_570426060 = (when declared(struct_ma_peak2):
    when ownSizeof(struct_ma_peak2) != ownSizeof(struct_ma_peak2_570426059):
      static :
        warning("Declaration of " & "struct_ma_peak2" &
            " exists but with different size")
    struct_ma_peak2
  else:
    struct_ma_peak2_570426059)
  ma_share_mode_570426562 = (when declared(ma_share_mode):
    when ownSizeof(ma_share_mode) != ownSizeof(ma_share_mode_570426561):
      static :
        warning("Declaration of " & "ma_share_mode" &
            " exists but with different size")
    ma_share_mode
  else:
    ma_share_mode_570426561)
  ma_ios_session_category_570426374 = (when declared(ma_ios_session_category):
    when ownSizeof(ma_ios_session_category) !=
        ownSizeof(ma_ios_session_category_570426373):
      static :
        warning("Declaration of " & "ma_ios_session_category" &
            " exists but with different size")
    ma_ios_session_category
  else:
    ma_ios_session_category_570426373)
  ma_loshelf_config_570426068 = (when declared(ma_loshelf_config):
    when ownSizeof(ma_loshelf_config) != ownSizeof(ma_loshelf_config_570426067):
      static :
        warning("Declaration of " & "ma_loshelf_config" &
            " exists but with different size")
    ma_loshelf_config
  else:
    ma_loshelf_config_570426067)
  struct_ma_duplex_rb_570426262 = (when declared(struct_ma_duplex_rb):
    when ownSizeof(struct_ma_duplex_rb) != ownSizeof(struct_ma_duplex_rb_570426261):
      static :
        warning("Declaration of " & "struct_ma_duplex_rb" &
            " exists but with different size")
    struct_ma_duplex_rb
  else:
    struct_ma_duplex_rb_570426261)
  struct_ma_semaphore_570425958 = (when declared(struct_ma_semaphore):
    when ownSizeof(struct_ma_semaphore) != ownSizeof(struct_ma_semaphore_570425957):
      static :
        warning("Declaration of " & "struct_ma_semaphore" &
            " exists but with different size")
    struct_ma_semaphore
  else:
    struct_ma_semaphore_570425957)
  ma_node_graph_570426744 = (when declared(ma_node_graph):
    when ownSizeof(ma_node_graph) != ownSizeof(ma_node_graph_570426743):
      static :
        warning("Declaration of " & "ma_node_graph" &
            " exists but with different size")
    ma_node_graph
  else:
    ma_node_graph_570426743)
  struct_ma_bpf_node_config_570426822 = (when declared(struct_ma_bpf_node_config):
    when ownSizeof(struct_ma_bpf_node_config) !=
        ownSizeof(struct_ma_bpf_node_config_570426821):
      static :
        warning("Declaration of " & "struct_ma_bpf_node_config" &
            " exists but with different size")
    struct_ma_bpf_node_config
  else:
    struct_ma_bpf_node_config_570426821)
  ma_job_queue_flags_570426310 = (when declared(ma_job_queue_flags):
    when ownSizeof(ma_job_queue_flags) != ownSizeof(ma_job_queue_flags_570426309):
      static :
        warning("Declaration of " & "ma_job_queue_flags" &
            " exists but with different size")
    ma_job_queue_flags
  else:
    ma_job_queue_flags_570426309)
  struct_ma_resampling_backend_vtable_570426170 = (when declared(
      struct_ma_resampling_backend_vtable):
    when ownSizeof(struct_ma_resampling_backend_vtable) !=
        ownSizeof(struct_ma_resampling_backend_vtable_570426169):
      static :
        warning("Declaration of " & "struct_ma_resampling_backend_vtable" &
            " exists but with different size")
    struct_ma_resampling_backend_vtable
  else:
    struct_ma_resampling_backend_vtable_570426169)
  ma_resource_manager_data_supply_570426734 = (when declared(
      ma_resource_manager_data_supply):
    when ownSizeof(ma_resource_manager_data_supply) !=
        ownSizeof(ma_resource_manager_data_supply_570426733):
      static :
        warning("Declaration of " & "ma_resource_manager_data_supply" &
            " exists but with different size")
    ma_resource_manager_data_supply
  else:
    ma_resource_manager_data_supply_570426733)
  struct_ma_gainer_config_570426092 = (when declared(struct_ma_gainer_config):
    when ownSizeof(struct_ma_gainer_config) !=
        ownSizeof(struct_ma_gainer_config_570426091):
      static :
        warning("Declaration of " & "struct_ma_gainer_config" &
            " exists but with different size")
    struct_ma_gainer_config
  else:
    struct_ma_gainer_config_570426091)
  struct_ma_context_config_null_570426492 = (when declared(
      struct_ma_context_config_null):
    when ownSizeof(struct_ma_context_config_null) !=
        ownSizeof(struct_ma_context_config_null_570426491):
      static :
        warning("Declaration of " & "struct_ma_context_config_null" &
            " exists but with different size")
    struct_ma_context_config_null
  else:
    struct_ma_context_config_null_570426491)
  ma_biquad_coefficient_570425974 = (when declared(ma_biquad_coefficient):
    when ownSizeof(ma_biquad_coefficient) != ownSizeof(ma_biquad_coefficient_570425973):
      static :
        warning("Declaration of " & "ma_biquad_coefficient" &
            " exists but with different size")
    ma_biquad_coefficient
  else:
    ma_biquad_coefficient_570425973)
  enum_ma_device_notification_type_570426544 = (when declared(
      enum_ma_device_notification_type):
    when ownSizeof(enum_ma_device_notification_type) !=
        ownSizeof(enum_ma_device_notification_type_570426543):
      static :
        warning("Declaration of " & "enum_ma_device_notification_type" &
            " exists but with different size")
    enum_ma_device_notification_type
  else:
    enum_ma_device_notification_type_570426543)
  ma_async_notification_callbacks_570426274 = (when declared(
      ma_async_notification_callbacks):
    when ownSizeof(ma_async_notification_callbacks) !=
        ownSizeof(ma_async_notification_callbacks_570426273):
      static :
        warning("Declaration of " & "ma_async_notification_callbacks" &
            " exists but with different size")
    ma_async_notification_callbacks
  else:
    ma_async_notification_callbacks_570426273)
  ma_device_570426328 = (when declared(ma_device):
    when ownSizeof(ma_device) != ownSizeof(ma_device_570426327):
      static :
        warning("Declaration of " & "ma_device" &
            " exists but with different size")
    ma_device
  else:
    ma_device_570426327)
  ma_engine_node_type_570426884 = (when declared(ma_engine_node_type):
    when ownSizeof(ma_engine_node_type) != ownSizeof(ma_engine_node_type_570426883):
      static :
        warning("Declaration of " & "ma_engine_node_type" &
            " exists but with different size")
    ma_engine_node_type
  else:
    ma_engine_node_type_570426883)
  struct_ma_context_config_coreaudio_570426380 = (when declared(
      struct_ma_context_config_coreaudio):
    when ownSizeof(struct_ma_context_config_coreaudio) !=
        ownSizeof(struct_ma_context_config_coreaudio_570426379):
      static :
        warning("Declaration of " & "struct_ma_context_config_coreaudio" &
            " exists but with different size")
    struct_ma_context_config_coreaudio
  else:
    struct_ma_context_config_coreaudio_570426379)
  enum_ma_wasapi_usage_570426344 = (when declared(enum_ma_wasapi_usage):
    when ownSizeof(enum_ma_wasapi_usage) != ownSizeof(enum_ma_wasapi_usage_570426343):
      static :
        warning("Declaration of " & "enum_ma_wasapi_usage" &
            " exists but with different size")
    enum_ma_wasapi_usage
  else:
    enum_ma_wasapi_usage_570426343)
  struct_ma_bpf2_config_570426028 = (when declared(struct_ma_bpf2_config):
    when ownSizeof(struct_ma_bpf2_config) != ownSizeof(struct_ma_bpf2_config_570426027):
      static :
        warning("Declaration of " & "struct_ma_bpf2_config" &
            " exists but with different size")
    struct_ma_bpf2_config
  else:
    struct_ma_bpf2_config_570426027)
  ma_device_config_alsa_570426402 = (when declared(ma_device_config_alsa):
    when ownSizeof(ma_device_config_alsa) != ownSizeof(ma_device_config_alsa_570426401):
      static :
        warning("Declaration of " & "ma_device_config_alsa" &
            " exists but with different size")
    ma_device_config_alsa
  else:
    ma_device_config_alsa_570426401)
  struct_ma_decoding_backend_config_570426620 = (when declared(
      struct_ma_decoding_backend_config):
    when ownSizeof(struct_ma_decoding_backend_config) !=
        ownSizeof(struct_ma_decoding_backend_config_570426619):
      static :
        warning("Declaration of " & "struct_ma_decoding_backend_config" &
            " exists but with different size")
    struct_ma_decoding_backend_config
  else:
    struct_ma_decoding_backend_config_570426619)
  enum_ma_ios_session_category_570426372 = (when declared(
      enum_ma_ios_session_category):
    when ownSizeof(enum_ma_ios_session_category) !=
        ownSizeof(enum_ma_ios_session_category_570426371):
      static :
        warning("Declaration of " & "enum_ma_ios_session_category" &
            " exists but with different size")
    enum_ma_ios_session_category
  else:
    enum_ma_ios_session_category_570426371)
  struct_ma_atomic_uint64_570425932 = (when declared(struct_ma_atomic_uint64):
    when ownSizeof(struct_ma_atomic_uint64) !=
        ownSizeof(struct_ma_atomic_uint64_570425931):
      static :
        warning("Declaration of " & "struct_ma_atomic_uint64" &
            " exists but with different size")
    struct_ma_atomic_uint64
  else:
    struct_ma_atomic_uint64_570425931)
  struct_ma_device_config_jack_570426408 = (when declared(
      struct_ma_device_config_jack):
    when ownSizeof(struct_ma_device_config_jack) !=
        ownSizeof(struct_ma_device_config_jack_570426407):
      static :
        warning("Declaration of " & "struct_ma_device_config_jack" &
            " exists but with different size")
    struct_ma_device_config_jack
  else:
    struct_ma_device_config_jack_570426407)
  struct_ma_audio_buffer_570426234 = (when declared(struct_ma_audio_buffer):
    when ownSizeof(struct_ma_audio_buffer) != ownSizeof(struct_ma_audio_buffer_570426233):
      static :
        warning("Declaration of " & "struct_ma_audio_buffer" &
            " exists but with different size")
    struct_ma_audio_buffer
  else:
    struct_ma_audio_buffer_570426233)
  struct_ma_vfs_callbacks_570426598 = (when declared(struct_ma_vfs_callbacks):
    when ownSizeof(struct_ma_vfs_callbacks) !=
        ownSizeof(struct_ma_vfs_callbacks_570426597):
      static :
        warning("Declaration of " & "struct_ma_vfs_callbacks" &
            " exists but with different size")
    struct_ma_vfs_callbacks
  else:
    struct_ma_vfs_callbacks_570426597)
  struct_ma_paged_audio_buffer_data_570426242 = (when declared(
      struct_ma_paged_audio_buffer_data):
    when ownSizeof(struct_ma_paged_audio_buffer_data) !=
        ownSizeof(struct_ma_paged_audio_buffer_data_570426241):
      static :
        warning("Declaration of " & "struct_ma_paged_audio_buffer_data" &
            " exists but with different size")
    struct_ma_paged_audio_buffer_data
  else:
    struct_ma_paged_audio_buffer_data_570426241)
  struct_ma_device_backend_config_570426500 = (when declared(
      struct_ma_device_backend_config):
    when ownSizeof(struct_ma_device_backend_config) !=
        ownSizeof(struct_ma_device_backend_config_570426499):
      static :
        warning("Declaration of " & "struct_ma_device_backend_config" &
            " exists but with different size")
    struct_ma_device_backend_config
  else:
    struct_ma_device_backend_config_570426499)
  ma_handle_570425847 = (when declared(ma_handle):
    when ownSizeof(ma_handle) != ownSizeof(ma_handle_570425846):
      static :
        warning("Declaration of " & "ma_handle" &
            " exists but with different size")
    ma_handle
  else:
    ma_handle_570425846)
  enum_ma_resource_manager_flags_570426720 = (when declared(
      enum_ma_resource_manager_flags):
    when ownSizeof(enum_ma_resource_manager_flags) !=
        ownSizeof(enum_ma_resource_manager_flags_570426719):
      static :
        warning("Declaration of " & "enum_ma_resource_manager_flags" &
            " exists but with different size")
    enum_ma_resource_manager_flags
  else:
    enum_ma_resource_manager_flags_570426719)
  ma_device_config_winmm_570426370 = (when declared(ma_device_config_winmm):
    when ownSizeof(ma_device_config_winmm) != ownSizeof(ma_device_config_winmm_570426369):
      static :
        warning("Declaration of " & "ma_device_config_winmm" &
            " exists but with different size")
    ma_device_config_winmm
  else:
    ma_device_config_winmm_570426369)
  struct_ma_waveform_config_570426660 = (when declared(struct_ma_waveform_config):
    when ownSizeof(struct_ma_waveform_config) !=
        ownSizeof(struct_ma_waveform_config_570426659):
      static :
        warning("Declaration of " & "struct_ma_waveform_config" &
            " exists but with different size")
    struct_ma_waveform_config
  else:
    struct_ma_waveform_config_570426659)
  ma_format_570425895 = (when declared(ma_format):
    when ownSizeof(ma_format) != ownSizeof(ma_format_570425894):
      static :
        warning("Declaration of " & "ma_format" &
            " exists but with different size")
    ma_format
  else:
    ma_format_570425894)
  ma_decoding_backend_vtable_570426626 = (when declared(
      ma_decoding_backend_vtable):
    when ownSizeof(ma_decoding_backend_vtable) !=
        ownSizeof(ma_decoding_backend_vtable_570426625):
      static :
        warning("Declaration of " & "ma_decoding_backend_vtable" &
            " exists but with different size")
    ma_decoding_backend_vtable
  else:
    ma_decoding_backend_vtable_570426625)
  ma_resource_manager_data_stream_570426700 = (when declared(
      ma_resource_manager_data_stream):
    when ownSizeof(ma_resource_manager_data_stream) !=
        ownSizeof(ma_resource_manager_data_stream_570426699):
      static :
        warning("Declaration of " & "ma_resource_manager_data_stream" &
            " exists but with different size")
    ma_resource_manager_data_stream
  else:
    ma_resource_manager_data_stream_570426699)
  struct_ma_context_config_dsound_570426356 = (when declared(
      struct_ma_context_config_dsound):
    when ownSizeof(struct_ma_context_config_dsound) !=
        ownSizeof(struct_ma_context_config_dsound_570426355):
      static :
        warning("Declaration of " & "struct_ma_context_config_dsound" &
            " exists but with different size")
    struct_ma_context_config_dsound
  else:
    struct_ma_context_config_dsound_570426355)
  ma_channel_mix_mode_570425910 = (when declared(ma_channel_mix_mode):
    when ownSizeof(ma_channel_mix_mode) != ownSizeof(ma_channel_mix_mode_570425909):
      static :
        warning("Declaration of " & "ma_channel_mix_mode" &
            " exists but with different size")
    ma_channel_mix_mode
  else:
    ma_channel_mix_mode_570425909)
  struct_ma_peak2_config_570426054 = (when declared(struct_ma_peak2_config):
    when ownSizeof(struct_ma_peak2_config) != ownSizeof(struct_ma_peak2_config_570426053):
      static :
        warning("Declaration of " & "struct_ma_peak2_config" &
            " exists but with different size")
    struct_ma_peak2_config
  else:
    struct_ma_peak2_config_570426053)
  struct_ma_panner_570426108 = (when declared(struct_ma_panner):
    when ownSizeof(struct_ma_panner) != ownSizeof(struct_ma_panner_570426107):
      static :
        warning("Declaration of " & "struct_ma_panner" &
            " exists but with different size")
    struct_ma_panner
  else:
    struct_ma_panner_570426107)
  enum_ma_data_converter_execution_path_570426202 = (when declared(
      enum_ma_data_converter_execution_path):
    when ownSizeof(enum_ma_data_converter_execution_path) !=
        ownSizeof(enum_ma_data_converter_execution_path_570426201):
      static :
        warning("Declaration of " & "enum_ma_data_converter_execution_path" &
            " exists but with different size")
    enum_ma_data_converter_execution_path
  else:
    enum_ma_data_converter_execution_path_570426201)
  struct_ma_context_config_webaudio_570426484 = (when declared(
      struct_ma_context_config_webaudio):
    when ownSizeof(struct_ma_context_config_webaudio) !=
        ownSizeof(struct_ma_context_config_webaudio_570426483):
      static :
        warning("Declaration of " & "struct_ma_context_config_webaudio" &
            " exists but with different size")
    struct_ma_context_config_webaudio
  else:
    struct_ma_context_config_webaudio_570426483)
  struct_ma_loshelf_node_config_570426846 = (when declared(
      struct_ma_loshelf_node_config):
    when ownSizeof(struct_ma_loshelf_node_config) !=
        ownSizeof(struct_ma_loshelf_node_config_570426845):
      static :
        warning("Declaration of " & "struct_ma_loshelf_node_config" &
            " exists but with different size")
    struct_ma_loshelf_node_config
  else:
    struct_ma_loshelf_node_config_570426845)
  enum_ma_stream_layout_570425885 = (when declared(enum_ma_stream_layout):
    when ownSizeof(enum_ma_stream_layout) != ownSizeof(enum_ma_stream_layout_570425884):
      static :
        warning("Declaration of " & "enum_ma_stream_layout" &
            " exists but with different size")
    enum_ma_stream_layout
  else:
    enum_ma_stream_layout_570425884)
  ma_device_config_oss_570426434 = (when declared(ma_device_config_oss):
    when ownSizeof(ma_device_config_oss) != ownSizeof(ma_device_config_oss_570426433):
      static :
        warning("Declaration of " & "ma_device_config_oss" &
            " exists but with different size")
    ma_device_config_oss
  else:
    ma_device_config_oss_570426433)
  ma_encoder_init_proc_570426646 = (when declared(ma_encoder_init_proc):
    when ownSizeof(ma_encoder_init_proc) != ownSizeof(ma_encoder_init_proc_570426645):
      static :
        warning("Declaration of " & "ma_encoder_init_proc" &
            " exists but with different size")
    ma_encoder_init_proc
  else:
    ma_encoder_init_proc_570426645)
  enum_ma_waveform_type_570426656 = (when declared(enum_ma_waveform_type):
    when ownSizeof(enum_ma_waveform_type) != ownSizeof(enum_ma_waveform_type_570426655):
      static :
        warning("Declaration of " & "enum_ma_waveform_type" &
            " exists but with different size")
    enum_ma_waveform_type
  else:
    enum_ma_waveform_type_570426655)
  struct_ma_device_config_audio4_570426424 = (when declared(
      struct_ma_device_config_audio4):
    when ownSizeof(struct_ma_device_config_audio4) !=
        ownSizeof(struct_ma_device_config_audio4_570426423):
      static :
        warning("Declaration of " & "struct_ma_device_config_audio4" &
            " exists but with different size")
    struct_ma_device_config_audio4
  else:
    struct_ma_device_config_audio4_570426423)
  ma_int64_570425833 = (when declared(ma_int64):
    when ownSizeof(ma_int64) != ownSizeof(ma_int64_570425832):
      static :
        warning("Declaration of " & "ma_int64" &
            " exists but with different size")
    ma_int64
  else:
    ma_int64_570425832)
  struct_ma_resource_manager_data_source_570426706 = (when declared(
      struct_ma_resource_manager_data_source):
    when ownSizeof(struct_ma_resource_manager_data_source) !=
        ownSizeof(struct_ma_resource_manager_data_source_570426705):
      static :
        warning("Declaration of " & "struct_ma_resource_manager_data_source" &
            " exists but with different size")
    struct_ma_resource_manager_data_source
  else:
    struct_ma_resource_manager_data_source_570426705)
  ma_resource_manager_data_supply_type_570426730 = (when declared(
      ma_resource_manager_data_supply_type):
    when ownSizeof(ma_resource_manager_data_supply_type) !=
        ownSizeof(ma_resource_manager_data_supply_type_570426729):
      static :
        warning("Declaration of " & "ma_resource_manager_data_supply_type" &
            " exists but with different size")
    ma_resource_manager_data_supply_type
  else:
    ma_resource_manager_data_supply_type_570426729)
  ma_node_input_bus_570426770 = (when declared(ma_node_input_bus):
    when ownSizeof(ma_node_input_bus) != ownSizeof(ma_node_input_bus_570426769):
      static :
        warning("Declaration of " & "ma_node_input_bus" &
            " exists but with different size")
    ma_node_input_bus
  else:
    ma_node_input_bus_570426769)
  ma_async_notification_poll_570426278 = (when declared(
      ma_async_notification_poll):
    when ownSizeof(ma_async_notification_poll) !=
        ownSizeof(ma_async_notification_poll_570426277):
      static :
        warning("Declaration of " & "ma_async_notification_poll" &
            " exists but with different size")
    ma_async_notification_poll
  else:
    ma_async_notification_poll_570426277)
  struct_ma_device_config_570426334 = (when declared(struct_ma_device_config):
    when ownSizeof(struct_ma_device_config) !=
        ownSizeof(struct_ma_device_config_570426333):
      static :
        warning("Declaration of " & "struct_ma_device_config" &
            " exists but with different size")
    struct_ma_device_config
  else:
    struct_ma_device_config_570426333)
  struct_ma_lpf_node_570426810 = (when declared(struct_ma_lpf_node):
    when ownSizeof(struct_ma_lpf_node) != ownSizeof(struct_ma_lpf_node_570426809):
      static :
        warning("Declaration of " & "struct_ma_lpf_node" &
            " exists but with different size")
    struct_ma_lpf_node
  else:
    struct_ma_lpf_node_570426809)
  enum_ma_handedness_570426136 = (when declared(enum_ma_handedness):
    when ownSizeof(enum_ma_handedness) != ownSizeof(enum_ma_handedness_570426135):
      static :
        warning("Declaration of " & "enum_ma_handedness" &
            " exists but with different size")
    enum_ma_handedness
  else:
    enum_ma_handedness_570426135)
  struct_ma_bpf_node_570426826 = (when declared(struct_ma_bpf_node):
    when ownSizeof(struct_ma_bpf_node) != ownSizeof(struct_ma_bpf_node_570426825):
      static :
        warning("Declaration of " & "struct_ma_bpf_node" &
            " exists but with different size")
    struct_ma_bpf_node
  else:
    struct_ma_bpf_node_570426825)
  struct_ma_channel_converter_570426194 = (when declared(
      struct_ma_channel_converter):
    when ownSizeof(struct_ma_channel_converter) !=
        ownSizeof(struct_ma_channel_converter_570426193):
      static :
        warning("Declaration of " & "struct_ma_channel_converter" &
            " exists but with different size")
    struct_ma_channel_converter
  else:
    struct_ma_channel_converter_570426193)
  ma_dither_mode_570425891 = (when declared(ma_dither_mode):
    when ownSizeof(ma_dither_mode) != ownSizeof(ma_dither_mode_570425890):
      static :
        warning("Declaration of " & "ma_dither_mode" &
            " exists but with different size")
    ma_dither_mode
  else:
    ma_dither_mode_570425890)
  ma_data_converter_execution_path_570426204 = (when declared(
      ma_data_converter_execution_path):
    when ownSizeof(ma_data_converter_execution_path) !=
        ownSizeof(ma_data_converter_execution_path_570426203):
      static :
        warning("Declaration of " & "ma_data_converter_execution_path" &
            " exists but with different size")
    ma_data_converter_execution_path
  else:
    ma_data_converter_execution_path_570426203)
  struct_ma_device_570426330 = (when declared(struct_ma_device):
    when ownSizeof(struct_ma_device) != ownSizeof(struct_ma_device_570426329):
      static :
        warning("Declaration of " & "struct_ma_device" &
            " exists but with different size")
    struct_ma_device
  else:
    struct_ma_device_570426329)
  ma_context_config_aaudio_570426458 = (when declared(ma_context_config_aaudio):
    when ownSizeof(ma_context_config_aaudio) !=
        ownSizeof(ma_context_config_aaudio_570426457):
      static :
        warning("Declaration of " & "ma_context_config_aaudio" &
            " exists but with different size")
    ma_context_config_aaudio
  else:
    ma_context_config_aaudio_570426457)
  ma_tell_proc_570426610 = (when declared(ma_tell_proc):
    when ownSizeof(ma_tell_proc) != ownSizeof(ma_tell_proc_570426609):
      static :
        warning("Declaration of " & "ma_tell_proc" &
            " exists but with different size")
    ma_tell_proc
  else:
    ma_tell_proc_570426609)
  ma_resource_manager_data_source_config_570426726 = (when declared(
      ma_resource_manager_data_source_config):
    when ownSizeof(ma_resource_manager_data_source_config) !=
        ownSizeof(ma_resource_manager_data_source_config_570426725):
      static :
        warning("Declaration of " & "ma_resource_manager_data_source_config" &
            " exists but with different size")
    ma_resource_manager_data_source_config
  else:
    ma_resource_manager_data_source_config_570426725)
  ma_thread_priority_570425948 = (when declared(ma_thread_priority):
    when ownSizeof(ma_thread_priority) != ownSizeof(ma_thread_priority_570425947):
      static :
        warning("Declaration of " & "ma_thread_priority" &
            " exists but with different size")
    ma_thread_priority
  else:
    ma_thread_priority_570425947)
  struct_ma_data_source_base_570426222 = (when declared(
      struct_ma_data_source_base):
    when ownSizeof(struct_ma_data_source_base) !=
        ownSizeof(struct_ma_data_source_base_570426221):
      static :
        warning("Declaration of " & "struct_ma_data_source_base" &
            " exists but with different size")
    struct_ma_data_source_base
  else:
    struct_ma_data_source_base_570426221)
  struct_ma_paged_audio_buffer_570426250 = (when declared(
      struct_ma_paged_audio_buffer):
    when ownSizeof(struct_ma_paged_audio_buffer) !=
        ownSizeof(struct_ma_paged_audio_buffer_570426249):
      static :
        warning("Declaration of " & "struct_ma_paged_audio_buffer" &
            " exists but with different size")
    struct_ma_paged_audio_buffer
  else:
    struct_ma_paged_audio_buffer_570426249)
  struct_ma_context_config_jack_570426404 = (when declared(
      struct_ma_context_config_jack):
    when ownSizeof(struct_ma_context_config_jack) !=
        ownSizeof(struct_ma_context_config_jack_570426403):
      static :
        warning("Declaration of " & "struct_ma_context_config_jack" &
            " exists but with different size")
    struct_ma_context_config_jack
  else:
    struct_ma_context_config_jack_570426403)
  struct_ma_resource_manager_pipeline_stage_notification_570426712 = (when declared(
      struct_ma_resource_manager_pipeline_stage_notification):
    when ownSizeof(struct_ma_resource_manager_pipeline_stage_notification) !=
        ownSizeof(struct_ma_resource_manager_pipeline_stage_notification_570426711):
      static :
        warning("Declaration of " &
            "struct_ma_resource_manager_pipeline_stage_notification" &
            " exists but with different size")
    struct_ma_resource_manager_pipeline_stage_notification
  else:
    struct_ma_resource_manager_pipeline_stage_notification_570426711)
  struct_ma_data_source_vtable_570426212 = (when declared(
      struct_ma_data_source_vtable):
    when ownSizeof(struct_ma_data_source_vtable) !=
        ownSizeof(struct_ma_data_source_vtable_570426211):
      static :
        warning("Declaration of " & "struct_ma_data_source_vtable" &
            " exists but with different size")
    struct_ma_data_source_vtable
  else:
    struct_ma_data_source_vtable_570426211)
  ma_positioning_570426134 = (when declared(ma_positioning):
    when ownSizeof(ma_positioning) != ownSizeof(ma_positioning_570426133):
      static :
        warning("Declaration of " & "ma_positioning" &
            " exists but with different size")
    ma_positioning
  else:
    ma_positioning_570426133)
  ma_log_callback_570425966 = (when declared(ma_log_callback):
    when ownSizeof(ma_log_callback) != ownSizeof(ma_log_callback_570425965):
      static :
        warning("Declaration of " & "ma_log_callback" &
            " exists but with different size")
    ma_log_callback
  else:
    ma_log_callback_570425965)
  ma_context_config_null_570426494 = (when declared(ma_context_config_null):
    when ownSizeof(ma_context_config_null) != ownSizeof(ma_context_config_null_570426493):
      static :
        warning("Declaration of " & "ma_context_config_null" &
            " exists but with different size")
    ma_context_config_null
  else:
    ma_context_config_null_570426493)
  ma_device_id_570426570 = (when declared(ma_device_id):
    when ownSizeof(ma_device_id) != ownSizeof(ma_device_id_570426569):
      static :
        warning("Declaration of " & "ma_device_id" &
            " exists but with different size")
    ma_device_id
  else:
    ma_device_id_570426569)
  ma_node_state_570426756 = (when declared(ma_node_state):
    when ownSizeof(ma_node_state) != ownSizeof(ma_node_state_570426755):
      static :
        warning("Declaration of " & "ma_node_state" &
            " exists but with different size")
    ma_node_state
  else:
    ma_node_state_570426755)
  struct_ma_spatializer_listener_config_570426140 = (when declared(
      struct_ma_spatializer_listener_config):
    when ownSizeof(struct_ma_spatializer_listener_config) !=
        ownSizeof(struct_ma_spatializer_listener_config_570426139):
      static :
        warning("Declaration of " & "struct_ma_spatializer_listener_config" &
            " exists but with different size")
    struct_ma_spatializer_listener_config
  else:
    struct_ma_spatializer_listener_config_570426139)
  ma_delay_570426090 = (when declared(ma_delay):
    when ownSizeof(ma_delay) != ownSizeof(ma_delay_570426089):
      static :
        warning("Declaration of " & "ma_delay" &
            " exists but with different size")
    ma_delay
  else:
    ma_delay_570426089)
  struct_ma_device_notification_570426548 = (when declared(
      struct_ma_device_notification):
    when ownSizeof(struct_ma_device_notification) !=
        ownSizeof(struct_ma_device_notification_570426547):
      static :
        warning("Declaration of " & "struct_ma_device_notification" &
            " exists but with different size")
    struct_ma_device_notification
  else:
    struct_ma_device_notification_570426547)
  ma_encoding_format_570426614 = (when declared(ma_encoding_format):
    when ownSizeof(ma_encoding_format) != ownSizeof(ma_encoding_format_570426613):
      static :
        warning("Declaration of " & "ma_encoding_format" &
            " exists but with different size")
    ma_encoding_format
  else:
    ma_encoding_format_570426613)
  ma_int32_570425829 = (when declared(ma_int32):
    when ownSizeof(ma_int32) != ownSizeof(ma_int32_570425828):
      static :
        warning("Declaration of " & "ma_int32" &
            " exists but with different size")
    ma_int32
  else:
    ma_int32_570425828)
  struct_ma_engine_config_570426912 = (when declared(struct_ma_engine_config):
    when ownSizeof(struct_ma_engine_config) !=
        ownSizeof(struct_ma_engine_config_570426911):
      static :
        warning("Declaration of " & "struct_ma_engine_config" &
            " exists but with different size")
    struct_ma_engine_config
  else:
    struct_ma_engine_config_570426911)
  ma_device_config_dsound_570426362 = (when declared(ma_device_config_dsound):
    when ownSizeof(ma_device_config_dsound) !=
        ownSizeof(ma_device_config_dsound_570426361):
      static :
        warning("Declaration of " & "ma_device_config_dsound" &
            " exists but with different size")
    ma_device_config_dsound
  else:
    ma_device_config_dsound_570426361)
  ma_node_output_bus_570426766 = (when declared(ma_node_output_bus):
    when ownSizeof(ma_node_output_bus) != ownSizeof(ma_node_output_bus_570426765):
      static :
        warning("Declaration of " & "ma_node_output_bus" &
            " exists but with different size")
    ma_node_output_bus
  else:
    ma_node_output_bus_570426765)
  enum_ma_thread_priority_570425946 = (when declared(enum_ma_thread_priority):
    when ownSizeof(enum_ma_thread_priority) !=
        ownSizeof(enum_ma_thread_priority_570425945):
      static :
        warning("Declaration of " & "enum_ma_thread_priority" &
            " exists but with different size")
    enum_ma_thread_priority
  else:
    enum_ma_thread_priority_570425945)
  ma_peak2_config_570426056 = (when declared(ma_peak2_config):
    when ownSizeof(ma_peak2_config) != ownSizeof(ma_peak2_config_570426055):
      static :
        warning("Declaration of " & "ma_peak2_config" &
            " exists but with different size")
    ma_peak2_config
  else:
    ma_peak2_config_570426055)
  struct_ma_device_job_thread_config_570426516 = (when declared(
      struct_ma_device_job_thread_config):
    when ownSizeof(struct_ma_device_job_thread_config) !=
        ownSizeof(struct_ma_device_job_thread_config_570426515):
      static :
        warning("Declaration of " & "struct_ma_device_job_thread_config" &
            " exists but with different size")
    struct_ma_device_job_thread_config
  else:
    struct_ma_device_job_thread_config_570426515)
  ma_decoder_tell_proc_570426632 = (when declared(ma_decoder_tell_proc):
    when ownSizeof(ma_decoder_tell_proc) != ownSizeof(ma_decoder_tell_proc_570426631):
      static :
        warning("Declaration of " & "ma_decoder_tell_proc" &
            " exists but with different size")
    ma_decoder_tell_proc
  else:
    ma_decoder_tell_proc_570426631)
  enum_ma_engine_node_type_570426882 = (when declared(enum_ma_engine_node_type):
    when ownSizeof(enum_ma_engine_node_type) !=
        ownSizeof(enum_ma_engine_node_type_570426881):
      static :
        warning("Declaration of " & "enum_ma_engine_node_type" &
            " exists but with different size")
    enum_ma_engine_node_type
  else:
    enum_ma_engine_node_type_570426881)
  struct_ma_atomic_bool32_570425940 = (when declared(struct_ma_atomic_bool32):
    when ownSizeof(struct_ma_atomic_bool32) !=
        ownSizeof(struct_ma_atomic_bool32_570425939):
      static :
        warning("Declaration of " & "struct_ma_atomic_bool32" &
            " exists but with different size")
    struct_ma_atomic_bool32
  else:
    struct_ma_atomic_bool32_570425939)
  ma_duplex_rb_570426264 = (when declared(ma_duplex_rb):
    when ownSizeof(ma_duplex_rb) != ownSizeof(ma_duplex_rb_570426263):
      static :
        warning("Declaration of " & "ma_duplex_rb" &
            " exists but with different size")
    ma_duplex_rb
  else:
    ma_duplex_rb_570426263)
  ma_device_config_webaudio_570426490 = (when declared(ma_device_config_webaudio):
    when ownSizeof(ma_device_config_webaudio) !=
        ownSizeof(ma_device_config_webaudio_570426489):
      static :
        warning("Declaration of " & "ma_device_config_webaudio" &
            " exists but with different size")
    ma_device_config_webaudio
  else:
    ma_device_config_webaudio_570426489)
  ma_vfs_file_570426584 = (when declared(ma_vfs_file):
    when ownSizeof(ma_vfs_file) != ownSizeof(ma_vfs_file_570426583):
      static :
        warning("Declaration of " & "ma_vfs_file" &
            " exists but with different size")
    ma_vfs_file
  else:
    ma_vfs_file_570426583)
  ma_encoder_config_570426654 = (when declared(ma_encoder_config):
    when ownSizeof(ma_encoder_config) != ownSizeof(ma_encoder_config_570426653):
      static :
        warning("Declaration of " & "ma_encoder_config" &
            " exists but with different size")
    ma_encoder_config
  else:
    ma_encoder_config_570426653)
  struct_ma_node_output_bus_570426768 = (when declared(struct_ma_node_output_bus):
    when ownSizeof(struct_ma_node_output_bus) !=
        ownSizeof(struct_ma_node_output_bus_570426767):
      static :
        warning("Declaration of " & "struct_ma_node_output_bus" &
            " exists but with different size")
    struct_ma_node_output_bus
  else:
    struct_ma_node_output_bus_570426767)
  ma_lpf_570426004 = (when declared(ma_lpf):
    when ownSizeof(ma_lpf) != ownSizeof(ma_lpf_570426003):
      static :
        warning("Declaration of " & "ma_lpf" & " exists but with different size")
    ma_lpf
  else:
    ma_lpf_570426003)
  ma_hpf_node_570426820 = (when declared(ma_hpf_node):
    when ownSizeof(ma_hpf_node) != ownSizeof(ma_hpf_node_570426819):
      static :
        warning("Declaration of " & "ma_hpf_node" &
            " exists but with different size")
    ma_hpf_node
  else:
    ma_hpf_node_570426819)
  ma_atomic_device_status_570426514 = (when declared(ma_atomic_device_status):
    when ownSizeof(ma_atomic_device_status) !=
        ownSizeof(ma_atomic_device_status_570426513):
      static :
        warning("Declaration of " & "ma_atomic_device_status" &
            " exists but with different size")
    ma_atomic_device_status
  else:
    ma_atomic_device_status_570426513)
  ma_pulsewave_config_570426670 = (when declared(ma_pulsewave_config):
    when ownSizeof(ma_pulsewave_config) != ownSizeof(ma_pulsewave_config_570426669):
      static :
        warning("Declaration of " & "ma_pulsewave_config" &
            " exists but with different size")
    ma_pulsewave_config
  else:
    ma_pulsewave_config_570426669)
  ma_job_queue_config_570426314 = (when declared(ma_job_queue_config):
    when ownSizeof(ma_job_queue_config) != ownSizeof(ma_job_queue_config_570426313):
      static :
        warning("Declaration of " & "ma_job_queue_config" &
            " exists but with different size")
    ma_job_queue_config
  else:
    ma_job_queue_config_570426313)
  struct_ma_decoder_config_570426634 = (when declared(struct_ma_decoder_config):
    when ownSizeof(struct_ma_decoder_config) !=
        ownSizeof(struct_ma_decoder_config_570426633):
      static :
        warning("Declaration of " & "struct_ma_decoder_config" &
            " exists but with different size")
    struct_ma_decoder_config
  else:
    struct_ma_decoder_config_570426633)
  struct_ma_hpf2_570426016 = (when declared(struct_ma_hpf2):
    when ownSizeof(struct_ma_hpf2) != ownSizeof(struct_ma_hpf2_570426015):
      static :
        warning("Declaration of " & "struct_ma_hpf2" &
            " exists but with different size")
    struct_ma_hpf2
  else:
    struct_ma_hpf2_570426015)
  struct_ma_pcm_rb_570426258 = (when declared(struct_ma_pcm_rb):
    when ownSizeof(struct_ma_pcm_rb) != ownSizeof(struct_ma_pcm_rb_570426257):
      static :
        warning("Declaration of " & "struct_ma_pcm_rb" &
            " exists but with different size")
    struct_ma_pcm_rb
  else:
    struct_ma_pcm_rb_570426257)
  struct_ma_decoder_570426618 = (when declared(struct_ma_decoder):
    when ownSizeof(struct_ma_decoder) != ownSizeof(struct_ma_decoder_570426617):
      static :
        warning("Declaration of " & "struct_ma_decoder" &
            " exists but with different size")
    struct_ma_decoder
  else:
    struct_ma_decoder_570426617)
  ma_resource_manager_570426688 = (when declared(ma_resource_manager):
    when ownSizeof(ma_resource_manager) != ownSizeof(ma_resource_manager_570426687):
      static :
        warning("Declaration of " & "ma_resource_manager" &
            " exists but with different size")
    ma_resource_manager
  else:
    ma_resource_manager_570426687)
  ma_spatializer_570426154 = (when declared(ma_spatializer):
    when ownSizeof(ma_spatializer) != ownSizeof(ma_spatializer_570426153):
      static :
        warning("Declaration of " & "ma_spatializer" &
            " exists but with different size")
    ma_spatializer
  else:
    ma_spatializer_570426153)
  ma_device_config_wasapi_570426354 = (when declared(ma_device_config_wasapi):
    when ownSizeof(ma_device_config_wasapi) !=
        ownSizeof(ma_device_config_wasapi_570426353):
      static :
        warning("Declaration of " & "ma_device_config_wasapi" &
            " exists but with different size")
    ma_device_config_wasapi
  else:
    ma_device_config_wasapi_570426353)
  ma_channel_570425871 = (when declared(ma_channel):
    when ownSizeof(ma_channel) != ownSizeof(ma_channel_570425870):
      static :
        warning("Declaration of " & "ma_channel" &
            " exists but with different size")
    ma_channel
  else:
    ma_channel_570425870)
  struct_ma_resampler_570426178 = (when declared(struct_ma_resampler):
    when ownSizeof(struct_ma_resampler) != ownSizeof(struct_ma_resampler_570426177):
      static :
        warning("Declaration of " & "struct_ma_resampler" &
            " exists but with different size")
    struct_ma_resampler
  else:
    struct_ma_resampler_570426177)
  struct_ma_device_backend_info_570426504 = (when declared(
      struct_ma_device_backend_info):
    when ownSizeof(struct_ma_device_backend_info) !=
        ownSizeof(struct_ma_device_backend_info_570426503):
      static :
        warning("Declaration of " & "struct_ma_device_backend_info" &
            " exists but with different size")
    struct_ma_device_backend_info
  else:
    struct_ma_device_backend_info_570426503)
  struct_ma_audio_buffer_ref_570426226 = (when declared(
      struct_ma_audio_buffer_ref):
    when ownSizeof(struct_ma_audio_buffer_ref) !=
        ownSizeof(struct_ma_audio_buffer_ref_570426225):
      static :
        warning("Declaration of " & "struct_ma_audio_buffer_ref" &
            " exists but with different size")
    struct_ma_audio_buffer_ref
  else:
    struct_ma_audio_buffer_ref_570426225)
  enum_ma_device_status_570426508 = (when declared(enum_ma_device_status):
    when ownSizeof(enum_ma_device_status) != ownSizeof(enum_ma_device_status_570426507):
      static :
        warning("Declaration of " & "enum_ma_device_status" &
            " exists but with different size")
    enum_ma_device_status
  else:
    enum_ma_device_status_570426507)
  struct_ma_device_config_pulseaudio_570426392 = (when declared(
      struct_ma_device_config_pulseaudio):
    when ownSizeof(struct_ma_device_config_pulseaudio) !=
        ownSizeof(struct_ma_device_config_pulseaudio_570426391):
      static :
        warning("Declaration of " & "struct_ma_device_config_pulseaudio" &
            " exists but with different size")
    struct_ma_device_config_pulseaudio
  else:
    struct_ma_device_config_pulseaudio_570426391)
  ma_splitter_node_570426796 = (when declared(ma_splitter_node):
    when ownSizeof(ma_splitter_node) != ownSizeof(ma_splitter_node_570426795):
      static :
        warning("Declaration of " & "ma_splitter_node" &
            " exists but with different size")
    ma_splitter_node
  else:
    ma_splitter_node_570426795)
  ma_engine_node_config_570426888 = (when declared(ma_engine_node_config):
    when ownSizeof(ma_engine_node_config) != ownSizeof(ma_engine_node_config_570426887):
      static :
        warning("Declaration of " & "ma_engine_node_config" &
            " exists but with different size")
    ma_engine_node_config
  else:
    ma_engine_node_config_570426887)
  ma_result_570425879 = (when declared(ma_result):
    when ownSizeof(ma_result) != ownSizeof(ma_result_570425878):
      static :
        warning("Declaration of " & "ma_result" &
            " exists but with different size")
    ma_result
  else:
    ma_result_570425878)
  struct_ma_context_config_audio4_570426420 = (when declared(
      struct_ma_context_config_audio4):
    when ownSizeof(struct_ma_context_config_audio4) !=
        ownSizeof(struct_ma_context_config_audio4_570426419):
      static :
        warning("Declaration of " & "struct_ma_context_config_audio4" &
            " exists but with different size")
    struct_ma_context_config_audio4
  else:
    struct_ma_context_config_audio4_570426419)
  ma_context_config_coreaudio_570426382 = (when declared(
      ma_context_config_coreaudio):
    when ownSizeof(ma_context_config_coreaudio) !=
        ownSizeof(ma_context_config_coreaudio_570426381):
      static :
        warning("Declaration of " & "ma_context_config_coreaudio" &
            " exists but with different size")
    ma_context_config_coreaudio
  else:
    ma_context_config_coreaudio_570426381)
  ma_spatializer_listener_config_570426142 = (when declared(
      ma_spatializer_listener_config):
    when ownSizeof(ma_spatializer_listener_config) !=
        ownSizeof(ma_spatializer_listener_config_570426141):
      static :
        warning("Declaration of " & "ma_spatializer_listener_config" &
            " exists but with different size")
    ma_spatializer_listener_config
  else:
    ma_spatializer_listener_config_570426141)
  enum_ma_format_570425893 = (when declared(enum_ma_format):
    when ownSizeof(enum_ma_format) != ownSizeof(enum_ma_format_570425892):
      static :
        warning("Declaration of " & "enum_ma_format" &
            " exists but with different size")
    enum_ma_format
  else:
    enum_ma_format_570425892)
  ma_device_op_queue_570426542 = (when declared(ma_device_op_queue):
    when ownSizeof(ma_device_op_queue) != ownSizeof(ma_device_op_queue_570426541):
      static :
        warning("Declaration of " & "ma_device_op_queue" &
            " exists but with different size")
    ma_device_op_queue
  else:
    ma_device_op_queue_570426541)
  compiler_atomic_wide_counter_570426926 = (when declared(
      compiler_atomic_wide_counter):
    when ownSizeof(compiler_atomic_wide_counter) !=
        ownSizeof(compiler_atomic_wide_counter_570426925):
      static :
        warning("Declaration of " & "compiler_atomic_wide_counter" &
            " exists but with different size")
    compiler_atomic_wide_counter
  else:
    compiler_atomic_wide_counter_570426925)
  ma_gainer_570426098 = (when declared(ma_gainer):
    when ownSizeof(ma_gainer) != ownSizeof(ma_gainer_570426097):
      static :
        warning("Declaration of " & "ma_gainer" &
            " exists but with different size")
    ma_gainer
  else:
    ma_gainer_570426097)
  ma_notch_node_570426836 = (when declared(ma_notch_node):
    when ownSizeof(ma_notch_node) != ownSizeof(ma_notch_node_570426835):
      static :
        warning("Declaration of " & "ma_notch_node" &
            " exists but with different size")
    ma_notch_node
  else:
    ma_notch_node_570426835)
  enum_ma_encoding_format_570426612 = (when declared(enum_ma_encoding_format):
    when ownSizeof(enum_ma_encoding_format) !=
        ownSizeof(enum_ma_encoding_format_570426611):
      static :
        warning("Declaration of " & "enum_ma_encoding_format" &
            " exists but with different size")
    enum_ma_encoding_format
  else:
    enum_ma_encoding_format_570426611)
  ma_device_status_570426510 = (when declared(ma_device_status):
    when ownSizeof(ma_device_status) != ownSizeof(ma_device_status_570426509):
      static :
        warning("Declaration of " & "ma_device_status" &
            " exists but with different size")
    ma_device_status
  else:
    ma_device_status_570426509)
  ma_splitter_node_config_570426792 = (when declared(ma_splitter_node_config):
    when ownSizeof(ma_splitter_node_config) !=
        ownSizeof(ma_splitter_node_config_570426791):
      static :
        warning("Declaration of " & "ma_splitter_node_config" &
            " exists but with different size")
    ma_splitter_node_config
  else:
    ma_splitter_node_config_570426791)
  ma_delay_config_570426086 = (when declared(ma_delay_config):
    when ownSizeof(ma_delay_config) != ownSizeof(ma_delay_config_570426085):
      static :
        warning("Declaration of " & "ma_delay_config" &
            " exists but with different size")
    ma_delay_config
  else:
    ma_delay_config_570426085)
  enum_ma_channel_conversion_path_570426182 = (when declared(
      enum_ma_channel_conversion_path):
    when ownSizeof(enum_ma_channel_conversion_path) !=
        ownSizeof(enum_ma_channel_conversion_path_570426181):
      static :
        warning("Declaration of " & "enum_ma_channel_conversion_path" &
            " exists but with different size")
    enum_ma_channel_conversion_path
  else:
    enum_ma_channel_conversion_path_570426181)
  struct_ma_context_config_570426326 = (when declared(struct_ma_context_config):
    when ownSizeof(struct_ma_context_config) !=
        ownSizeof(struct_ma_context_config_570426325):
      static :
        warning("Declaration of " & "struct_ma_context_config" &
            " exists but with different size")
    struct_ma_context_config
  else:
    struct_ma_context_config_570426325)
  ma_device_backend_vtable_570426340 = (when declared(ma_device_backend_vtable):
    when ownSizeof(ma_device_backend_vtable) !=
        ownSizeof(ma_device_backend_vtable_570426339):
      static :
        warning("Declaration of " & "ma_device_backend_vtable" &
            " exists but with different size")
    ma_device_backend_vtable
  else:
    ma_device_backend_vtable_570426339)
  ma_bool32_570425841 = (when declared(ma_bool32):
    when ownSizeof(ma_bool32) != ownSizeof(ma_bool32_570425840):
      static :
        warning("Declaration of " & "ma_bool32" &
            " exists but with different size")
    ma_bool32
  else:
    ma_bool32_570425840)
  ma_context_config_wasapi_570426350 = (when declared(ma_context_config_wasapi):
    when ownSizeof(ma_context_config_wasapi) !=
        ownSizeof(ma_context_config_wasapi_570426349):
      static :
        warning("Declaration of " & "ma_context_config_wasapi" &
            " exists but with different size")
    ma_context_config_wasapi
  else:
    ma_context_config_wasapi_570426349)
  ma_context_570426320 = (when declared(ma_context):
    when ownSizeof(ma_context) != ownSizeof(ma_context_570426319):
      static :
        warning("Declaration of " & "ma_context" &
            " exists but with different size")
    ma_context
  else:
    ma_context_570426319)
  ma_biquad_config_570425978 = (when declared(ma_biquad_config):
    when ownSizeof(ma_biquad_config) != ownSizeof(ma_biquad_config_570425977):
      static :
        warning("Declaration of " & "ma_biquad_config" &
            " exists but with different size")
    ma_biquad_config
  else:
    ma_biquad_config_570425977)
  struct_ma_hpf1_config_570426006 = (when declared(struct_ma_hpf1_config):
    when ownSizeof(struct_ma_hpf1_config) != ownSizeof(struct_ma_hpf1_config_570426005):
      static :
        warning("Declaration of " & "struct_ma_hpf1_config" &
            " exists but with different size")
    struct_ma_hpf1_config
  else:
    struct_ma_hpf1_config_570426005)
  struct_ma_job_queue_config_570426312 = (when declared(
      struct_ma_job_queue_config):
    when ownSizeof(struct_ma_job_queue_config) !=
        ownSizeof(struct_ma_job_queue_config_570426311):
      static :
        warning("Declaration of " & "struct_ma_job_queue_config" &
            " exists but with different size")
    struct_ma_job_queue_config
  else:
    struct_ma_job_queue_config_570426311)
  struct_ma_decoding_backend_vtable_570426624 = (when declared(
      struct_ma_decoding_backend_vtable):
    when ownSizeof(struct_ma_decoding_backend_vtable) !=
        ownSizeof(struct_ma_decoding_backend_vtable_570426623):
      static :
        warning("Declaration of " & "struct_ma_decoding_backend_vtable" &
            " exists but with different size")
    struct_ma_decoding_backend_vtable
  else:
    struct_ma_decoding_backend_vtable_570426623)
  struct_ma_node_graph_config_570426778 = (when declared(
      struct_ma_node_graph_config):
    when ownSizeof(struct_ma_node_graph_config) !=
        ownSizeof(struct_ma_node_graph_config_570426777):
      static :
        warning("Declaration of " & "struct_ma_node_graph_config" &
            " exists but with different size")
    struct_ma_node_graph_config
  else:
    struct_ma_node_graph_config_570426777)
  ma_peak_node_570426844 = (when declared(ma_peak_node):
    when ownSizeof(ma_peak_node) != ownSizeof(ma_peak_node_570426843):
      static :
        warning("Declaration of " & "ma_peak_node" &
            " exists but with different size")
    ma_peak_node
  else:
    ma_peak_node_570426843)
  ma_resampler_config_570426164 = (when declared(ma_resampler_config):
    when ownSizeof(ma_resampler_config) != ownSizeof(ma_resampler_config_570426163):
      static :
        warning("Declaration of " & "ma_resampler_config" &
            " exists but with different size")
    ma_resampler_config
  else:
    ma_resampler_config_570426163)
  struct_ma_notch2_config_570426044 = (when declared(struct_ma_notch2_config):
    when ownSizeof(struct_ma_notch2_config) !=
        ownSizeof(struct_ma_notch2_config_570426043):
      static :
        warning("Declaration of " & "struct_ma_notch2_config" &
            " exists but with different size")
    struct_ma_notch2_config
  else:
    struct_ma_notch2_config_570426043)
  ma_notch2_570426052 = (when declared(ma_notch2):
    when ownSizeof(ma_notch2) != ownSizeof(ma_notch2_570426051):
      static :
        warning("Declaration of " & "ma_notch2" &
            " exists but with different size")
    ma_notch2
  else:
    ma_notch2_570426051)
  ma_hpf_node_config_570426816 = (when declared(ma_hpf_node_config):
    when ownSizeof(ma_hpf_node_config) != ownSizeof(ma_hpf_node_config_570426815):
      static :
        warning("Declaration of " & "ma_hpf_node_config" &
            " exists but with different size")
    ma_hpf_node_config
  else:
    ma_hpf_node_config_570426815)
  ma_device_config_570426332 = (when declared(ma_device_config):
    when ownSizeof(ma_device_config) != ownSizeof(ma_device_config_570426331):
      static :
        warning("Declaration of " & "ma_device_config" &
            " exists but with different size")
    ma_device_config
  else:
    ma_device_config_570426331)
  ma_context_config_pulseaudio_570426390 = (when declared(
      ma_context_config_pulseaudio):
    when ownSizeof(ma_context_config_pulseaudio) !=
        ownSizeof(ma_context_config_pulseaudio_570426389):
      static :
        warning("Declaration of " & "ma_context_config_pulseaudio" &
            " exists but with different size")
    ma_context_config_pulseaudio
  else:
    ma_context_config_pulseaudio_570426389)
  ma_sound_group_config_570426906 = (when declared(ma_sound_group_config):
    when ownSizeof(ma_sound_group_config) != ownSizeof(ma_sound_group_config_570426905):
      static :
        warning("Declaration of " & "ma_sound_group_config" &
            " exists but with different size")
    ma_sound_group_config
  else:
    ma_sound_group_config_570426905)
  pthread_mutex_t_570425859 = (when declared(pthread_mutex_t):
    when ownSizeof(pthread_mutex_t) != ownSizeof(pthread_mutex_t_570425858):
      static :
        warning("Declaration of " & "pthread_mutex_t" &
            " exists but with different size")
    pthread_mutex_t
  else:
    pthread_mutex_t_570425858)
  ma_lpf1_config_570425986 = (when declared(ma_lpf1_config):
    when ownSizeof(ma_lpf1_config) != ownSizeof(ma_lpf1_config_570425985):
      static :
        warning("Declaration of " & "ma_lpf1_config" &
            " exists but with different size")
    ma_lpf1_config
  else:
    ma_lpf1_config_570425985)
  ma_device_backend_config_570426502 = (when declared(ma_device_backend_config):
    when ownSizeof(ma_device_backend_config) !=
        ownSizeof(ma_device_backend_config_570426501):
      static :
        warning("Declaration of " & "ma_device_backend_config" &
            " exists but with different size")
    ma_device_backend_config
  else:
    ma_device_backend_config_570426501)
  struct_ma_biquad_node_570426802 = (when declared(struct_ma_biquad_node):
    when ownSizeof(struct_ma_biquad_node) != ownSizeof(struct_ma_biquad_node_570426801):
      static :
        warning("Declaration of " & "struct_ma_biquad_node" &
            " exists but with different size")
    struct_ma_biquad_node
  else:
    struct_ma_biquad_node_570426801)
  struct_ma_node_base_570426776 = (when declared(struct_ma_node_base):
    when ownSizeof(struct_ma_node_base) != ownSizeof(struct_ma_node_base_570426775):
      static :
        warning("Declaration of " & "struct_ma_node_base" &
            " exists but with different size")
    struct_ma_node_base
  else:
    struct_ma_node_base_570426775)
  union_atomic_wide_counter_570426930 = (when declared(union_atomic_wide_counter):
    when ownSizeof(union_atomic_wide_counter) !=
        ownSizeof(union_atomic_wide_counter_570426929):
      static :
        warning("Declaration of " & "union_atomic_wide_counter" &
            " exists but with different size")
    union_atomic_wide_counter
  else:
    union_atomic_wide_counter_570426929)
  ma_fence_570426268 = (when declared(ma_fence):
    when ownSizeof(ma_fence) != ownSizeof(ma_fence_570426267):
      static :
        warning("Declaration of " & "ma_fence" &
            " exists but with different size")
    ma_fence
  else:
    ma_fence_570426267)
  ma_hpf1_570426014 = (when declared(ma_hpf1):
    when ownSizeof(ma_hpf1) != ownSizeof(ma_hpf1_570426013):
      static :
        warning("Declaration of " & "ma_hpf1" &
            " exists but with different size")
    ma_hpf1
  else:
    ma_hpf1_570426013)
  struct_ma_resource_manager_pipeline_notifications_570426716 = (when declared(
      struct_ma_resource_manager_pipeline_notifications):
    when ownSizeof(struct_ma_resource_manager_pipeline_notifications) !=
        ownSizeof(struct_ma_resource_manager_pipeline_notifications_570426715):
      static :
        warning("Declaration of " &
            "struct_ma_resource_manager_pipeline_notifications" &
            " exists but with different size")
    struct_ma_resource_manager_pipeline_notifications
  else:
    struct_ma_resource_manager_pipeline_notifications_570426715)
  ma_device_data_proc_570426554 = (when declared(ma_device_data_proc):
    when ownSizeof(ma_device_data_proc) != ownSizeof(ma_device_data_proc_570426553):
      static :
        warning("Declaration of " & "ma_device_data_proc" &
            " exists but with different size")
    ma_device_data_proc
  else:
    ma_device_data_proc_570426553)
  ma_hishelf2_config_570426076 = (when declared(ma_hishelf2_config):
    when ownSizeof(ma_hishelf2_config) != ownSizeof(ma_hishelf2_config_570426075):
      static :
        warning("Declaration of " & "ma_hishelf2_config" &
            " exists but with different size")
    ma_hishelf2_config
  else:
    ma_hishelf2_config_570426075)
  struct_ma_context_config_oss_570426428 = (when declared(
      struct_ma_context_config_oss):
    when ownSizeof(struct_ma_context_config_oss) !=
        ownSizeof(struct_ma_context_config_oss_570426427):
      static :
        warning("Declaration of " & "struct_ma_context_config_oss" &
            " exists but with different size")
    struct_ma_context_config_oss
  else:
    struct_ma_context_config_oss_570426427)
  ma_bool8_570425839 = (when declared(ma_bool8):
    when ownSizeof(ma_bool8) != ownSizeof(ma_bool8_570425838):
      static :
        warning("Declaration of " & "ma_bool8" &
            " exists but with different size")
    ma_bool8
  else:
    ma_bool8_570425838)
  ma_aaudio_usage_570426438 = (when declared(ma_aaudio_usage):
    when ownSizeof(ma_aaudio_usage) != ownSizeof(ma_aaudio_usage_570426437):
      static :
        warning("Declaration of " & "ma_aaudio_usage" &
            " exists but with different size")
    ma_aaudio_usage
  else:
    ma_aaudio_usage_570426437)
  ma_device_job_thread_570426522 = (when declared(ma_device_job_thread):
    when ownSizeof(ma_device_job_thread) != ownSizeof(ma_device_job_thread_570426521):
      static :
        warning("Declaration of " & "ma_device_job_thread" &
            " exists but with different size")
    ma_device_job_thread
  else:
    ma_device_job_thread_570426521)
  ma_node_config_570426764 = (when declared(ma_node_config):
    when ownSizeof(ma_node_config) != ownSizeof(ma_node_config_570426763):
      static :
        warning("Declaration of " & "ma_node_config" &
            " exists but with different size")
    ma_node_config
  else:
    ma_node_config_570426763)
  ma_lpf_node_config_570426808 = (when declared(ma_lpf_node_config):
    when ownSizeof(ma_lpf_node_config) != ownSizeof(ma_lpf_node_config_570426807):
      static :
        warning("Declaration of " & "ma_lpf_node_config" &
            " exists but with different size")
    ma_lpf_node_config
  else:
    ma_lpf_node_config_570426807)
  ma_uint16_570425827 = (when declared(ma_uint16):
    when ownSizeof(ma_uint16) != ownSizeof(ma_uint16_570425826):
      static :
        warning("Declaration of " & "ma_uint16" &
            " exists but with different size")
    ma_uint16
  else:
    ma_uint16_570425826)
  ma_lpf2_570425996 = (when declared(ma_lpf2):
    when ownSizeof(ma_lpf2) != ownSizeof(ma_lpf2_570425995):
      static :
        warning("Declaration of " & "ma_lpf2" &
            " exists but with different size")
    ma_lpf2
  else:
    ma_lpf2_570425995)
  struct_ma_notch_node_570426834 = (when declared(struct_ma_notch_node):
    when ownSizeof(struct_ma_notch_node) != ownSizeof(struct_ma_notch_node_570426833):
      static :
        warning("Declaration of " & "struct_ma_notch_node" &
            " exists but with different size")
    struct_ma_notch_node
  else:
    struct_ma_notch_node_570426833)
  struct_ma_atomic_int32_570425928 = (when declared(struct_ma_atomic_int32):
    when ownSizeof(struct_ma_atomic_int32) != ownSizeof(struct_ma_atomic_int32_570425927):
      static :
        warning("Declaration of " & "struct_ma_atomic_int32" &
            " exists but with different size")
    struct_ma_atomic_int32
  else:
    struct_ma_atomic_int32_570425927)
  ma_data_converter_570426208 = (when declared(ma_data_converter):
    when ownSizeof(ma_data_converter) != ownSizeof(ma_data_converter_570426207):
      static :
        warning("Declaration of " & "ma_data_converter" &
            " exists but with different size")
    ma_data_converter
  else:
    ma_data_converter_570426207)
  ma_atomic_uint64_570425934 = (when declared(ma_atomic_uint64):
    when ownSizeof(ma_atomic_uint64) != ownSizeof(ma_atomic_uint64_570425933):
      static :
        warning("Declaration of " & "ma_atomic_uint64" &
            " exists but with different size")
    ma_atomic_uint64
  else:
    ma_atomic_uint64_570425933)
  struct_ma_device_backend_vtable_570426342 = (when declared(
      struct_ma_device_backend_vtable):
    when ownSizeof(struct_ma_device_backend_vtable) !=
        ownSizeof(struct_ma_device_backend_vtable_570426341):
      static :
        warning("Declaration of " & "struct_ma_device_backend_vtable" &
            " exists but with different size")
    struct_ma_device_backend_vtable
  else:
    struct_ma_device_backend_vtable_570426341)
  ma_pcm_rb_570426260 = (when declared(ma_pcm_rb):
    when ownSizeof(ma_pcm_rb) != ownSizeof(ma_pcm_rb_570426259):
      static :
        warning("Declaration of " & "ma_pcm_rb" &
            " exists but with different size")
    ma_pcm_rb
  else:
    ma_pcm_rb_570426259)
  ma_hishelf_node_config_570426856 = (when declared(ma_hishelf_node_config):
    when ownSizeof(ma_hishelf_node_config) != ownSizeof(ma_hishelf_node_config_570426855):
      static :
        warning("Declaration of " & "ma_hishelf_node_config" &
            " exists but with different size")
    ma_hishelf_node_config
  else:
    ma_hishelf_node_config_570426855)
  enum_ma_device_enumeration_result_570426576 = (when declared(
      enum_ma_device_enumeration_result):
    when ownSizeof(enum_ma_device_enumeration_result) !=
        ownSizeof(enum_ma_device_enumeration_result_570426575):
      static :
        warning("Declaration of " & "enum_ma_device_enumeration_result" &
            " exists but with different size")
    enum_ma_device_enumeration_result
  else:
    enum_ma_device_enumeration_result_570426575)
  ma_thread_570425950 = (when declared(ma_thread):
    when ownSizeof(ma_thread) != ownSizeof(ma_thread_570425949):
      static :
        warning("Declaration of " & "ma_thread" &
            " exists but with different size")
    ma_thread
  else:
    ma_thread_570425949)
  struct_ma_async_notification_callbacks_570426272 = (when declared(
      struct_ma_async_notification_callbacks):
    when ownSizeof(struct_ma_async_notification_callbacks) !=
        ownSizeof(struct_ma_async_notification_callbacks_570426271):
      static :
        warning("Declaration of " & "struct_ma_async_notification_callbacks" &
            " exists but with different size")
    struct_ma_async_notification_callbacks
  else:
    struct_ma_async_notification_callbacks_570426271)
  struct_ma_async_notification_event_570426280 = (when declared(
      struct_ma_async_notification_event):
    when ownSizeof(struct_ma_async_notification_event) !=
        ownSizeof(struct_ma_async_notification_event_570426279):
      static :
        warning("Declaration of " & "struct_ma_async_notification_event" &
            " exists but with different size")
    struct_ma_async_notification_event
  else:
    struct_ma_async_notification_event_570426279)
  ma_decoder_seek_proc_570426630 = (when declared(ma_decoder_seek_proc):
    when ownSizeof(ma_decoder_seek_proc) != ownSizeof(ma_decoder_seek_proc_570426629):
      static :
        warning("Declaration of " & "ma_decoder_seek_proc" &
            " exists but with different size")
    ma_decoder_seek_proc
  else:
    ma_decoder_seek_proc_570426629)
  struct_ma_allocation_callbacks_570425916 = (when declared(
      struct_ma_allocation_callbacks):
    when ownSizeof(struct_ma_allocation_callbacks) !=
        ownSizeof(struct_ma_allocation_callbacks_570425915):
      static :
        warning("Declaration of " & "struct_ma_allocation_callbacks" &
            " exists but with different size")
    struct_ma_allocation_callbacks
  else:
    struct_ma_allocation_callbacks_570425915)
  ma_context_config_winmm_570426366 = (when declared(ma_context_config_winmm):
    when ownSizeof(ma_context_config_winmm) !=
        ownSizeof(ma_context_config_winmm_570426365):
      static :
        warning("Declaration of " & "ma_context_config_winmm" &
            " exists but with different size")
    ma_context_config_winmm
  else:
    ma_context_config_winmm_570426365)
  struct_ma_waveform_570426664 = (when declared(struct_ma_waveform):
    when ownSizeof(struct_ma_waveform) != ownSizeof(struct_ma_waveform_570426663):
      static :
        warning("Declaration of " & "struct_ma_waveform" &
            " exists but with different size")
    struct_ma_waveform
  else:
    struct_ma_waveform_570426663)
  compiler_pthread_list_t_570426924 = (when declared(compiler_pthread_list_t):
    when ownSizeof(compiler_pthread_list_t) !=
        ownSizeof(compiler_pthread_list_t_570426923):
      static :
        warning("Declaration of " & "compiler_pthread_list_t" &
            " exists but with different size")
    compiler_pthread_list_t
  else:
    compiler_pthread_list_t_570426923)
  ma_lpf2_config_570425988 = (when declared(ma_lpf2_config):
    when ownSizeof(ma_lpf2_config) != ownSizeof(ma_lpf2_config_570425987):
      static :
        warning("Declaration of " & "ma_lpf2_config" &
            " exists but with different size")
    ma_lpf2_config
  else:
    ma_lpf2_config_570425987)
  ma_resource_manager_data_source_570426704 = (when declared(
      ma_resource_manager_data_source):
    when ownSizeof(ma_resource_manager_data_source) !=
        ownSizeof(ma_resource_manager_data_source_570426703):
      static :
        warning("Declaration of " & "ma_resource_manager_data_source" &
            " exists but with different size")
    ma_resource_manager_data_source
  else:
    ma_resource_manager_data_source_570426703)
  ma_encoder_write_proc_570426642 = (when declared(ma_encoder_write_proc):
    when ownSizeof(ma_encoder_write_proc) != ownSizeof(ma_encoder_write_proc_570426641):
      static :
        warning("Declaration of " & "ma_encoder_write_proc" &
            " exists but with different size")
    ma_encoder_write_proc
  else:
    ma_encoder_write_proc_570426641)
  ma_timer_570426566 = (when declared(ma_timer):
    when ownSizeof(ma_timer) != ownSizeof(ma_timer_570426565):
      static :
        warning("Declaration of " & "ma_timer" &
            " exists but with different size")
    ma_timer
  else:
    ma_timer_570426565)
  ma_opensl_stream_type_570426466 = (when declared(ma_opensl_stream_type):
    when ownSizeof(ma_opensl_stream_type) != ownSizeof(ma_opensl_stream_type_570426465):
      static :
        warning("Declaration of " & "ma_opensl_stream_type" &
            " exists but with different size")
    ma_opensl_stream_type
  else:
    ma_opensl_stream_type_570426465)
  ma_vfs_callbacks_570426600 = (when declared(ma_vfs_callbacks):
    when ownSizeof(ma_vfs_callbacks) != ownSizeof(ma_vfs_callbacks_570426599):
      static :
        warning("Declaration of " & "ma_vfs_callbacks" &
            " exists but with different size")
    ma_vfs_callbacks
  else:
    ma_vfs_callbacks_570426599)
  struct_ma_paged_audio_buffer_page_570426240 = (when declared(
      struct_ma_paged_audio_buffer_page):
    when ownSizeof(struct_ma_paged_audio_buffer_page) !=
        ownSizeof(struct_ma_paged_audio_buffer_page_570426239):
      static :
        warning("Declaration of " & "struct_ma_paged_audio_buffer_page" &
            " exists but with different size")
    struct_ma_paged_audio_buffer_page
  else:
    struct_ma_paged_audio_buffer_page_570426239)
  ma_aaudio_content_type_570426442 = (when declared(ma_aaudio_content_type):
    when ownSizeof(ma_aaudio_content_type) != ownSizeof(ma_aaudio_content_type_570426441):
      static :
        warning("Declaration of " & "ma_aaudio_content_type" &
            " exists but with different size")
    ma_aaudio_content_type
  else:
    ma_aaudio_content_type_570426441)
  enum_ma_node_flags_570426750 = (when declared(enum_ma_node_flags):
    when ownSizeof(enum_ma_node_flags) != ownSizeof(enum_ma_node_flags_570426749):
      static :
        warning("Declaration of " & "enum_ma_node_flags" &
            " exists but with different size")
    enum_ma_node_flags
  else:
    enum_ma_node_flags_570426749)
  struct_ma_encoder_570426640 = (when declared(struct_ma_encoder):
    when ownSizeof(struct_ma_encoder) != ownSizeof(struct_ma_encoder_570426639):
      static :
        warning("Declaration of " & "struct_ma_encoder" &
            " exists but with different size")
    struct_ma_encoder
  else:
    struct_ma_encoder_570426639)
  enum_ma_stream_format_570425881 = (when declared(enum_ma_stream_format):
    when ownSizeof(enum_ma_stream_format) != ownSizeof(enum_ma_stream_format_570425880):
      static :
        warning("Declaration of " & "enum_ma_stream_format" &
            " exists but with different size")
    enum_ma_stream_format
  else:
    enum_ma_stream_format_570425880)
  struct_ma_hpf_570426024 = (when declared(struct_ma_hpf):
    when ownSizeof(struct_ma_hpf) != ownSizeof(struct_ma_hpf_570426023):
      static :
        warning("Declaration of " & "struct_ma_hpf" &
            " exists but with different size")
    struct_ma_hpf
  else:
    struct_ma_hpf_570426023)
  ma_pan_mode_570426102 = (when declared(ma_pan_mode):
    when ownSizeof(ma_pan_mode) != ownSizeof(ma_pan_mode_570426101):
      static :
        warning("Declaration of " & "ma_pan_mode" &
            " exists but with different size")
    ma_pan_mode
  else:
    ma_pan_mode_570426101)
  internal_ma_channel_position_570425875 = (when declared(
      internal_ma_channel_position):
    when ownSizeof(internal_ma_channel_position) !=
        ownSizeof(internal_ma_channel_position_570425874):
      static :
        warning("Declaration of " & "internal_ma_channel_position" &
            " exists but with different size")
    internal_ma_channel_position
  else:
    internal_ma_channel_position_570425874)
  struct_ma_context_570426322 = (when declared(struct_ma_context):
    when ownSizeof(struct_ma_context) != ownSizeof(struct_ma_context_570426321):
      static :
        warning("Declaration of " & "struct_ma_context" &
            " exists but with different size")
    struct_ma_context
  else:
    struct_ma_context_570426321)
  struct_ma_data_source_node_570426786 = (when declared(
      struct_ma_data_source_node):
    when ownSizeof(struct_ma_data_source_node) !=
        ownSizeof(struct_ma_data_source_node_570426785):
      static :
        warning("Declaration of " & "struct_ma_data_source_node" &
            " exists but with different size")
    struct_ma_data_source_node
  else:
    struct_ma_data_source_node_570426785)
  ma_hishelf_node_570426860 = (when declared(ma_hishelf_node):
    when ownSizeof(ma_hishelf_node) != ownSizeof(ma_hishelf_node_570426859):
      static :
        warning("Declaration of " & "ma_hishelf_node" &
            " exists but with different size")
    ma_hishelf_node
  else:
    ma_hishelf_node_570426859)
  struct_ma_delay_570426088 = (when declared(struct_ma_delay):
    when ownSizeof(struct_ma_delay) != ownSizeof(struct_ma_delay_570426087):
      static :
        warning("Declaration of " & "struct_ma_delay" &
            " exists but with different size")
    struct_ma_delay
  else:
    struct_ma_delay_570426087)
  ma_engine_570426870 = (when declared(ma_engine):
    when ownSizeof(ma_engine) != ownSizeof(ma_engine_570426869):
      static :
        warning("Declaration of " & "ma_engine" &
            " exists but with different size")
    ma_engine
  else:
    ma_engine_570426869)
  ma_engine_node_570426892 = (when declared(ma_engine_node):
    when ownSizeof(ma_engine_node) != ownSizeof(ma_engine_node_570426891):
      static :
        warning("Declaration of " & "ma_engine_node" &
            " exists but with different size")
    ma_engine_node
  else:
    ma_engine_node_570426891)
  ma_allocation_callbacks_570425918 = (when declared(ma_allocation_callbacks):
    when ownSizeof(ma_allocation_callbacks) !=
        ownSizeof(ma_allocation_callbacks_570425917):
      static :
        warning("Declaration of " & "ma_allocation_callbacks" &
            " exists but with different size")
    ma_allocation_callbacks
  else:
    ma_allocation_callbacks_570425917)
  ma_mono_expansion_mode_570426188 = (when declared(ma_mono_expansion_mode):
    when ownSizeof(ma_mono_expansion_mode) != ownSizeof(ma_mono_expansion_mode_570426187):
      static :
        warning("Declaration of " & "ma_mono_expansion_mode" &
            " exists but with different size")
    ma_mono_expansion_mode
  else:
    ma_mono_expansion_mode_570426187)
  ma_device_config_coreaudio_570426386 = (when declared(
      ma_device_config_coreaudio):
    when ownSizeof(ma_device_config_coreaudio) !=
        ownSizeof(ma_device_config_coreaudio_570426385):
      static :
        warning("Declaration of " & "ma_device_config_coreaudio" &
            " exists but with different size")
    ma_device_config_coreaudio
  else:
    ma_device_config_coreaudio_570426385)
  ma_context_config_jack_570426406 = (when declared(ma_context_config_jack):
    when ownSizeof(ma_context_config_jack) != ownSizeof(ma_context_config_jack_570426405):
      static :
        warning("Declaration of " & "ma_context_config_jack" &
            " exists but with different size")
    ma_context_config_jack
  else:
    ma_context_config_jack_570426405)
  ma_encoder_seek_proc_570426644 = (when declared(ma_encoder_seek_proc):
    when ownSizeof(ma_encoder_seek_proc) != ownSizeof(ma_encoder_seek_proc_570426643):
      static :
        warning("Declaration of " & "ma_encoder_seek_proc" &
            " exists but with different size")
    ma_encoder_seek_proc
  else:
    ma_encoder_seek_proc_570426643)
  ma_lcg_570425922 = (when declared(ma_lcg):
    when ownSizeof(ma_lcg) != ownSizeof(ma_lcg_570425921):
      static :
        warning("Declaration of " & "ma_lcg" & " exists but with different size")
    ma_lcg
  else:
    ma_lcg_570425921)
  ma_job_queue_570426318 = (when declared(ma_job_queue):
    when ownSizeof(ma_job_queue) != ownSizeof(ma_job_queue_570426317):
      static :
        warning("Declaration of " & "ma_job_queue" &
            " exists but with different size")
    ma_job_queue
  else:
    ma_job_queue_570426317)
  enum_ma_ios_session_category_option_570426376 = (when declared(
      enum_ma_ios_session_category_option):
    when ownSizeof(enum_ma_ios_session_category_option) !=
        ownSizeof(enum_ma_ios_session_category_option_570426375):
      static :
        warning("Declaration of " & "enum_ma_ios_session_category_option" &
            " exists but with different size")
    enum_ma_ios_session_category_option
  else:
    enum_ma_ios_session_category_option_570426375)
  ma_encoder_write_pcm_frames_proc_570426650 = (when declared(
      ma_encoder_write_pcm_frames_proc):
    when ownSizeof(ma_encoder_write_pcm_frames_proc) !=
        ownSizeof(ma_encoder_write_pcm_frames_proc_570426649):
      static :
        warning("Declaration of " & "ma_encoder_write_pcm_frames_proc" &
            " exists but with different size")
    ma_encoder_write_pcm_frames_proc
  else:
    ma_encoder_write_pcm_frames_proc_570426649)
  ma_default_vfs_570426604 = (when declared(ma_default_vfs):
    when ownSizeof(ma_default_vfs) != ownSizeof(ma_default_vfs_570426603):
      static :
        warning("Declaration of " & "ma_default_vfs" &
            " exists but with different size")
    ma_default_vfs
  else:
    ma_default_vfs_570426603)
  ma_resource_manager_data_buffer_570426696 = (when declared(
      ma_resource_manager_data_buffer):
    when ownSizeof(ma_resource_manager_data_buffer) !=
        ownSizeof(ma_resource_manager_data_buffer_570426695):
      static :
        warning("Declaration of " & "ma_resource_manager_data_buffer" &
            " exists but with different size")
    ma_resource_manager_data_buffer
  else:
    ma_resource_manager_data_buffer_570426695)
  struct_ma_delay_node_config_570426862 = (when declared(
      struct_ma_delay_node_config):
    when ownSizeof(struct_ma_delay_node_config) !=
        ownSizeof(struct_ma_delay_node_config_570426861):
      static :
        warning("Declaration of " & "struct_ma_delay_node_config" &
            " exists but with different size")
    struct_ma_delay_node_config
  else:
    struct_ma_delay_node_config_570426861)
  struct_ma_resampler_config_570426166 = (when declared(
      struct_ma_resampler_config):
    when ownSizeof(struct_ma_resampler_config) !=
        ownSizeof(struct_ma_resampler_config_570426165):
      static :
        warning("Declaration of " & "struct_ma_resampler_config" &
            " exists but with different size")
    struct_ma_resampler_config
  else:
    struct_ma_resampler_config_570426165)
  ma_linear_resampler_config_570426158 = (when declared(
      ma_linear_resampler_config):
    when ownSizeof(ma_linear_resampler_config) !=
        ownSizeof(ma_linear_resampler_config_570426157):
      static :
        warning("Declaration of " & "ma_linear_resampler_config" &
            " exists but with different size")
    ma_linear_resampler_config
  else:
    ma_linear_resampler_config_570426157)
  ma_lpf1_570425992 = (when declared(ma_lpf1):
    when ownSizeof(ma_lpf1) != ownSizeof(ma_lpf1_570425991):
      static :
        warning("Declaration of " & "ma_lpf1" &
            " exists but with different size")
    ma_lpf1
  else:
    ma_lpf1_570425991)
  union_ma_device_op_params_570426532 = (when declared(union_ma_device_op_params):
    when ownSizeof(union_ma_device_op_params) !=
        ownSizeof(union_ma_device_op_params_570426531):
      static :
        warning("Declaration of " & "union_ma_device_op_params" &
            " exists but with different size")
    union_ma_device_op_params
  else:
    union_ma_device_op_params_570426531)
  enum_ma_dither_mode_570425889 = (when declared(enum_ma_dither_mode):
    when ownSizeof(enum_ma_dither_mode) != ownSizeof(enum_ma_dither_mode_570425888):
      static :
        warning("Declaration of " & "enum_ma_dither_mode" &
            " exists but with different size")
    enum_ma_dither_mode
  else:
    enum_ma_dither_mode_570425888)
  ma_context_config_audio4_570426422 = (when declared(ma_context_config_audio4):
    when ownSizeof(ma_context_config_audio4) !=
        ownSizeof(ma_context_config_audio4_570426421):
      static :
        warning("Declaration of " & "ma_context_config_audio4" &
            " exists but with different size")
    ma_context_config_audio4
  else:
    ma_context_config_audio4_570426421)
  enum_ma_log_level_570425867 = (when declared(enum_ma_log_level):
    when ownSizeof(enum_ma_log_level) != ownSizeof(enum_ma_log_level_570425866):
      static :
        warning("Declaration of " & "enum_ma_log_level" &
            " exists but with different size")
    enum_ma_log_level
  else:
    enum_ma_log_level_570425866)
  struct_ma_device_job_thread_570426520 = (when declared(
      struct_ma_device_job_thread):
    when ownSizeof(struct_ma_device_job_thread) !=
        ownSizeof(struct_ma_device_job_thread_570426519):
      static :
        warning("Declaration of " & "struct_ma_device_job_thread" &
            " exists but with different size")
    struct_ma_device_job_thread
  else:
    struct_ma_device_job_thread_570426519)
  struct_ma_log_callback_570425964 = (when declared(struct_ma_log_callback):
    when ownSizeof(struct_ma_log_callback) != ownSizeof(struct_ma_log_callback_570425963):
      static :
        warning("Declaration of " & "struct_ma_log_callback" &
            " exists but with different size")
    struct_ma_log_callback
  else:
    struct_ma_log_callback_570425963)
  ma_peak2_570426062 = (when declared(ma_peak2):
    when ownSizeof(ma_peak2) != ownSizeof(ma_peak2_570426061):
      static :
        warning("Declaration of " & "ma_peak2" &
            " exists but with different size")
    ma_peak2
  else:
    ma_peak2_570426061)
  ma_sound_inlined_570426902 = (when declared(ma_sound_inlined):
    when ownSizeof(ma_sound_inlined) != ownSizeof(ma_sound_inlined_570426901):
      static :
        warning("Declaration of " & "ma_sound_inlined" &
            " exists but with different size")
    ma_sound_inlined
  else:
    ma_sound_inlined_570426901)
  struct_ma_vec3f_570426120 = (when declared(struct_ma_vec3f):
    when ownSizeof(struct_ma_vec3f) != ownSizeof(struct_ma_vec3f_570426119):
      static :
        warning("Declaration of " & "struct_ma_vec3f" &
            " exists but with different size")
    struct_ma_vec3f
  else:
    struct_ma_vec3f_570426119)
  ma_device_job_thread_config_570426518 = (when declared(
      ma_device_job_thread_config):
    when ownSizeof(ma_device_job_thread_config) !=
        ownSizeof(ma_device_job_thread_config_570426517):
      static :
        warning("Declaration of " & "ma_device_job_thread_config" &
            " exists but with different size")
    ma_device_job_thread_config
  else:
    ma_device_job_thread_config_570426517)
  ma_encoder_570426638 = (when declared(ma_encoder):
    when ownSizeof(ma_encoder) != ownSizeof(ma_encoder_570426637):
      static :
        warning("Declaration of " & "ma_encoder" &
            " exists but with different size")
    ma_encoder
  else:
    ma_encoder_570426637)
  ma_delay_node_config_570426864 = (when declared(ma_delay_node_config):
    when ownSizeof(ma_delay_node_config) != ownSizeof(ma_delay_node_config_570426863):
      static :
        warning("Declaration of " & "ma_delay_node_config" &
            " exists but with different size")
    ma_delay_node_config
  else:
    ma_delay_node_config_570426863)
  enum_ma_job_type_570426302 = (when declared(enum_ma_job_type):
    when ownSizeof(enum_ma_job_type) != ownSizeof(enum_ma_job_type_570426301):
      static :
        warning("Declaration of " & "enum_ma_job_type" &
            " exists but with different size")
    enum_ma_job_type
  else:
    enum_ma_job_type_570426301)
  enum_ma_aaudio_allowed_capture_policy_570426448 = (when declared(
      enum_ma_aaudio_allowed_capture_policy):
    when ownSizeof(enum_ma_aaudio_allowed_capture_policy) !=
        ownSizeof(enum_ma_aaudio_allowed_capture_policy_570426447):
      static :
        warning("Declaration of " & "enum_ma_aaudio_allowed_capture_policy" &
            " exists but with different size")
    enum_ma_aaudio_allowed_capture_policy
  else:
    enum_ma_aaudio_allowed_capture_policy_570426447)
  enum_ma_aaudio_usage_570426436 = (when declared(enum_ma_aaudio_usage):
    when ownSizeof(enum_ma_aaudio_usage) != ownSizeof(enum_ma_aaudio_usage_570426435):
      static :
        warning("Declaration of " & "enum_ma_aaudio_usage" &
            " exists but with different size")
    enum_ma_aaudio_usage
  else:
    enum_ma_aaudio_usage_570426435)
  ma_webaudio_latency_hint_570426482 = (when declared(ma_webaudio_latency_hint):
    when ownSizeof(ma_webaudio_latency_hint) !=
        ownSizeof(ma_webaudio_latency_hint_570426481):
      static :
        warning("Declaration of " & "ma_webaudio_latency_hint" &
            " exists but with different size")
    ma_webaudio_latency_hint
  else:
    ma_webaudio_latency_hint_570426481)
  ma_spatializer_listener_570426146 = (when declared(ma_spatializer_listener):
    when ownSizeof(ma_spatializer_listener) !=
        ownSizeof(ma_spatializer_listener_570426145):
      static :
        warning("Declaration of " & "ma_spatializer_listener" &
            " exists but with different size")
    ma_spatializer_listener
  else:
    ma_spatializer_listener_570426145)
  struct_ma_device_config_alsa_570426400 = (when declared(
      struct_ma_device_config_alsa):
    when ownSizeof(struct_ma_device_config_alsa) !=
        ownSizeof(struct_ma_device_config_alsa_570426399):
      static :
        warning("Declaration of " & "struct_ma_device_config_alsa" &
            " exists but with different size")
    struct_ma_device_config_alsa
  else:
    struct_ma_device_config_alsa_570426399)
  ma_device_op_570426538 = (when declared(ma_device_op):
    when ownSizeof(ma_device_op) != ownSizeof(ma_device_op_570426537):
      static :
        warning("Declaration of " & "ma_device_op" &
            " exists but with different size")
    ma_device_op
  else:
    ma_device_op_570426537)
  struct_ma_data_source_node_config_570426782 = (when declared(
      struct_ma_data_source_node_config):
    when ownSizeof(struct_ma_data_source_node_config) !=
        ownSizeof(struct_ma_data_source_node_config_570426781):
      static :
        warning("Declaration of " & "struct_ma_data_source_node_config" &
            " exists but with different size")
    struct_ma_data_source_node_config
  else:
    struct_ma_data_source_node_config_570426781)
  ma_bpf_node_config_570426824 = (when declared(ma_bpf_node_config):
    when ownSizeof(ma_bpf_node_config) != ownSizeof(ma_bpf_node_config_570426823):
      static :
        warning("Declaration of " & "ma_bpf_node_config" &
            " exists but with different size")
    ma_bpf_node_config
  else:
    ma_bpf_node_config_570426823)
  ma_device_notification_proc_570426552 = (when declared(
      ma_device_notification_proc):
    when ownSizeof(ma_device_notification_proc) !=
        ownSizeof(ma_device_notification_proc_570426551):
      static :
        warning("Declaration of " & "ma_device_notification_proc" &
            " exists but with different size")
    ma_device_notification_proc
  else:
    ma_device_notification_proc_570426551)
  struct_ma_context_config_alsa_570426396 = (when declared(
      struct_ma_context_config_alsa):
    when ownSizeof(struct_ma_context_config_alsa) !=
        ownSizeof(struct_ma_context_config_alsa_570426395):
      static :
        warning("Declaration of " & "struct_ma_context_config_alsa" &
            " exists but with different size")
    struct_ma_context_config_alsa
  else:
    struct_ma_context_config_alsa_570426395)
  ma_node_vtable_570426760 = (when declared(ma_node_vtable):
    when ownSizeof(ma_node_vtable) != ownSizeof(ma_node_vtable_570426759):
      static :
        warning("Declaration of " & "ma_node_vtable" &
            " exists but with different size")
    ma_node_vtable
  else:
    ma_node_vtable_570426759)
  struct_ma_device_config_null_570426496 = (when declared(
      struct_ma_device_config_null):
    when ownSizeof(struct_ma_device_config_null) !=
        ownSizeof(struct_ma_device_config_null_570426495):
      static :
        warning("Declaration of " & "struct_ma_device_config_null" &
            " exists but with different size")
    struct_ma_device_config_null
  else:
    struct_ma_device_config_null_570426495)
  ma_waveform_type_570426658 = (when declared(ma_waveform_type):
    when ownSizeof(ma_waveform_type) != ownSizeof(ma_waveform_type_570426657):
      static :
        warning("Declaration of " & "ma_waveform_type" &
            " exists but with different size")
    ma_waveform_type
  else:
    ma_waveform_type_570426657)
  enum_ma_aaudio_performance_mode_570426452 = (when declared(
      enum_ma_aaudio_performance_mode):
    when ownSizeof(enum_ma_aaudio_performance_mode) !=
        ownSizeof(enum_ma_aaudio_performance_mode_570426451):
      static :
        warning("Declaration of " & "enum_ma_aaudio_performance_mode" &
            " exists but with different size")
    enum_ma_aaudio_performance_mode
  else:
    enum_ma_aaudio_performance_mode_570426451)
  ma_bpf_node_570426828 = (when declared(ma_bpf_node):
    when ownSizeof(ma_bpf_node) != ownSizeof(ma_bpf_node_570426827):
      static :
        warning("Declaration of " & "ma_bpf_node" &
            " exists but with different size")
    ma_bpf_node
  else:
    ma_bpf_node_570426827)
  ma_slot_allocator_config_570426286 = (when declared(ma_slot_allocator_config):
    when ownSizeof(ma_slot_allocator_config) !=
        ownSizeof(ma_slot_allocator_config_570426285):
      static :
        warning("Declaration of " & "ma_slot_allocator_config" &
            " exists but with different size")
    ma_slot_allocator_config
  else:
    ma_slot_allocator_config_570426285)
  struct_ma_loshelf2_config_570426064 = (when declared(struct_ma_loshelf2_config):
    when ownSizeof(struct_ma_loshelf2_config) !=
        ownSizeof(struct_ma_loshelf2_config_570426063):
      static :
        warning("Declaration of " & "struct_ma_loshelf2_config" &
            " exists but with different size")
    struct_ma_loshelf2_config
  else:
    struct_ma_loshelf2_config_570426063)
  ma_device_config_opensl_570426478 = (when declared(ma_device_config_opensl):
    when ownSizeof(ma_device_config_opensl) !=
        ownSizeof(ma_device_config_opensl_570426477):
      static :
        warning("Declaration of " & "ma_device_config_opensl" &
            " exists but with different size")
    ma_device_config_opensl
  else:
    ma_device_config_opensl_570426477)
  struct_ma_lcg_570425920 = (when declared(struct_ma_lcg):
    when ownSizeof(struct_ma_lcg) != ownSizeof(struct_ma_lcg_570425919):
      static :
        warning("Declaration of " & "struct_ma_lcg" &
            " exists but with different size")
    struct_ma_lcg
  else:
    struct_ma_lcg_570425919)
  ma_atomic_float_570425938 = (when declared(ma_atomic_float):
    when ownSizeof(ma_atomic_float) != ownSizeof(ma_atomic_float_570425937):
      static :
        warning("Declaration of " & "ma_atomic_float" &
            " exists but with different size")
    ma_atomic_float
  else:
    ma_atomic_float_570425937)
  struct_ma_data_converter_570426206 = (when declared(struct_ma_data_converter):
    when ownSizeof(struct_ma_data_converter) !=
        ownSizeof(struct_ma_data_converter_570426205):
      static :
        warning("Declaration of " & "struct_ma_data_converter" &
            " exists but with different size")
    struct_ma_data_converter
  else:
    struct_ma_data_converter_570426205)
  struct_ma_biquad_node_config_570426798 = (when declared(
      struct_ma_biquad_node_config):
    when ownSizeof(struct_ma_biquad_node_config) !=
        ownSizeof(struct_ma_biquad_node_config_570426797):
      static :
        warning("Declaration of " & "struct_ma_biquad_node_config" &
            " exists but with different size")
    struct_ma_biquad_node_config
  else:
    struct_ma_biquad_node_config_570426797)
  struct_ma_delay_node_570426866 = (when declared(struct_ma_delay_node):
    when ownSizeof(struct_ma_delay_node) != ownSizeof(struct_ma_delay_node_570426865):
      static :
        warning("Declaration of " & "struct_ma_delay_node" &
            " exists but with different size")
    struct_ma_delay_node
  else:
    struct_ma_delay_node_570426865)
  struct_ma_context_config_opensl_570426472 = (when declared(
      struct_ma_context_config_opensl):
    when ownSizeof(struct_ma_context_config_opensl) !=
        ownSizeof(struct_ma_context_config_opensl_570426471):
      static :
        warning("Declaration of " & "struct_ma_context_config_opensl" &
            " exists but with different size")
    struct_ma_context_config_opensl
  else:
    struct_ma_context_config_opensl_570426471)
  struct_ma_device_descriptor_570426338 = (when declared(
      struct_ma_device_descriptor):
    when ownSizeof(struct_ma_device_descriptor) !=
        ownSizeof(struct_ma_device_descriptor_570426337):
      static :
        warning("Declaration of " & "struct_ma_device_descriptor" &
            " exists but with different size")
    struct_ma_device_descriptor
  else:
    struct_ma_device_descriptor_570426337)
  ma_hpf_570426026 = (when declared(ma_hpf):
    when ownSizeof(ma_hpf) != ownSizeof(ma_hpf_570426025):
      static :
        warning("Declaration of " & "ma_hpf" & " exists but with different size")
    ma_hpf
  else:
    ma_hpf_570426025)
  ma_noise_type_570426678 = (when declared(ma_noise_type):
    when ownSizeof(ma_noise_type) != ownSizeof(ma_noise_type_570426677):
      static :
        warning("Declaration of " & "ma_noise_type" &
            " exists but with different size")
    ma_noise_type
  else:
    ma_noise_type_570426677)
  ma_stream_format_570425883 = (when declared(ma_stream_format):
    when ownSizeof(ma_stream_format) != ownSizeof(ma_stream_format_570425882):
      static :
        warning("Declaration of " & "ma_stream_format" &
            " exists but with different size")
    ma_stream_format
  else:
    ma_stream_format_570425882)
  ma_hishelf_config_570426078 = (when declared(ma_hishelf_config):
    when ownSizeof(ma_hishelf_config) != ownSizeof(ma_hishelf_config_570426077):
      static :
        warning("Declaration of " & "ma_hishelf_config" &
            " exists but with different size")
    ma_hishelf_config
  else:
    ma_hishelf_config_570426077)
  enum_ma_mono_expansion_mode_570426186 = (when declared(
      enum_ma_mono_expansion_mode):
    when ownSizeof(enum_ma_mono_expansion_mode) !=
        ownSizeof(enum_ma_mono_expansion_mode_570426185):
      static :
        warning("Declaration of " & "enum_ma_mono_expansion_mode" &
            " exists but with different size")
    enum_ma_mono_expansion_mode
  else:
    enum_ma_mono_expansion_mode_570426185)
  ma_sound_group_570426908 = (when declared(ma_sound_group):
    when ownSizeof(ma_sound_group) != ownSizeof(ma_sound_group_570426907):
      static :
        warning("Declaration of " & "ma_sound_group" &
            " exists but with different size")
    ma_sound_group
  else:
    ma_sound_group_570426907)
  ma_paged_audio_buffer_page_570426238 = (when declared(
      ma_paged_audio_buffer_page):
    when ownSizeof(ma_paged_audio_buffer_page) !=
        ownSizeof(ma_paged_audio_buffer_page_570426237):
      static :
        warning("Declaration of " & "ma_paged_audio_buffer_page" &
            " exists but with different size")
    ma_paged_audio_buffer_page
  else:
    ma_paged_audio_buffer_page_570426237)
  wchar_t_570426306 = (when declared(wchar_t):
    when ownSizeof(wchar_t) != ownSizeof(wchar_t_570426305):
      static :
        warning("Declaration of " & "wchar_t" &
            " exists but with different size")
    wchar_t
  else:
    wchar_t_570426305)
  struct_ma_slot_allocator_group_570426288 = (when declared(
      struct_ma_slot_allocator_group):
    when ownSizeof(struct_ma_slot_allocator_group) !=
        ownSizeof(struct_ma_slot_allocator_group_570426287):
      static :
        warning("Declaration of " & "struct_ma_slot_allocator_group" &
            " exists but with different size")
    struct_ma_slot_allocator_group
  else:
    struct_ma_slot_allocator_group_570426287)
  ma_seek_origin_570426592 = (when declared(ma_seek_origin):
    when ownSizeof(ma_seek_origin) != ownSizeof(ma_seek_origin_570426591):
      static :
        warning("Declaration of " & "ma_seek_origin" &
            " exists but with different size")
    ma_seek_origin
  else:
    ma_seek_origin_570426591)
  ma_biquad_node_config_570426800 = (when declared(ma_biquad_node_config):
    when ownSizeof(ma_biquad_node_config) != ownSizeof(ma_biquad_node_config_570426799):
      static :
        warning("Declaration of " & "ma_biquad_node_config" &
            " exists but with different size")
    ma_biquad_node_config
  else:
    ma_biquad_node_config_570426799)
  struct_pthread_mutex_s_570426920 = (when declared(struct_pthread_mutex_s):
    when ownSizeof(struct_pthread_mutex_s) != ownSizeof(struct_pthread_mutex_s_570426919):
      static :
        warning("Declaration of " & "struct_pthread_mutex_s" &
            " exists but with different size")
    struct_pthread_mutex_s
  else:
    struct_pthread_mutex_s_570426919)
  ma_node_base_570426774 = (when declared(ma_node_base):
    when ownSizeof(ma_node_base) != ownSizeof(ma_node_base_570426773):
      static :
        warning("Declaration of " & "ma_node_base" &
            " exists but with different size")
    ma_node_base
  else:
    ma_node_base_570426773)
  ma_device_config_null_570426498 = (when declared(ma_device_config_null):
    when ownSizeof(ma_device_config_null) != ownSizeof(ma_device_config_null_570426497):
      static :
        warning("Declaration of " & "ma_device_config_null" &
            " exists but with different size")
    ma_device_config_null
  else:
    ma_device_config_null_570426497)
  ma_attenuation_model_570426130 = (when declared(ma_attenuation_model):
    when ownSizeof(ma_attenuation_model) != ownSizeof(ma_attenuation_model_570426129):
      static :
        warning("Declaration of " & "ma_attenuation_model" &
            " exists but with different size")
    ma_attenuation_model
  else:
    ma_attenuation_model_570426129)
  ma_ios_session_category_option_570426378 = (when declared(
      ma_ios_session_category_option):
    when ownSizeof(ma_ios_session_category_option) !=
        ownSizeof(ma_ios_session_category_option_570426377):
      static :
        warning("Declaration of " & "ma_ios_session_category_option" &
            " exists but with different size")
    ma_ios_session_category_option
  else:
    ma_ios_session_category_option_570426377)
  ma_engine_config_570426914 = (when declared(ma_engine_config):
    when ownSizeof(ma_engine_config) != ownSizeof(ma_engine_config_570426913):
      static :
        warning("Declaration of " & "ma_engine_config" &
            " exists but with different size")
    ma_engine_config
  else:
    ma_engine_config_570426913)
  ma_hpf2_570426018 = (when declared(ma_hpf2):
    when ownSizeof(ma_hpf2) != ownSizeof(ma_hpf2_570426017):
      static :
        warning("Declaration of " & "ma_hpf2" &
            " exists but with different size")
    ma_hpf2
  else:
    ma_hpf2_570426017)
  struct_ma_device_config_winmm_570426368 = (when declared(
      struct_ma_device_config_winmm):
    when ownSizeof(struct_ma_device_config_winmm) !=
        ownSizeof(struct_ma_device_config_winmm_570426367):
      static :
        warning("Declaration of " & "struct_ma_device_config_winmm" &
            " exists but with different size")
    struct_ma_device_config_winmm
  else:
    struct_ma_device_config_winmm_570426367)
  ma_resample_algorithm_570426176 = (when declared(ma_resample_algorithm):
    when ownSizeof(ma_resample_algorithm) != ownSizeof(ma_resample_algorithm_570426175):
      static :
        warning("Declaration of " & "ma_resample_algorithm" &
            " exists but with different size")
    ma_resample_algorithm
  else:
    ma_resample_algorithm_570426175)
  struct_ma_device_config_wasapi_570426352 = (when declared(
      struct_ma_device_config_wasapi):
    when ownSizeof(struct_ma_device_config_wasapi) !=
        ownSizeof(struct_ma_device_config_wasapi_570426351):
      static :
        warning("Declaration of " & "struct_ma_device_config_wasapi" &
            " exists but with different size")
    struct_ma_device_config_wasapi
  else:
    struct_ma_device_config_wasapi_570426351)
  ma_uint8_570425823 = (when declared(ma_uint8):
    when ownSizeof(ma_uint8) != ownSizeof(ma_uint8_570425822):
      static :
        warning("Declaration of " & "ma_uint8" &
            " exists but with different size")
    ma_uint8
  else:
    ma_uint8_570425822)
  struct_ma_log_570425968 = (when declared(struct_ma_log):
    when ownSizeof(struct_ma_log) != ownSizeof(struct_ma_log_570425967):
      static :
        warning("Declaration of " & "struct_ma_log" &
            " exists but with different size")
    struct_ma_log
  else:
    struct_ma_log_570425967)
  ma_audio_buffer_570426236 = (when declared(ma_audio_buffer):
    when ownSizeof(ma_audio_buffer) != ownSizeof(ma_audio_buffer_570426235):
      static :
        warning("Declaration of " & "ma_audio_buffer" &
            " exists but with different size")
    ma_audio_buffer
  else:
    ma_audio_buffer_570426235)
  struct_ma_noise_config_570426680 = (when declared(struct_ma_noise_config):
    when ownSizeof(struct_ma_noise_config) != ownSizeof(struct_ma_noise_config_570426679):
      static :
        warning("Declaration of " & "struct_ma_noise_config" &
            " exists but with different size")
    struct_ma_noise_config
  else:
    struct_ma_noise_config_570426679)
  enum_ma_standard_sample_rate_570425897 = (when declared(
      enum_ma_standard_sample_rate):
    when ownSizeof(enum_ma_standard_sample_rate) !=
        ownSizeof(enum_ma_standard_sample_rate_570425896):
      static :
        warning("Declaration of " & "enum_ma_standard_sample_rate" &
            " exists but with different size")
    enum_ma_standard_sample_rate
  else:
    enum_ma_standard_sample_rate_570425896)
  ma_noise_570426686 = (when declared(ma_noise):
    when ownSizeof(ma_noise) != ownSizeof(ma_noise_570426685):
      static :
        warning("Declaration of " & "ma_noise" &
            " exists but with different size")
    ma_noise
  else:
    ma_noise_570426685)
  struct_ma_atomic_float_570425936 = (when declared(struct_ma_atomic_float):
    when ownSizeof(struct_ma_atomic_float) != ownSizeof(struct_ma_atomic_float_570425935):
      static :
        warning("Declaration of " & "struct_ma_atomic_float" &
            " exists but with different size")
    struct_ma_atomic_float
  else:
    struct_ma_atomic_float_570425935)
  ma_wchar_win32_570425865 = (when declared(ma_wchar_win32):
    when ownSizeof(ma_wchar_win32) != ownSizeof(ma_wchar_win32_570425864):
      static :
        warning("Declaration of " & "ma_wchar_win32" &
            " exists but with different size")
    ma_wchar_win32
  else:
    ma_wchar_win32_570425864)
  struct_ma_engine_570426872 = (when declared(struct_ma_engine):
    when ownSizeof(struct_ma_engine) != ownSizeof(struct_ma_engine_570426871):
      static :
        warning("Declaration of " & "struct_ma_engine" &
            " exists but with different size")
    struct_ma_engine
  else:
    struct_ma_engine_570426871)
  struct_ma_loshelf_node_570426850 = (when declared(struct_ma_loshelf_node):
    when ownSizeof(struct_ma_loshelf_node) != ownSizeof(struct_ma_loshelf_node_570426849):
      static :
        warning("Declaration of " & "struct_ma_loshelf_node" &
            " exists but with different size")
    struct_ma_loshelf_node
  else:
    struct_ma_loshelf_node_570426849)
  enum_ma_device_type_570426556 = (when declared(enum_ma_device_type):
    when ownSizeof(enum_ma_device_type) != ownSizeof(enum_ma_device_type_570426555):
      static :
        warning("Declaration of " & "enum_ma_device_type" &
            " exists but with different size")
    enum_ma_device_type
  else:
    enum_ma_device_type_570426555)
  struct_ma_sound_config_570426898 = (when declared(struct_ma_sound_config):
    when ownSizeof(struct_ma_sound_config) != ownSizeof(struct_ma_sound_config_570426897):
      static :
        warning("Declaration of " & "struct_ma_sound_config" &
            " exists but with different size")
    struct_ma_sound_config
  else:
    struct_ma_sound_config_570426897)
  ma_atomic_vec3f_570426126 = (when declared(ma_atomic_vec3f):
    when ownSizeof(ma_atomic_vec3f) != ownSizeof(ma_atomic_vec3f_570426125):
      static :
        warning("Declaration of " & "ma_atomic_vec3f" &
            " exists but with different size")
    ma_atomic_vec3f
  else:
    ma_atomic_vec3f_570426125)
  struct_ma_hishelf2_config_570426074 = (when declared(struct_ma_hishelf2_config):
    when ownSizeof(struct_ma_hishelf2_config) !=
        ownSizeof(struct_ma_hishelf2_config_570426073):
      static :
        warning("Declaration of " & "struct_ma_hishelf2_config" &
            " exists but with different size")
    struct_ma_hishelf2_config
  else:
    struct_ma_hishelf2_config_570426073)
  struct_ma_fader_config_570426112 = (when declared(struct_ma_fader_config):
    when ownSizeof(struct_ma_fader_config) != ownSizeof(struct_ma_fader_config_570426111):
      static :
        warning("Declaration of " & "struct_ma_fader_config" &
            " exists but with different size")
    struct_ma_fader_config
  else:
    struct_ma_fader_config_570426111)
  ma_standard_channel_map_570425914 = (when declared(ma_standard_channel_map):
    when ownSizeof(ma_standard_channel_map) !=
        ownSizeof(ma_standard_channel_map_570425913):
      static :
        warning("Declaration of " & "ma_standard_channel_map" &
            " exists but with different size")
    ma_standard_channel_map
  else:
    ma_standard_channel_map_570425913)
  struct_ma_node_config_570426762 = (when declared(struct_ma_node_config):
    when ownSizeof(struct_ma_node_config) != ownSizeof(struct_ma_node_config_570426761):
      static :
        warning("Declaration of " & "struct_ma_node_config" &
            " exists but with different size")
    struct_ma_node_config
  else:
    struct_ma_node_config_570426761)
  enum_ma_webaudio_latency_hint_570426480 = (when declared(
      enum_ma_webaudio_latency_hint):
    when ownSizeof(enum_ma_webaudio_latency_hint) !=
        ownSizeof(enum_ma_webaudio_latency_hint_570426479):
      static :
        warning("Declaration of " & "enum_ma_webaudio_latency_hint" &
            " exists but with different size")
    enum_ma_webaudio_latency_hint
  else:
    enum_ma_webaudio_latency_hint_570426479)
  ma_vec3f_570426122 = (when declared(ma_vec3f):
    when ownSizeof(ma_vec3f) != ownSizeof(ma_vec3f_570426121):
      static :
        warning("Declaration of " & "ma_vec3f" &
            " exists but with different size")
    ma_vec3f
  else:
    ma_vec3f_570426121)
  struct_ma_resource_manager_data_supply_570426732 = (when declared(
      struct_ma_resource_manager_data_supply):
    when ownSizeof(struct_ma_resource_manager_data_supply) !=
        ownSizeof(struct_ma_resource_manager_data_supply_570426731):
      static :
        warning("Declaration of " & "struct_ma_resource_manager_data_supply" &
            " exists but with different size")
    struct_ma_resource_manager_data_supply
  else:
    struct_ma_resource_manager_data_supply_570426731)
  ma_event_570425956 = (when declared(ma_event):
    when ownSizeof(ma_event) != ownSizeof(ma_event_570425955):
      static :
        warning("Declaration of " & "ma_event" &
            " exists but with different size")
    ma_event
  else:
    ma_event_570425955)
  ma_bpf_config_570426038 = (when declared(ma_bpf_config):
    when ownSizeof(ma_bpf_config) != ownSizeof(ma_bpf_config_570426037):
      static :
        warning("Declaration of " & "ma_bpf_config" &
            " exists but with different size")
    ma_bpf_config
  else:
    ma_bpf_config_570426037)
  enum_ma_pan_mode_570426100 = (when declared(enum_ma_pan_mode):
    when ownSizeof(enum_ma_pan_mode) != ownSizeof(enum_ma_pan_mode_570426099):
      static :
        warning("Declaration of " & "enum_ma_pan_mode" &
            " exists but with different size")
    enum_ma_pan_mode
  else:
    enum_ma_pan_mode_570426099)
  ma_waveform_570426666 = (when declared(ma_waveform):
    when ownSizeof(ma_waveform) != ownSizeof(ma_waveform_570426665):
      static :
        warning("Declaration of " & "ma_waveform" &
            " exists but with different size")
    ma_waveform
  else:
    ma_waveform_570426665)
  ma_open_mode_flags_570426588 = (when declared(ma_open_mode_flags):
    when ownSizeof(ma_open_mode_flags) != ownSizeof(ma_open_mode_flags_570426587):
      static :
        warning("Declaration of " & "ma_open_mode_flags" &
            " exists but with different size")
    ma_open_mode_flags
  else:
    ma_open_mode_flags_570426587)
  struct_ma_lpf_config_570425998 = (when declared(struct_ma_lpf_config):
    when ownSizeof(struct_ma_lpf_config) != ownSizeof(struct_ma_lpf_config_570425997):
      static :
        warning("Declaration of " & "struct_ma_lpf_config" &
            " exists but with different size")
    struct_ma_lpf_config
  else:
    struct_ma_lpf_config_570425997)
  struct_ma_bpf2_570426032 = (when declared(struct_ma_bpf2):
    when ownSizeof(struct_ma_bpf2) != ownSizeof(struct_ma_bpf2_570426031):
      static :
        warning("Declaration of " & "struct_ma_bpf2" &
            " exists but with different size")
    struct_ma_bpf2
  else:
    struct_ma_bpf2_570426031)
  ma_engine_process_proc_570426910 = (when declared(ma_engine_process_proc):
    when ownSizeof(ma_engine_process_proc) != ownSizeof(ma_engine_process_proc_570426909):
      static :
        warning("Declaration of " & "ma_engine_process_proc" &
            " exists but with different size")
    ma_engine_process_proc
  else:
    ma_engine_process_proc_570426909)
  struct_ma_biquad_config_570425976 = (when declared(struct_ma_biquad_config):
    when ownSizeof(struct_ma_biquad_config) !=
        ownSizeof(struct_ma_biquad_config_570425975):
      static :
        warning("Declaration of " & "struct_ma_biquad_config" &
            " exists but with different size")
    struct_ma_biquad_config
  else:
    struct_ma_biquad_config_570425975)
  ma_device_config_jack_570426410 = (when declared(ma_device_config_jack):
    when ownSizeof(ma_device_config_jack) != ownSizeof(ma_device_config_jack_570426409):
      static :
        warning("Declaration of " & "ma_device_config_jack" &
            " exists but with different size")
    ma_device_config_jack
  else:
    ma_device_config_jack_570426409)
  ma_context_config_opensl_570426474 = (when declared(ma_context_config_opensl):
    when ownSizeof(ma_context_config_opensl) !=
        ownSizeof(ma_context_config_opensl_570426473):
      static :
        warning("Declaration of " & "ma_context_config_opensl" &
            " exists but with different size")
    ma_context_config_opensl
  else:
    ma_context_config_opensl_570426473)
  struct_ma_file_info_570426594 = (when declared(struct_ma_file_info):
    when ownSizeof(struct_ma_file_info) != ownSizeof(struct_ma_file_info_570426593):
      static :
        warning("Declaration of " & "struct_ma_file_info" &
            " exists but with different size")
    struct_ma_file_info
  else:
    struct_ma_file_info_570426593)
  struct_ma_sound_notifications_570426894 = (when declared(
      struct_ma_sound_notifications):
    when ownSizeof(struct_ma_sound_notifications) !=
        ownSizeof(struct_ma_sound_notifications_570426893):
      static :
        warning("Declaration of " & "struct_ma_sound_notifications" &
            " exists but with different size")
    struct_ma_sound_notifications
  else:
    struct_ma_sound_notifications_570426893)
  ma_data_converter_config_570426200 = (when declared(ma_data_converter_config):
    when ownSizeof(ma_data_converter_config) !=
        ownSizeof(ma_data_converter_config_570426199):
      static :
        warning("Declaration of " & "ma_data_converter_config" &
            " exists but with different size")
    ma_data_converter_config
  else:
    ma_data_converter_config_570426199)
  struct_ma_bpf_config_570426036 = (when declared(struct_ma_bpf_config):
    when ownSizeof(struct_ma_bpf_config) != ownSizeof(struct_ma_bpf_config_570426035):
      static :
        warning("Declaration of " & "struct_ma_bpf_config" &
            " exists but with different size")
    struct_ma_bpf_config
  else:
    struct_ma_bpf_config_570426035)
  union_ma_timer_570426564 = (when declared(union_ma_timer):
    when ownSizeof(union_ma_timer) != ownSizeof(union_ma_timer_570426563):
      static :
        warning("Declaration of " & "union_ma_timer" &
            " exists but with different size")
    union_ma_timer
  else:
    union_ma_timer_570426563)
  ma_linear_resampler_570426162 = (when declared(ma_linear_resampler):
    when ownSizeof(ma_linear_resampler) != ownSizeof(ma_linear_resampler_570426161):
      static :
        warning("Declaration of " & "ma_linear_resampler" &
            " exists but with different size")
    ma_linear_resampler
  else:
    ma_linear_resampler_570426161)
  ma_context_config_alsa_570426398 = (when declared(ma_context_config_alsa):
    when ownSizeof(ma_context_config_alsa) != ownSizeof(ma_context_config_alsa_570426397):
      static :
        warning("Declaration of " & "ma_context_config_alsa" &
            " exists but with different size")
    ma_context_config_alsa
  else:
    ma_context_config_alsa_570426397)
  struct_ma_device_op_570426536 = (when declared(struct_ma_device_op):
    when ownSizeof(struct_ma_device_op) != ownSizeof(struct_ma_device_op_570426535):
      static :
        warning("Declaration of " & "struct_ma_device_op" &
            " exists but with different size")
    struct_ma_device_op
  else:
    struct_ma_device_op_570426535)
  struct_ma_spatializer_listener_570426144 = (when declared(
      struct_ma_spatializer_listener):
    when ownSizeof(struct_ma_spatializer_listener) !=
        ownSizeof(struct_ma_spatializer_listener_570426143):
      static :
        warning("Declaration of " & "struct_ma_spatializer_listener" &
            " exists but with different size")
    struct_ma_spatializer_listener
  else:
    struct_ma_spatializer_listener_570426143)
  enum_ma_opensl_recording_preset_570426468 = (when declared(
      enum_ma_opensl_recording_preset):
    when ownSizeof(enum_ma_opensl_recording_preset) !=
        ownSizeof(enum_ma_opensl_recording_preset_570426467):
      static :
        warning("Declaration of " & "enum_ma_opensl_recording_preset" &
            " exists but with different size")
    enum_ma_opensl_recording_preset
  else:
    enum_ma_opensl_recording_preset_570426467)
  union_pthread_cond_t_570426918 = (when declared(union_pthread_cond_t):
    when ownSizeof(union_pthread_cond_t) != ownSizeof(union_pthread_cond_t_570426917):
      static :
        warning("Declaration of " & "union_pthread_cond_t" &
            " exists but with different size")
    union_pthread_cond_t
  else:
    union_pthread_cond_t_570426917)
  enum_ma_attenuation_model_570426128 = (when declared(enum_ma_attenuation_model):
    when ownSizeof(enum_ma_attenuation_model) !=
        ownSizeof(enum_ma_attenuation_model_570426127):
      static :
        warning("Declaration of " & "enum_ma_attenuation_model" &
            " exists but with different size")
    enum_ma_attenuation_model
  else:
    enum_ma_attenuation_model_570426127)
  struct_ma_slot_allocator_570426292 = (when declared(struct_ma_slot_allocator):
    when ownSizeof(struct_ma_slot_allocator) !=
        ownSizeof(struct_ma_slot_allocator_570426291):
      static :
        warning("Declaration of " & "struct_ma_slot_allocator" &
            " exists but with different size")
    struct_ma_slot_allocator
  else:
    struct_ma_slot_allocator_570426291)
  ma_spinlock_570425944 = (when declared(ma_spinlock):
    when ownSizeof(ma_spinlock) != ownSizeof(ma_spinlock_570425943):
      static :
        warning("Declaration of " & "ma_spinlock" &
            " exists but with different size")
    ma_spinlock
  else:
    ma_spinlock_570425943)
  ma_notch2_config_570426046 = (when declared(ma_notch2_config):
    when ownSizeof(ma_notch2_config) != ownSizeof(ma_notch2_config_570426045):
      static :
        warning("Declaration of " & "ma_notch2_config" &
            " exists but with different size")
    ma_notch2_config
  else:
    ma_notch2_config_570426045)
  struct_ma_device_config_dsound_570426360 = (when declared(
      struct_ma_device_config_dsound):
    when ownSizeof(struct_ma_device_config_dsound) !=
        ownSizeof(struct_ma_device_config_dsound_570426359):
      static :
        warning("Declaration of " & "struct_ma_device_config_dsound" &
            " exists but with different size")
    struct_ma_device_config_dsound
  else:
    struct_ma_device_config_dsound_570426359)
  ma_decoding_backend_config_570426622 = (when declared(
      ma_decoding_backend_config):
    when ownSizeof(ma_decoding_backend_config) !=
        ownSizeof(ma_decoding_backend_config_570426621):
      static :
        warning("Declaration of " & "ma_decoding_backend_config" &
            " exists but with different size")
    ma_decoding_backend_config
  else:
    ma_decoding_backend_config_570426621)
  ma_aaudio_allowed_capture_policy_570426450 = (when declared(
      ma_aaudio_allowed_capture_policy):
    when ownSizeof(ma_aaudio_allowed_capture_policy) !=
        ownSizeof(ma_aaudio_allowed_capture_policy_570426449):
      static :
        warning("Declaration of " & "ma_aaudio_allowed_capture_policy" &
            " exists but with different size")
    ma_aaudio_allowed_capture_policy
  else:
    ma_aaudio_allowed_capture_policy_570426449)
  ma_device_notification_type_570426546 = (when declared(
      ma_device_notification_type):
    when ownSizeof(ma_device_notification_type) !=
        ownSizeof(ma_device_notification_type_570426545):
      static :
        warning("Declaration of " & "ma_device_notification_type" &
            " exists but with different size")
    ma_device_notification_type
  else:
    ma_device_notification_type_570426545)
  struct_ma_hishelf_node_config_570426854 = (when declared(
      struct_ma_hishelf_node_config):
    when ownSizeof(struct_ma_hishelf_node_config) !=
        ownSizeof(struct_ma_hishelf_node_config_570426853):
      static :
        warning("Declaration of " & "struct_ma_hishelf_node_config" &
            " exists but with different size")
    struct_ma_hishelf_node_config
  else:
    struct_ma_hishelf_node_config_570426853)
when not declared(ma_pulsewave):
  type
    ma_pulsewave* = ma_pulsewave_570426673
else:
  static :
    hint("Declaration of " & "ma_pulsewave" & " already exists, not redeclaring")
when not declared(struct_ma_device_op_queue):
  type
    struct_ma_device_op_queue* = struct_ma_device_op_queue_570426539
else:
  static :
    hint("Declaration of " & "struct_ma_device_op_queue" &
        " already exists, not redeclaring")
when not declared(ma_waveform_config):
  type
    ma_waveform_config* = ma_waveform_config_570426661
else:
  static :
    hint("Declaration of " & "ma_waveform_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_resource_manager_data_supply_type):
  type
    enum_ma_resource_manager_data_supply_type* = enum_ma_resource_manager_data_supply_type_570426727
else:
  static :
    hint("Declaration of " & "enum_ma_resource_manager_data_supply_type" &
        " already exists, not redeclaring")
when not declared(struct_ma_data_converter_config):
  type
    struct_ma_data_converter_config* = struct_ma_data_converter_config_570426197
else:
  static :
    hint("Declaration of " & "struct_ma_data_converter_config" &
        " already exists, not redeclaring")
when not declared(ma_bpf2):
  type
    ma_bpf2* = ma_bpf2_570426033
else:
  static :
    hint("Declaration of " & "ma_bpf2" & " already exists, not redeclaring")
when not declared(union_ma_device_id):
  type
    union_ma_device_id* = union_ma_device_id_570426567
else:
  static :
    hint("Declaration of " & "union_ma_device_id" &
        " already exists, not redeclaring")
when not declared(ma_device_descriptor):
  type
    ma_device_descriptor* = ma_device_descriptor_570426335
else:
  static :
    hint("Declaration of " & "ma_device_descriptor" &
        " already exists, not redeclaring")
when not declared(struct_ma_event):
  type
    struct_ma_event* = struct_ma_event_570425953
else:
  static :
    hint("Declaration of " & "struct_ma_event" &
        " already exists, not redeclaring")
when not declared(struct_pthread_cond_s):
  type
    struct_pthread_cond_s* = struct_pthread_cond_s_570426921
else:
  static :
    hint("Declaration of " & "struct_pthread_cond_s" &
        " already exists, not redeclaring")
when not declared(ma_read_proc):
  type
    ma_read_proc* = ma_read_proc_570426605
else:
  static :
    hint("Declaration of " & "ma_read_proc" & " already exists, not redeclaring")
when not declared(ma_ptr):
  type
    ma_ptr* = ma_ptr_570425848
else:
  static :
    hint("Declaration of " & "ma_ptr" & " already exists, not redeclaring")
when not declared(struct_ma_lpf1_config):
  type
    struct_ma_lpf1_config* = struct_ma_lpf1_config_570425983
else:
  static :
    hint("Declaration of " & "struct_ma_lpf1_config" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter):
  type
    ma_channel_converter* = ma_channel_converter_570426195
else:
  static :
    hint("Declaration of " & "ma_channel_converter" &
        " already exists, not redeclaring")
when not declared(struct_ma_stack):
  type
    struct_ma_stack* = struct_ma_stack_570426739
else:
  static :
    hint("Declaration of " & "struct_ma_stack" &
        " already exists, not redeclaring")
when not declared(ma_log):
  type
    ma_log* = ma_log_570425969
else:
  static :
    hint("Declaration of " & "ma_log" & " already exists, not redeclaring")
when not declared(ma_fader):
  type
    ma_fader* = ma_fader_570426117
else:
  static :
    hint("Declaration of " & "ma_fader" & " already exists, not redeclaring")
when not declared(ma_device_backend_info):
  type
    ma_device_backend_info* = ma_device_backend_info_570426505
else:
  static :
    hint("Declaration of " & "ma_device_backend_info" &
        " already exists, not redeclaring")
when not declared(struct_ma_lpf):
  type
    struct_ma_lpf* = struct_ma_lpf_570426001
else:
  static :
    hint("Declaration of " & "struct_ma_lpf" &
        " already exists, not redeclaring")
when not declared(struct_ma_lpf_node_config):
  type
    struct_ma_lpf_node_config* = struct_ma_lpf_node_config_570426805
else:
  static :
    hint("Declaration of " & "struct_ma_lpf_node_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_panner_config):
  type
    struct_ma_panner_config* = struct_ma_panner_config_570426103
else:
  static :
    hint("Declaration of " & "struct_ma_panner_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_sound_inlined):
  type
    struct_ma_sound_inlined* = struct_ma_sound_inlined_570426903
else:
  static :
    hint("Declaration of " & "struct_ma_sound_inlined" &
        " already exists, not redeclaring")
when not declared(ma_slot_allocator):
  type
    ma_slot_allocator* = ma_slot_allocator_570426293
else:
  static :
    hint("Declaration of " & "ma_slot_allocator" &
        " already exists, not redeclaring")
when not declared(ma_job):
  type
    ma_job* = ma_job_570426295
else:
  static :
    hint("Declaration of " & "ma_job" & " already exists, not redeclaring")
when not declared(struct_ma_gainer):
  type
    struct_ma_gainer* = struct_ma_gainer_570426095
else:
  static :
    hint("Declaration of " & "struct_ma_gainer" &
        " already exists, not redeclaring")
when not declared(ma_proc):
  type
    ma_proc* = ma_proc_570425850
else:
  static :
    hint("Declaration of " & "ma_proc" & " already exists, not redeclaring")
when not declared(struct_ma_context_config_pulseaudio):
  type
    struct_ma_context_config_pulseaudio* = struct_ma_context_config_pulseaudio_570426387
else:
  static :
    hint("Declaration of " & "struct_ma_context_config_pulseaudio" &
        " already exists, not redeclaring")
when not declared(ma_node_graph_config):
  type
    ma_node_graph_config* = ma_node_graph_config_570426779
else:
  static :
    hint("Declaration of " & "ma_node_graph_config" &
        " already exists, not redeclaring")
when not declared(ma_biquad_node):
  type
    ma_biquad_node* = ma_biquad_node_570426803
else:
  static :
    hint("Declaration of " & "ma_biquad_node" &
        " already exists, not redeclaring")
when not declared(enum_ma_seek_origin):
  type
    enum_ma_seek_origin* = enum_ma_seek_origin_570426589
else:
  static :
    hint("Declaration of " & "enum_ma_seek_origin" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_config_webaudio):
  type
    struct_ma_device_config_webaudio* = struct_ma_device_config_webaudio_570426487
else:
  static :
    hint("Declaration of " & "struct_ma_device_config_webaudio" &
        " already exists, not redeclaring")
when not declared(enum_ma_noise_type):
  type
    enum_ma_noise_type* = enum_ma_noise_type_570426675
else:
  static :
    hint("Declaration of " & "enum_ma_noise_type" &
        " already exists, not redeclaring")
when not declared(struct_ma_engine_node_config):
  type
    struct_ma_engine_node_config* = struct_ma_engine_node_config_570426885
else:
  static :
    hint("Declaration of " & "struct_ma_engine_node_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_context_config_aaudio):
  type
    struct_ma_context_config_aaudio* = struct_ma_context_config_aaudio_570426455
else:
  static :
    hint("Declaration of " & "struct_ma_context_config_aaudio" &
        " already exists, not redeclaring")
when not declared(enum_ma_standard_channel_map):
  type
    enum_ma_standard_channel_map* = enum_ma_standard_channel_map_570425911
else:
  static :
    hint("Declaration of " & "enum_ma_standard_channel_map" &
        " already exists, not redeclaring")
when not declared(struct_ma_hpf1):
  type
    struct_ma_hpf1* = struct_ma_hpf1_570426011
else:
  static :
    hint("Declaration of " & "struct_ma_hpf1" &
        " already exists, not redeclaring")
when not declared(struct_ma_data_source_config):
  type
    struct_ma_data_source_config* = struct_ma_data_source_config_570426217
else:
  static :
    hint("Declaration of " & "struct_ma_data_source_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_channel_mix_mode):
  type
    enum_ma_channel_mix_mode* = enum_ma_channel_mix_mode_570425900
else:
  static :
    hint("Declaration of " & "enum_ma_channel_mix_mode" &
        " already exists, not redeclaring")
when not declared(struct_ma_delay_config):
  type
    struct_ma_delay_config* = struct_ma_delay_config_570426083
else:
  static :
    hint("Declaration of " & "struct_ma_delay_config" &
        " already exists, not redeclaring")
when not declared(ma_panner_config):
  type
    ma_panner_config* = ma_panner_config_570426105
else:
  static :
    hint("Declaration of " & "ma_panner_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_positioning):
  type
    enum_ma_positioning* = enum_ma_positioning_570426131
else:
  static :
    hint("Declaration of " & "enum_ma_positioning" &
        " already exists, not redeclaring")
when not declared(struct_ma_audio_buffer_config):
  type
    struct_ma_audio_buffer_config* = struct_ma_audio_buffer_config_570426229
else:
  static :
    hint("Declaration of " & "struct_ma_audio_buffer_config" &
        " already exists, not redeclaring")
when not declared(ma_device_info):
  type
    ma_device_info* = ma_device_info_570426573
else:
  static :
    hint("Declaration of " & "ma_device_info" &
        " already exists, not redeclaring")
when not declared(ma_encoder_uninit_proc):
  type
    ma_encoder_uninit_proc* = ma_encoder_uninit_proc_570426647
else:
  static :
    hint("Declaration of " & "ma_encoder_uninit_proc" &
        " already exists, not redeclaring")
when not declared(ma_hpf2_config):
  type
    ma_hpf2_config* = ma_hpf2_config_570426009
else:
  static :
    hint("Declaration of " & "ma_hpf2_config" &
        " already exists, not redeclaring")
when not declared(ma_job_proc):
  type
    ma_job_proc* = ma_job_proc_570426299
else:
  static :
    hint("Declaration of " & "ma_job_proc" & " already exists, not redeclaring")
when not declared(ma_uint64):
  type
    ma_uint64* = ma_uint64_570425834
else:
  static :
    hint("Declaration of " & "ma_uint64" & " already exists, not redeclaring")
when not declared(struct_ma_context_config_wasapi):
  type
    struct_ma_context_config_wasapi* = struct_ma_context_config_wasapi_570426347
else:
  static :
    hint("Declaration of " & "struct_ma_context_config_wasapi" &
        " already exists, not redeclaring")
when not declared(struct_ma_fader):
  type
    struct_ma_fader* = struct_ma_fader_570426115
else:
  static :
    hint("Declaration of " & "struct_ma_fader" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_config):
  type
    ma_audio_buffer_config* = ma_audio_buffer_config_570426231
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_config_coreaudio):
  type
    struct_ma_device_config_coreaudio* = struct_ma_device_config_coreaudio_570426383
else:
  static :
    hint("Declaration of " & "struct_ma_device_config_coreaudio" &
        " already exists, not redeclaring")
when not declared(ma_int16):
  type
    ma_int16* = ma_int16_570425824
else:
  static :
    hint("Declaration of " & "ma_int16" & " already exists, not redeclaring")
when not declared(ma_device_config_audio4):
  type
    ma_device_config_audio4* = ma_device_config_audio4_570426425
else:
  static :
    hint("Declaration of " & "ma_device_config_audio4" &
        " already exists, not redeclaring")
when not declared(struct_ma_hpf_node):
  type
    struct_ma_hpf_node* = struct_ma_hpf_node_570426817
else:
  static :
    hint("Declaration of " & "struct_ma_hpf_node" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter_config):
  type
    ma_channel_converter_config* = ma_channel_converter_config_570426191
else:
  static :
    hint("Declaration of " & "ma_channel_converter_config" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref):
  type
    ma_audio_buffer_ref* = ma_audio_buffer_ref_570426227
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref" &
        " already exists, not redeclaring")
when not declared(struct_ma_fence):
  type
    struct_ma_fence* = struct_ma_fence_570426265
else:
  static :
    hint("Declaration of " & "struct_ma_fence" &
        " already exists, not redeclaring")
when not declared(struct_ma_hpf_config):
  type
    struct_ma_hpf_config* = struct_ma_hpf_config_570426019
else:
  static :
    hint("Declaration of " & "struct_ma_hpf_config" &
        " already exists, not redeclaring")
when not declared(ma_device_enumeration_result):
  type
    ma_device_enumeration_result* = ma_device_enumeration_result_570426577
else:
  static :
    hint("Declaration of " & "ma_device_enumeration_result" &
        " already exists, not redeclaring")
when not declared(ma_stream_layout):
  type
    ma_stream_layout* = ma_stream_layout_570425886
else:
  static :
    hint("Declaration of " & "ma_stream_layout" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_config_opensl):
  type
    struct_ma_device_config_opensl* = struct_ma_device_config_opensl_570426475
else:
  static :
    hint("Declaration of " & "struct_ma_device_config_opensl" &
        " already exists, not redeclaring")
when not declared(struct_ma_atomic_vec3f):
  type
    struct_ma_atomic_vec3f* = struct_ma_atomic_vec3f_570426123
else:
  static :
    hint("Declaration of " & "struct_ma_atomic_vec3f" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2):
  type
    ma_loshelf2* = ma_loshelf2_570426071
else:
  static :
    hint("Declaration of " & "ma_loshelf2" & " already exists, not redeclaring")
when not declared(struct_ma_slot_allocator_config):
  type
    struct_ma_slot_allocator_config* = struct_ma_slot_allocator_config_570426283
else:
  static :
    hint("Declaration of " & "struct_ma_slot_allocator_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_default_vfs):
  type
    struct_ma_default_vfs* = struct_ma_default_vfs_570426601
else:
  static :
    hint("Declaration of " & "struct_ma_default_vfs" &
        " already exists, not redeclaring")
when not declared(ma_decoder_read_proc):
  type
    ma_decoder_read_proc* = ma_decoder_read_proc_570426627
else:
  static :
    hint("Declaration of " & "ma_decoder_read_proc" &
        " already exists, not redeclaring")
when not declared(ma_decoder_config):
  type
    ma_decoder_config* = ma_decoder_config_570426635
else:
  static :
    hint("Declaration of " & "ma_decoder_config" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_flags):
  type
    ma_resource_manager_flags* = ma_resource_manager_flags_570426721
else:
  static :
    hint("Declaration of " & "ma_resource_manager_flags" &
        " already exists, not redeclaring")
when not declared(ma_lpf_config):
  type
    ma_lpf_config* = ma_lpf_config_570425999
else:
  static :
    hint("Declaration of " & "ma_lpf_config" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_config):
  type
    ma_resource_manager_config* = ma_resource_manager_config_570426737
else:
  static :
    hint("Declaration of " & "ma_resource_manager_config" &
        " already exists, not redeclaring")
when not declared(ma_node_flags):
  type
    ma_node_flags* = ma_node_flags_570426751
else:
  static :
    hint("Declaration of " & "ma_node_flags" &
        " already exists, not redeclaring")
when not declared(ma_semaphore):
  type
    ma_semaphore* = ma_semaphore_570425959
else:
  static :
    hint("Declaration of " & "ma_semaphore" & " already exists, not redeclaring")
when not declared(ma_loshelf_node_config):
  type
    ma_loshelf_node_config* = ma_loshelf_node_config_570426847
else:
  static :
    hint("Declaration of " & "ma_loshelf_node_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_resource_manager):
  type
    struct_ma_resource_manager* = struct_ma_resource_manager_570426689
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_node):
  type
    ma_resource_manager_data_buffer_node* = ma_resource_manager_data_buffer_node_570426691
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_node" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_pipeline_notifications):
  type
    ma_resource_manager_pipeline_notifications* = ma_resource_manager_pipeline_notifications_570426717
else:
  static :
    hint("Declaration of " & "ma_resource_manager_pipeline_notifications" &
        " already exists, not redeclaring")
when not declared(ma_pthread_mutex_t):
  type
    ma_pthread_mutex_t* = ma_pthread_mutex_t_570425856
else:
  static :
    hint("Declaration of " & "ma_pthread_mutex_t" &
        " already exists, not redeclaring")
when not declared(ma_atomic_uint32):
  type
    ma_atomic_uint32* = ma_atomic_uint32_570425925
else:
  static :
    hint("Declaration of " & "ma_atomic_uint32" &
        " already exists, not redeclaring")
when not declared(struct_ma_node_vtable):
  type
    struct_ma_node_vtable* = struct_ma_node_vtable_570426757
else:
  static :
    hint("Declaration of " & "struct_ma_node_vtable" &
        " already exists, not redeclaring")
when not declared(ma_device_config_sndio):
  type
    ma_device_config_sndio* = ma_device_config_sndio_570426417
else:
  static :
    hint("Declaration of " & "ma_device_config_sndio" &
        " already exists, not redeclaring")
when not declared(struct_ma_engine_node):
  type
    struct_ma_engine_node* = struct_ma_engine_node_570426889
else:
  static :
    hint("Declaration of " & "struct_ma_engine_node" &
        " already exists, not redeclaring")
when not declared(ma_context_config):
  type
    ma_context_config* = ma_context_config_570426323
else:
  static :
    hint("Declaration of " & "ma_context_config" &
        " already exists, not redeclaring")
when not declared(ma_uint32):
  type
    ma_uint32* = ma_uint32_570425830
else:
  static :
    hint("Declaration of " & "ma_uint32" & " already exists, not redeclaring")
when not declared(ma_hishelf2):
  type
    ma_hishelf2* = ma_hishelf2_570426081
else:
  static :
    hint("Declaration of " & "ma_hishelf2" & " already exists, not redeclaring")
when not declared(struct_ma_paged_audio_buffer_config):
  type
    struct_ma_paged_audio_buffer_config* = struct_ma_paged_audio_buffer_config_570426245
else:
  static :
    hint("Declaration of " & "struct_ma_paged_audio_buffer_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_pulsewave):
  type
    struct_ma_pulsewave* = struct_ma_pulsewave_570426671
else:
  static :
    hint("Declaration of " & "struct_ma_pulsewave" &
        " already exists, not redeclaring")
when not declared(ma_decoder):
  type
    ma_decoder* = ma_decoder_570426615
else:
  static :
    hint("Declaration of " & "ma_decoder" & " already exists, not redeclaring")
when not declared(pthread_t):
  type
    pthread_t* = pthread_t_570425854
else:
  static :
    hint("Declaration of " & "pthread_t" & " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_data_stream):
  type
    struct_ma_resource_manager_data_stream* = struct_ma_resource_manager_data_stream_570426701
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_data_stream" &
        " already exists, not redeclaring")
when not declared(ma_loshelf_node):
  type
    ma_loshelf_node* = ma_loshelf_node_570426851
else:
  static :
    hint("Declaration of " & "ma_loshelf_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_async_notification_poll):
  type
    struct_ma_async_notification_poll* = struct_ma_async_notification_poll_570426275
else:
  static :
    hint("Declaration of " & "struct_ma_async_notification_poll" &
        " already exists, not redeclaring")
when not declared(ma_sound_flags):
  type
    ma_sound_flags* = ma_sound_flags_570426879
else:
  static :
    hint("Declaration of " & "ma_sound_flags" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_op_completion_event):
  type
    struct_ma_device_op_completion_event* = struct_ma_device_op_completion_event_570426523
else:
  static :
    hint("Declaration of " & "struct_ma_device_op_completion_event" &
        " already exists, not redeclaring")
when not declared(ma_device_notification):
  type
    ma_device_notification* = ma_device_notification_570426549
else:
  static :
    hint("Declaration of " & "ma_device_notification" &
        " already exists, not redeclaring")
when not declared(ma_fader_config):
  type
    ma_fader_config* = ma_fader_config_570426113
else:
  static :
    hint("Declaration of " & "ma_fader_config" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_config):
  type
    ma_loshelf2_config* = ma_loshelf2_config_570426065
else:
  static :
    hint("Declaration of " & "ma_loshelf2_config" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer):
  type
    ma_paged_audio_buffer* = ma_paged_audio_buffer_570426251
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer" &
        " already exists, not redeclaring")
when not declared(ma_atomic_int32):
  type
    ma_atomic_int32* = ma_atomic_int32_570425929
else:
  static :
    hint("Declaration of " & "ma_atomic_int32" &
        " already exists, not redeclaring")
when not declared(ma_pthread_cond_t):
  type
    ma_pthread_cond_t* = ma_pthread_cond_t_570425860
else:
  static :
    hint("Declaration of " & "ma_pthread_cond_t" &
        " already exists, not redeclaring")
when not declared(struct_ma_biquad):
  type
    struct_ma_biquad* = struct_ma_biquad_570425979
else:
  static :
    hint("Declaration of " & "struct_ma_biquad" &
        " already exists, not redeclaring")
when not declared(struct_ma_lpf2):
  type
    struct_ma_lpf2* = struct_ma_lpf2_570425993
else:
  static :
    hint("Declaration of " & "struct_ma_lpf2" &
        " already exists, not redeclaring")
when not declared(struct_ma_atomic_uint32):
  type
    struct_ma_atomic_uint32* = struct_ma_atomic_uint32_570425923
else:
  static :
    hint("Declaration of " & "struct_ma_atomic_uint32" &
        " already exists, not redeclaring")
when not declared(struct_ma_hishelf2):
  type
    struct_ma_hishelf2* = struct_ma_hishelf2_570426079
else:
  static :
    hint("Declaration of " & "struct_ma_hishelf2" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_event):
  type
    ma_async_notification_event* = ma_async_notification_event_570426281
else:
  static :
    hint("Declaration of " & "ma_async_notification_event" &
        " already exists, not redeclaring")
when not declared(ma_delay_node):
  type
    ma_delay_node* = ma_delay_node_570426867
else:
  static :
    hint("Declaration of " & "ma_delay_node" &
        " already exists, not redeclaring")
when not declared(ma_device_op_completion_event):
  type
    ma_device_op_completion_event* = ma_device_op_completion_event_570426525
else:
  static :
    hint("Declaration of " & "ma_device_op_completion_event" &
        " already exists, not redeclaring")
when not declared(struct_ma_hishelf_node):
  type
    struct_ma_hishelf_node* = struct_ma_hishelf_node_570426857
else:
  static :
    hint("Declaration of " & "struct_ma_hishelf_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_loshelf2):
  type
    struct_ma_loshelf2* = struct_ma_loshelf2_570426069
else:
  static :
    hint("Declaration of " & "struct_ma_loshelf2" &
        " already exists, not redeclaring")
when not declared(ma_device_type):
  type
    ma_device_type* = ma_device_type_570426557
else:
  static :
    hint("Declaration of " & "ma_device_type" &
        " already exists, not redeclaring")
when not declared(enum_ma_resample_algorithm):
  type
    enum_ma_resample_algorithm* = enum_ma_resample_algorithm_570426173
else:
  static :
    hint("Declaration of " & "enum_ma_resample_algorithm" &
        " already exists, not redeclaring")
when not declared(ma_panner):
  type
    ma_panner* = ma_panner_570426109
else:
  static :
    hint("Declaration of " & "ma_panner" & " already exists, not redeclaring")
when not declared(ma_resource_manager_pipeline_stage_notification):
  type
    ma_resource_manager_pipeline_stage_notification* = ma_resource_manager_pipeline_stage_notification_570426713
else:
  static :
    hint("Declaration of " & "ma_resource_manager_pipeline_stage_notification" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_config_sndio):
  type
    struct_ma_device_config_sndio* = struct_ma_device_config_sndio_570426415
else:
  static :
    hint("Declaration of " & "struct_ma_device_config_sndio" &
        " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_data_source_config):
  type
    struct_ma_resource_manager_data_source_config* = struct_ma_resource_manager_data_source_config_570426723
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_data_source_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_linear_resampler_config):
  type
    struct_ma_linear_resampler_config* = struct_ma_linear_resampler_config_570426155
else:
  static :
    hint("Declaration of " & "struct_ma_linear_resampler_config" &
        " already exists, not redeclaring")
when not declared(ma_rb):
  type
    ma_rb* = ma_rb_570426255
else:
  static :
    hint("Declaration of " & "ma_rb" & " already exists, not redeclaring")
when not declared(ma_hpf_config):
  type
    ma_hpf_config* = ma_hpf_config_570426021
else:
  static :
    hint("Declaration of " & "ma_hpf_config" &
        " already exists, not redeclaring")
when not declared(ma_peak_node_config):
  type
    ma_peak_node_config* = ma_peak_node_config_570426839
else:
  static :
    hint("Declaration of " & "ma_peak_node_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_config_aaudio):
  type
    struct_ma_device_config_aaudio* = struct_ma_device_config_aaudio_570426459
else:
  static :
    hint("Declaration of " & "struct_ma_device_config_aaudio" &
        " already exists, not redeclaring")
when not declared(ma_log_level):
  type
    ma_log_level* = ma_log_level_570425868
else:
  static :
    hint("Declaration of " & "ma_log_level" & " already exists, not redeclaring")
when not declared(enum_ma_resource_manager_data_source_flags):
  type
    enum_ma_resource_manager_data_source_flags* = enum_ma_resource_manager_data_source_flags_570426707
else:
  static :
    hint("Declaration of " & "enum_ma_resource_manager_data_source_flags" &
        " already exists, not redeclaring")
when not declared(ma_data_source_vtable):
  type
    ma_data_source_vtable* = ma_data_source_vtable_570426213
else:
  static :
    hint("Declaration of " & "ma_data_source_vtable" &
        " already exists, not redeclaring")
when not declared(enum_ma_sound_flags):
  type
    enum_ma_sound_flags* = enum_ma_sound_flags_570426877
else:
  static :
    hint("Declaration of " & "enum_ma_sound_flags" &
        " already exists, not redeclaring")
when not declared(struct_ma_bpf):
  type
    struct_ma_bpf* = struct_ma_bpf_570426039
else:
  static :
    hint("Declaration of " & "struct_ma_bpf" &
        " already exists, not redeclaring")
when not declared(ma_aaudio_performance_mode):
  type
    ma_aaudio_performance_mode* = ma_aaudio_performance_mode_570426453
else:
  static :
    hint("Declaration of " & "ma_aaudio_performance_mode" &
        " already exists, not redeclaring")
when not declared(struct_ma_pulsewave_config):
  type
    struct_ma_pulsewave_config* = struct_ma_pulsewave_config_570426667
else:
  static :
    hint("Declaration of " & "struct_ma_pulsewave_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_aaudio_content_type):
  type
    enum_ma_aaudio_content_type* = enum_ma_aaudio_content_type_570426439
else:
  static :
    hint("Declaration of " & "enum_ma_aaudio_content_type" &
        " already exists, not redeclaring")
when not declared(ma_peak_config):
  type
    ma_peak_config* = ma_peak_config_570426057
else:
  static :
    hint("Declaration of " & "ma_peak_config" &
        " already exists, not redeclaring")
when not declared(ma_noise_config):
  type
    ma_noise_config* = ma_noise_config_570426681
else:
  static :
    hint("Declaration of " & "ma_noise_config" &
        " already exists, not redeclaring")
when not declared(union_pthread_mutex_t):
  type
    union_pthread_mutex_t* = union_pthread_mutex_t_570426915
else:
  static :
    hint("Declaration of " & "union_pthread_mutex_t" &
        " already exists, not redeclaring")
when not declared(struct_pthread_internal_list):
  type
    struct_pthread_internal_list* = struct_pthread_internal_list_570426927
else:
  static :
    hint("Declaration of " & "struct_pthread_internal_list" &
        " already exists, not redeclaring")
when not declared(struct_ma_job_queue):
  type
    struct_ma_job_queue* = struct_ma_job_queue_570426315
else:
  static :
    hint("Declaration of " & "struct_ma_job_queue" &
        " already exists, not redeclaring")
when not declared(ma_data_source_node_config):
  type
    ma_data_source_node_config* = ma_data_source_node_config_570426783
else:
  static :
    hint("Declaration of " & "ma_data_source_node_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_device_op_type):
  type
    enum_ma_device_op_type* = enum_ma_device_op_type_570426527
else:
  static :
    hint("Declaration of " & "enum_ma_device_op_type" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_flags):
  type
    ma_resource_manager_data_source_flags* = ma_resource_manager_data_source_flags_570426709
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_flags" &
        " already exists, not redeclaring")
when not declared(ma_sound):
  type
    ma_sound* = ma_sound_570426873
else:
  static :
    hint("Declaration of " & "ma_sound" & " already exists, not redeclaring")
when not declared(struct_ma_notch_node_config):
  type
    struct_ma_notch_node_config* = struct_ma_notch_node_config_570426829
else:
  static :
    hint("Declaration of " & "struct_ma_notch_node_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_result):
  type
    enum_ma_result* = enum_ma_result_570425876
else:
  static :
    hint("Declaration of " & "enum_ma_result" &
        " already exists, not redeclaring")
when not declared(enum_ma_share_mode):
  type
    enum_ma_share_mode* = enum_ma_share_mode_570426559
else:
  static :
    hint("Declaration of " & "enum_ma_share_mode" &
        " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_data_buffer):
  type
    struct_ma_resource_manager_data_buffer* = struct_ma_resource_manager_data_buffer_570426697
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_data_buffer" &
        " already exists, not redeclaring")
when not declared(ma_gainer_config):
  type
    ma_gainer_config* = ma_gainer_config_570426093
else:
  static :
    hint("Declaration of " & "ma_gainer_config" &
        " already exists, not redeclaring")
when not declared(ma_notch_config):
  type
    ma_notch_config* = ma_notch_config_570426047
else:
  static :
    hint("Declaration of " & "ma_notch_config" &
        " already exists, not redeclaring")
when not declared(ma_lpf_node):
  type
    ma_lpf_node* = ma_lpf_node_570426811
else:
  static :
    hint("Declaration of " & "ma_lpf_node" & " already exists, not redeclaring")
when not declared(ma_aaudio_input_preset):
  type
    ma_aaudio_input_preset* = ma_aaudio_input_preset_570426445
else:
  static :
    hint("Declaration of " & "ma_aaudio_input_preset" &
        " already exists, not redeclaring")
when not declared(ma_device_op_type):
  type
    ma_device_op_type* = ma_device_op_type_570426529
else:
  static :
    hint("Declaration of " & "ma_device_op_type" &
        " already exists, not redeclaring")
when not declared(ma_enum_devices_callback_proc):
  type
    ma_enum_devices_callback_proc* = ma_enum_devices_callback_proc_570426579
else:
  static :
    hint("Declaration of " & "ma_enum_devices_callback_proc" &
        " already exists, not redeclaring")
when not declared(ma_context_config_dsound):
  type
    ma_context_config_dsound* = ma_context_config_dsound_570426357
else:
  static :
    hint("Declaration of " & "ma_context_config_dsound" &
        " already exists, not redeclaring")
when not declared(struct_ma_lpf1):
  type
    struct_ma_lpf1* = struct_ma_lpf1_570425989
else:
  static :
    hint("Declaration of " & "struct_ma_lpf1" &
        " already exists, not redeclaring")
when not declared(enum_ma_channel_position):
  type
    enum_ma_channel_position* = enum_ma_channel_position_570425872
else:
  static :
    hint("Declaration of " & "enum_ma_channel_position" &
        " already exists, not redeclaring")
when not declared(ma_context_config_oss):
  type
    ma_context_config_oss* = ma_context_config_oss_570426429
else:
  static :
    hint("Declaration of " & "ma_context_config_oss" &
        " already exists, not redeclaring")
when not declared(ma_opensl_recording_preset):
  type
    ma_opensl_recording_preset* = ma_opensl_recording_preset_570426469
else:
  static :
    hint("Declaration of " & "ma_opensl_recording_preset" &
        " already exists, not redeclaring")
when not declared(ma_device_config_pulseaudio):
  type
    ma_device_config_pulseaudio* = ma_device_config_pulseaudio_570426393
else:
  static :
    hint("Declaration of " & "ma_device_config_pulseaudio" &
        " already exists, not redeclaring")
when not declared(ma_stack):
  type
    ma_stack* = ma_stack_570426741
else:
  static :
    hint("Declaration of " & "ma_stack" & " already exists, not redeclaring")
when not declared(struct_ma_device_config_oss):
  type
    struct_ma_device_config_oss* = struct_ma_device_config_oss_570426431
else:
  static :
    hint("Declaration of " & "struct_ma_device_config_oss" &
        " already exists, not redeclaring")
when not declared(ma_resampling_backend_vtable):
  type
    ma_resampling_backend_vtable* = ma_resampling_backend_vtable_570426171
else:
  static :
    hint("Declaration of " & "ma_resampling_backend_vtable" &
        " already exists, not redeclaring")
when not declared(struct_ma_atomic_device_status):
  type
    struct_ma_atomic_device_status* = struct_ma_atomic_device_status_570426511
else:
  static :
    hint("Declaration of " & "struct_ma_atomic_device_status" &
        " already exists, not redeclaring")
when not declared(struct_ma_spatializer):
  type
    struct_ma_spatializer* = struct_ma_spatializer_570426151
else:
  static :
    hint("Declaration of " & "struct_ma_spatializer" &
        " already exists, not redeclaring")
when not declared(ma_float):
  type
    ma_float* = ma_float_570425842
else:
  static :
    hint("Declaration of " & "ma_float" & " already exists, not redeclaring")
when not declared(ma_mutex):
  type
    ma_mutex* = ma_mutex_570425951
else:
  static :
    hint("Declaration of " & "ma_mutex" & " already exists, not redeclaring")
when not declared(ma_log_callback_proc):
  type
    ma_log_callback_proc* = ma_log_callback_proc_570425961
else:
  static :
    hint("Declaration of " & "ma_log_callback_proc" &
        " already exists, not redeclaring")
when not declared(ma_pthread_t):
  type
    ma_pthread_t* = ma_pthread_t_570425852
else:
  static :
    hint("Declaration of " & "ma_pthread_t" & " already exists, not redeclaring")
when not declared(pthread_cond_t):
  type
    pthread_cond_t* = pthread_cond_t_570425862
else:
  static :
    hint("Declaration of " & "pthread_cond_t" &
        " already exists, not redeclaring")
when not declared(ma_handedness):
  type
    ma_handedness* = ma_handedness_570426137
else:
  static :
    hint("Declaration of " & "ma_handedness" &
        " already exists, not redeclaring")
when not declared(ma_channel_conversion_path):
  type
    ma_channel_conversion_path* = ma_channel_conversion_path_570426183
else:
  static :
    hint("Declaration of " & "ma_channel_conversion_path" &
        " already exists, not redeclaring")
when not declared(ma_data_source_config):
  type
    ma_data_source_config* = ma_data_source_config_570426219
else:
  static :
    hint("Declaration of " & "ma_data_source_config" &
        " already exists, not redeclaring")
when not declared(ma_standard_sample_rate):
  type
    ma_standard_sample_rate* = ma_standard_sample_rate_570425898
else:
  static :
    hint("Declaration of " & "ma_standard_sample_rate" &
        " already exists, not redeclaring")
when not declared(struct_ma_linear_resampler):
  type
    struct_ma_linear_resampler* = struct_ma_linear_resampler_570426159
else:
  static :
    hint("Declaration of " & "struct_ma_linear_resampler" &
        " already exists, not redeclaring")
when not declared(struct_ma_rb):
  type
    struct_ma_rb* = struct_ma_rb_570426253
else:
  static :
    hint("Declaration of " & "struct_ma_rb" & " already exists, not redeclaring")
when not declared(struct_ma_encoder_config):
  type
    struct_ma_encoder_config* = struct_ma_encoder_config_570426651
else:
  static :
    hint("Declaration of " & "struct_ma_encoder_config" &
        " already exists, not redeclaring")
when not declared(ma_bpf):
  type
    ma_bpf* = ma_bpf_570426041
else:
  static :
    hint("Declaration of " & "ma_bpf" & " already exists, not redeclaring")
when not declared(struct_ma_sound):
  type
    struct_ma_sound* = struct_ma_sound_570426875
else:
  static :
    hint("Declaration of " & "struct_ma_sound" &
        " already exists, not redeclaring")
when not declared(enum_ma_open_mode_flags):
  type
    enum_ma_open_mode_flags* = enum_ma_open_mode_flags_570426585
else:
  static :
    hint("Declaration of " & "enum_ma_open_mode_flags" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_config):
  type
    ma_spatializer_config* = ma_spatializer_config_570426149
else:
  static :
    hint("Declaration of " & "ma_spatializer_config" &
        " already exists, not redeclaring")
when not declared(ma_double):
  type
    ma_double* = ma_double_570425844
else:
  static :
    hint("Declaration of " & "ma_double" & " already exists, not redeclaring")
when not declared(enum_ma_aaudio_input_preset):
  type
    enum_ma_aaudio_input_preset* = enum_ma_aaudio_input_preset_570426443
else:
  static :
    hint("Declaration of " & "enum_ma_aaudio_input_preset" &
        " already exists, not redeclaring")
when not declared(ma_device_op_params):
  type
    ma_device_op_params* = ma_device_op_params_570426533
else:
  static :
    hint("Declaration of " & "ma_device_op_params" &
        " already exists, not redeclaring")
when not declared(struct_ma_splitter_node):
  type
    struct_ma_splitter_node* = struct_ma_splitter_node_570426793
else:
  static :
    hint("Declaration of " & "struct_ma_splitter_node" &
        " already exists, not redeclaring")
when not declared(ma_int8):
  type
    ma_int8* = ma_int8_570425820
else:
  static :
    hint("Declaration of " & "ma_int8" & " already exists, not redeclaring")
when not declared(ma_hpf1_config):
  type
    ma_hpf1_config* = ma_hpf1_config_570426007
else:
  static :
    hint("Declaration of " & "ma_hpf1_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_context_config_winmm):
  type
    struct_ma_context_config_winmm* = struct_ma_context_config_winmm_570426363
else:
  static :
    hint("Declaration of " & "struct_ma_context_config_winmm" &
        " already exists, not redeclaring")
when not declared(ma_atomic_bool32):
  type
    ma_atomic_bool32* = ma_atomic_bool32_570425941
else:
  static :
    hint("Declaration of " & "ma_atomic_bool32" &
        " already exists, not redeclaring")
when not declared(ma_context_config_sndio):
  type
    ma_context_config_sndio* = ma_context_config_sndio_570426413
else:
  static :
    hint("Declaration of " & "ma_context_config_sndio" &
        " already exists, not redeclaring")
when not declared(struct_ma_peak_node_config):
  type
    struct_ma_peak_node_config* = struct_ma_peak_node_config_570426837
else:
  static :
    hint("Declaration of " & "struct_ma_peak_node_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_node_state):
  type
    enum_ma_node_state* = enum_ma_node_state_570426753
else:
  static :
    hint("Declaration of " & "enum_ma_node_state" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_info):
  type
    struct_ma_device_info* = struct_ma_device_info_570426571
else:
  static :
    hint("Declaration of " & "struct_ma_device_info" &
        " already exists, not redeclaring")
when not declared(ma_file_info):
  type
    ma_file_info* = ma_file_info_570426595
else:
  static :
    hint("Declaration of " & "ma_file_info" & " already exists, not redeclaring")
when not declared(struct_ma_job):
  type
    struct_ma_job* = struct_ma_job_570426297
else:
  static :
    hint("Declaration of " & "struct_ma_job" &
        " already exists, not redeclaring")
when not declared(ma_bpf2_config):
  type
    ma_bpf2_config* = ma_bpf2_config_570426029
else:
  static :
    hint("Declaration of " & "ma_bpf2_config" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_next_proc):
  type
    ma_data_source_get_next_proc* = ma_data_source_get_next_proc_570426215
else:
  static :
    hint("Declaration of " & "ma_data_source_get_next_proc" &
        " already exists, not redeclaring")
when not declared(struct_ma_splitter_node_config):
  type
    struct_ma_splitter_node_config* = struct_ma_splitter_node_config_570426789
else:
  static :
    hint("Declaration of " & "struct_ma_splitter_node_config" &
        " already exists, not redeclaring")
when not declared(ma_uintptr):
  type
    ma_uintptr* = ma_uintptr_570425836
else:
  static :
    hint("Declaration of " & "ma_uintptr" & " already exists, not redeclaring")
when not declared(ma_seek_proc):
  type
    ma_seek_proc* = ma_seek_proc_570426607
else:
  static :
    hint("Declaration of " & "ma_seek_proc" & " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data):
  type
    ma_paged_audio_buffer_data* = ma_paged_audio_buffer_data_570426243
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data" &
        " already exists, not redeclaring")
when not declared(struct_ma_context_config_sndio):
  type
    struct_ma_context_config_sndio* = struct_ma_context_config_sndio_570426411
else:
  static :
    hint("Declaration of " & "struct_ma_context_config_sndio" &
        " already exists, not redeclaring")
when not declared(struct_ma_noise):
  type
    struct_ma_noise* = struct_ma_noise_570426683
else:
  static :
    hint("Declaration of " & "struct_ma_noise" &
        " already exists, not redeclaring")
when not declared(struct_ma_notch2):
  type
    struct_ma_notch2* = struct_ma_notch2_570426049
else:
  static :
    hint("Declaration of " & "struct_ma_notch2" &
        " already exists, not redeclaring")
when not declared(enum_ma_opensl_stream_type):
  type
    enum_ma_opensl_stream_type* = enum_ma_opensl_stream_type_570426463
else:
  static :
    hint("Declaration of " & "enum_ma_opensl_stream_type" &
        " already exists, not redeclaring")
when not declared(union_ma_biquad_coefficient):
  type
    union_ma_biquad_coefficient* = union_ma_biquad_coefficient_570425971
else:
  static :
    hint("Declaration of " & "union_ma_biquad_coefficient" &
        " already exists, not redeclaring")
when not declared(ma_sound_notifications):
  type
    ma_sound_notifications* = ma_sound_notifications_570426895
else:
  static :
    hint("Declaration of " & "ma_sound_notifications" &
        " already exists, not redeclaring")
when not declared(ma_data_source_node):
  type
    ma_data_source_node* = ma_data_source_node_570426787
else:
  static :
    hint("Declaration of " & "ma_data_source_node" &
        " already exists, not redeclaring")
when not declared(ma_notch_node_config):
  type
    ma_notch_node_config* = ma_notch_node_config_570426831
else:
  static :
    hint("Declaration of " & "ma_notch_node_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_spatializer_config):
  type
    struct_ma_spatializer_config* = struct_ma_spatializer_config_570426147
else:
  static :
    hint("Declaration of " & "struct_ma_spatializer_config" &
        " already exists, not redeclaring")
when not declared(ma_context_config_webaudio):
  type
    ma_context_config_webaudio* = ma_context_config_webaudio_570426485
else:
  static :
    hint("Declaration of " & "ma_context_config_webaudio" &
        " already exists, not redeclaring")
when not declared(struct_ma_channel_converter_config):
  type
    struct_ma_channel_converter_config* = struct_ma_channel_converter_config_570426189
else:
  static :
    hint("Declaration of " & "struct_ma_channel_converter_config" &
        " already exists, not redeclaring")
when not declared(ma_sound_config):
  type
    ma_sound_config* = ma_sound_config_570426899
else:
  static :
    hint("Declaration of " & "ma_sound_config" &
        " already exists, not redeclaring")
when not declared(ma_wasapi_usage):
  type
    ma_wasapi_usage* = ma_wasapi_usage_570426345
else:
  static :
    hint("Declaration of " & "ma_wasapi_usage" &
        " already exists, not redeclaring")
when not declared(ma_biquad):
  type
    ma_biquad* = ma_biquad_570425981
else:
  static :
    hint("Declaration of " & "ma_biquad" & " already exists, not redeclaring")
when not declared(struct_ma_hpf_node_config):
  type
    struct_ma_hpf_node_config* = struct_ma_hpf_node_config_570426813
else:
  static :
    hint("Declaration of " & "struct_ma_hpf_node_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_peak_node):
  type
    struct_ma_peak_node* = struct_ma_peak_node_570426841
else:
  static :
    hint("Declaration of " & "struct_ma_peak_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_data_buffer_node):
  type
    struct_ma_resource_manager_data_buffer_node* = struct_ma_resource_manager_data_buffer_node_570426693
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_data_buffer_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_node_input_bus):
  type
    struct_ma_node_input_bus* = struct_ma_node_input_bus_570426771
else:
  static :
    hint("Declaration of " & "struct_ma_node_input_bus" &
        " already exists, not redeclaring")
when not declared(ma_resampler):
  type
    ma_resampler* = ma_resampler_570426179
else:
  static :
    hint("Declaration of " & "ma_resampler" & " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_config):
  type
    ma_paged_audio_buffer_config* = ma_paged_audio_buffer_config_570426247
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_config" &
        " already exists, not redeclaring")
when not declared(ma_device_config_aaudio):
  type
    ma_device_config_aaudio* = ma_device_config_aaudio_570426461
else:
  static :
    hint("Declaration of " & "ma_device_config_aaudio" &
        " already exists, not redeclaring")
when not declared(ma_data_source_base):
  type
    ma_data_source_base* = ma_data_source_base_570426223
else:
  static :
    hint("Declaration of " & "ma_data_source_base" &
        " already exists, not redeclaring")
when not declared(ma_job_type):
  type
    ma_job_type* = ma_job_type_570426303
else:
  static :
    hint("Declaration of " & "ma_job_type" & " already exists, not redeclaring")
when not declared(ma_slot_allocator_group):
  type
    ma_slot_allocator_group* = ma_slot_allocator_group_570426289
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_group" &
        " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_config):
  type
    struct_ma_resource_manager_config* = struct_ma_resource_manager_config_570426735
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_node_graph):
  type
    struct_ma_node_graph* = struct_ma_node_graph_570426745
else:
  static :
    hint("Declaration of " & "struct_ma_node_graph" &
        " already exists, not redeclaring")
when not declared(enum_ma_job_queue_flags):
  type
    enum_ma_job_queue_flags* = enum_ma_job_queue_flags_570426307
else:
  static :
    hint("Declaration of " & "enum_ma_job_queue_flags" &
        " already exists, not redeclaring")
when not declared(struct_ma_peak2):
  type
    struct_ma_peak2* = struct_ma_peak2_570426059
else:
  static :
    hint("Declaration of " & "struct_ma_peak2" &
        " already exists, not redeclaring")
when not declared(ma_share_mode):
  type
    ma_share_mode* = ma_share_mode_570426561
else:
  static :
    hint("Declaration of " & "ma_share_mode" &
        " already exists, not redeclaring")
when not declared(ma_ios_session_category):
  type
    ma_ios_session_category* = ma_ios_session_category_570426373
else:
  static :
    hint("Declaration of " & "ma_ios_session_category" &
        " already exists, not redeclaring")
when not declared(ma_loshelf_config):
  type
    ma_loshelf_config* = ma_loshelf_config_570426067
else:
  static :
    hint("Declaration of " & "ma_loshelf_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_duplex_rb):
  type
    struct_ma_duplex_rb* = struct_ma_duplex_rb_570426261
else:
  static :
    hint("Declaration of " & "struct_ma_duplex_rb" &
        " already exists, not redeclaring")
when not declared(struct_ma_semaphore):
  type
    struct_ma_semaphore* = struct_ma_semaphore_570425957
else:
  static :
    hint("Declaration of " & "struct_ma_semaphore" &
        " already exists, not redeclaring")
when not declared(ma_node_graph):
  type
    ma_node_graph* = ma_node_graph_570426743
else:
  static :
    hint("Declaration of " & "ma_node_graph" &
        " already exists, not redeclaring")
when not declared(struct_ma_bpf_node_config):
  type
    struct_ma_bpf_node_config* = struct_ma_bpf_node_config_570426821
else:
  static :
    hint("Declaration of " & "struct_ma_bpf_node_config" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_flags):
  type
    ma_job_queue_flags* = ma_job_queue_flags_570426309
else:
  static :
    hint("Declaration of " & "ma_job_queue_flags" &
        " already exists, not redeclaring")
when not declared(struct_ma_resampling_backend_vtable):
  type
    struct_ma_resampling_backend_vtable* = struct_ma_resampling_backend_vtable_570426169
else:
  static :
    hint("Declaration of " & "struct_ma_resampling_backend_vtable" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_supply):
  type
    ma_resource_manager_data_supply* = ma_resource_manager_data_supply_570426733
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_supply" &
        " already exists, not redeclaring")
when not declared(struct_ma_gainer_config):
  type
    struct_ma_gainer_config* = struct_ma_gainer_config_570426091
else:
  static :
    hint("Declaration of " & "struct_ma_gainer_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_context_config_null):
  type
    struct_ma_context_config_null* = struct_ma_context_config_null_570426491
else:
  static :
    hint("Declaration of " & "struct_ma_context_config_null" &
        " already exists, not redeclaring")
when not declared(ma_biquad_coefficient):
  type
    ma_biquad_coefficient* = ma_biquad_coefficient_570425973
else:
  static :
    hint("Declaration of " & "ma_biquad_coefficient" &
        " already exists, not redeclaring")
when not declared(enum_ma_device_notification_type):
  type
    enum_ma_device_notification_type* = enum_ma_device_notification_type_570426543
else:
  static :
    hint("Declaration of " & "enum_ma_device_notification_type" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_callbacks):
  type
    ma_async_notification_callbacks* = ma_async_notification_callbacks_570426273
else:
  static :
    hint("Declaration of " & "ma_async_notification_callbacks" &
        " already exists, not redeclaring")
when not declared(ma_device):
  type
    ma_device* = ma_device_570426327
else:
  static :
    hint("Declaration of " & "ma_device" & " already exists, not redeclaring")
when not declared(ma_engine_node_type):
  type
    ma_engine_node_type* = ma_engine_node_type_570426883
else:
  static :
    hint("Declaration of " & "ma_engine_node_type" &
        " already exists, not redeclaring")
when not declared(struct_ma_context_config_coreaudio):
  type
    struct_ma_context_config_coreaudio* = struct_ma_context_config_coreaudio_570426379
else:
  static :
    hint("Declaration of " & "struct_ma_context_config_coreaudio" &
        " already exists, not redeclaring")
when not declared(enum_ma_wasapi_usage):
  type
    enum_ma_wasapi_usage* = enum_ma_wasapi_usage_570426343
else:
  static :
    hint("Declaration of " & "enum_ma_wasapi_usage" &
        " already exists, not redeclaring")
when not declared(struct_ma_bpf2_config):
  type
    struct_ma_bpf2_config* = struct_ma_bpf2_config_570426027
else:
  static :
    hint("Declaration of " & "struct_ma_bpf2_config" &
        " already exists, not redeclaring")
when not declared(ma_device_config_alsa):
  type
    ma_device_config_alsa* = ma_device_config_alsa_570426401
else:
  static :
    hint("Declaration of " & "ma_device_config_alsa" &
        " already exists, not redeclaring")
when not declared(struct_ma_decoding_backend_config):
  type
    struct_ma_decoding_backend_config* = struct_ma_decoding_backend_config_570426619
else:
  static :
    hint("Declaration of " & "struct_ma_decoding_backend_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_ios_session_category):
  type
    enum_ma_ios_session_category* = enum_ma_ios_session_category_570426371
else:
  static :
    hint("Declaration of " & "enum_ma_ios_session_category" &
        " already exists, not redeclaring")
when not declared(struct_ma_atomic_uint64):
  type
    struct_ma_atomic_uint64* = struct_ma_atomic_uint64_570425931
else:
  static :
    hint("Declaration of " & "struct_ma_atomic_uint64" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_config_jack):
  type
    struct_ma_device_config_jack* = struct_ma_device_config_jack_570426407
else:
  static :
    hint("Declaration of " & "struct_ma_device_config_jack" &
        " already exists, not redeclaring")
when not declared(struct_ma_audio_buffer):
  type
    struct_ma_audio_buffer* = struct_ma_audio_buffer_570426233
else:
  static :
    hint("Declaration of " & "struct_ma_audio_buffer" &
        " already exists, not redeclaring")
when not declared(struct_ma_vfs_callbacks):
  type
    struct_ma_vfs_callbacks* = struct_ma_vfs_callbacks_570426597
else:
  static :
    hint("Declaration of " & "struct_ma_vfs_callbacks" &
        " already exists, not redeclaring")
when not declared(struct_ma_paged_audio_buffer_data):
  type
    struct_ma_paged_audio_buffer_data* = struct_ma_paged_audio_buffer_data_570426241
else:
  static :
    hint("Declaration of " & "struct_ma_paged_audio_buffer_data" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_backend_config):
  type
    struct_ma_device_backend_config* = struct_ma_device_backend_config_570426499
else:
  static :
    hint("Declaration of " & "struct_ma_device_backend_config" &
        " already exists, not redeclaring")
when not declared(ma_handle):
  type
    ma_handle* = ma_handle_570425846
else:
  static :
    hint("Declaration of " & "ma_handle" & " already exists, not redeclaring")
when not declared(enum_ma_resource_manager_flags):
  type
    enum_ma_resource_manager_flags* = enum_ma_resource_manager_flags_570426719
else:
  static :
    hint("Declaration of " & "enum_ma_resource_manager_flags" &
        " already exists, not redeclaring")
when not declared(ma_device_config_winmm):
  type
    ma_device_config_winmm* = ma_device_config_winmm_570426369
else:
  static :
    hint("Declaration of " & "ma_device_config_winmm" &
        " already exists, not redeclaring")
when not declared(struct_ma_waveform_config):
  type
    struct_ma_waveform_config* = struct_ma_waveform_config_570426659
else:
  static :
    hint("Declaration of " & "struct_ma_waveform_config" &
        " already exists, not redeclaring")
when not declared(ma_format):
  type
    ma_format* = ma_format_570425894
else:
  static :
    hint("Declaration of " & "ma_format" & " already exists, not redeclaring")
when not declared(ma_decoding_backend_vtable):
  type
    ma_decoding_backend_vtable* = ma_decoding_backend_vtable_570426625
else:
  static :
    hint("Declaration of " & "ma_decoding_backend_vtable" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream):
  type
    ma_resource_manager_data_stream* = ma_resource_manager_data_stream_570426699
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream" &
        " already exists, not redeclaring")
when not declared(struct_ma_context_config_dsound):
  type
    struct_ma_context_config_dsound* = struct_ma_context_config_dsound_570426355
else:
  static :
    hint("Declaration of " & "struct_ma_context_config_dsound" &
        " already exists, not redeclaring")
when not declared(ma_channel_mix_mode):
  type
    ma_channel_mix_mode* = ma_channel_mix_mode_570425909
else:
  static :
    hint("Declaration of " & "ma_channel_mix_mode" &
        " already exists, not redeclaring")
when not declared(struct_ma_peak2_config):
  type
    struct_ma_peak2_config* = struct_ma_peak2_config_570426053
else:
  static :
    hint("Declaration of " & "struct_ma_peak2_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_panner):
  type
    struct_ma_panner* = struct_ma_panner_570426107
else:
  static :
    hint("Declaration of " & "struct_ma_panner" &
        " already exists, not redeclaring")
when not declared(enum_ma_data_converter_execution_path):
  type
    enum_ma_data_converter_execution_path* = enum_ma_data_converter_execution_path_570426201
else:
  static :
    hint("Declaration of " & "enum_ma_data_converter_execution_path" &
        " already exists, not redeclaring")
when not declared(struct_ma_context_config_webaudio):
  type
    struct_ma_context_config_webaudio* = struct_ma_context_config_webaudio_570426483
else:
  static :
    hint("Declaration of " & "struct_ma_context_config_webaudio" &
        " already exists, not redeclaring")
when not declared(struct_ma_loshelf_node_config):
  type
    struct_ma_loshelf_node_config* = struct_ma_loshelf_node_config_570426845
else:
  static :
    hint("Declaration of " & "struct_ma_loshelf_node_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_stream_layout):
  type
    enum_ma_stream_layout* = enum_ma_stream_layout_570425884
else:
  static :
    hint("Declaration of " & "enum_ma_stream_layout" &
        " already exists, not redeclaring")
when not declared(ma_device_config_oss):
  type
    ma_device_config_oss* = ma_device_config_oss_570426433
else:
  static :
    hint("Declaration of " & "ma_device_config_oss" &
        " already exists, not redeclaring")
when not declared(ma_encoder_init_proc):
  type
    ma_encoder_init_proc* = ma_encoder_init_proc_570426645
else:
  static :
    hint("Declaration of " & "ma_encoder_init_proc" &
        " already exists, not redeclaring")
when not declared(enum_ma_waveform_type):
  type
    enum_ma_waveform_type* = enum_ma_waveform_type_570426655
else:
  static :
    hint("Declaration of " & "enum_ma_waveform_type" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_config_audio4):
  type
    struct_ma_device_config_audio4* = struct_ma_device_config_audio4_570426423
else:
  static :
    hint("Declaration of " & "struct_ma_device_config_audio4" &
        " already exists, not redeclaring")
when not declared(ma_int64):
  type
    ma_int64* = ma_int64_570425832
else:
  static :
    hint("Declaration of " & "ma_int64" & " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_data_source):
  type
    struct_ma_resource_manager_data_source* = struct_ma_resource_manager_data_source_570426705
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_data_source" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_supply_type):
  type
    ma_resource_manager_data_supply_type* = ma_resource_manager_data_supply_type_570426729
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_supply_type" &
        " already exists, not redeclaring")
when not declared(ma_node_input_bus):
  type
    ma_node_input_bus* = ma_node_input_bus_570426769
else:
  static :
    hint("Declaration of " & "ma_node_input_bus" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_poll):
  type
    ma_async_notification_poll* = ma_async_notification_poll_570426277
else:
  static :
    hint("Declaration of " & "ma_async_notification_poll" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_config):
  type
    struct_ma_device_config* = struct_ma_device_config_570426333
else:
  static :
    hint("Declaration of " & "struct_ma_device_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_lpf_node):
  type
    struct_ma_lpf_node* = struct_ma_lpf_node_570426809
else:
  static :
    hint("Declaration of " & "struct_ma_lpf_node" &
        " already exists, not redeclaring")
when not declared(enum_ma_handedness):
  type
    enum_ma_handedness* = enum_ma_handedness_570426135
else:
  static :
    hint("Declaration of " & "enum_ma_handedness" &
        " already exists, not redeclaring")
when not declared(struct_ma_bpf_node):
  type
    struct_ma_bpf_node* = struct_ma_bpf_node_570426825
else:
  static :
    hint("Declaration of " & "struct_ma_bpf_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_channel_converter):
  type
    struct_ma_channel_converter* = struct_ma_channel_converter_570426193
else:
  static :
    hint("Declaration of " & "struct_ma_channel_converter" &
        " already exists, not redeclaring")
when not declared(ma_dither_mode):
  type
    ma_dither_mode* = ma_dither_mode_570425890
else:
  static :
    hint("Declaration of " & "ma_dither_mode" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_execution_path):
  type
    ma_data_converter_execution_path* = ma_data_converter_execution_path_570426203
else:
  static :
    hint("Declaration of " & "ma_data_converter_execution_path" &
        " already exists, not redeclaring")
when not declared(struct_ma_device):
  type
    struct_ma_device* = struct_ma_device_570426329
else:
  static :
    hint("Declaration of " & "struct_ma_device" &
        " already exists, not redeclaring")
when not declared(ma_context_config_aaudio):
  type
    ma_context_config_aaudio* = ma_context_config_aaudio_570426457
else:
  static :
    hint("Declaration of " & "ma_context_config_aaudio" &
        " already exists, not redeclaring")
when not declared(ma_tell_proc):
  type
    ma_tell_proc* = ma_tell_proc_570426609
else:
  static :
    hint("Declaration of " & "ma_tell_proc" & " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_config):
  type
    ma_resource_manager_data_source_config* = ma_resource_manager_data_source_config_570426725
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_config" &
        " already exists, not redeclaring")
when not declared(ma_thread_priority):
  type
    ma_thread_priority* = ma_thread_priority_570425947
else:
  static :
    hint("Declaration of " & "ma_thread_priority" &
        " already exists, not redeclaring")
when not declared(struct_ma_data_source_base):
  type
    struct_ma_data_source_base* = struct_ma_data_source_base_570426221
else:
  static :
    hint("Declaration of " & "struct_ma_data_source_base" &
        " already exists, not redeclaring")
when not declared(struct_ma_paged_audio_buffer):
  type
    struct_ma_paged_audio_buffer* = struct_ma_paged_audio_buffer_570426249
else:
  static :
    hint("Declaration of " & "struct_ma_paged_audio_buffer" &
        " already exists, not redeclaring")
when not declared(struct_ma_context_config_jack):
  type
    struct_ma_context_config_jack* = struct_ma_context_config_jack_570426403
else:
  static :
    hint("Declaration of " & "struct_ma_context_config_jack" &
        " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_pipeline_stage_notification):
  type
    struct_ma_resource_manager_pipeline_stage_notification* = struct_ma_resource_manager_pipeline_stage_notification_570426711
else:
  static :
    hint("Declaration of " &
        "struct_ma_resource_manager_pipeline_stage_notification" &
        " already exists, not redeclaring")
when not declared(struct_ma_data_source_vtable):
  type
    struct_ma_data_source_vtable* = struct_ma_data_source_vtable_570426211
else:
  static :
    hint("Declaration of " & "struct_ma_data_source_vtable" &
        " already exists, not redeclaring")
when not declared(ma_positioning):
  type
    ma_positioning* = ma_positioning_570426133
else:
  static :
    hint("Declaration of " & "ma_positioning" &
        " already exists, not redeclaring")
when not declared(ma_log_callback):
  type
    ma_log_callback* = ma_log_callback_570425965
else:
  static :
    hint("Declaration of " & "ma_log_callback" &
        " already exists, not redeclaring")
when not declared(ma_context_config_null):
  type
    ma_context_config_null* = ma_context_config_null_570426493
else:
  static :
    hint("Declaration of " & "ma_context_config_null" &
        " already exists, not redeclaring")
when not declared(ma_device_id):
  type
    ma_device_id* = ma_device_id_570426569
else:
  static :
    hint("Declaration of " & "ma_device_id" & " already exists, not redeclaring")
when not declared(ma_node_state):
  type
    ma_node_state* = ma_node_state_570426755
else:
  static :
    hint("Declaration of " & "ma_node_state" &
        " already exists, not redeclaring")
when not declared(struct_ma_spatializer_listener_config):
  type
    struct_ma_spatializer_listener_config* = struct_ma_spatializer_listener_config_570426139
else:
  static :
    hint("Declaration of " & "struct_ma_spatializer_listener_config" &
        " already exists, not redeclaring")
when not declared(ma_delay):
  type
    ma_delay* = ma_delay_570426089
else:
  static :
    hint("Declaration of " & "ma_delay" & " already exists, not redeclaring")
when not declared(struct_ma_device_notification):
  type
    struct_ma_device_notification* = struct_ma_device_notification_570426547
else:
  static :
    hint("Declaration of " & "struct_ma_device_notification" &
        " already exists, not redeclaring")
when not declared(ma_encoding_format):
  type
    ma_encoding_format* = ma_encoding_format_570426613
else:
  static :
    hint("Declaration of " & "ma_encoding_format" &
        " already exists, not redeclaring")
when not declared(ma_int32):
  type
    ma_int32* = ma_int32_570425828
else:
  static :
    hint("Declaration of " & "ma_int32" & " already exists, not redeclaring")
when not declared(struct_ma_engine_config):
  type
    struct_ma_engine_config* = struct_ma_engine_config_570426911
else:
  static :
    hint("Declaration of " & "struct_ma_engine_config" &
        " already exists, not redeclaring")
when not declared(ma_device_config_dsound):
  type
    ma_device_config_dsound* = ma_device_config_dsound_570426361
else:
  static :
    hint("Declaration of " & "ma_device_config_dsound" &
        " already exists, not redeclaring")
when not declared(ma_node_output_bus):
  type
    ma_node_output_bus* = ma_node_output_bus_570426765
else:
  static :
    hint("Declaration of " & "ma_node_output_bus" &
        " already exists, not redeclaring")
when not declared(enum_ma_thread_priority):
  type
    enum_ma_thread_priority* = enum_ma_thread_priority_570425945
else:
  static :
    hint("Declaration of " & "enum_ma_thread_priority" &
        " already exists, not redeclaring")
when not declared(ma_peak2_config):
  type
    ma_peak2_config* = ma_peak2_config_570426055
else:
  static :
    hint("Declaration of " & "ma_peak2_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_job_thread_config):
  type
    struct_ma_device_job_thread_config* = struct_ma_device_job_thread_config_570426515
else:
  static :
    hint("Declaration of " & "struct_ma_device_job_thread_config" &
        " already exists, not redeclaring")
when not declared(ma_decoder_tell_proc):
  type
    ma_decoder_tell_proc* = ma_decoder_tell_proc_570426631
else:
  static :
    hint("Declaration of " & "ma_decoder_tell_proc" &
        " already exists, not redeclaring")
when not declared(enum_ma_engine_node_type):
  type
    enum_ma_engine_node_type* = enum_ma_engine_node_type_570426881
else:
  static :
    hint("Declaration of " & "enum_ma_engine_node_type" &
        " already exists, not redeclaring")
when not declared(struct_ma_atomic_bool32):
  type
    struct_ma_atomic_bool32* = struct_ma_atomic_bool32_570425939
else:
  static :
    hint("Declaration of " & "struct_ma_atomic_bool32" &
        " already exists, not redeclaring")
when not declared(ma_duplex_rb):
  type
    ma_duplex_rb* = ma_duplex_rb_570426263
else:
  static :
    hint("Declaration of " & "ma_duplex_rb" & " already exists, not redeclaring")
when not declared(ma_device_config_webaudio):
  type
    ma_device_config_webaudio* = ma_device_config_webaudio_570426489
else:
  static :
    hint("Declaration of " & "ma_device_config_webaudio" &
        " already exists, not redeclaring")
when not declared(ma_vfs_file):
  type
    ma_vfs_file* = ma_vfs_file_570426583
else:
  static :
    hint("Declaration of " & "ma_vfs_file" & " already exists, not redeclaring")
when not declared(ma_encoder_config):
  type
    ma_encoder_config* = ma_encoder_config_570426653
else:
  static :
    hint("Declaration of " & "ma_encoder_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_node_output_bus):
  type
    struct_ma_node_output_bus* = struct_ma_node_output_bus_570426767
else:
  static :
    hint("Declaration of " & "struct_ma_node_output_bus" &
        " already exists, not redeclaring")
when not declared(ma_lpf):
  type
    ma_lpf* = ma_lpf_570426003
else:
  static :
    hint("Declaration of " & "ma_lpf" & " already exists, not redeclaring")
when not declared(ma_hpf_node):
  type
    ma_hpf_node* = ma_hpf_node_570426819
else:
  static :
    hint("Declaration of " & "ma_hpf_node" & " already exists, not redeclaring")
when not declared(ma_atomic_device_status):
  type
    ma_atomic_device_status* = ma_atomic_device_status_570426513
else:
  static :
    hint("Declaration of " & "ma_atomic_device_status" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_config):
  type
    ma_pulsewave_config* = ma_pulsewave_config_570426669
else:
  static :
    hint("Declaration of " & "ma_pulsewave_config" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_config):
  type
    ma_job_queue_config* = ma_job_queue_config_570426313
else:
  static :
    hint("Declaration of " & "ma_job_queue_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_decoder_config):
  type
    struct_ma_decoder_config* = struct_ma_decoder_config_570426633
else:
  static :
    hint("Declaration of " & "struct_ma_decoder_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_hpf2):
  type
    struct_ma_hpf2* = struct_ma_hpf2_570426015
else:
  static :
    hint("Declaration of " & "struct_ma_hpf2" &
        " already exists, not redeclaring")
when not declared(struct_ma_pcm_rb):
  type
    struct_ma_pcm_rb* = struct_ma_pcm_rb_570426257
else:
  static :
    hint("Declaration of " & "struct_ma_pcm_rb" &
        " already exists, not redeclaring")
when not declared(struct_ma_decoder):
  type
    struct_ma_decoder* = struct_ma_decoder_570426617
else:
  static :
    hint("Declaration of " & "struct_ma_decoder" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager):
  type
    ma_resource_manager* = ma_resource_manager_570426687
else:
  static :
    hint("Declaration of " & "ma_resource_manager" &
        " already exists, not redeclaring")
when not declared(ma_spatializer):
  type
    ma_spatializer* = ma_spatializer_570426153
else:
  static :
    hint("Declaration of " & "ma_spatializer" &
        " already exists, not redeclaring")
when not declared(ma_device_config_wasapi):
  type
    ma_device_config_wasapi* = ma_device_config_wasapi_570426353
else:
  static :
    hint("Declaration of " & "ma_device_config_wasapi" &
        " already exists, not redeclaring")
when not declared(ma_channel):
  type
    ma_channel* = ma_channel_570425870
else:
  static :
    hint("Declaration of " & "ma_channel" & " already exists, not redeclaring")
when not declared(struct_ma_resampler):
  type
    struct_ma_resampler* = struct_ma_resampler_570426177
else:
  static :
    hint("Declaration of " & "struct_ma_resampler" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_backend_info):
  type
    struct_ma_device_backend_info* = struct_ma_device_backend_info_570426503
else:
  static :
    hint("Declaration of " & "struct_ma_device_backend_info" &
        " already exists, not redeclaring")
when not declared(struct_ma_audio_buffer_ref):
  type
    struct_ma_audio_buffer_ref* = struct_ma_audio_buffer_ref_570426225
else:
  static :
    hint("Declaration of " & "struct_ma_audio_buffer_ref" &
        " already exists, not redeclaring")
when not declared(enum_ma_device_status):
  type
    enum_ma_device_status* = enum_ma_device_status_570426507
else:
  static :
    hint("Declaration of " & "enum_ma_device_status" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_config_pulseaudio):
  type
    struct_ma_device_config_pulseaudio* = struct_ma_device_config_pulseaudio_570426391
else:
  static :
    hint("Declaration of " & "struct_ma_device_config_pulseaudio" &
        " already exists, not redeclaring")
when not declared(ma_splitter_node):
  type
    ma_splitter_node* = ma_splitter_node_570426795
else:
  static :
    hint("Declaration of " & "ma_splitter_node" &
        " already exists, not redeclaring")
when not declared(ma_engine_node_config):
  type
    ma_engine_node_config* = ma_engine_node_config_570426887
else:
  static :
    hint("Declaration of " & "ma_engine_node_config" &
        " already exists, not redeclaring")
when not declared(ma_result):
  type
    ma_result* = ma_result_570425878
else:
  static :
    hint("Declaration of " & "ma_result" & " already exists, not redeclaring")
when not declared(struct_ma_context_config_audio4):
  type
    struct_ma_context_config_audio4* = struct_ma_context_config_audio4_570426419
else:
  static :
    hint("Declaration of " & "struct_ma_context_config_audio4" &
        " already exists, not redeclaring")
when not declared(ma_context_config_coreaudio):
  type
    ma_context_config_coreaudio* = ma_context_config_coreaudio_570426381
else:
  static :
    hint("Declaration of " & "ma_context_config_coreaudio" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_config):
  type
    ma_spatializer_listener_config* = ma_spatializer_listener_config_570426141
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_format):
  type
    enum_ma_format* = enum_ma_format_570425892
else:
  static :
    hint("Declaration of " & "enum_ma_format" &
        " already exists, not redeclaring")
when not declared(ma_device_op_queue):
  type
    ma_device_op_queue* = ma_device_op_queue_570426541
else:
  static :
    hint("Declaration of " & "ma_device_op_queue" &
        " already exists, not redeclaring")
when not declared(compiler_atomic_wide_counter):
  type
    compiler_atomic_wide_counter* = compiler_atomic_wide_counter_570426925
else:
  static :
    hint("Declaration of " & "compiler_atomic_wide_counter" &
        " already exists, not redeclaring")
when not declared(ma_gainer):
  type
    ma_gainer* = ma_gainer_570426097
else:
  static :
    hint("Declaration of " & "ma_gainer" & " already exists, not redeclaring")
when not declared(ma_notch_node):
  type
    ma_notch_node* = ma_notch_node_570426835
else:
  static :
    hint("Declaration of " & "ma_notch_node" &
        " already exists, not redeclaring")
when not declared(enum_ma_encoding_format):
  type
    enum_ma_encoding_format* = enum_ma_encoding_format_570426611
else:
  static :
    hint("Declaration of " & "enum_ma_encoding_format" &
        " already exists, not redeclaring")
when not declared(ma_device_status):
  type
    ma_device_status* = ma_device_status_570426509
else:
  static :
    hint("Declaration of " & "ma_device_status" &
        " already exists, not redeclaring")
when not declared(ma_splitter_node_config):
  type
    ma_splitter_node_config* = ma_splitter_node_config_570426791
else:
  static :
    hint("Declaration of " & "ma_splitter_node_config" &
        " already exists, not redeclaring")
when not declared(ma_delay_config):
  type
    ma_delay_config* = ma_delay_config_570426085
else:
  static :
    hint("Declaration of " & "ma_delay_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_channel_conversion_path):
  type
    enum_ma_channel_conversion_path* = enum_ma_channel_conversion_path_570426181
else:
  static :
    hint("Declaration of " & "enum_ma_channel_conversion_path" &
        " already exists, not redeclaring")
when not declared(struct_ma_context_config):
  type
    struct_ma_context_config* = struct_ma_context_config_570426325
else:
  static :
    hint("Declaration of " & "struct_ma_context_config" &
        " already exists, not redeclaring")
when not declared(ma_device_backend_vtable):
  type
    ma_device_backend_vtable* = ma_device_backend_vtable_570426339
else:
  static :
    hint("Declaration of " & "ma_device_backend_vtable" &
        " already exists, not redeclaring")
when not declared(ma_bool32):
  type
    ma_bool32* = ma_bool32_570425840
else:
  static :
    hint("Declaration of " & "ma_bool32" & " already exists, not redeclaring")
when not declared(ma_context_config_wasapi):
  type
    ma_context_config_wasapi* = ma_context_config_wasapi_570426349
else:
  static :
    hint("Declaration of " & "ma_context_config_wasapi" &
        " already exists, not redeclaring")
when not declared(ma_context):
  type
    ma_context* = ma_context_570426319
else:
  static :
    hint("Declaration of " & "ma_context" & " already exists, not redeclaring")
when not declared(ma_biquad_config):
  type
    ma_biquad_config* = ma_biquad_config_570425977
else:
  static :
    hint("Declaration of " & "ma_biquad_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_hpf1_config):
  type
    struct_ma_hpf1_config* = struct_ma_hpf1_config_570426005
else:
  static :
    hint("Declaration of " & "struct_ma_hpf1_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_job_queue_config):
  type
    struct_ma_job_queue_config* = struct_ma_job_queue_config_570426311
else:
  static :
    hint("Declaration of " & "struct_ma_job_queue_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_decoding_backend_vtable):
  type
    struct_ma_decoding_backend_vtable* = struct_ma_decoding_backend_vtable_570426623
else:
  static :
    hint("Declaration of " & "struct_ma_decoding_backend_vtable" &
        " already exists, not redeclaring")
when not declared(struct_ma_node_graph_config):
  type
    struct_ma_node_graph_config* = struct_ma_node_graph_config_570426777
else:
  static :
    hint("Declaration of " & "struct_ma_node_graph_config" &
        " already exists, not redeclaring")
when not declared(ma_peak_node):
  type
    ma_peak_node* = ma_peak_node_570426843
else:
  static :
    hint("Declaration of " & "ma_peak_node" & " already exists, not redeclaring")
when not declared(ma_resampler_config):
  type
    ma_resampler_config* = ma_resampler_config_570426163
else:
  static :
    hint("Declaration of " & "ma_resampler_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_notch2_config):
  type
    struct_ma_notch2_config* = struct_ma_notch2_config_570426043
else:
  static :
    hint("Declaration of " & "struct_ma_notch2_config" &
        " already exists, not redeclaring")
when not declared(ma_notch2):
  type
    ma_notch2* = ma_notch2_570426051
else:
  static :
    hint("Declaration of " & "ma_notch2" & " already exists, not redeclaring")
when not declared(ma_hpf_node_config):
  type
    ma_hpf_node_config* = ma_hpf_node_config_570426815
else:
  static :
    hint("Declaration of " & "ma_hpf_node_config" &
        " already exists, not redeclaring")
when not declared(ma_device_config):
  type
    ma_device_config* = ma_device_config_570426331
else:
  static :
    hint("Declaration of " & "ma_device_config" &
        " already exists, not redeclaring")
when not declared(ma_context_config_pulseaudio):
  type
    ma_context_config_pulseaudio* = ma_context_config_pulseaudio_570426389
else:
  static :
    hint("Declaration of " & "ma_context_config_pulseaudio" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_config):
  type
    ma_sound_group_config* = ma_sound_group_config_570426905
else:
  static :
    hint("Declaration of " & "ma_sound_group_config" &
        " already exists, not redeclaring")
when not declared(pthread_mutex_t):
  type
    pthread_mutex_t* = pthread_mutex_t_570425858
else:
  static :
    hint("Declaration of " & "pthread_mutex_t" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_config):
  type
    ma_lpf1_config* = ma_lpf1_config_570425985
else:
  static :
    hint("Declaration of " & "ma_lpf1_config" &
        " already exists, not redeclaring")
when not declared(ma_device_backend_config):
  type
    ma_device_backend_config* = ma_device_backend_config_570426501
else:
  static :
    hint("Declaration of " & "ma_device_backend_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_biquad_node):
  type
    struct_ma_biquad_node* = struct_ma_biquad_node_570426801
else:
  static :
    hint("Declaration of " & "struct_ma_biquad_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_node_base):
  type
    struct_ma_node_base* = struct_ma_node_base_570426775
else:
  static :
    hint("Declaration of " & "struct_ma_node_base" &
        " already exists, not redeclaring")
when not declared(union_atomic_wide_counter):
  type
    union_atomic_wide_counter* = union_atomic_wide_counter_570426929
else:
  static :
    hint("Declaration of " & "union_atomic_wide_counter" &
        " already exists, not redeclaring")
when not declared(ma_fence):
  type
    ma_fence* = ma_fence_570426267
else:
  static :
    hint("Declaration of " & "ma_fence" & " already exists, not redeclaring")
when not declared(ma_hpf1):
  type
    ma_hpf1* = ma_hpf1_570426013
else:
  static :
    hint("Declaration of " & "ma_hpf1" & " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_pipeline_notifications):
  type
    struct_ma_resource_manager_pipeline_notifications* = struct_ma_resource_manager_pipeline_notifications_570426715
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_pipeline_notifications" &
        " already exists, not redeclaring")
when not declared(ma_device_data_proc):
  type
    ma_device_data_proc* = ma_device_data_proc_570426553
else:
  static :
    hint("Declaration of " & "ma_device_data_proc" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_config):
  type
    ma_hishelf2_config* = ma_hishelf2_config_570426075
else:
  static :
    hint("Declaration of " & "ma_hishelf2_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_context_config_oss):
  type
    struct_ma_context_config_oss* = struct_ma_context_config_oss_570426427
else:
  static :
    hint("Declaration of " & "struct_ma_context_config_oss" &
        " already exists, not redeclaring")
when not declared(ma_bool8):
  type
    ma_bool8* = ma_bool8_570425838
else:
  static :
    hint("Declaration of " & "ma_bool8" & " already exists, not redeclaring")
when not declared(ma_aaudio_usage):
  type
    ma_aaudio_usage* = ma_aaudio_usage_570426437
else:
  static :
    hint("Declaration of " & "ma_aaudio_usage" &
        " already exists, not redeclaring")
when not declared(ma_device_job_thread):
  type
    ma_device_job_thread* = ma_device_job_thread_570426521
else:
  static :
    hint("Declaration of " & "ma_device_job_thread" &
        " already exists, not redeclaring")
when not declared(ma_node_config):
  type
    ma_node_config* = ma_node_config_570426763
else:
  static :
    hint("Declaration of " & "ma_node_config" &
        " already exists, not redeclaring")
when not declared(ma_lpf_node_config):
  type
    ma_lpf_node_config* = ma_lpf_node_config_570426807
else:
  static :
    hint("Declaration of " & "ma_lpf_node_config" &
        " already exists, not redeclaring")
when not declared(ma_uint16):
  type
    ma_uint16* = ma_uint16_570425826
else:
  static :
    hint("Declaration of " & "ma_uint16" & " already exists, not redeclaring")
when not declared(ma_lpf2):
  type
    ma_lpf2* = ma_lpf2_570425995
else:
  static :
    hint("Declaration of " & "ma_lpf2" & " already exists, not redeclaring")
when not declared(struct_ma_notch_node):
  type
    struct_ma_notch_node* = struct_ma_notch_node_570426833
else:
  static :
    hint("Declaration of " & "struct_ma_notch_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_atomic_int32):
  type
    struct_ma_atomic_int32* = struct_ma_atomic_int32_570425927
else:
  static :
    hint("Declaration of " & "struct_ma_atomic_int32" &
        " already exists, not redeclaring")
when not declared(ma_data_converter):
  type
    ma_data_converter* = ma_data_converter_570426207
else:
  static :
    hint("Declaration of " & "ma_data_converter" &
        " already exists, not redeclaring")
when not declared(ma_atomic_uint64):
  type
    ma_atomic_uint64* = ma_atomic_uint64_570425933
else:
  static :
    hint("Declaration of " & "ma_atomic_uint64" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_backend_vtable):
  type
    struct_ma_device_backend_vtable* = struct_ma_device_backend_vtable_570426341
else:
  static :
    hint("Declaration of " & "struct_ma_device_backend_vtable" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb):
  type
    ma_pcm_rb* = ma_pcm_rb_570426259
else:
  static :
    hint("Declaration of " & "ma_pcm_rb" & " already exists, not redeclaring")
when not declared(ma_hishelf_node_config):
  type
    ma_hishelf_node_config* = ma_hishelf_node_config_570426855
else:
  static :
    hint("Declaration of " & "ma_hishelf_node_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_device_enumeration_result):
  type
    enum_ma_device_enumeration_result* = enum_ma_device_enumeration_result_570426575
else:
  static :
    hint("Declaration of " & "enum_ma_device_enumeration_result" &
        " already exists, not redeclaring")
when not declared(ma_thread):
  type
    ma_thread* = ma_thread_570425949
else:
  static :
    hint("Declaration of " & "ma_thread" & " already exists, not redeclaring")
when not declared(struct_ma_async_notification_callbacks):
  type
    struct_ma_async_notification_callbacks* = struct_ma_async_notification_callbacks_570426271
else:
  static :
    hint("Declaration of " & "struct_ma_async_notification_callbacks" &
        " already exists, not redeclaring")
when not declared(struct_ma_async_notification_event):
  type
    struct_ma_async_notification_event* = struct_ma_async_notification_event_570426279
else:
  static :
    hint("Declaration of " & "struct_ma_async_notification_event" &
        " already exists, not redeclaring")
when not declared(ma_decoder_seek_proc):
  type
    ma_decoder_seek_proc* = ma_decoder_seek_proc_570426629
else:
  static :
    hint("Declaration of " & "ma_decoder_seek_proc" &
        " already exists, not redeclaring")
when not declared(struct_ma_allocation_callbacks):
  type
    struct_ma_allocation_callbacks* = struct_ma_allocation_callbacks_570425915
else:
  static :
    hint("Declaration of " & "struct_ma_allocation_callbacks" &
        " already exists, not redeclaring")
when not declared(ma_context_config_winmm):
  type
    ma_context_config_winmm* = ma_context_config_winmm_570426365
else:
  static :
    hint("Declaration of " & "ma_context_config_winmm" &
        " already exists, not redeclaring")
when not declared(struct_ma_waveform):
  type
    struct_ma_waveform* = struct_ma_waveform_570426663
else:
  static :
    hint("Declaration of " & "struct_ma_waveform" &
        " already exists, not redeclaring")
when not declared(compiler_pthread_list_t):
  type
    compiler_pthread_list_t* = compiler_pthread_list_t_570426923
else:
  static :
    hint("Declaration of " & "compiler_pthread_list_t" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_config):
  type
    ma_lpf2_config* = ma_lpf2_config_570425987
else:
  static :
    hint("Declaration of " & "ma_lpf2_config" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source):
  type
    ma_resource_manager_data_source* = ma_resource_manager_data_source_570426703
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source" &
        " already exists, not redeclaring")
when not declared(ma_encoder_write_proc):
  type
    ma_encoder_write_proc* = ma_encoder_write_proc_570426641
else:
  static :
    hint("Declaration of " & "ma_encoder_write_proc" &
        " already exists, not redeclaring")
when not declared(ma_timer):
  type
    ma_timer* = ma_timer_570426565
else:
  static :
    hint("Declaration of " & "ma_timer" & " already exists, not redeclaring")
when not declared(ma_opensl_stream_type):
  type
    ma_opensl_stream_type* = ma_opensl_stream_type_570426465
else:
  static :
    hint("Declaration of " & "ma_opensl_stream_type" &
        " already exists, not redeclaring")
when not declared(ma_vfs_callbacks):
  type
    ma_vfs_callbacks* = ma_vfs_callbacks_570426599
else:
  static :
    hint("Declaration of " & "ma_vfs_callbacks" &
        " already exists, not redeclaring")
when not declared(struct_ma_paged_audio_buffer_page):
  type
    struct_ma_paged_audio_buffer_page* = struct_ma_paged_audio_buffer_page_570426239
else:
  static :
    hint("Declaration of " & "struct_ma_paged_audio_buffer_page" &
        " already exists, not redeclaring")
when not declared(ma_aaudio_content_type):
  type
    ma_aaudio_content_type* = ma_aaudio_content_type_570426441
else:
  static :
    hint("Declaration of " & "ma_aaudio_content_type" &
        " already exists, not redeclaring")
when not declared(enum_ma_node_flags):
  type
    enum_ma_node_flags* = enum_ma_node_flags_570426749
else:
  static :
    hint("Declaration of " & "enum_ma_node_flags" &
        " already exists, not redeclaring")
when not declared(struct_ma_encoder):
  type
    struct_ma_encoder* = struct_ma_encoder_570426639
else:
  static :
    hint("Declaration of " & "struct_ma_encoder" &
        " already exists, not redeclaring")
when not declared(enum_ma_stream_format):
  type
    enum_ma_stream_format* = enum_ma_stream_format_570425880
else:
  static :
    hint("Declaration of " & "enum_ma_stream_format" &
        " already exists, not redeclaring")
when not declared(struct_ma_hpf):
  type
    struct_ma_hpf* = struct_ma_hpf_570426023
else:
  static :
    hint("Declaration of " & "struct_ma_hpf" &
        " already exists, not redeclaring")
when not declared(ma_pan_mode):
  type
    ma_pan_mode* = ma_pan_mode_570426101
else:
  static :
    hint("Declaration of " & "ma_pan_mode" & " already exists, not redeclaring")
when not declared(internal_ma_channel_position):
  type
    internal_ma_channel_position* = internal_ma_channel_position_570425874
else:
  static :
    hint("Declaration of " & "internal_ma_channel_position" &
        " already exists, not redeclaring")
when not declared(struct_ma_context):
  type
    struct_ma_context* = struct_ma_context_570426321
else:
  static :
    hint("Declaration of " & "struct_ma_context" &
        " already exists, not redeclaring")
when not declared(struct_ma_data_source_node):
  type
    struct_ma_data_source_node* = struct_ma_data_source_node_570426785
else:
  static :
    hint("Declaration of " & "struct_ma_data_source_node" &
        " already exists, not redeclaring")
when not declared(ma_hishelf_node):
  type
    ma_hishelf_node* = ma_hishelf_node_570426859
else:
  static :
    hint("Declaration of " & "ma_hishelf_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_delay):
  type
    struct_ma_delay* = struct_ma_delay_570426087
else:
  static :
    hint("Declaration of " & "struct_ma_delay" &
        " already exists, not redeclaring")
when not declared(ma_engine):
  type
    ma_engine* = ma_engine_570426869
else:
  static :
    hint("Declaration of " & "ma_engine" & " already exists, not redeclaring")
when not declared(ma_engine_node):
  type
    ma_engine_node* = ma_engine_node_570426891
else:
  static :
    hint("Declaration of " & "ma_engine_node" &
        " already exists, not redeclaring")
when not declared(ma_allocation_callbacks):
  type
    ma_allocation_callbacks* = ma_allocation_callbacks_570425917
else:
  static :
    hint("Declaration of " & "ma_allocation_callbacks" &
        " already exists, not redeclaring")
when not declared(ma_mono_expansion_mode):
  type
    ma_mono_expansion_mode* = ma_mono_expansion_mode_570426187
else:
  static :
    hint("Declaration of " & "ma_mono_expansion_mode" &
        " already exists, not redeclaring")
when not declared(ma_device_config_coreaudio):
  type
    ma_device_config_coreaudio* = ma_device_config_coreaudio_570426385
else:
  static :
    hint("Declaration of " & "ma_device_config_coreaudio" &
        " already exists, not redeclaring")
when not declared(ma_context_config_jack):
  type
    ma_context_config_jack* = ma_context_config_jack_570426405
else:
  static :
    hint("Declaration of " & "ma_context_config_jack" &
        " already exists, not redeclaring")
when not declared(ma_encoder_seek_proc):
  type
    ma_encoder_seek_proc* = ma_encoder_seek_proc_570426643
else:
  static :
    hint("Declaration of " & "ma_encoder_seek_proc" &
        " already exists, not redeclaring")
when not declared(ma_lcg):
  type
    ma_lcg* = ma_lcg_570425921
else:
  static :
    hint("Declaration of " & "ma_lcg" & " already exists, not redeclaring")
when not declared(ma_job_queue):
  type
    ma_job_queue* = ma_job_queue_570426317
else:
  static :
    hint("Declaration of " & "ma_job_queue" & " already exists, not redeclaring")
when not declared(enum_ma_ios_session_category_option):
  type
    enum_ma_ios_session_category_option* = enum_ma_ios_session_category_option_570426375
else:
  static :
    hint("Declaration of " & "enum_ma_ios_session_category_option" &
        " already exists, not redeclaring")
when not declared(ma_encoder_write_pcm_frames_proc):
  type
    ma_encoder_write_pcm_frames_proc* = ma_encoder_write_pcm_frames_proc_570426649
else:
  static :
    hint("Declaration of " & "ma_encoder_write_pcm_frames_proc" &
        " already exists, not redeclaring")
when not declared(ma_default_vfs):
  type
    ma_default_vfs* = ma_default_vfs_570426603
else:
  static :
    hint("Declaration of " & "ma_default_vfs" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer):
  type
    ma_resource_manager_data_buffer* = ma_resource_manager_data_buffer_570426695
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer" &
        " already exists, not redeclaring")
when not declared(struct_ma_delay_node_config):
  type
    struct_ma_delay_node_config* = struct_ma_delay_node_config_570426861
else:
  static :
    hint("Declaration of " & "struct_ma_delay_node_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_resampler_config):
  type
    struct_ma_resampler_config* = struct_ma_resampler_config_570426165
else:
  static :
    hint("Declaration of " & "struct_ma_resampler_config" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_config):
  type
    ma_linear_resampler_config* = ma_linear_resampler_config_570426157
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_config" &
        " already exists, not redeclaring")
when not declared(ma_lpf1):
  type
    ma_lpf1* = ma_lpf1_570425991
else:
  static :
    hint("Declaration of " & "ma_lpf1" & " already exists, not redeclaring")
when not declared(union_ma_device_op_params):
  type
    union_ma_device_op_params* = union_ma_device_op_params_570426531
else:
  static :
    hint("Declaration of " & "union_ma_device_op_params" &
        " already exists, not redeclaring")
when not declared(enum_ma_dither_mode):
  type
    enum_ma_dither_mode* = enum_ma_dither_mode_570425888
else:
  static :
    hint("Declaration of " & "enum_ma_dither_mode" &
        " already exists, not redeclaring")
when not declared(ma_context_config_audio4):
  type
    ma_context_config_audio4* = ma_context_config_audio4_570426421
else:
  static :
    hint("Declaration of " & "ma_context_config_audio4" &
        " already exists, not redeclaring")
when not declared(enum_ma_log_level):
  type
    enum_ma_log_level* = enum_ma_log_level_570425866
else:
  static :
    hint("Declaration of " & "enum_ma_log_level" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_job_thread):
  type
    struct_ma_device_job_thread* = struct_ma_device_job_thread_570426519
else:
  static :
    hint("Declaration of " & "struct_ma_device_job_thread" &
        " already exists, not redeclaring")
when not declared(struct_ma_log_callback):
  type
    struct_ma_log_callback* = struct_ma_log_callback_570425963
else:
  static :
    hint("Declaration of " & "struct_ma_log_callback" &
        " already exists, not redeclaring")
when not declared(ma_peak2):
  type
    ma_peak2* = ma_peak2_570426061
else:
  static :
    hint("Declaration of " & "ma_peak2" & " already exists, not redeclaring")
when not declared(ma_sound_inlined):
  type
    ma_sound_inlined* = ma_sound_inlined_570426901
else:
  static :
    hint("Declaration of " & "ma_sound_inlined" &
        " already exists, not redeclaring")
when not declared(struct_ma_vec3f):
  type
    struct_ma_vec3f* = struct_ma_vec3f_570426119
else:
  static :
    hint("Declaration of " & "struct_ma_vec3f" &
        " already exists, not redeclaring")
when not declared(ma_device_job_thread_config):
  type
    ma_device_job_thread_config* = ma_device_job_thread_config_570426517
else:
  static :
    hint("Declaration of " & "ma_device_job_thread_config" &
        " already exists, not redeclaring")
when not declared(ma_encoder):
  type
    ma_encoder* = ma_encoder_570426637
else:
  static :
    hint("Declaration of " & "ma_encoder" & " already exists, not redeclaring")
when not declared(ma_delay_node_config):
  type
    ma_delay_node_config* = ma_delay_node_config_570426863
else:
  static :
    hint("Declaration of " & "ma_delay_node_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_job_type):
  type
    enum_ma_job_type* = enum_ma_job_type_570426301
else:
  static :
    hint("Declaration of " & "enum_ma_job_type" &
        " already exists, not redeclaring")
when not declared(enum_ma_aaudio_allowed_capture_policy):
  type
    enum_ma_aaudio_allowed_capture_policy* = enum_ma_aaudio_allowed_capture_policy_570426447
else:
  static :
    hint("Declaration of " & "enum_ma_aaudio_allowed_capture_policy" &
        " already exists, not redeclaring")
when not declared(enum_ma_aaudio_usage):
  type
    enum_ma_aaudio_usage* = enum_ma_aaudio_usage_570426435
else:
  static :
    hint("Declaration of " & "enum_ma_aaudio_usage" &
        " already exists, not redeclaring")
when not declared(ma_webaudio_latency_hint):
  type
    ma_webaudio_latency_hint* = ma_webaudio_latency_hint_570426481
else:
  static :
    hint("Declaration of " & "ma_webaudio_latency_hint" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener):
  type
    ma_spatializer_listener* = ma_spatializer_listener_570426145
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_config_alsa):
  type
    struct_ma_device_config_alsa* = struct_ma_device_config_alsa_570426399
else:
  static :
    hint("Declaration of " & "struct_ma_device_config_alsa" &
        " already exists, not redeclaring")
when not declared(ma_device_op):
  type
    ma_device_op* = ma_device_op_570426537
else:
  static :
    hint("Declaration of " & "ma_device_op" & " already exists, not redeclaring")
when not declared(struct_ma_data_source_node_config):
  type
    struct_ma_data_source_node_config* = struct_ma_data_source_node_config_570426781
else:
  static :
    hint("Declaration of " & "struct_ma_data_source_node_config" &
        " already exists, not redeclaring")
when not declared(ma_bpf_node_config):
  type
    ma_bpf_node_config* = ma_bpf_node_config_570426823
else:
  static :
    hint("Declaration of " & "ma_bpf_node_config" &
        " already exists, not redeclaring")
when not declared(ma_device_notification_proc):
  type
    ma_device_notification_proc* = ma_device_notification_proc_570426551
else:
  static :
    hint("Declaration of " & "ma_device_notification_proc" &
        " already exists, not redeclaring")
when not declared(struct_ma_context_config_alsa):
  type
    struct_ma_context_config_alsa* = struct_ma_context_config_alsa_570426395
else:
  static :
    hint("Declaration of " & "struct_ma_context_config_alsa" &
        " already exists, not redeclaring")
when not declared(ma_node_vtable):
  type
    ma_node_vtable* = ma_node_vtable_570426759
else:
  static :
    hint("Declaration of " & "ma_node_vtable" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_config_null):
  type
    struct_ma_device_config_null* = struct_ma_device_config_null_570426495
else:
  static :
    hint("Declaration of " & "struct_ma_device_config_null" &
        " already exists, not redeclaring")
when not declared(ma_waveform_type):
  type
    ma_waveform_type* = ma_waveform_type_570426657
else:
  static :
    hint("Declaration of " & "ma_waveform_type" &
        " already exists, not redeclaring")
when not declared(enum_ma_aaudio_performance_mode):
  type
    enum_ma_aaudio_performance_mode* = enum_ma_aaudio_performance_mode_570426451
else:
  static :
    hint("Declaration of " & "enum_ma_aaudio_performance_mode" &
        " already exists, not redeclaring")
when not declared(ma_bpf_node):
  type
    ma_bpf_node* = ma_bpf_node_570426827
else:
  static :
    hint("Declaration of " & "ma_bpf_node" & " already exists, not redeclaring")
when not declared(ma_slot_allocator_config):
  type
    ma_slot_allocator_config* = ma_slot_allocator_config_570426285
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_loshelf2_config):
  type
    struct_ma_loshelf2_config* = struct_ma_loshelf2_config_570426063
else:
  static :
    hint("Declaration of " & "struct_ma_loshelf2_config" &
        " already exists, not redeclaring")
when not declared(ma_device_config_opensl):
  type
    ma_device_config_opensl* = ma_device_config_opensl_570426477
else:
  static :
    hint("Declaration of " & "ma_device_config_opensl" &
        " already exists, not redeclaring")
when not declared(struct_ma_lcg):
  type
    struct_ma_lcg* = struct_ma_lcg_570425919
else:
  static :
    hint("Declaration of " & "struct_ma_lcg" &
        " already exists, not redeclaring")
when not declared(ma_atomic_float):
  type
    ma_atomic_float* = ma_atomic_float_570425937
else:
  static :
    hint("Declaration of " & "ma_atomic_float" &
        " already exists, not redeclaring")
when not declared(struct_ma_data_converter):
  type
    struct_ma_data_converter* = struct_ma_data_converter_570426205
else:
  static :
    hint("Declaration of " & "struct_ma_data_converter" &
        " already exists, not redeclaring")
when not declared(struct_ma_biquad_node_config):
  type
    struct_ma_biquad_node_config* = struct_ma_biquad_node_config_570426797
else:
  static :
    hint("Declaration of " & "struct_ma_biquad_node_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_delay_node):
  type
    struct_ma_delay_node* = struct_ma_delay_node_570426865
else:
  static :
    hint("Declaration of " & "struct_ma_delay_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_context_config_opensl):
  type
    struct_ma_context_config_opensl* = struct_ma_context_config_opensl_570426471
else:
  static :
    hint("Declaration of " & "struct_ma_context_config_opensl" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_descriptor):
  type
    struct_ma_device_descriptor* = struct_ma_device_descriptor_570426337
else:
  static :
    hint("Declaration of " & "struct_ma_device_descriptor" &
        " already exists, not redeclaring")
when not declared(ma_hpf):
  type
    ma_hpf* = ma_hpf_570426025
else:
  static :
    hint("Declaration of " & "ma_hpf" & " already exists, not redeclaring")
when not declared(ma_noise_type):
  type
    ma_noise_type* = ma_noise_type_570426677
else:
  static :
    hint("Declaration of " & "ma_noise_type" &
        " already exists, not redeclaring")
when not declared(ma_stream_format):
  type
    ma_stream_format* = ma_stream_format_570425882
else:
  static :
    hint("Declaration of " & "ma_stream_format" &
        " already exists, not redeclaring")
when not declared(ma_hishelf_config):
  type
    ma_hishelf_config* = ma_hishelf_config_570426077
else:
  static :
    hint("Declaration of " & "ma_hishelf_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_mono_expansion_mode):
  type
    enum_ma_mono_expansion_mode* = enum_ma_mono_expansion_mode_570426185
else:
  static :
    hint("Declaration of " & "enum_ma_mono_expansion_mode" &
        " already exists, not redeclaring")
when not declared(ma_sound_group):
  type
    ma_sound_group* = ma_sound_group_570426907
else:
  static :
    hint("Declaration of " & "ma_sound_group" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_page):
  type
    ma_paged_audio_buffer_page* = ma_paged_audio_buffer_page_570426237
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_page" &
        " already exists, not redeclaring")
when not declared(wchar_t):
  type
    wchar_t* = wchar_t_570426305
else:
  static :
    hint("Declaration of " & "wchar_t" & " already exists, not redeclaring")
when not declared(struct_ma_slot_allocator_group):
  type
    struct_ma_slot_allocator_group* = struct_ma_slot_allocator_group_570426287
else:
  static :
    hint("Declaration of " & "struct_ma_slot_allocator_group" &
        " already exists, not redeclaring")
when not declared(ma_seek_origin):
  type
    ma_seek_origin* = ma_seek_origin_570426591
else:
  static :
    hint("Declaration of " & "ma_seek_origin" &
        " already exists, not redeclaring")
when not declared(ma_biquad_node_config):
  type
    ma_biquad_node_config* = ma_biquad_node_config_570426799
else:
  static :
    hint("Declaration of " & "ma_biquad_node_config" &
        " already exists, not redeclaring")
when not declared(struct_pthread_mutex_s):
  type
    struct_pthread_mutex_s* = struct_pthread_mutex_s_570426919
else:
  static :
    hint("Declaration of " & "struct_pthread_mutex_s" &
        " already exists, not redeclaring")
when not declared(ma_node_base):
  type
    ma_node_base* = ma_node_base_570426773
else:
  static :
    hint("Declaration of " & "ma_node_base" & " already exists, not redeclaring")
when not declared(ma_device_config_null):
  type
    ma_device_config_null* = ma_device_config_null_570426497
else:
  static :
    hint("Declaration of " & "ma_device_config_null" &
        " already exists, not redeclaring")
when not declared(ma_attenuation_model):
  type
    ma_attenuation_model* = ma_attenuation_model_570426129
else:
  static :
    hint("Declaration of " & "ma_attenuation_model" &
        " already exists, not redeclaring")
when not declared(ma_ios_session_category_option):
  type
    ma_ios_session_category_option* = ma_ios_session_category_option_570426377
else:
  static :
    hint("Declaration of " & "ma_ios_session_category_option" &
        " already exists, not redeclaring")
when not declared(ma_engine_config):
  type
    ma_engine_config* = ma_engine_config_570426913
else:
  static :
    hint("Declaration of " & "ma_engine_config" &
        " already exists, not redeclaring")
when not declared(ma_hpf2):
  type
    ma_hpf2* = ma_hpf2_570426017
else:
  static :
    hint("Declaration of " & "ma_hpf2" & " already exists, not redeclaring")
when not declared(struct_ma_device_config_winmm):
  type
    struct_ma_device_config_winmm* = struct_ma_device_config_winmm_570426367
else:
  static :
    hint("Declaration of " & "struct_ma_device_config_winmm" &
        " already exists, not redeclaring")
when not declared(ma_resample_algorithm):
  type
    ma_resample_algorithm* = ma_resample_algorithm_570426175
else:
  static :
    hint("Declaration of " & "ma_resample_algorithm" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_config_wasapi):
  type
    struct_ma_device_config_wasapi* = struct_ma_device_config_wasapi_570426351
else:
  static :
    hint("Declaration of " & "struct_ma_device_config_wasapi" &
        " already exists, not redeclaring")
when not declared(ma_uint8):
  type
    ma_uint8* = ma_uint8_570425822
else:
  static :
    hint("Declaration of " & "ma_uint8" & " already exists, not redeclaring")
when not declared(struct_ma_log):
  type
    struct_ma_log* = struct_ma_log_570425967
else:
  static :
    hint("Declaration of " & "struct_ma_log" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer):
  type
    ma_audio_buffer* = ma_audio_buffer_570426235
else:
  static :
    hint("Declaration of " & "ma_audio_buffer" &
        " already exists, not redeclaring")
when not declared(struct_ma_noise_config):
  type
    struct_ma_noise_config* = struct_ma_noise_config_570426679
else:
  static :
    hint("Declaration of " & "struct_ma_noise_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_standard_sample_rate):
  type
    enum_ma_standard_sample_rate* = enum_ma_standard_sample_rate_570425896
else:
  static :
    hint("Declaration of " & "enum_ma_standard_sample_rate" &
        " already exists, not redeclaring")
when not declared(ma_noise):
  type
    ma_noise* = ma_noise_570426685
else:
  static :
    hint("Declaration of " & "ma_noise" & " already exists, not redeclaring")
when not declared(struct_ma_atomic_float):
  type
    struct_ma_atomic_float* = struct_ma_atomic_float_570425935
else:
  static :
    hint("Declaration of " & "struct_ma_atomic_float" &
        " already exists, not redeclaring")
when not declared(ma_wchar_win32):
  type
    ma_wchar_win32* = ma_wchar_win32_570425864
else:
  static :
    hint("Declaration of " & "ma_wchar_win32" &
        " already exists, not redeclaring")
when not declared(struct_ma_engine):
  type
    struct_ma_engine* = struct_ma_engine_570426871
else:
  static :
    hint("Declaration of " & "struct_ma_engine" &
        " already exists, not redeclaring")
when not declared(struct_ma_loshelf_node):
  type
    struct_ma_loshelf_node* = struct_ma_loshelf_node_570426849
else:
  static :
    hint("Declaration of " & "struct_ma_loshelf_node" &
        " already exists, not redeclaring")
when not declared(enum_ma_device_type):
  type
    enum_ma_device_type* = enum_ma_device_type_570426555
else:
  static :
    hint("Declaration of " & "enum_ma_device_type" &
        " already exists, not redeclaring")
when not declared(struct_ma_sound_config):
  type
    struct_ma_sound_config* = struct_ma_sound_config_570426897
else:
  static :
    hint("Declaration of " & "struct_ma_sound_config" &
        " already exists, not redeclaring")
when not declared(ma_atomic_vec3f):
  type
    ma_atomic_vec3f* = ma_atomic_vec3f_570426125
else:
  static :
    hint("Declaration of " & "ma_atomic_vec3f" &
        " already exists, not redeclaring")
when not declared(struct_ma_hishelf2_config):
  type
    struct_ma_hishelf2_config* = struct_ma_hishelf2_config_570426073
else:
  static :
    hint("Declaration of " & "struct_ma_hishelf2_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_fader_config):
  type
    struct_ma_fader_config* = struct_ma_fader_config_570426111
else:
  static :
    hint("Declaration of " & "struct_ma_fader_config" &
        " already exists, not redeclaring")
when not declared(ma_standard_channel_map):
  type
    ma_standard_channel_map* = ma_standard_channel_map_570425913
else:
  static :
    hint("Declaration of " & "ma_standard_channel_map" &
        " already exists, not redeclaring")
when not declared(struct_ma_node_config):
  type
    struct_ma_node_config* = struct_ma_node_config_570426761
else:
  static :
    hint("Declaration of " & "struct_ma_node_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_webaudio_latency_hint):
  type
    enum_ma_webaudio_latency_hint* = enum_ma_webaudio_latency_hint_570426479
else:
  static :
    hint("Declaration of " & "enum_ma_webaudio_latency_hint" &
        " already exists, not redeclaring")
when not declared(ma_vec3f):
  type
    ma_vec3f* = ma_vec3f_570426121
else:
  static :
    hint("Declaration of " & "ma_vec3f" & " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_data_supply):
  type
    struct_ma_resource_manager_data_supply* = struct_ma_resource_manager_data_supply_570426731
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_data_supply" &
        " already exists, not redeclaring")
when not declared(ma_event):
  type
    ma_event* = ma_event_570425955
else:
  static :
    hint("Declaration of " & "ma_event" & " already exists, not redeclaring")
when not declared(ma_bpf_config):
  type
    ma_bpf_config* = ma_bpf_config_570426037
else:
  static :
    hint("Declaration of " & "ma_bpf_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_pan_mode):
  type
    enum_ma_pan_mode* = enum_ma_pan_mode_570426099
else:
  static :
    hint("Declaration of " & "enum_ma_pan_mode" &
        " already exists, not redeclaring")
when not declared(ma_waveform):
  type
    ma_waveform* = ma_waveform_570426665
else:
  static :
    hint("Declaration of " & "ma_waveform" & " already exists, not redeclaring")
when not declared(ma_open_mode_flags):
  type
    ma_open_mode_flags* = ma_open_mode_flags_570426587
else:
  static :
    hint("Declaration of " & "ma_open_mode_flags" &
        " already exists, not redeclaring")
when not declared(struct_ma_lpf_config):
  type
    struct_ma_lpf_config* = struct_ma_lpf_config_570425997
else:
  static :
    hint("Declaration of " & "struct_ma_lpf_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_bpf2):
  type
    struct_ma_bpf2* = struct_ma_bpf2_570426031
else:
  static :
    hint("Declaration of " & "struct_ma_bpf2" &
        " already exists, not redeclaring")
when not declared(ma_engine_process_proc):
  type
    ma_engine_process_proc* = ma_engine_process_proc_570426909
else:
  static :
    hint("Declaration of " & "ma_engine_process_proc" &
        " already exists, not redeclaring")
when not declared(struct_ma_biquad_config):
  type
    struct_ma_biquad_config* = struct_ma_biquad_config_570425975
else:
  static :
    hint("Declaration of " & "struct_ma_biquad_config" &
        " already exists, not redeclaring")
when not declared(ma_device_config_jack):
  type
    ma_device_config_jack* = ma_device_config_jack_570426409
else:
  static :
    hint("Declaration of " & "ma_device_config_jack" &
        " already exists, not redeclaring")
when not declared(ma_context_config_opensl):
  type
    ma_context_config_opensl* = ma_context_config_opensl_570426473
else:
  static :
    hint("Declaration of " & "ma_context_config_opensl" &
        " already exists, not redeclaring")
when not declared(struct_ma_file_info):
  type
    struct_ma_file_info* = struct_ma_file_info_570426593
else:
  static :
    hint("Declaration of " & "struct_ma_file_info" &
        " already exists, not redeclaring")
when not declared(struct_ma_sound_notifications):
  type
    struct_ma_sound_notifications* = struct_ma_sound_notifications_570426893
else:
  static :
    hint("Declaration of " & "struct_ma_sound_notifications" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_config):
  type
    ma_data_converter_config* = ma_data_converter_config_570426199
else:
  static :
    hint("Declaration of " & "ma_data_converter_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_bpf_config):
  type
    struct_ma_bpf_config* = struct_ma_bpf_config_570426035
else:
  static :
    hint("Declaration of " & "struct_ma_bpf_config" &
        " already exists, not redeclaring")
when not declared(union_ma_timer):
  type
    union_ma_timer* = union_ma_timer_570426563
else:
  static :
    hint("Declaration of " & "union_ma_timer" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler):
  type
    ma_linear_resampler* = ma_linear_resampler_570426161
else:
  static :
    hint("Declaration of " & "ma_linear_resampler" &
        " already exists, not redeclaring")
when not declared(ma_context_config_alsa):
  type
    ma_context_config_alsa* = ma_context_config_alsa_570426397
else:
  static :
    hint("Declaration of " & "ma_context_config_alsa" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_op):
  type
    struct_ma_device_op* = struct_ma_device_op_570426535
else:
  static :
    hint("Declaration of " & "struct_ma_device_op" &
        " already exists, not redeclaring")
when not declared(struct_ma_spatializer_listener):
  type
    struct_ma_spatializer_listener* = struct_ma_spatializer_listener_570426143
else:
  static :
    hint("Declaration of " & "struct_ma_spatializer_listener" &
        " already exists, not redeclaring")
when not declared(enum_ma_opensl_recording_preset):
  type
    enum_ma_opensl_recording_preset* = enum_ma_opensl_recording_preset_570426467
else:
  static :
    hint("Declaration of " & "enum_ma_opensl_recording_preset" &
        " already exists, not redeclaring")
when not declared(union_pthread_cond_t):
  type
    union_pthread_cond_t* = union_pthread_cond_t_570426917
else:
  static :
    hint("Declaration of " & "union_pthread_cond_t" &
        " already exists, not redeclaring")
when not declared(enum_ma_attenuation_model):
  type
    enum_ma_attenuation_model* = enum_ma_attenuation_model_570426127
else:
  static :
    hint("Declaration of " & "enum_ma_attenuation_model" &
        " already exists, not redeclaring")
when not declared(struct_ma_slot_allocator):
  type
    struct_ma_slot_allocator* = struct_ma_slot_allocator_570426291
else:
  static :
    hint("Declaration of " & "struct_ma_slot_allocator" &
        " already exists, not redeclaring")
when not declared(ma_spinlock):
  type
    ma_spinlock* = ma_spinlock_570425943
else:
  static :
    hint("Declaration of " & "ma_spinlock" & " already exists, not redeclaring")
when not declared(ma_notch2_config):
  type
    ma_notch2_config* = ma_notch2_config_570426045
else:
  static :
    hint("Declaration of " & "ma_notch2_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_config_dsound):
  type
    struct_ma_device_config_dsound* = struct_ma_device_config_dsound_570426359
else:
  static :
    hint("Declaration of " & "struct_ma_device_config_dsound" &
        " already exists, not redeclaring")
when not declared(ma_decoding_backend_config):
  type
    ma_decoding_backend_config* = ma_decoding_backend_config_570426621
else:
  static :
    hint("Declaration of " & "ma_decoding_backend_config" &
        " already exists, not redeclaring")
when not declared(ma_aaudio_allowed_capture_policy):
  type
    ma_aaudio_allowed_capture_policy* = ma_aaudio_allowed_capture_policy_570426449
else:
  static :
    hint("Declaration of " & "ma_aaudio_allowed_capture_policy" &
        " already exists, not redeclaring")
when not declared(ma_device_notification_type):
  type
    ma_device_notification_type* = ma_device_notification_type_570426545
else:
  static :
    hint("Declaration of " & "ma_device_notification_type" &
        " already exists, not redeclaring")
when not declared(struct_ma_hishelf_node_config):
  type
    struct_ma_hishelf_node_config* = struct_ma_hishelf_node_config_570426853
else:
  static :
    hint("Declaration of " & "struct_ma_hishelf_node_config" &
        " already exists, not redeclaring")
when not declared(MA_VERSION_MAJOR):
  when 0 is static:
    const
      MA_VERSION_MAJOR* = 0  ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3761:9
  else:
    let MA_VERSION_MAJOR* = 0 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3761:9
else:
  static :
    hint("Declaration of " & "MA_VERSION_MAJOR" &
        " already exists, not redeclaring")
when not declared(MA_VERSION_MINOR):
  when 11 is static:
    const
      MA_VERSION_MINOR* = 11 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3762:9
  else:
    let MA_VERSION_MINOR* = 11 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3762:9
else:
  static :
    hint("Declaration of " & "MA_VERSION_MINOR" &
        " already exists, not redeclaring")
when not declared(MA_VERSION_REVISION):
  when 23 is static:
    const
      MA_VERSION_REVISION* = 23 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3763:9
  else:
    let MA_VERSION_REVISION* = 23 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3763:9
else:
  static :
    hint("Declaration of " & "MA_VERSION_REVISION" &
        " already exists, not redeclaring")
when not declared(MA_SIZEOF_PTR):
  when 8 is static:
    const
      MA_SIZEOF_PTR* = 8     ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3781:13
  else:
    let MA_SIZEOF_PTR* = 8   ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3781:13
else:
  static :
    hint("Declaration of " & "MA_SIZEOF_PTR" &
        " already exists, not redeclaring")
when not declared(MA_TRUE):
  when 1 is static:
    const
      MA_TRUE* = 1           ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3833:9
  else:
    let MA_TRUE* = 1         ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3833:9
else:
  static :
    hint("Declaration of " & "MA_TRUE" & " already exists, not redeclaring")
when not declared(MA_FALSE):
  when 0 is static:
    const
      MA_FALSE* = 0          ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3834:9
  else:
    let MA_FALSE* = 0        ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3834:9
else:
  static :
    hint("Declaration of " & "MA_FALSE" & " already exists, not redeclaring")
when not declared(MA_SIZE_MAX):
  when 4294967295 is static:
    const
      MA_SIZE_MAX* = 4294967295'i64 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3867:13
  else:
    let MA_SIZE_MAX* = 4294967295'i64 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:3867:13
else:
  static :
    hint("Declaration of " & "MA_SIZE_MAX" & " already exists, not redeclaring")
when not declared(MA_GNUC_INLINE_HINT):
  when inline is typedesc:
    type
      MA_GNUC_INLINE_HINT* = inline ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4004:17
  else:
    when inline is static:
      const
        MA_GNUC_INLINE_HINT* = inline ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4004:17
    else:
      let MA_GNUC_INLINE_HINT* = inline ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4004:17
else:
  static :
    hint("Declaration of " & "MA_GNUC_INLINE_HINT" &
        " already exists, not redeclaring")
when not declared(MA_API):
  when extern is typedesc:
    type
      MA_API* = extern       ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4049:17
  else:
    when extern is static:
      const
        MA_API* = extern     ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4049:17
    else:
      let MA_API* = extern   ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4049:17
else:
  static :
    hint("Declaration of " & "MA_API" & " already exists, not redeclaring")
when not declared(MA_SIMD_ALIGNMENT):
  when 32 is static:
    const
      MA_SIMD_ALIGNMENT* = 32 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4063:9
  else:
    let MA_SIMD_ALIGNMENT* = 32 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4063:9
else:
  static :
    hint("Declaration of " & "MA_SIMD_ALIGNMENT" &
        " already exists, not redeclaring")
when not declared(MA_DEFAULT_FORMAT):
  when ma_format_f32 is typedesc:
    type
      MA_DEFAULT_FORMAT* = ma_format_f32 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4126:9
  else:
    when ma_format_f32 is static:
      const
        MA_DEFAULT_FORMAT* = ma_format_f32 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4126:9
    else:
      let MA_DEFAULT_FORMAT* = ma_format_f32 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4126:9
else:
  static :
    hint("Declaration of " & "MA_DEFAULT_FORMAT" &
        " already exists, not redeclaring")
when not declared(MA_DEFAULT_CHANNELS):
  when 2 is static:
    const
      MA_DEFAULT_CHANNELS* = 2 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4131:9
  else:
    let MA_DEFAULT_CHANNELS* = 2 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4131:9
else:
  static :
    hint("Declaration of " & "MA_DEFAULT_CHANNELS" &
        " already exists, not redeclaring")
when not declared(MA_DEFAULT_SAMPLE_RATE):
  when 48000 is static:
    const
      MA_DEFAULT_SAMPLE_RATE* = 48000 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4136:9
  else:
    let MA_DEFAULT_SAMPLE_RATE* = 48000 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4136:9
else:
  static :
    hint("Declaration of " & "MA_DEFAULT_SAMPLE_RATE" &
        " already exists, not redeclaring")
when not declared(MA_MIN_CHANNELS):
  when 1 is static:
    const
      MA_MIN_CHANNELS* = 1   ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4344:9
  else:
    let MA_MIN_CHANNELS* = 1 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4344:9
else:
  static :
    hint("Declaration of " & "MA_MIN_CHANNELS" &
        " already exists, not redeclaring")
when not declared(MA_MAX_CHANNELS):
  when 254 is static:
    const
      MA_MAX_CHANNELS* = 254 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4346:9
  else:
    let MA_MAX_CHANNELS* = 254 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4346:9
else:
  static :
    hint("Declaration of " & "MA_MAX_CHANNELS" &
        " already exists, not redeclaring")
when not declared(MA_MAX_FILTER_ORDER):
  when 8 is static:
    const
      MA_MAX_FILTER_ORDER* = 8 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4350:9
  else:
    let MA_MAX_FILTER_ORDER* = 8 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4350:9
else:
  static :
    hint("Declaration of " & "MA_MAX_FILTER_ORDER" &
        " already exists, not redeclaring")
when not declared(MA_MAX_LOG_CALLBACKS):
  when 4 is static:
    const
      MA_MAX_LOG_CALLBACKS* = 4 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4608:9
  else:
    let MA_MAX_LOG_CALLBACKS* = 4 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:4608:9
else:
  static :
    hint("Declaration of " & "MA_MAX_LOG_CALLBACKS" &
        " already exists, not redeclaring")
when not declared(MA_CHANNEL_INDEX_NULL):
  when 255 is static:
    const
      MA_CHANNEL_INDEX_NULL* = 255 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5797:9
  else:
    let MA_CHANNEL_INDEX_NULL* = 255 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5797:9
else:
  static :
    hint("Declaration of " & "MA_CHANNEL_INDEX_NULL" &
        " already exists, not redeclaring")
when not declared(MA_DATA_SOURCE_SELF_MANAGED_RANGE_AND_LOOP_POINT):
  when 1 is static:
    const
      MA_DATA_SOURCE_SELF_MANAGED_RANGE_AND_LOOP_POINT* = 1 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5921:9
  else:
    let MA_DATA_SOURCE_SELF_MANAGED_RANGE_AND_LOOP_POINT* = 1 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:5921:9
else:
  static :
    hint("Declaration of " & "MA_DATA_SOURCE_SELF_MANAGED_RANGE_AND_LOOP_POINT" &
        " already exists, not redeclaring")
when not declared(MA_MAX_STOCK_DEVICE_BACKENDS):
  when 64 is static:
    const
      MA_MAX_STOCK_DEVICE_BACKENDS* = 64 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7157:9
  else:
    let MA_MAX_STOCK_DEVICE_BACKENDS* = 64 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7157:9
else:
  static :
    hint("Declaration of " & "MA_MAX_STOCK_DEVICE_BACKENDS" &
        " already exists, not redeclaring")
when not declared(MA_MAX_DEVICE_NAME_LENGTH):
  when 255 is static:
    const
      MA_MAX_DEVICE_NAME_LENGTH* = 255 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7480:9
  else:
    let MA_MAX_DEVICE_NAME_LENGTH* = 255 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:7480:9
else:
  static :
    hint("Declaration of " & "MA_MAX_DEVICE_NAME_LENGTH" &
        " already exists, not redeclaring")
when not declared(MA_RESOURCE_MANAGER_MAX_JOB_THREAD_COUNT):
  when 64 is static:
    const
      MA_RESOURCE_MANAGER_MAX_JOB_THREAD_COUNT* = 64 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10108:9
  else:
    let MA_RESOURCE_MANAGER_MAX_JOB_THREAD_COUNT* = 64 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10108:9
else:
  static :
    hint("Declaration of " & "MA_RESOURCE_MANAGER_MAX_JOB_THREAD_COUNT" &
        " already exists, not redeclaring")
when not declared(MA_MAX_NODE_BUS_COUNT):
  when 254 is static:
    const
      MA_MAX_NODE_BUS_COUNT* = 254 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10362:9
  else:
    let MA_MAX_NODE_BUS_COUNT* = 254 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10362:9
else:
  static :
    hint("Declaration of " & "MA_MAX_NODE_BUS_COUNT" &
        " already exists, not redeclaring")
when not declared(MA_MAX_NODE_LOCAL_BUS_COUNT):
  when 2 is static:
    const
      MA_MAX_NODE_LOCAL_BUS_COUNT* = 2 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10367:9
  else:
    let MA_MAX_NODE_LOCAL_BUS_COUNT* = 2 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10367:9
else:
  static :
    hint("Declaration of " & "MA_MAX_NODE_LOCAL_BUS_COUNT" &
        " already exists, not redeclaring")
when not declared(MA_NODE_BUS_COUNT_UNKNOWN):
  when 255 is static:
    const
      MA_NODE_BUS_COUNT_UNKNOWN* = 255 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10371:9
  else:
    let MA_NODE_BUS_COUNT_UNKNOWN* = 255 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10371:9
else:
  static :
    hint("Declaration of " & "MA_NODE_BUS_COUNT_UNKNOWN" &
        " already exists, not redeclaring")
when not declared(MA_ENGINE_MAX_LISTENERS):
  when 4 is static:
    const
      MA_ENGINE_MAX_LISTENERS* = 4 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10871:9
  else:
    let MA_ENGINE_MAX_LISTENERS* = 4 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10871:9
else:
  static :
    hint("Declaration of " & "MA_ENGINE_MAX_LISTENERS" &
        " already exists, not redeclaring")
when not declared(MA_SOUND_SOURCE_CHANNEL_COUNT):
  when 4294967295 is static:
    const
      MA_SOUND_SOURCE_CHANNEL_COUNT* = 4294967295'i64 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10940:9
  else:
    let MA_SOUND_SOURCE_CHANNEL_COUNT* = 4294967295'i64 ## Generated based on /home/chris/work/nim/nim-miniaudio/miniaudio/miniaudio.h:10940:9
else:
  static :
    hint("Declaration of " & "MA_SOUND_SOURCE_CHANNEL_COUNT" &
        " already exists, not redeclaring")
when not declared(ma_strncpy_s):
  proc ma_strncpy_s*(dst: cstring; dstSizeInBytes: csize_t; src: cstring;
                     count: csize_t): cint {.cdecl, importc: "ma_strncpy_s".}
else:
  static :
    hint("Declaration of " & "ma_strncpy_s" & " already exists, not redeclaring")
when not declared(ma_standard_sample_rates):
  var ma_standard_sample_rates* {.importc: "ma_standard_sample_rates".}: ptr UncheckedArray[
      ma_uint32_570425831]
else:
  static :
    hint("Declaration of " & "ma_standard_sample_rates" &
        " already exists, not redeclaring")
when not declared(ma_standard_sample_rate_count):
  var ma_standard_sample_rate_count* {.importc: "ma_standard_sample_rate_count".}: ma_uint32_570425831
else:
  static :
    hint("Declaration of " & "ma_standard_sample_rate_count" &
        " already exists, not redeclaring")
when not declared(ma_version):
  proc ma_version*(pMajor: ptr ma_uint32_570425831; pMinor: ptr ma_uint32_570425831;
                   pRevision: ptr ma_uint32_570425831): void {.cdecl,
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
  proc ma_log_callback_init*(onLog: ma_log_callback_proc_570425962;
                             pUserData: pointer): ma_log_callback_570425966 {.
      cdecl, importc: "ma_log_callback_init".}
else:
  static :
    hint("Declaration of " & "ma_log_callback_init" &
        " already exists, not redeclaring")
when not declared(ma_log_init):
  proc ma_log_init*(pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                    pLog: ptr ma_log_570425970): ma_result_570425879 {.cdecl,
      importc: "ma_log_init".}
else:
  static :
    hint("Declaration of " & "ma_log_init" & " already exists, not redeclaring")
when not declared(ma_log_uninit):
  proc ma_log_uninit*(pLog: ptr ma_log_570425970): void {.cdecl,
      importc: "ma_log_uninit".}
else:
  static :
    hint("Declaration of " & "ma_log_uninit" &
        " already exists, not redeclaring")
when not declared(ma_log_register_callback):
  proc ma_log_register_callback*(pLog: ptr ma_log_570425970;
                                 callback: ma_log_callback_570425966): ma_result_570425879 {.
      cdecl, importc: "ma_log_register_callback".}
else:
  static :
    hint("Declaration of " & "ma_log_register_callback" &
        " already exists, not redeclaring")
when not declared(ma_log_unregister_callback):
  proc ma_log_unregister_callback*(pLog: ptr ma_log_570425970;
                                   callback: ma_log_callback_570425966): ma_result_570425879 {.
      cdecl, importc: "ma_log_unregister_callback".}
else:
  static :
    hint("Declaration of " & "ma_log_unregister_callback" &
        " already exists, not redeclaring")
when not declared(ma_log_post):
  proc ma_log_post*(pLog: ptr ma_log_570425970; level: ma_uint32_570425831;
                    pMessage: cstring): ma_result_570425879 {.cdecl,
      importc: "ma_log_post".}
else:
  static :
    hint("Declaration of " & "ma_log_post" & " already exists, not redeclaring")
when not declared(ma_log_postv):
  proc ma_log_postv*(pLog: ptr ma_log_570425970; level: ma_uint32_570425831;
                     pFormat: cstring): ma_result_570425879 {.cdecl, varargs,
      importc: "ma_log_postv".}
else:
  static :
    hint("Declaration of " & "ma_log_postv" & " already exists, not redeclaring")
when not declared(ma_log_postf):
  proc ma_log_postf*(pLog: ptr ma_log_570425970; level: ma_uint32_570425831;
                     pFormat: cstring): ma_result_570425879 {.cdecl, varargs,
      importc: "ma_log_postf".}
else:
  static :
    hint("Declaration of " & "ma_log_postf" & " already exists, not redeclaring")
when not declared(ma_dlopen):
  proc ma_dlopen*(pLog: ptr ma_log_570425970; filename: cstring): ma_handle_570425847 {.
      cdecl, importc: "ma_dlopen".}
else:
  static :
    hint("Declaration of " & "ma_dlopen" & " already exists, not redeclaring")
when not declared(ma_dlclose):
  proc ma_dlclose*(pLog: ptr ma_log_570425970; handle: ma_handle_570425847): void {.
      cdecl, importc: "ma_dlclose".}
else:
  static :
    hint("Declaration of " & "ma_dlclose" & " already exists, not redeclaring")
when not declared(ma_dlsym):
  proc ma_dlsym*(pLog: ptr ma_log_570425970; handle: ma_handle_570425847;
                 symbol: cstring): ma_proc_570425851 {.cdecl,
      importc: "ma_dlsym".}
else:
  static :
    hint("Declaration of " & "ma_dlsym" & " already exists, not redeclaring")
when not declared(ma_biquad_config_init):
  proc ma_biquad_config_init*(format: ma_format_570425895; channels: ma_uint32_570425831;
                              b0: cdouble; b1: cdouble; b2: cdouble;
                              a0: cdouble; a1: cdouble; a2: cdouble): ma_biquad_config_570425978 {.
      cdecl, importc: "ma_biquad_config_init".}
else:
  static :
    hint("Declaration of " & "ma_biquad_config_init" &
        " already exists, not redeclaring")
when not declared(ma_biquad_get_heap_size):
  proc ma_biquad_get_heap_size*(pConfig: ptr ma_biquad_config_570425978;
                                pHeapSizeInBytes: ptr csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_biquad_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_biquad_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_biquad_init_preallocated):
  proc ma_biquad_init_preallocated*(pConfig: ptr ma_biquad_config_570425978;
                                    pHeap: pointer; pBQ: ptr ma_biquad_570425982): ma_result_570425879 {.
      cdecl, importc: "ma_biquad_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_biquad_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_biquad_init):
  proc ma_biquad_init*(pConfig: ptr ma_biquad_config_570425978;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                       pBQ: ptr ma_biquad_570425982): ma_result_570425879 {.
      cdecl, importc: "ma_biquad_init".}
else:
  static :
    hint("Declaration of " & "ma_biquad_init" &
        " already exists, not redeclaring")
when not declared(ma_biquad_uninit):
  proc ma_biquad_uninit*(pBQ: ptr ma_biquad_570425982;
                         pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_biquad_uninit".}
else:
  static :
    hint("Declaration of " & "ma_biquad_uninit" &
        " already exists, not redeclaring")
when not declared(ma_biquad_reinit):
  proc ma_biquad_reinit*(pConfig: ptr ma_biquad_config_570425978;
                         pBQ: ptr ma_biquad_570425982): ma_result_570425879 {.
      cdecl, importc: "ma_biquad_reinit".}
else:
  static :
    hint("Declaration of " & "ma_biquad_reinit" &
        " already exists, not redeclaring")
when not declared(ma_biquad_clear_cache):
  proc ma_biquad_clear_cache*(pBQ: ptr ma_biquad_570425982): ma_result_570425879 {.
      cdecl, importc: "ma_biquad_clear_cache".}
else:
  static :
    hint("Declaration of " & "ma_biquad_clear_cache" &
        " already exists, not redeclaring")
when not declared(ma_biquad_process_pcm_frames):
  proc ma_biquad_process_pcm_frames*(pBQ: ptr ma_biquad_570425982;
                                     pFramesOut: pointer; pFramesIn: pointer;
                                     frameCount: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_biquad_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_biquad_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_biquad_get_latency):
  proc ma_biquad_get_latency*(pBQ: ptr ma_biquad_570425982): ma_uint32_570425831 {.
      cdecl, importc: "ma_biquad_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_biquad_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_config_init):
  proc ma_lpf1_config_init*(format: ma_format_570425895; channels: ma_uint32_570425831;
                            sampleRate: ma_uint32_570425831;
                            cutoffFrequency: cdouble): ma_lpf1_config_570425986 {.
      cdecl, importc: "ma_lpf1_config_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_config_init" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_config_init):
  proc ma_lpf2_config_init*(format: ma_format_570425895; channels: ma_uint32_570425831;
                            sampleRate: ma_uint32_570425831;
                            cutoffFrequency: cdouble; q: cdouble): ma_lpf2_config_570425988 {.
      cdecl, importc: "ma_lpf2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_config_init" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_get_heap_size):
  proc ma_lpf1_get_heap_size*(pConfig: ptr ma_lpf1_config_570425986;
                              pHeapSizeInBytes: ptr csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_lpf1_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_init_preallocated):
  proc ma_lpf1_init_preallocated*(pConfig: ptr ma_lpf1_config_570425986;
                                  pHeap: pointer; pLPF: ptr ma_lpf1_570425992): ma_result_570425879 {.
      cdecl, importc: "ma_lpf1_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_init):
  proc ma_lpf1_init*(pConfig: ptr ma_lpf1_config_570425986;
                     pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                     pLPF: ptr ma_lpf1_570425992): ma_result_570425879 {.cdecl,
      importc: "ma_lpf1_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_init" & " already exists, not redeclaring")
when not declared(ma_lpf1_uninit):
  proc ma_lpf1_uninit*(pLPF: ptr ma_lpf1_570425992;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_lpf1_uninit".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_uninit" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_reinit):
  proc ma_lpf1_reinit*(pConfig: ptr ma_lpf1_config_570425986; pLPF: ptr ma_lpf1_570425992): ma_result_570425879 {.
      cdecl, importc: "ma_lpf1_reinit".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_reinit" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_clear_cache):
  proc ma_lpf1_clear_cache*(pLPF: ptr ma_lpf1_570425992): ma_result_570425879 {.
      cdecl, importc: "ma_lpf1_clear_cache".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_clear_cache" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_process_pcm_frames):
  proc ma_lpf1_process_pcm_frames*(pLPF: ptr ma_lpf1_570425992;
                                   pFramesOut: pointer; pFramesIn: pointer;
                                   frameCount: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_lpf1_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_get_latency):
  proc ma_lpf1_get_latency*(pLPF: ptr ma_lpf1_570425992): ma_uint32_570425831 {.
      cdecl, importc: "ma_lpf1_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_get_heap_size):
  proc ma_lpf2_get_heap_size*(pConfig: ptr ma_lpf2_config_570425988;
                              pHeapSizeInBytes: ptr csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_lpf2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_init_preallocated):
  proc ma_lpf2_init_preallocated*(pConfig: ptr ma_lpf2_config_570425988;
                                  pHeap: pointer; pHPF: ptr ma_lpf2_570425996): ma_result_570425879 {.
      cdecl, importc: "ma_lpf2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_init):
  proc ma_lpf2_init*(pConfig: ptr ma_lpf2_config_570425988;
                     pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                     pLPF: ptr ma_lpf2_570425996): ma_result_570425879 {.cdecl,
      importc: "ma_lpf2_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_init" & " already exists, not redeclaring")
when not declared(ma_lpf2_uninit):
  proc ma_lpf2_uninit*(pLPF: ptr ma_lpf2_570425996;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_lpf2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_uninit" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_reinit):
  proc ma_lpf2_reinit*(pConfig: ptr ma_lpf2_config_570425988; pLPF: ptr ma_lpf2_570425996): ma_result_570425879 {.
      cdecl, importc: "ma_lpf2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_reinit" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_clear_cache):
  proc ma_lpf2_clear_cache*(pLPF: ptr ma_lpf2_570425996): ma_result_570425879 {.
      cdecl, importc: "ma_lpf2_clear_cache".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_clear_cache" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_process_pcm_frames):
  proc ma_lpf2_process_pcm_frames*(pLPF: ptr ma_lpf2_570425996;
                                   pFramesOut: pointer; pFramesIn: pointer;
                                   frameCount: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_lpf2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_get_latency):
  proc ma_lpf2_get_latency*(pLPF: ptr ma_lpf2_570425996): ma_uint32_570425831 {.
      cdecl, importc: "ma_lpf2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_lpf_config_init):
  proc ma_lpf_config_init*(format: ma_format_570425895; channels: ma_uint32_570425831;
                           sampleRate: ma_uint32_570425831;
                           cutoffFrequency: cdouble; order: ma_uint32_570425831): ma_lpf_config_570426000 {.
      cdecl, importc: "ma_lpf_config_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf_config_init" &
        " already exists, not redeclaring")
when not declared(ma_lpf_get_heap_size):
  proc ma_lpf_get_heap_size*(pConfig: ptr ma_lpf_config_570426000;
                             pHeapSizeInBytes: ptr csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_lpf_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_lpf_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_lpf_init_preallocated):
  proc ma_lpf_init_preallocated*(pConfig: ptr ma_lpf_config_570426000;
                                 pHeap: pointer; pLPF: ptr ma_lpf_570426004): ma_result_570425879 {.
      cdecl, importc: "ma_lpf_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_lpf_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_lpf_init):
  proc ma_lpf_init*(pConfig: ptr ma_lpf_config_570426000;
                    pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                    pLPF: ptr ma_lpf_570426004): ma_result_570425879 {.cdecl,
      importc: "ma_lpf_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf_init" & " already exists, not redeclaring")
when not declared(ma_lpf_uninit):
  proc ma_lpf_uninit*(pLPF: ptr ma_lpf_570426004;
                      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_lpf_uninit".}
else:
  static :
    hint("Declaration of " & "ma_lpf_uninit" &
        " already exists, not redeclaring")
when not declared(ma_lpf_reinit):
  proc ma_lpf_reinit*(pConfig: ptr ma_lpf_config_570426000; pLPF: ptr ma_lpf_570426004): ma_result_570425879 {.
      cdecl, importc: "ma_lpf_reinit".}
else:
  static :
    hint("Declaration of " & "ma_lpf_reinit" &
        " already exists, not redeclaring")
when not declared(ma_lpf_clear_cache):
  proc ma_lpf_clear_cache*(pLPF: ptr ma_lpf_570426004): ma_result_570425879 {.
      cdecl, importc: "ma_lpf_clear_cache".}
else:
  static :
    hint("Declaration of " & "ma_lpf_clear_cache" &
        " already exists, not redeclaring")
when not declared(ma_lpf_process_pcm_frames):
  proc ma_lpf_process_pcm_frames*(pLPF: ptr ma_lpf_570426004;
                                  pFramesOut: pointer; pFramesIn: pointer;
                                  frameCount: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_lpf_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_lpf_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_lpf_get_latency):
  proc ma_lpf_get_latency*(pLPF: ptr ma_lpf_570426004): ma_uint32_570425831 {.
      cdecl, importc: "ma_lpf_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_lpf_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_hpf1_config_init):
  proc ma_hpf1_config_init*(format: ma_format_570425895; channels: ma_uint32_570425831;
                            sampleRate: ma_uint32_570425831;
                            cutoffFrequency: cdouble): ma_hpf1_config_570426008 {.
      cdecl, importc: "ma_hpf1_config_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_config_init" &
        " already exists, not redeclaring")
when not declared(ma_hpf2_config_init):
  proc ma_hpf2_config_init*(format: ma_format_570425895; channels: ma_uint32_570425831;
                            sampleRate: ma_uint32_570425831;
                            cutoffFrequency: cdouble; q: cdouble): ma_hpf2_config_570426010 {.
      cdecl, importc: "ma_hpf2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_config_init" &
        " already exists, not redeclaring")
when not declared(ma_hpf1_get_heap_size):
  proc ma_hpf1_get_heap_size*(pConfig: ptr ma_hpf1_config_570426008;
                              pHeapSizeInBytes: ptr csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_hpf1_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_hpf1_init_preallocated):
  proc ma_hpf1_init_preallocated*(pConfig: ptr ma_hpf1_config_570426008;
                                  pHeap: pointer; pLPF: ptr ma_hpf1_570426014): ma_result_570425879 {.
      cdecl, importc: "ma_hpf1_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_hpf1_init):
  proc ma_hpf1_init*(pConfig: ptr ma_hpf1_config_570426008;
                     pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                     pHPF: ptr ma_hpf1_570426014): ma_result_570425879 {.cdecl,
      importc: "ma_hpf1_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_init" & " already exists, not redeclaring")
when not declared(ma_hpf1_uninit):
  proc ma_hpf1_uninit*(pHPF: ptr ma_hpf1_570426014;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_hpf1_uninit".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_uninit" &
        " already exists, not redeclaring")
when not declared(ma_hpf1_reinit):
  proc ma_hpf1_reinit*(pConfig: ptr ma_hpf1_config_570426008; pHPF: ptr ma_hpf1_570426014): ma_result_570425879 {.
      cdecl, importc: "ma_hpf1_reinit".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_reinit" &
        " already exists, not redeclaring")
when not declared(ma_hpf1_process_pcm_frames):
  proc ma_hpf1_process_pcm_frames*(pHPF: ptr ma_hpf1_570426014;
                                   pFramesOut: pointer; pFramesIn: pointer;
                                   frameCount: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_hpf1_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_hpf1_get_latency):
  proc ma_hpf1_get_latency*(pHPF: ptr ma_hpf1_570426014): ma_uint32_570425831 {.
      cdecl, importc: "ma_hpf1_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_hpf2_get_heap_size):
  proc ma_hpf2_get_heap_size*(pConfig: ptr ma_hpf2_config_570426010;
                              pHeapSizeInBytes: ptr csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_hpf2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_hpf2_init_preallocated):
  proc ma_hpf2_init_preallocated*(pConfig: ptr ma_hpf2_config_570426010;
                                  pHeap: pointer; pHPF: ptr ma_hpf2_570426018): ma_result_570425879 {.
      cdecl, importc: "ma_hpf2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_hpf2_init):
  proc ma_hpf2_init*(pConfig: ptr ma_hpf2_config_570426010;
                     pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                     pHPF: ptr ma_hpf2_570426018): ma_result_570425879 {.cdecl,
      importc: "ma_hpf2_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_init" & " already exists, not redeclaring")
when not declared(ma_hpf2_uninit):
  proc ma_hpf2_uninit*(pHPF: ptr ma_hpf2_570426018;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_hpf2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_uninit" &
        " already exists, not redeclaring")
when not declared(ma_hpf2_reinit):
  proc ma_hpf2_reinit*(pConfig: ptr ma_hpf2_config_570426010; pHPF: ptr ma_hpf2_570426018): ma_result_570425879 {.
      cdecl, importc: "ma_hpf2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_reinit" &
        " already exists, not redeclaring")
when not declared(ma_hpf2_process_pcm_frames):
  proc ma_hpf2_process_pcm_frames*(pHPF: ptr ma_hpf2_570426018;
                                   pFramesOut: pointer; pFramesIn: pointer;
                                   frameCount: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_hpf2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_hpf2_get_latency):
  proc ma_hpf2_get_latency*(pHPF: ptr ma_hpf2_570426018): ma_uint32_570425831 {.
      cdecl, importc: "ma_hpf2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_hpf_config_init):
  proc ma_hpf_config_init*(format: ma_format_570425895; channels: ma_uint32_570425831;
                           sampleRate: ma_uint32_570425831;
                           cutoffFrequency: cdouble; order: ma_uint32_570425831): ma_hpf_config_570426022 {.
      cdecl, importc: "ma_hpf_config_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf_config_init" &
        " already exists, not redeclaring")
when not declared(ma_hpf_get_heap_size):
  proc ma_hpf_get_heap_size*(pConfig: ptr ma_hpf_config_570426022;
                             pHeapSizeInBytes: ptr csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_hpf_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_hpf_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_hpf_init_preallocated):
  proc ma_hpf_init_preallocated*(pConfig: ptr ma_hpf_config_570426022;
                                 pHeap: pointer; pLPF: ptr ma_hpf_570426026): ma_result_570425879 {.
      cdecl, importc: "ma_hpf_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_hpf_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_hpf_init):
  proc ma_hpf_init*(pConfig: ptr ma_hpf_config_570426022;
                    pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                    pHPF: ptr ma_hpf_570426026): ma_result_570425879 {.cdecl,
      importc: "ma_hpf_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf_init" & " already exists, not redeclaring")
when not declared(ma_hpf_uninit):
  proc ma_hpf_uninit*(pHPF: ptr ma_hpf_570426026;
                      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_hpf_uninit".}
else:
  static :
    hint("Declaration of " & "ma_hpf_uninit" &
        " already exists, not redeclaring")
when not declared(ma_hpf_reinit):
  proc ma_hpf_reinit*(pConfig: ptr ma_hpf_config_570426022; pHPF: ptr ma_hpf_570426026): ma_result_570425879 {.
      cdecl, importc: "ma_hpf_reinit".}
else:
  static :
    hint("Declaration of " & "ma_hpf_reinit" &
        " already exists, not redeclaring")
when not declared(ma_hpf_process_pcm_frames):
  proc ma_hpf_process_pcm_frames*(pHPF: ptr ma_hpf_570426026;
                                  pFramesOut: pointer; pFramesIn: pointer;
                                  frameCount: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_hpf_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_hpf_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_hpf_get_latency):
  proc ma_hpf_get_latency*(pHPF: ptr ma_hpf_570426026): ma_uint32_570425831 {.
      cdecl, importc: "ma_hpf_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_hpf_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_bpf2_config_init):
  proc ma_bpf2_config_init*(format: ma_format_570425895; channels: ma_uint32_570425831;
                            sampleRate: ma_uint32_570425831;
                            cutoffFrequency: cdouble; q: cdouble): ma_bpf2_config_570426030 {.
      cdecl, importc: "ma_bpf2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_config_init" &
        " already exists, not redeclaring")
when not declared(ma_bpf2_get_heap_size):
  proc ma_bpf2_get_heap_size*(pConfig: ptr ma_bpf2_config_570426030;
                              pHeapSizeInBytes: ptr csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_bpf2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_bpf2_init_preallocated):
  proc ma_bpf2_init_preallocated*(pConfig: ptr ma_bpf2_config_570426030;
                                  pHeap: pointer; pBPF: ptr ma_bpf2_570426034): ma_result_570425879 {.
      cdecl, importc: "ma_bpf2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_bpf2_init):
  proc ma_bpf2_init*(pConfig: ptr ma_bpf2_config_570426030;
                     pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                     pBPF: ptr ma_bpf2_570426034): ma_result_570425879 {.cdecl,
      importc: "ma_bpf2_init".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_init" & " already exists, not redeclaring")
when not declared(ma_bpf2_uninit):
  proc ma_bpf2_uninit*(pBPF: ptr ma_bpf2_570426034;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_bpf2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_uninit" &
        " already exists, not redeclaring")
when not declared(ma_bpf2_reinit):
  proc ma_bpf2_reinit*(pConfig: ptr ma_bpf2_config_570426030; pBPF: ptr ma_bpf2_570426034): ma_result_570425879 {.
      cdecl, importc: "ma_bpf2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_reinit" &
        " already exists, not redeclaring")
when not declared(ma_bpf2_process_pcm_frames):
  proc ma_bpf2_process_pcm_frames*(pBPF: ptr ma_bpf2_570426034;
                                   pFramesOut: pointer; pFramesIn: pointer;
                                   frameCount: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_bpf2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_bpf2_get_latency):
  proc ma_bpf2_get_latency*(pBPF: ptr ma_bpf2_570426034): ma_uint32_570425831 {.
      cdecl, importc: "ma_bpf2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_bpf_config_init):
  proc ma_bpf_config_init*(format: ma_format_570425895; channels: ma_uint32_570425831;
                           sampleRate: ma_uint32_570425831;
                           cutoffFrequency: cdouble; order: ma_uint32_570425831): ma_bpf_config_570426038 {.
      cdecl, importc: "ma_bpf_config_init".}
else:
  static :
    hint("Declaration of " & "ma_bpf_config_init" &
        " already exists, not redeclaring")
when not declared(ma_bpf_get_heap_size):
  proc ma_bpf_get_heap_size*(pConfig: ptr ma_bpf_config_570426038;
                             pHeapSizeInBytes: ptr csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_bpf_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_bpf_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_bpf_init_preallocated):
  proc ma_bpf_init_preallocated*(pConfig: ptr ma_bpf_config_570426038;
                                 pHeap: pointer; pBPF: ptr ma_bpf_570426042): ma_result_570425879 {.
      cdecl, importc: "ma_bpf_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_bpf_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_bpf_init):
  proc ma_bpf_init*(pConfig: ptr ma_bpf_config_570426038;
                    pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                    pBPF: ptr ma_bpf_570426042): ma_result_570425879 {.cdecl,
      importc: "ma_bpf_init".}
else:
  static :
    hint("Declaration of " & "ma_bpf_init" & " already exists, not redeclaring")
when not declared(ma_bpf_uninit):
  proc ma_bpf_uninit*(pBPF: ptr ma_bpf_570426042;
                      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_bpf_uninit".}
else:
  static :
    hint("Declaration of " & "ma_bpf_uninit" &
        " already exists, not redeclaring")
when not declared(ma_bpf_reinit):
  proc ma_bpf_reinit*(pConfig: ptr ma_bpf_config_570426038; pBPF: ptr ma_bpf_570426042): ma_result_570425879 {.
      cdecl, importc: "ma_bpf_reinit".}
else:
  static :
    hint("Declaration of " & "ma_bpf_reinit" &
        " already exists, not redeclaring")
when not declared(ma_bpf_process_pcm_frames):
  proc ma_bpf_process_pcm_frames*(pBPF: ptr ma_bpf_570426042;
                                  pFramesOut: pointer; pFramesIn: pointer;
                                  frameCount: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_bpf_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_bpf_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_bpf_get_latency):
  proc ma_bpf_get_latency*(pBPF: ptr ma_bpf_570426042): ma_uint32_570425831 {.
      cdecl, importc: "ma_bpf_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_bpf_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_notch2_config_init):
  proc ma_notch2_config_init*(format: ma_format_570425895; channels: ma_uint32_570425831;
                              sampleRate: ma_uint32_570425831; q: cdouble;
                              frequency: cdouble): ma_notch2_config_570426046 {.
      cdecl, importc: "ma_notch2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_notch2_config_init" &
        " already exists, not redeclaring")
when not declared(ma_notch2_get_heap_size):
  proc ma_notch2_get_heap_size*(pConfig: ptr ma_notch2_config_570426046;
                                pHeapSizeInBytes: ptr csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_notch2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_notch2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_notch2_init_preallocated):
  proc ma_notch2_init_preallocated*(pConfig: ptr ma_notch2_config_570426046;
                                    pHeap: pointer; pFilter: ptr ma_notch2_570426052): ma_result_570425879 {.
      cdecl, importc: "ma_notch2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_notch2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_notch2_init):
  proc ma_notch2_init*(pConfig: ptr ma_notch2_config_570426046;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                       pFilter: ptr ma_notch2_570426052): ma_result_570425879 {.
      cdecl, importc: "ma_notch2_init".}
else:
  static :
    hint("Declaration of " & "ma_notch2_init" &
        " already exists, not redeclaring")
when not declared(ma_notch2_uninit):
  proc ma_notch2_uninit*(pFilter: ptr ma_notch2_570426052;
                         pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_notch2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_notch2_uninit" &
        " already exists, not redeclaring")
when not declared(ma_notch2_reinit):
  proc ma_notch2_reinit*(pConfig: ptr ma_notch2_config_570426046;
                         pFilter: ptr ma_notch2_570426052): ma_result_570425879 {.
      cdecl, importc: "ma_notch2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_notch2_reinit" &
        " already exists, not redeclaring")
when not declared(ma_notch2_process_pcm_frames):
  proc ma_notch2_process_pcm_frames*(pFilter: ptr ma_notch2_570426052;
                                     pFramesOut: pointer; pFramesIn: pointer;
                                     frameCount: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_notch2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_notch2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_notch2_get_latency):
  proc ma_notch2_get_latency*(pFilter: ptr ma_notch2_570426052): ma_uint32_570425831 {.
      cdecl, importc: "ma_notch2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_notch2_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_peak2_config_init):
  proc ma_peak2_config_init*(format: ma_format_570425895; channels: ma_uint32_570425831;
                             sampleRate: ma_uint32_570425831; gainDB: cdouble;
                             q: cdouble; frequency: cdouble): ma_peak2_config_570426056 {.
      cdecl, importc: "ma_peak2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_peak2_config_init" &
        " already exists, not redeclaring")
when not declared(ma_peak2_get_heap_size):
  proc ma_peak2_get_heap_size*(pConfig: ptr ma_peak2_config_570426056;
                               pHeapSizeInBytes: ptr csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_peak2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_peak2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_peak2_init_preallocated):
  proc ma_peak2_init_preallocated*(pConfig: ptr ma_peak2_config_570426056;
                                   pHeap: pointer; pFilter: ptr ma_peak2_570426062): ma_result_570425879 {.
      cdecl, importc: "ma_peak2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_peak2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_peak2_init):
  proc ma_peak2_init*(pConfig: ptr ma_peak2_config_570426056;
                      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                      pFilter: ptr ma_peak2_570426062): ma_result_570425879 {.
      cdecl, importc: "ma_peak2_init".}
else:
  static :
    hint("Declaration of " & "ma_peak2_init" &
        " already exists, not redeclaring")
when not declared(ma_peak2_uninit):
  proc ma_peak2_uninit*(pFilter: ptr ma_peak2_570426062;
                        pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_peak2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_peak2_uninit" &
        " already exists, not redeclaring")
when not declared(ma_peak2_reinit):
  proc ma_peak2_reinit*(pConfig: ptr ma_peak2_config_570426056;
                        pFilter: ptr ma_peak2_570426062): ma_result_570425879 {.
      cdecl, importc: "ma_peak2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_peak2_reinit" &
        " already exists, not redeclaring")
when not declared(ma_peak2_process_pcm_frames):
  proc ma_peak2_process_pcm_frames*(pFilter: ptr ma_peak2_570426062;
                                    pFramesOut: pointer; pFramesIn: pointer;
                                    frameCount: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_peak2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_peak2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_peak2_get_latency):
  proc ma_peak2_get_latency*(pFilter: ptr ma_peak2_570426062): ma_uint32_570425831 {.
      cdecl, importc: "ma_peak2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_peak2_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_config_init):
  proc ma_loshelf2_config_init*(format: ma_format_570425895;
                                channels: ma_uint32_570425831;
                                sampleRate: ma_uint32_570425831;
                                gainDB: cdouble; shelfSlope: cdouble;
                                frequency: cdouble): ma_loshelf2_config_570426066 {.
      cdecl, importc: "ma_loshelf2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_config_init" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_get_heap_size):
  proc ma_loshelf2_get_heap_size*(pConfig: ptr ma_loshelf2_config_570426066;
                                  pHeapSizeInBytes: ptr csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_loshelf2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_init_preallocated):
  proc ma_loshelf2_init_preallocated*(pConfig: ptr ma_loshelf2_config_570426066;
                                      pHeap: pointer; pFilter: ptr ma_loshelf2_570426072): ma_result_570425879 {.
      cdecl, importc: "ma_loshelf2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_init):
  proc ma_loshelf2_init*(pConfig: ptr ma_loshelf2_config_570426066;
                         pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                         pFilter: ptr ma_loshelf2_570426072): ma_result_570425879 {.
      cdecl, importc: "ma_loshelf2_init".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_init" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_uninit):
  proc ma_loshelf2_uninit*(pFilter: ptr ma_loshelf2_570426072;
                           pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_loshelf2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_uninit" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_reinit):
  proc ma_loshelf2_reinit*(pConfig: ptr ma_loshelf2_config_570426066;
                           pFilter: ptr ma_loshelf2_570426072): ma_result_570425879 {.
      cdecl, importc: "ma_loshelf2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_reinit" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_process_pcm_frames):
  proc ma_loshelf2_process_pcm_frames*(pFilter: ptr ma_loshelf2_570426072;
                                       pFramesOut: pointer; pFramesIn: pointer;
                                       frameCount: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_loshelf2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_get_latency):
  proc ma_loshelf2_get_latency*(pFilter: ptr ma_loshelf2_570426072): ma_uint32_570425831 {.
      cdecl, importc: "ma_loshelf2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_config_init):
  proc ma_hishelf2_config_init*(format: ma_format_570425895;
                                channels: ma_uint32_570425831;
                                sampleRate: ma_uint32_570425831;
                                gainDB: cdouble; shelfSlope: cdouble;
                                frequency: cdouble): ma_hishelf2_config_570426076 {.
      cdecl, importc: "ma_hishelf2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_config_init" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_get_heap_size):
  proc ma_hishelf2_get_heap_size*(pConfig: ptr ma_hishelf2_config_570426076;
                                  pHeapSizeInBytes: ptr csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_hishelf2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_init_preallocated):
  proc ma_hishelf2_init_preallocated*(pConfig: ptr ma_hishelf2_config_570426076;
                                      pHeap: pointer; pFilter: ptr ma_hishelf2_570426082): ma_result_570425879 {.
      cdecl, importc: "ma_hishelf2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_init):
  proc ma_hishelf2_init*(pConfig: ptr ma_hishelf2_config_570426076;
                         pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                         pFilter: ptr ma_hishelf2_570426082): ma_result_570425879 {.
      cdecl, importc: "ma_hishelf2_init".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_init" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_uninit):
  proc ma_hishelf2_uninit*(pFilter: ptr ma_hishelf2_570426082;
                           pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_hishelf2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_uninit" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_reinit):
  proc ma_hishelf2_reinit*(pConfig: ptr ma_hishelf2_config_570426076;
                           pFilter: ptr ma_hishelf2_570426082): ma_result_570425879 {.
      cdecl, importc: "ma_hishelf2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_reinit" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_process_pcm_frames):
  proc ma_hishelf2_process_pcm_frames*(pFilter: ptr ma_hishelf2_570426082;
                                       pFramesOut: pointer; pFramesIn: pointer;
                                       frameCount: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_hishelf2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_get_latency):
  proc ma_hishelf2_get_latency*(pFilter: ptr ma_hishelf2_570426082): ma_uint32_570425831 {.
      cdecl, importc: "ma_hishelf2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_delay_config_init):
  proc ma_delay_config_init*(channels: ma_uint32_570425831;
                             sampleRate: ma_uint32_570425831;
                             delayInFrames: ma_uint32_570425831; decay: cfloat): ma_delay_config_570426086 {.
      cdecl, importc: "ma_delay_config_init".}
else:
  static :
    hint("Declaration of " & "ma_delay_config_init" &
        " already exists, not redeclaring")
when not declared(ma_delay_init):
  proc ma_delay_init*(pConfig: ptr ma_delay_config_570426086;
                      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                      pDelay: ptr ma_delay_570426090): ma_result_570425879 {.
      cdecl, importc: "ma_delay_init".}
else:
  static :
    hint("Declaration of " & "ma_delay_init" &
        " already exists, not redeclaring")
when not declared(ma_delay_uninit):
  proc ma_delay_uninit*(pDelay: ptr ma_delay_570426090;
                        pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_delay_uninit".}
else:
  static :
    hint("Declaration of " & "ma_delay_uninit" &
        " already exists, not redeclaring")
when not declared(ma_delay_process_pcm_frames):
  proc ma_delay_process_pcm_frames*(pDelay: ptr ma_delay_570426090;
                                    pFramesOut: pointer; pFramesIn: pointer;
                                    frameCount: ma_uint32_570425831): ma_result_570425879 {.
      cdecl, importc: "ma_delay_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_delay_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_delay_set_decay):
  proc ma_delay_set_decay*(pDelay: ptr ma_delay_570426090; value: cfloat): void {.
      cdecl, importc: "ma_delay_set_decay".}
else:
  static :
    hint("Declaration of " & "ma_delay_set_decay" &
        " already exists, not redeclaring")
when not declared(ma_delay_get_decay):
  proc ma_delay_get_decay*(pDelay: ptr ma_delay_570426090): cfloat {.cdecl,
      importc: "ma_delay_get_decay".}
else:
  static :
    hint("Declaration of " & "ma_delay_get_decay" &
        " already exists, not redeclaring")
when not declared(ma_gainer_config_init):
  proc ma_gainer_config_init*(channels: ma_uint32_570425831;
                              smoothTimeInFrames: ma_uint32_570425831): ma_gainer_config_570426094 {.
      cdecl, importc: "ma_gainer_config_init".}
else:
  static :
    hint("Declaration of " & "ma_gainer_config_init" &
        " already exists, not redeclaring")
when not declared(ma_gainer_get_heap_size):
  proc ma_gainer_get_heap_size*(pConfig: ptr ma_gainer_config_570426094;
                                pHeapSizeInBytes: ptr csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_gainer_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_gainer_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_gainer_init_preallocated):
  proc ma_gainer_init_preallocated*(pConfig: ptr ma_gainer_config_570426094;
                                    pHeap: pointer; pGainer: ptr ma_gainer_570426098): ma_result_570425879 {.
      cdecl, importc: "ma_gainer_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_gainer_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_gainer_init):
  proc ma_gainer_init*(pConfig: ptr ma_gainer_config_570426094;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                       pGainer: ptr ma_gainer_570426098): ma_result_570425879 {.
      cdecl, importc: "ma_gainer_init".}
else:
  static :
    hint("Declaration of " & "ma_gainer_init" &
        " already exists, not redeclaring")
when not declared(ma_gainer_uninit):
  proc ma_gainer_uninit*(pGainer: ptr ma_gainer_570426098;
                         pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_gainer_uninit".}
else:
  static :
    hint("Declaration of " & "ma_gainer_uninit" &
        " already exists, not redeclaring")
when not declared(ma_gainer_process_pcm_frames):
  proc ma_gainer_process_pcm_frames*(pGainer: ptr ma_gainer_570426098;
                                     pFramesOut: pointer; pFramesIn: pointer;
                                     frameCount: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_gainer_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_gainer_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_gainer_set_gain):
  proc ma_gainer_set_gain*(pGainer: ptr ma_gainer_570426098; newGain: cfloat): ma_result_570425879 {.
      cdecl, importc: "ma_gainer_set_gain".}
else:
  static :
    hint("Declaration of " & "ma_gainer_set_gain" &
        " already exists, not redeclaring")
when not declared(ma_gainer_set_gains):
  proc ma_gainer_set_gains*(pGainer: ptr ma_gainer_570426098;
                            pNewGains: ptr cfloat): ma_result_570425879 {.cdecl,
      importc: "ma_gainer_set_gains".}
else:
  static :
    hint("Declaration of " & "ma_gainer_set_gains" &
        " already exists, not redeclaring")
when not declared(ma_gainer_set_master_volume):
  proc ma_gainer_set_master_volume*(pGainer: ptr ma_gainer_570426098;
                                    volume: cfloat): ma_result_570425879 {.
      cdecl, importc: "ma_gainer_set_master_volume".}
else:
  static :
    hint("Declaration of " & "ma_gainer_set_master_volume" &
        " already exists, not redeclaring")
when not declared(ma_gainer_get_master_volume):
  proc ma_gainer_get_master_volume*(pGainer: ptr ma_gainer_570426098;
                                    pVolume: ptr cfloat): ma_result_570425879 {.
      cdecl, importc: "ma_gainer_get_master_volume".}
else:
  static :
    hint("Declaration of " & "ma_gainer_get_master_volume" &
        " already exists, not redeclaring")
when not declared(ma_panner_config_init):
  proc ma_panner_config_init*(format: ma_format_570425895; channels: ma_uint32_570425831): ma_panner_config_570426106 {.
      cdecl, importc: "ma_panner_config_init".}
else:
  static :
    hint("Declaration of " & "ma_panner_config_init" &
        " already exists, not redeclaring")
when not declared(ma_panner_init):
  proc ma_panner_init*(pConfig: ptr ma_panner_config_570426106;
                       pPanner: ptr ma_panner_570426110): ma_result_570425879 {.
      cdecl, importc: "ma_panner_init".}
else:
  static :
    hint("Declaration of " & "ma_panner_init" &
        " already exists, not redeclaring")
when not declared(ma_panner_process_pcm_frames):
  proc ma_panner_process_pcm_frames*(pPanner: ptr ma_panner_570426110;
                                     pFramesOut: pointer; pFramesIn: pointer;
                                     frameCount: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_panner_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_panner_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_panner_set_mode):
  proc ma_panner_set_mode*(pPanner: ptr ma_panner_570426110; mode: ma_pan_mode_570426102): void {.
      cdecl, importc: "ma_panner_set_mode".}
else:
  static :
    hint("Declaration of " & "ma_panner_set_mode" &
        " already exists, not redeclaring")
when not declared(ma_panner_get_mode):
  proc ma_panner_get_mode*(pPanner: ptr ma_panner_570426110): ma_pan_mode_570426102 {.
      cdecl, importc: "ma_panner_get_mode".}
else:
  static :
    hint("Declaration of " & "ma_panner_get_mode" &
        " already exists, not redeclaring")
when not declared(ma_panner_set_pan):
  proc ma_panner_set_pan*(pPanner: ptr ma_panner_570426110; pan: cfloat): void {.
      cdecl, importc: "ma_panner_set_pan".}
else:
  static :
    hint("Declaration of " & "ma_panner_set_pan" &
        " already exists, not redeclaring")
when not declared(ma_panner_get_pan):
  proc ma_panner_get_pan*(pPanner: ptr ma_panner_570426110): cfloat {.cdecl,
      importc: "ma_panner_get_pan".}
else:
  static :
    hint("Declaration of " & "ma_panner_get_pan" &
        " already exists, not redeclaring")
when not declared(ma_fader_config_init):
  proc ma_fader_config_init*(format: ma_format_570425895; channels: ma_uint32_570425831;
                             sampleRate: ma_uint32_570425831): ma_fader_config_570426114 {.
      cdecl, importc: "ma_fader_config_init".}
else:
  static :
    hint("Declaration of " & "ma_fader_config_init" &
        " already exists, not redeclaring")
when not declared(ma_fader_init):
  proc ma_fader_init*(pConfig: ptr ma_fader_config_570426114;
                      pFader: ptr ma_fader_570426118): ma_result_570425879 {.
      cdecl, importc: "ma_fader_init".}
else:
  static :
    hint("Declaration of " & "ma_fader_init" &
        " already exists, not redeclaring")
when not declared(ma_fader_process_pcm_frames):
  proc ma_fader_process_pcm_frames*(pFader: ptr ma_fader_570426118;
                                    pFramesOut: pointer; pFramesIn: pointer;
                                    frameCount: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_fader_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_fader_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_fader_get_data_format):
  proc ma_fader_get_data_format*(pFader: ptr ma_fader_570426118;
                                 pFormat: ptr ma_format_570425895;
                                 pChannels: ptr ma_uint32_570425831;
                                 pSampleRate: ptr ma_uint32_570425831): void {.
      cdecl, importc: "ma_fader_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_fader_get_data_format" &
        " already exists, not redeclaring")
when not declared(ma_fader_set_fade):
  proc ma_fader_set_fade*(pFader: ptr ma_fader_570426118; volumeBeg: cfloat;
                          volumeEnd: cfloat; lengthInFrames: ma_uint64_570425835): void {.
      cdecl, importc: "ma_fader_set_fade".}
else:
  static :
    hint("Declaration of " & "ma_fader_set_fade" &
        " already exists, not redeclaring")
when not declared(ma_fader_set_fade_ex):
  proc ma_fader_set_fade_ex*(pFader: ptr ma_fader_570426118; volumeBeg: cfloat;
                             volumeEnd: cfloat; lengthInFrames: ma_uint64_570425835;
                             startOffsetInFrames: ma_int64_570425833): void {.
      cdecl, importc: "ma_fader_set_fade_ex".}
else:
  static :
    hint("Declaration of " & "ma_fader_set_fade_ex" &
        " already exists, not redeclaring")
when not declared(ma_fader_get_current_volume):
  proc ma_fader_get_current_volume*(pFader: ptr ma_fader_570426118): cfloat {.
      cdecl, importc: "ma_fader_get_current_volume".}
else:
  static :
    hint("Declaration of " & "ma_fader_get_current_volume" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_config_init):
  proc ma_spatializer_listener_config_init*(channelsOut: ma_uint32_570425831): ma_spatializer_listener_config_570426142 {.
      cdecl, importc: "ma_spatializer_listener_config_init".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_config_init" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_get_heap_size):
  proc ma_spatializer_listener_get_heap_size*(
      pConfig: ptr ma_spatializer_listener_config_570426142;
      pHeapSizeInBytes: ptr csize_t): ma_result_570425879 {.cdecl,
      importc: "ma_spatializer_listener_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_init_preallocated):
  proc ma_spatializer_listener_init_preallocated*(
      pConfig: ptr ma_spatializer_listener_config_570426142; pHeap: pointer;
      pListener: ptr ma_spatializer_listener_570426146): ma_result_570425879 {.
      cdecl, importc: "ma_spatializer_listener_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_init):
  proc ma_spatializer_listener_init*(pConfig: ptr ma_spatializer_listener_config_570426142;
      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                                     pListener: ptr ma_spatializer_listener_570426146): ma_result_570425879 {.
      cdecl, importc: "ma_spatializer_listener_init".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_init" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_uninit):
  proc ma_spatializer_listener_uninit*(pListener: ptr ma_spatializer_listener_570426146;
      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_spatializer_listener_uninit".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_uninit" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_get_channel_map):
  proc ma_spatializer_listener_get_channel_map*(
      pListener: ptr ma_spatializer_listener_570426146): ptr ma_channel_570425871 {.
      cdecl, importc: "ma_spatializer_listener_get_channel_map".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_channel_map" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_set_cone):
  proc ma_spatializer_listener_set_cone*(pListener: ptr ma_spatializer_listener_570426146;
      innerAngleInRadians: cfloat; outerAngleInRadians: cfloat;
      outerGain: cfloat): void {.cdecl,
                                 importc: "ma_spatializer_listener_set_cone".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_cone" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_get_cone):
  proc ma_spatializer_listener_get_cone*(pListener: ptr ma_spatializer_listener_570426146;
      pInnerAngleInRadians: ptr cfloat; pOuterAngleInRadians: ptr cfloat;
      pOuterGain: ptr cfloat): void {.cdecl, importc: "ma_spatializer_listener_get_cone".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_cone" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_set_position):
  proc ma_spatializer_listener_set_position*(
      pListener: ptr ma_spatializer_listener_570426146; x: cfloat; y: cfloat;
      z: cfloat): void {.cdecl, importc: "ma_spatializer_listener_set_position".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_position" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_get_position):
  proc ma_spatializer_listener_get_position*(
      pListener: ptr ma_spatializer_listener_570426146): ma_vec3f_570426122 {.
      cdecl, importc: "ma_spatializer_listener_get_position".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_position" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_set_direction):
  proc ma_spatializer_listener_set_direction*(
      pListener: ptr ma_spatializer_listener_570426146; x: cfloat; y: cfloat;
      z: cfloat): void {.cdecl, importc: "ma_spatializer_listener_set_direction".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_direction" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_get_direction):
  proc ma_spatializer_listener_get_direction*(
      pListener: ptr ma_spatializer_listener_570426146): ma_vec3f_570426122 {.
      cdecl, importc: "ma_spatializer_listener_get_direction".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_direction" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_set_velocity):
  proc ma_spatializer_listener_set_velocity*(
      pListener: ptr ma_spatializer_listener_570426146; x: cfloat; y: cfloat;
      z: cfloat): void {.cdecl, importc: "ma_spatializer_listener_set_velocity".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_velocity" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_get_velocity):
  proc ma_spatializer_listener_get_velocity*(
      pListener: ptr ma_spatializer_listener_570426146): ma_vec3f_570426122 {.
      cdecl, importc: "ma_spatializer_listener_get_velocity".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_velocity" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_set_speed_of_sound):
  proc ma_spatializer_listener_set_speed_of_sound*(
      pListener: ptr ma_spatializer_listener_570426146; speedOfSound: cfloat): void {.
      cdecl, importc: "ma_spatializer_listener_set_speed_of_sound".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_speed_of_sound" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_get_speed_of_sound):
  proc ma_spatializer_listener_get_speed_of_sound*(
      pListener: ptr ma_spatializer_listener_570426146): cfloat {.cdecl,
      importc: "ma_spatializer_listener_get_speed_of_sound".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_speed_of_sound" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_set_world_up):
  proc ma_spatializer_listener_set_world_up*(
      pListener: ptr ma_spatializer_listener_570426146; x: cfloat; y: cfloat;
      z: cfloat): void {.cdecl, importc: "ma_spatializer_listener_set_world_up".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_world_up" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_get_world_up):
  proc ma_spatializer_listener_get_world_up*(
      pListener: ptr ma_spatializer_listener_570426146): ma_vec3f_570426122 {.
      cdecl, importc: "ma_spatializer_listener_get_world_up".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_world_up" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_set_enabled):
  proc ma_spatializer_listener_set_enabled*(
      pListener: ptr ma_spatializer_listener_570426146; isEnabled: ma_bool32_570425841): void {.
      cdecl, importc: "ma_spatializer_listener_set_enabled".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_enabled" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_is_enabled):
  proc ma_spatializer_listener_is_enabled*(
      pListener: ptr ma_spatializer_listener_570426146): ma_bool32_570425841 {.
      cdecl, importc: "ma_spatializer_listener_is_enabled".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_is_enabled" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_config_init):
  proc ma_spatializer_config_init*(channelsIn: ma_uint32_570425831;
                                   channelsOut: ma_uint32_570425831): ma_spatializer_config_570426150 {.
      cdecl, importc: "ma_spatializer_config_init".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_config_init" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_heap_size):
  proc ma_spatializer_get_heap_size*(pConfig: ptr ma_spatializer_config_570426150;
                                     pHeapSizeInBytes: ptr csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_spatializer_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_init_preallocated):
  proc ma_spatializer_init_preallocated*(pConfig: ptr ma_spatializer_config_570426150;
      pHeap: pointer; pSpatializer: ptr ma_spatializer_570426154): ma_result_570425879 {.
      cdecl, importc: "ma_spatializer_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_init):
  proc ma_spatializer_init*(pConfig: ptr ma_spatializer_config_570426150;
                            pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                            pSpatializer: ptr ma_spatializer_570426154): ma_result_570425879 {.
      cdecl, importc: "ma_spatializer_init".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_init" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_uninit):
  proc ma_spatializer_uninit*(pSpatializer: ptr ma_spatializer_570426154;
                              pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_spatializer_uninit".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_uninit" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_process_pcm_frames):
  proc ma_spatializer_process_pcm_frames*(pSpatializer: ptr ma_spatializer_570426154;
      pListener: ptr ma_spatializer_listener_570426146; pFramesOut: pointer;
      pFramesIn: pointer; frameCount: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_spatializer_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_master_volume):
  proc ma_spatializer_set_master_volume*(pSpatializer: ptr ma_spatializer_570426154;
      volume: cfloat): ma_result_570425879 {.cdecl,
      importc: "ma_spatializer_set_master_volume".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_master_volume" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_master_volume):
  proc ma_spatializer_get_master_volume*(pSpatializer: ptr ma_spatializer_570426154;
      pVolume: ptr cfloat): ma_result_570425879 {.cdecl,
      importc: "ma_spatializer_get_master_volume".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_master_volume" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_input_channels):
  proc ma_spatializer_get_input_channels*(pSpatializer: ptr ma_spatializer_570426154): ma_uint32_570425831 {.
      cdecl, importc: "ma_spatializer_get_input_channels".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_input_channels" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_output_channels):
  proc ma_spatializer_get_output_channels*(pSpatializer: ptr ma_spatializer_570426154): ma_uint32_570425831 {.
      cdecl, importc: "ma_spatializer_get_output_channels".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_output_channels" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_attenuation_model):
  proc ma_spatializer_set_attenuation_model*(pSpatializer: ptr ma_spatializer_570426154;
      attenuationModel: ma_attenuation_model_570426130): void {.cdecl,
      importc: "ma_spatializer_set_attenuation_model".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_attenuation_model" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_attenuation_model):
  proc ma_spatializer_get_attenuation_model*(pSpatializer: ptr ma_spatializer_570426154): ma_attenuation_model_570426130 {.
      cdecl, importc: "ma_spatializer_get_attenuation_model".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_attenuation_model" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_positioning):
  proc ma_spatializer_set_positioning*(pSpatializer: ptr ma_spatializer_570426154;
                                       positioning: ma_positioning_570426134): void {.
      cdecl, importc: "ma_spatializer_set_positioning".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_positioning" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_positioning):
  proc ma_spatializer_get_positioning*(pSpatializer: ptr ma_spatializer_570426154): ma_positioning_570426134 {.
      cdecl, importc: "ma_spatializer_get_positioning".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_positioning" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_rolloff):
  proc ma_spatializer_set_rolloff*(pSpatializer: ptr ma_spatializer_570426154;
                                   rolloff: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_rolloff".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_rolloff" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_rolloff):
  proc ma_spatializer_get_rolloff*(pSpatializer: ptr ma_spatializer_570426154): cfloat {.
      cdecl, importc: "ma_spatializer_get_rolloff".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_rolloff" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_min_gain):
  proc ma_spatializer_set_min_gain*(pSpatializer: ptr ma_spatializer_570426154;
                                    minGain: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_min_gain".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_min_gain" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_min_gain):
  proc ma_spatializer_get_min_gain*(pSpatializer: ptr ma_spatializer_570426154): cfloat {.
      cdecl, importc: "ma_spatializer_get_min_gain".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_min_gain" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_max_gain):
  proc ma_spatializer_set_max_gain*(pSpatializer: ptr ma_spatializer_570426154;
                                    maxGain: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_max_gain".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_max_gain" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_max_gain):
  proc ma_spatializer_get_max_gain*(pSpatializer: ptr ma_spatializer_570426154): cfloat {.
      cdecl, importc: "ma_spatializer_get_max_gain".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_max_gain" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_min_distance):
  proc ma_spatializer_set_min_distance*(pSpatializer: ptr ma_spatializer_570426154;
                                        minDistance: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_min_distance".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_min_distance" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_min_distance):
  proc ma_spatializer_get_min_distance*(pSpatializer: ptr ma_spatializer_570426154): cfloat {.
      cdecl, importc: "ma_spatializer_get_min_distance".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_min_distance" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_max_distance):
  proc ma_spatializer_set_max_distance*(pSpatializer: ptr ma_spatializer_570426154;
                                        maxDistance: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_max_distance".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_max_distance" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_max_distance):
  proc ma_spatializer_get_max_distance*(pSpatializer: ptr ma_spatializer_570426154): cfloat {.
      cdecl, importc: "ma_spatializer_get_max_distance".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_max_distance" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_cone):
  proc ma_spatializer_set_cone*(pSpatializer: ptr ma_spatializer_570426154;
                                innerAngleInRadians: cfloat;
                                outerAngleInRadians: cfloat; outerGain: cfloat): void {.
      cdecl, importc: "ma_spatializer_set_cone".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_cone" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_cone):
  proc ma_spatializer_get_cone*(pSpatializer: ptr ma_spatializer_570426154;
                                pInnerAngleInRadians: ptr cfloat;
                                pOuterAngleInRadians: ptr cfloat;
                                pOuterGain: ptr cfloat): void {.cdecl,
      importc: "ma_spatializer_get_cone".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_cone" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_doppler_factor):
  proc ma_spatializer_set_doppler_factor*(pSpatializer: ptr ma_spatializer_570426154;
      dopplerFactor: cfloat): void {.cdecl, importc: "ma_spatializer_set_doppler_factor".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_doppler_factor" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_doppler_factor):
  proc ma_spatializer_get_doppler_factor*(pSpatializer: ptr ma_spatializer_570426154): cfloat {.
      cdecl, importc: "ma_spatializer_get_doppler_factor".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_doppler_factor" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_directional_attenuation_factor):
  proc ma_spatializer_set_directional_attenuation_factor*(
      pSpatializer: ptr ma_spatializer_570426154;
      directionalAttenuationFactor: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_directional_attenuation_factor".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_directional_attenuation_factor" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_directional_attenuation_factor):
  proc ma_spatializer_get_directional_attenuation_factor*(
      pSpatializer: ptr ma_spatializer_570426154): cfloat {.cdecl,
      importc: "ma_spatializer_get_directional_attenuation_factor".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_directional_attenuation_factor" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_position):
  proc ma_spatializer_set_position*(pSpatializer: ptr ma_spatializer_570426154;
                                    x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_spatializer_set_position".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_position" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_position):
  proc ma_spatializer_get_position*(pSpatializer: ptr ma_spatializer_570426154): ma_vec3f_570426122 {.
      cdecl, importc: "ma_spatializer_get_position".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_position" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_direction):
  proc ma_spatializer_set_direction*(pSpatializer: ptr ma_spatializer_570426154;
                                     x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_spatializer_set_direction".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_direction" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_direction):
  proc ma_spatializer_get_direction*(pSpatializer: ptr ma_spatializer_570426154): ma_vec3f_570426122 {.
      cdecl, importc: "ma_spatializer_get_direction".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_direction" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_velocity):
  proc ma_spatializer_set_velocity*(pSpatializer: ptr ma_spatializer_570426154;
                                    x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_spatializer_set_velocity".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_velocity" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_velocity):
  proc ma_spatializer_get_velocity*(pSpatializer: ptr ma_spatializer_570426154): ma_vec3f_570426122 {.
      cdecl, importc: "ma_spatializer_get_velocity".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_velocity" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_relative_position_and_direction):
  proc ma_spatializer_get_relative_position_and_direction*(
      pSpatializer: ptr ma_spatializer_570426154;
      pListener: ptr ma_spatializer_listener_570426146;
      pRelativePos: ptr ma_vec3f_570426122; pRelativeDir: ptr ma_vec3f_570426122): void {.
      cdecl, importc: "ma_spatializer_get_relative_position_and_direction".}
else:
  static :
    hint("Declaration of " &
        "ma_spatializer_get_relative_position_and_direction" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_config_init):
  proc ma_linear_resampler_config_init*(format: ma_format_570425895;
                                        channels: ma_uint32_570425831;
                                        sampleRateIn: ma_uint32_570425831;
                                        sampleRateOut: ma_uint32_570425831): ma_linear_resampler_config_570426158 {.
      cdecl, importc: "ma_linear_resampler_config_init".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_config_init" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_get_heap_size):
  proc ma_linear_resampler_get_heap_size*(
      pConfig: ptr ma_linear_resampler_config_570426158;
      pHeapSizeInBytes: ptr csize_t): ma_result_570425879 {.cdecl,
      importc: "ma_linear_resampler_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_init_preallocated):
  proc ma_linear_resampler_init_preallocated*(
      pConfig: ptr ma_linear_resampler_config_570426158; pHeap: pointer;
      pResampler: ptr ma_linear_resampler_570426162): ma_result_570425879 {.
      cdecl, importc: "ma_linear_resampler_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_init):
  proc ma_linear_resampler_init*(pConfig: ptr ma_linear_resampler_config_570426158;
      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                                 pResampler: ptr ma_linear_resampler_570426162): ma_result_570425879 {.
      cdecl, importc: "ma_linear_resampler_init".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_init" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_uninit):
  proc ma_linear_resampler_uninit*(pResampler: ptr ma_linear_resampler_570426162;
      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_linear_resampler_uninit".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_uninit" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_process_pcm_frames):
  proc ma_linear_resampler_process_pcm_frames*(
      pResampler: ptr ma_linear_resampler_570426162; pFramesIn: pointer;
      pFrameCountIn: ptr ma_uint64_570425835; pFramesOut: pointer;
      pFrameCountOut: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_linear_resampler_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_set_rate):
  proc ma_linear_resampler_set_rate*(pResampler: ptr ma_linear_resampler_570426162;
                                     sampleRateIn: ma_uint32_570425831;
                                     sampleRateOut: ma_uint32_570425831): ma_result_570425879 {.
      cdecl, importc: "ma_linear_resampler_set_rate".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_set_rate" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_set_rate_ratio):
  proc ma_linear_resampler_set_rate_ratio*(pResampler: ptr ma_linear_resampler_570426162;
      ratioInOut: cfloat): ma_result_570425879 {.cdecl,
      importc: "ma_linear_resampler_set_rate_ratio".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_set_rate_ratio" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_get_input_latency):
  proc ma_linear_resampler_get_input_latency*(
      pResampler: ptr ma_linear_resampler_570426162): ma_uint64_570425835 {.
      cdecl, importc: "ma_linear_resampler_get_input_latency".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_get_input_latency" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_get_output_latency):
  proc ma_linear_resampler_get_output_latency*(
      pResampler: ptr ma_linear_resampler_570426162): ma_uint64_570425835 {.
      cdecl, importc: "ma_linear_resampler_get_output_latency".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_get_output_latency" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_get_required_input_frame_count):
  proc ma_linear_resampler_get_required_input_frame_count*(
      pResampler: ptr ma_linear_resampler_570426162;
      outputFrameCount: ma_uint64_570425835; pInputFrameCount: ptr ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_linear_resampler_get_required_input_frame_count".}
else:
  static :
    hint("Declaration of " &
        "ma_linear_resampler_get_required_input_frame_count" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_get_expected_output_frame_count):
  proc ma_linear_resampler_get_expected_output_frame_count*(
      pResampler: ptr ma_linear_resampler_570426162; inputFrameCount: ma_uint64_570425835;
      pOutputFrameCount: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_linear_resampler_get_expected_output_frame_count".}
else:
  static :
    hint("Declaration of " &
        "ma_linear_resampler_get_expected_output_frame_count" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_reset):
  proc ma_linear_resampler_reset*(pResampler: ptr ma_linear_resampler_570426162): ma_result_570425879 {.
      cdecl, importc: "ma_linear_resampler_reset".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_reset" &
        " already exists, not redeclaring")
when not declared(ma_resampler_config_init):
  proc ma_resampler_config_init*(format: ma_format_570425895;
                                 channels: ma_uint32_570425831;
                                 sampleRateIn: ma_uint32_570425831;
                                 sampleRateOut: ma_uint32_570425831;
                                 algorithm: ma_resample_algorithm_570426176): ma_resampler_config_570426164 {.
      cdecl, importc: "ma_resampler_config_init".}
else:
  static :
    hint("Declaration of " & "ma_resampler_config_init" &
        " already exists, not redeclaring")
when not declared(ma_resampler_get_heap_size):
  proc ma_resampler_get_heap_size*(pConfig: ptr ma_resampler_config_570426164;
                                   pHeapSizeInBytes: ptr csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_resampler_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_resampler_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_resampler_init_preallocated):
  proc ma_resampler_init_preallocated*(pConfig: ptr ma_resampler_config_570426164;
                                       pHeap: pointer;
                                       pResampler: ptr ma_resampler_570426180): ma_result_570425879 {.
      cdecl, importc: "ma_resampler_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_resampler_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_resampler_init):
  proc ma_resampler_init*(pConfig: ptr ma_resampler_config_570426164;
                          pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                          pResampler: ptr ma_resampler_570426180): ma_result_570425879 {.
      cdecl, importc: "ma_resampler_init".}
else:
  static :
    hint("Declaration of " & "ma_resampler_init" &
        " already exists, not redeclaring")
when not declared(ma_resampler_uninit):
  proc ma_resampler_uninit*(pResampler: ptr ma_resampler_570426180;
                            pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_resampler_uninit".}
else:
  static :
    hint("Declaration of " & "ma_resampler_uninit" &
        " already exists, not redeclaring")
when not declared(ma_resampler_process_pcm_frames):
  proc ma_resampler_process_pcm_frames*(pResampler: ptr ma_resampler_570426180;
                                        pFramesIn: pointer;
                                        pFrameCountIn: ptr ma_uint64_570425835;
                                        pFramesOut: pointer;
                                        pFrameCountOut: ptr ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_resampler_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_resampler_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resampler_set_rate):
  proc ma_resampler_set_rate*(pResampler: ptr ma_resampler_570426180;
                              sampleRateIn: ma_uint32_570425831;
                              sampleRateOut: ma_uint32_570425831): ma_result_570425879 {.
      cdecl, importc: "ma_resampler_set_rate".}
else:
  static :
    hint("Declaration of " & "ma_resampler_set_rate" &
        " already exists, not redeclaring")
when not declared(ma_resampler_set_rate_ratio):
  proc ma_resampler_set_rate_ratio*(pResampler: ptr ma_resampler_570426180;
                                    ratio: cfloat): ma_result_570425879 {.cdecl,
      importc: "ma_resampler_set_rate_ratio".}
else:
  static :
    hint("Declaration of " & "ma_resampler_set_rate_ratio" &
        " already exists, not redeclaring")
when not declared(ma_resampler_get_input_latency):
  proc ma_resampler_get_input_latency*(pResampler: ptr ma_resampler_570426180): ma_uint64_570425835 {.
      cdecl, importc: "ma_resampler_get_input_latency".}
else:
  static :
    hint("Declaration of " & "ma_resampler_get_input_latency" &
        " already exists, not redeclaring")
when not declared(ma_resampler_get_output_latency):
  proc ma_resampler_get_output_latency*(pResampler: ptr ma_resampler_570426180): ma_uint64_570425835 {.
      cdecl, importc: "ma_resampler_get_output_latency".}
else:
  static :
    hint("Declaration of " & "ma_resampler_get_output_latency" &
        " already exists, not redeclaring")
when not declared(ma_resampler_get_required_input_frame_count):
  proc ma_resampler_get_required_input_frame_count*(
      pResampler: ptr ma_resampler_570426180; outputFrameCount: ma_uint64_570425835;
      pInputFrameCount: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_resampler_get_required_input_frame_count".}
else:
  static :
    hint("Declaration of " & "ma_resampler_get_required_input_frame_count" &
        " already exists, not redeclaring")
when not declared(ma_resampler_get_expected_output_frame_count):
  proc ma_resampler_get_expected_output_frame_count*(
      pResampler: ptr ma_resampler_570426180; inputFrameCount: ma_uint64_570425835;
      pOutputFrameCount: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_resampler_get_expected_output_frame_count".}
else:
  static :
    hint("Declaration of " & "ma_resampler_get_expected_output_frame_count" &
        " already exists, not redeclaring")
when not declared(ma_resampler_reset):
  proc ma_resampler_reset*(pResampler: ptr ma_resampler_570426180): ma_result_570425879 {.
      cdecl, importc: "ma_resampler_reset".}
else:
  static :
    hint("Declaration of " & "ma_resampler_reset" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter_config_init):
  proc ma_channel_converter_config_init*(format: ma_format_570425895;
      channelsIn: ma_uint32_570425831; pChannelMapIn: ptr ma_channel_570425871;
      channelsOut: ma_uint32_570425831; pChannelMapOut: ptr ma_channel_570425871;
      mixingMode: ma_channel_mix_mode_570425910): ma_channel_converter_config_570426192 {.
      cdecl, importc: "ma_channel_converter_config_init".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_config_init" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter_get_heap_size):
  proc ma_channel_converter_get_heap_size*(
      pConfig: ptr ma_channel_converter_config_570426192;
      pHeapSizeInBytes: ptr csize_t): ma_result_570425879 {.cdecl,
      importc: "ma_channel_converter_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter_init_preallocated):
  proc ma_channel_converter_init_preallocated*(
      pConfig: ptr ma_channel_converter_config_570426192; pHeap: pointer;
      pConverter: ptr ma_channel_converter_570426196): ma_result_570425879 {.
      cdecl, importc: "ma_channel_converter_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter_init):
  proc ma_channel_converter_init*(pConfig: ptr ma_channel_converter_config_570426192;
      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                                  pConverter: ptr ma_channel_converter_570426196): ma_result_570425879 {.
      cdecl, importc: "ma_channel_converter_init".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_init" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter_uninit):
  proc ma_channel_converter_uninit*(pConverter: ptr ma_channel_converter_570426196;
      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_channel_converter_uninit".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_uninit" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter_process_pcm_frames):
  proc ma_channel_converter_process_pcm_frames*(
      pConverter: ptr ma_channel_converter_570426196; pFramesOut: pointer;
      pFramesIn: pointer; frameCount: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_channel_converter_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter_get_input_channel_map):
  proc ma_channel_converter_get_input_channel_map*(
      pConverter: ptr ma_channel_converter_570426196;
      pChannelMap: ptr ma_channel_570425871; channelMapCap: csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_channel_converter_get_input_channel_map".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_get_input_channel_map" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter_get_output_channel_map):
  proc ma_channel_converter_get_output_channel_map*(
      pConverter: ptr ma_channel_converter_570426196;
      pChannelMap: ptr ma_channel_570425871; channelMapCap: csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_channel_converter_get_output_channel_map".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_get_output_channel_map" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_config_init_default):
  proc ma_data_converter_config_init_default*(): ma_data_converter_config_570426200 {.
      cdecl, importc: "ma_data_converter_config_init_default".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_config_init_default" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_config_init):
  proc ma_data_converter_config_init*(formatIn: ma_format_570425895;
                                      formatOut: ma_format_570425895;
                                      channelsIn: ma_uint32_570425831;
                                      channelsOut: ma_uint32_570425831;
                                      sampleRateIn: ma_uint32_570425831;
                                      sampleRateOut: ma_uint32_570425831): ma_data_converter_config_570426200 {.
      cdecl, importc: "ma_data_converter_config_init".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_config_init" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_get_heap_size):
  proc ma_data_converter_get_heap_size*(pConfig: ptr ma_data_converter_config_570426200;
                                        pHeapSizeInBytes: ptr csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_data_converter_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_init_preallocated):
  proc ma_data_converter_init_preallocated*(
      pConfig: ptr ma_data_converter_config_570426200; pHeap: pointer;
      pConverter: ptr ma_data_converter_570426208): ma_result_570425879 {.cdecl,
      importc: "ma_data_converter_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_init):
  proc ma_data_converter_init*(pConfig: ptr ma_data_converter_config_570426200;
      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                               pConverter: ptr ma_data_converter_570426208): ma_result_570425879 {.
      cdecl, importc: "ma_data_converter_init".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_init" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_uninit):
  proc ma_data_converter_uninit*(pConverter: ptr ma_data_converter_570426208;
      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_data_converter_uninit".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_uninit" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_process_pcm_frames):
  proc ma_data_converter_process_pcm_frames*(pConverter: ptr ma_data_converter_570426208;
      pFramesIn: pointer; pFrameCountIn: ptr ma_uint64_570425835;
      pFramesOut: pointer; pFrameCountOut: ptr ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_data_converter_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_set_rate):
  proc ma_data_converter_set_rate*(pConverter: ptr ma_data_converter_570426208;
                                   sampleRateIn: ma_uint32_570425831;
                                   sampleRateOut: ma_uint32_570425831): ma_result_570425879 {.
      cdecl, importc: "ma_data_converter_set_rate".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_set_rate" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_set_rate_ratio):
  proc ma_data_converter_set_rate_ratio*(pConverter: ptr ma_data_converter_570426208;
      ratioInOut: cfloat): ma_result_570425879 {.cdecl,
      importc: "ma_data_converter_set_rate_ratio".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_set_rate_ratio" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_get_input_latency):
  proc ma_data_converter_get_input_latency*(pConverter: ptr ma_data_converter_570426208): ma_uint64_570425835 {.
      cdecl, importc: "ma_data_converter_get_input_latency".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_input_latency" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_get_output_latency):
  proc ma_data_converter_get_output_latency*(pConverter: ptr ma_data_converter_570426208): ma_uint64_570425835 {.
      cdecl, importc: "ma_data_converter_get_output_latency".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_output_latency" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_get_required_input_frame_count):
  proc ma_data_converter_get_required_input_frame_count*(
      pConverter: ptr ma_data_converter_570426208; outputFrameCount: ma_uint64_570425835;
      pInputFrameCount: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_data_converter_get_required_input_frame_count".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_required_input_frame_count" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_get_expected_output_frame_count):
  proc ma_data_converter_get_expected_output_frame_count*(
      pConverter: ptr ma_data_converter_570426208; inputFrameCount: ma_uint64_570425835;
      pOutputFrameCount: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_data_converter_get_expected_output_frame_count".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_expected_output_frame_count" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_get_input_channel_map):
  proc ma_data_converter_get_input_channel_map*(
      pConverter: ptr ma_data_converter_570426208; pChannelMap: ptr ma_channel_570425871;
      channelMapCap: csize_t): ma_result_570425879 {.cdecl,
      importc: "ma_data_converter_get_input_channel_map".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_input_channel_map" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_get_output_channel_map):
  proc ma_data_converter_get_output_channel_map*(
      pConverter: ptr ma_data_converter_570426208; pChannelMap: ptr ma_channel_570425871;
      channelMapCap: csize_t): ma_result_570425879 {.cdecl,
      importc: "ma_data_converter_get_output_channel_map".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_output_channel_map" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_reset):
  proc ma_data_converter_reset*(pConverter: ptr ma_data_converter_570426208): ma_result_570425879 {.
      cdecl, importc: "ma_data_converter_reset".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_reset" &
        " already exists, not redeclaring")
when not declared(ma_pcm_u8_to_s16):
  proc ma_pcm_u8_to_s16*(pOut: pointer; pIn: pointer; count: ma_uint64_570425835;
                         ditherMode: ma_dither_mode_570425891): void {.cdecl,
      importc: "ma_pcm_u8_to_s16".}
else:
  static :
    hint("Declaration of " & "ma_pcm_u8_to_s16" &
        " already exists, not redeclaring")
when not declared(ma_pcm_u8_to_s24):
  proc ma_pcm_u8_to_s24*(pOut: pointer; pIn: pointer; count: ma_uint64_570425835;
                         ditherMode: ma_dither_mode_570425891): void {.cdecl,
      importc: "ma_pcm_u8_to_s24".}
else:
  static :
    hint("Declaration of " & "ma_pcm_u8_to_s24" &
        " already exists, not redeclaring")
when not declared(ma_pcm_u8_to_s32):
  proc ma_pcm_u8_to_s32*(pOut: pointer; pIn: pointer; count: ma_uint64_570425835;
                         ditherMode: ma_dither_mode_570425891): void {.cdecl,
      importc: "ma_pcm_u8_to_s32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_u8_to_s32" &
        " already exists, not redeclaring")
when not declared(ma_pcm_u8_to_f32):
  proc ma_pcm_u8_to_f32*(pOut: pointer; pIn: pointer; count: ma_uint64_570425835;
                         ditherMode: ma_dither_mode_570425891): void {.cdecl,
      importc: "ma_pcm_u8_to_f32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_u8_to_f32" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s16_to_u8):
  proc ma_pcm_s16_to_u8*(pOut: pointer; pIn: pointer; count: ma_uint64_570425835;
                         ditherMode: ma_dither_mode_570425891): void {.cdecl,
      importc: "ma_pcm_s16_to_u8".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s16_to_u8" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s16_to_s24):
  proc ma_pcm_s16_to_s24*(pOut: pointer; pIn: pointer; count: ma_uint64_570425835;
                          ditherMode: ma_dither_mode_570425891): void {.cdecl,
      importc: "ma_pcm_s16_to_s24".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s16_to_s24" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s16_to_s32):
  proc ma_pcm_s16_to_s32*(pOut: pointer; pIn: pointer; count: ma_uint64_570425835;
                          ditherMode: ma_dither_mode_570425891): void {.cdecl,
      importc: "ma_pcm_s16_to_s32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s16_to_s32" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s16_to_f32):
  proc ma_pcm_s16_to_f32*(pOut: pointer; pIn: pointer; count: ma_uint64_570425835;
                          ditherMode: ma_dither_mode_570425891): void {.cdecl,
      importc: "ma_pcm_s16_to_f32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s16_to_f32" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s24_to_u8):
  proc ma_pcm_s24_to_u8*(pOut: pointer; pIn: pointer; count: ma_uint64_570425835;
                         ditherMode: ma_dither_mode_570425891): void {.cdecl,
      importc: "ma_pcm_s24_to_u8".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s24_to_u8" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s24_to_s16):
  proc ma_pcm_s24_to_s16*(pOut: pointer; pIn: pointer; count: ma_uint64_570425835;
                          ditherMode: ma_dither_mode_570425891): void {.cdecl,
      importc: "ma_pcm_s24_to_s16".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s24_to_s16" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s24_to_s32):
  proc ma_pcm_s24_to_s32*(pOut: pointer; pIn: pointer; count: ma_uint64_570425835;
                          ditherMode: ma_dither_mode_570425891): void {.cdecl,
      importc: "ma_pcm_s24_to_s32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s24_to_s32" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s24_to_f32):
  proc ma_pcm_s24_to_f32*(pOut: pointer; pIn: pointer; count: ma_uint64_570425835;
                          ditherMode: ma_dither_mode_570425891): void {.cdecl,
      importc: "ma_pcm_s24_to_f32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s24_to_f32" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s32_to_u8):
  proc ma_pcm_s32_to_u8*(pOut: pointer; pIn: pointer; count: ma_uint64_570425835;
                         ditherMode: ma_dither_mode_570425891): void {.cdecl,
      importc: "ma_pcm_s32_to_u8".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s32_to_u8" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s32_to_s16):
  proc ma_pcm_s32_to_s16*(pOut: pointer; pIn: pointer; count: ma_uint64_570425835;
                          ditherMode: ma_dither_mode_570425891): void {.cdecl,
      importc: "ma_pcm_s32_to_s16".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s32_to_s16" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s32_to_s24):
  proc ma_pcm_s32_to_s24*(pOut: pointer; pIn: pointer; count: ma_uint64_570425835;
                          ditherMode: ma_dither_mode_570425891): void {.cdecl,
      importc: "ma_pcm_s32_to_s24".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s32_to_s24" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s32_to_f32):
  proc ma_pcm_s32_to_f32*(pOut: pointer; pIn: pointer; count: ma_uint64_570425835;
                          ditherMode: ma_dither_mode_570425891): void {.cdecl,
      importc: "ma_pcm_s32_to_f32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s32_to_f32" &
        " already exists, not redeclaring")
when not declared(ma_pcm_f32_to_u8):
  proc ma_pcm_f32_to_u8*(pOut: pointer; pIn: pointer; count: ma_uint64_570425835;
                         ditherMode: ma_dither_mode_570425891): void {.cdecl,
      importc: "ma_pcm_f32_to_u8".}
else:
  static :
    hint("Declaration of " & "ma_pcm_f32_to_u8" &
        " already exists, not redeclaring")
when not declared(ma_pcm_f32_to_s16):
  proc ma_pcm_f32_to_s16*(pOut: pointer; pIn: pointer; count: ma_uint64_570425835;
                          ditherMode: ma_dither_mode_570425891): void {.cdecl,
      importc: "ma_pcm_f32_to_s16".}
else:
  static :
    hint("Declaration of " & "ma_pcm_f32_to_s16" &
        " already exists, not redeclaring")
when not declared(ma_pcm_f32_to_s24):
  proc ma_pcm_f32_to_s24*(pOut: pointer; pIn: pointer; count: ma_uint64_570425835;
                          ditherMode: ma_dither_mode_570425891): void {.cdecl,
      importc: "ma_pcm_f32_to_s24".}
else:
  static :
    hint("Declaration of " & "ma_pcm_f32_to_s24" &
        " already exists, not redeclaring")
when not declared(ma_pcm_f32_to_s32):
  proc ma_pcm_f32_to_s32*(pOut: pointer; pIn: pointer; count: ma_uint64_570425835;
                          ditherMode: ma_dither_mode_570425891): void {.cdecl,
      importc: "ma_pcm_f32_to_s32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_f32_to_s32" &
        " already exists, not redeclaring")
when not declared(ma_pcm_convert):
  proc ma_pcm_convert*(pOut: pointer; formatOut: ma_format_570425895;
                       pIn: pointer; formatIn: ma_format_570425895;
                       sampleCount: ma_uint64_570425835;
                       ditherMode: ma_dither_mode_570425891): void {.cdecl,
      importc: "ma_pcm_convert".}
else:
  static :
    hint("Declaration of " & "ma_pcm_convert" &
        " already exists, not redeclaring")
when not declared(ma_convert_pcm_frames_format):
  proc ma_convert_pcm_frames_format*(pOut: pointer; formatOut: ma_format_570425895;
                                     pIn: pointer; formatIn: ma_format_570425895;
                                     frameCount: ma_uint64_570425835;
                                     channels: ma_uint32_570425831;
                                     ditherMode: ma_dither_mode_570425891): void {.
      cdecl, importc: "ma_convert_pcm_frames_format".}
else:
  static :
    hint("Declaration of " & "ma_convert_pcm_frames_format" &
        " already exists, not redeclaring")
when not declared(ma_deinterleave_pcm_frames):
  proc ma_deinterleave_pcm_frames*(format: ma_format_570425895;
                                   channels: ma_uint32_570425831;
                                   frameCount: ma_uint64_570425835;
                                   pInterleavedPCMFrames: pointer;
                                   ppDeinterleavedPCMFrames: ptr pointer): void {.
      cdecl, importc: "ma_deinterleave_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_deinterleave_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_interleave_pcm_frames):
  proc ma_interleave_pcm_frames*(format: ma_format_570425895;
                                 channels: ma_uint32_570425831;
                                 frameCount: ma_uint64_570425835;
                                 ppDeinterleavedPCMFrames: ptr pointer;
                                 pInterleavedPCMFrames: pointer): void {.cdecl,
      importc: "ma_interleave_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_interleave_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_get_channel):
  proc ma_channel_map_get_channel*(pChannelMap: ptr ma_channel_570425871;
                                   channelCount: ma_uint32_570425831;
                                   channelIndex: ma_uint32_570425831): ma_channel_570425871 {.
      cdecl, importc: "ma_channel_map_get_channel".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_get_channel" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_init_blank):
  proc ma_channel_map_init_blank*(pChannelMap: ptr ma_channel_570425871;
                                  channels: ma_uint32_570425831): void {.cdecl,
      importc: "ma_channel_map_init_blank".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_init_blank" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_init_standard):
  proc ma_channel_map_init_standard*(standardChannelMap: ma_standard_channel_map_570425914;
                                     pChannelMap: ptr ma_channel_570425871;
                                     channelMapCap: csize_t; channels: ma_uint32_570425831): void {.
      cdecl, importc: "ma_channel_map_init_standard".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_init_standard" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_copy):
  proc ma_channel_map_copy*(pOut: ptr ma_channel_570425871; pIn: ptr ma_channel_570425871;
                            channels: ma_uint32_570425831): void {.cdecl,
      importc: "ma_channel_map_copy".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_copy" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_copy_or_default):
  proc ma_channel_map_copy_or_default*(pOut: ptr ma_channel_570425871;
                                       channelMapCapOut: csize_t;
                                       pIn: ptr ma_channel_570425871;
                                       channels: ma_uint32_570425831): void {.
      cdecl, importc: "ma_channel_map_copy_or_default".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_copy_or_default" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_is_valid):
  proc ma_channel_map_is_valid*(pChannelMap: ptr ma_channel_570425871;
                                channels: ma_uint32_570425831): ma_bool32_570425841 {.
      cdecl, importc: "ma_channel_map_is_valid".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_is_valid" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_is_equal):
  proc ma_channel_map_is_equal*(pChannelMapA: ptr ma_channel_570425871;
                                pChannelMapB: ptr ma_channel_570425871;
                                channels: ma_uint32_570425831): ma_bool32_570425841 {.
      cdecl, importc: "ma_channel_map_is_equal".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_is_equal" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_is_blank):
  proc ma_channel_map_is_blank*(pChannelMap: ptr ma_channel_570425871;
                                channels: ma_uint32_570425831): ma_bool32_570425841 {.
      cdecl, importc: "ma_channel_map_is_blank".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_is_blank" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_contains_channel_position):
  proc ma_channel_map_contains_channel_position*(channels: ma_uint32_570425831;
      pChannelMap: ptr ma_channel_570425871; channelPosition: ma_channel_570425871): ma_bool32_570425841 {.
      cdecl, importc: "ma_channel_map_contains_channel_position".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_contains_channel_position" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_find_channel_position):
  proc ma_channel_map_find_channel_position*(channels: ma_uint32_570425831;
      pChannelMap: ptr ma_channel_570425871; channelPosition: ma_channel_570425871;
      pChannelIndex: ptr ma_uint32_570425831): ma_bool32_570425841 {.cdecl,
      importc: "ma_channel_map_find_channel_position".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_find_channel_position" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_to_string):
  proc ma_channel_map_to_string*(pChannelMap: ptr ma_channel_570425871;
                                 channels: ma_uint32_570425831;
                                 pBufferOut: cstring; bufferCap: csize_t): csize_t {.
      cdecl, importc: "ma_channel_map_to_string".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_to_string" &
        " already exists, not redeclaring")
when not declared(ma_channel_position_to_string):
  proc ma_channel_position_to_string*(channel: ma_channel_570425871): cstring {.
      cdecl, importc: "ma_channel_position_to_string".}
else:
  static :
    hint("Declaration of " & "ma_channel_position_to_string" &
        " already exists, not redeclaring")
when not declared(ma_convert_frames):
  proc ma_convert_frames*(pOut: pointer; frameCountOut: ma_uint64_570425835;
                          formatOut: ma_format_570425895;
                          channelsOut: ma_uint32_570425831;
                          sampleRateOut: ma_uint32_570425831; pIn: pointer;
                          frameCountIn: ma_uint64_570425835;
                          formatIn: ma_format_570425895; channelsIn: ma_uint32_570425831;
                          sampleRateIn: ma_uint32_570425831): ma_uint64_570425835 {.
      cdecl, importc: "ma_convert_frames".}
else:
  static :
    hint("Declaration of " & "ma_convert_frames" &
        " already exists, not redeclaring")
when not declared(ma_convert_frames_ex):
  proc ma_convert_frames_ex*(pOut: pointer; frameCountOut: ma_uint64_570425835;
                             pIn: pointer; frameCountIn: ma_uint64_570425835;
                             pConfig: ptr ma_data_converter_config_570426200): ma_uint64_570425835 {.
      cdecl, importc: "ma_convert_frames_ex".}
else:
  static :
    hint("Declaration of " & "ma_convert_frames_ex" &
        " already exists, not redeclaring")
when not declared(ma_data_source_config_init):
  proc ma_data_source_config_init*(): ma_data_source_config_570426220 {.cdecl,
      importc: "ma_data_source_config_init".}
else:
  static :
    hint("Declaration of " & "ma_data_source_config_init" &
        " already exists, not redeclaring")
when not declared(ma_data_source_init):
  proc ma_data_source_init*(pConfig: ptr ma_data_source_config_570426220;
                            pDataSource: pointer): ma_result_570425879 {.cdecl,
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
                                       frameCount: ma_uint64_570425835;
                                       pFramesRead: ptr ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_data_source_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_source_seek_pcm_frames):
  proc ma_data_source_seek_pcm_frames*(pDataSource: pointer;
                                       frameCount: ma_uint64_570425835;
                                       pFramesSeeked: ptr ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_data_source_seek_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_seek_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_source_seek_to_pcm_frame):
  proc ma_data_source_seek_to_pcm_frame*(pDataSource: pointer;
      frameIndex: ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_data_source_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_data_source_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_data_source_seek_seconds):
  proc ma_data_source_seek_seconds*(pDataSource: pointer; secondCount: cfloat;
                                    pSecondsSeeked: ptr cfloat): ma_result_570425879 {.
      cdecl, importc: "ma_data_source_seek_seconds".}
else:
  static :
    hint("Declaration of " & "ma_data_source_seek_seconds" &
        " already exists, not redeclaring")
when not declared(ma_data_source_seek_to_second):
  proc ma_data_source_seek_to_second*(pDataSource: pointer;
                                      seekPointInSeconds: cfloat): ma_result_570425879 {.
      cdecl, importc: "ma_data_source_seek_to_second".}
else:
  static :
    hint("Declaration of " & "ma_data_source_seek_to_second" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_data_format):
  proc ma_data_source_get_data_format*(pDataSource: pointer;
                                       pFormat: ptr ma_format_570425895;
                                       pChannels: ptr ma_uint32_570425831;
                                       pSampleRate: ptr ma_uint32_570425831;
                                       pChannelMap: ptr ma_channel_570425871;
                                       channelMapCap: csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_data_source_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_data_format" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_cursor_in_pcm_frames):
  proc ma_data_source_get_cursor_in_pcm_frames*(pDataSource: pointer;
      pCursor: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_data_source_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_length_in_pcm_frames):
  proc ma_data_source_get_length_in_pcm_frames*(pDataSource: pointer;
      pLength: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_data_source_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_cursor_in_seconds):
  proc ma_data_source_get_cursor_in_seconds*(pDataSource: pointer;
      pCursor: ptr cfloat): ma_result_570425879 {.cdecl,
      importc: "ma_data_source_get_cursor_in_seconds".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_cursor_in_seconds" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_length_in_seconds):
  proc ma_data_source_get_length_in_seconds*(pDataSource: pointer;
      pLength: ptr cfloat): ma_result_570425879 {.cdecl,
      importc: "ma_data_source_get_length_in_seconds".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_length_in_seconds" &
        " already exists, not redeclaring")
when not declared(ma_data_source_set_looping):
  proc ma_data_source_set_looping*(pDataSource: pointer; isLooping: ma_bool32_570425841): ma_result_570425879 {.
      cdecl, importc: "ma_data_source_set_looping".}
else:
  static :
    hint("Declaration of " & "ma_data_source_set_looping" &
        " already exists, not redeclaring")
when not declared(ma_data_source_is_looping):
  proc ma_data_source_is_looping*(pDataSource: pointer): ma_bool32_570425841 {.
      cdecl, importc: "ma_data_source_is_looping".}
else:
  static :
    hint("Declaration of " & "ma_data_source_is_looping" &
        " already exists, not redeclaring")
when not declared(ma_data_source_set_range_in_pcm_frames):
  proc ma_data_source_set_range_in_pcm_frames*(pDataSource: pointer;
      rangeBegInFrames: ma_uint64_570425835; rangeEndInFrames: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_data_source_set_range_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_set_range_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_range_in_pcm_frames):
  proc ma_data_source_get_range_in_pcm_frames*(pDataSource: pointer;
      pRangeBegInFrames: ptr ma_uint64_570425835;
      pRangeEndInFrames: ptr ma_uint64_570425835): void {.cdecl,
      importc: "ma_data_source_get_range_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_range_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_source_set_loop_point_in_pcm_frames):
  proc ma_data_source_set_loop_point_in_pcm_frames*(pDataSource: pointer;
      loopBegInFrames: ma_uint64_570425835; loopEndInFrames: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_data_source_set_loop_point_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_set_loop_point_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_loop_point_in_pcm_frames):
  proc ma_data_source_get_loop_point_in_pcm_frames*(pDataSource: pointer;
      pLoopBegInFrames: ptr ma_uint64_570425835; pLoopEndInFrames: ptr ma_uint64_570425835): void {.
      cdecl, importc: "ma_data_source_get_loop_point_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_loop_point_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_source_set_current):
  proc ma_data_source_set_current*(pDataSource: pointer;
                                   pCurrentDataSource: pointer): ma_result_570425879 {.
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
  proc ma_data_source_set_next*(pDataSource: pointer; pNextDataSource: pointer): ma_result_570425879 {.
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
      onGetNext: ma_data_source_get_next_proc_570426216): ma_result_570425879 {.
      cdecl, importc: "ma_data_source_set_next_callback".}
else:
  static :
    hint("Declaration of " & "ma_data_source_set_next_callback" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_next_callback):
  proc ma_data_source_get_next_callback*(pDataSource: pointer): ma_data_source_get_next_proc_570426216 {.
      cdecl, importc: "ma_data_source_get_next_callback".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_next_callback" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_init):
  proc ma_audio_buffer_ref_init*(format: ma_format_570425895;
                                 channels: ma_uint32_570425831;
                                 sampleRate: ma_uint32_570425831;
                                 pData: pointer; sizeInFrames: ma_uint64_570425835;
                                 pAudioBufferRef: ptr ma_audio_buffer_ref_570426228): ma_result_570425879 {.
      cdecl, importc: "ma_audio_buffer_ref_init".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_init" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_uninit):
  proc ma_audio_buffer_ref_uninit*(pAudioBufferRef: ptr ma_audio_buffer_ref_570426228): void {.
      cdecl, importc: "ma_audio_buffer_ref_uninit".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_uninit" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_set_data):
  proc ma_audio_buffer_ref_set_data*(pAudioBufferRef: ptr ma_audio_buffer_ref_570426228;
                                     pData: pointer; sizeInFrames: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_audio_buffer_ref_set_data".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_set_data" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_read_pcm_frames):
  proc ma_audio_buffer_ref_read_pcm_frames*(
      pAudioBufferRef: ptr ma_audio_buffer_ref_570426228; pFramesOut: pointer;
      frameCount: ma_uint64_570425835; pFramesRead: ptr ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_audio_buffer_ref_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_seek_to_pcm_frame):
  proc ma_audio_buffer_ref_seek_to_pcm_frame*(
      pAudioBufferRef: ptr ma_audio_buffer_ref_570426228; frameIndex: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_audio_buffer_ref_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_map):
  proc ma_audio_buffer_ref_map*(pAudioBufferRef: ptr ma_audio_buffer_ref_570426228;
                                ppFramesOut: ptr pointer;
                                pFrameCount: ptr ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_audio_buffer_ref_map".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_map" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_unmap):
  proc ma_audio_buffer_ref_unmap*(pAudioBufferRef: ptr ma_audio_buffer_ref_570426228;
                                  frameCount: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_audio_buffer_ref_unmap".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_unmap" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_at_end):
  proc ma_audio_buffer_ref_at_end*(pAudioBufferRef: ptr ma_audio_buffer_ref_570426228): ma_bool32_570425841 {.
      cdecl, importc: "ma_audio_buffer_ref_at_end".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_at_end" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_get_cursor_in_pcm_frames):
  proc ma_audio_buffer_ref_get_cursor_in_pcm_frames*(
      pAudioBufferRef: ptr ma_audio_buffer_ref_570426228; pCursor: ptr ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_audio_buffer_ref_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_get_length_in_pcm_frames):
  proc ma_audio_buffer_ref_get_length_in_pcm_frames*(
      pAudioBufferRef: ptr ma_audio_buffer_ref_570426228; pLength: ptr ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_audio_buffer_ref_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_get_available_frames):
  proc ma_audio_buffer_ref_get_available_frames*(
      pAudioBufferRef: ptr ma_audio_buffer_ref_570426228;
      pAvailableFrames: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_audio_buffer_ref_get_available_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_get_available_frames" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_config_init):
  proc ma_audio_buffer_config_init*(format: ma_format_570425895;
                                    channels: ma_uint32_570425831;
                                    sampleRate: ma_uint32_570425831;
                                    sizeInFrames: ma_uint64_570425835;
                                    pData: pointer; pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): ma_audio_buffer_config_570426232 {.
      cdecl, importc: "ma_audio_buffer_config_init".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_config_init" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_init):
  proc ma_audio_buffer_init*(pConfig: ptr ma_audio_buffer_config_570426232;
                             pAudioBuffer: ptr ma_audio_buffer_570426236): ma_result_570425879 {.
      cdecl, importc: "ma_audio_buffer_init".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_init" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_init_copy):
  proc ma_audio_buffer_init_copy*(pConfig: ptr ma_audio_buffer_config_570426232;
                                  pAudioBuffer: ptr ma_audio_buffer_570426236): ma_result_570425879 {.
      cdecl, importc: "ma_audio_buffer_init_copy".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_init_copy" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_alloc_and_init):
  proc ma_audio_buffer_alloc_and_init*(pConfig: ptr ma_audio_buffer_config_570426232;
                                       ppAudioBuffer: ptr ptr ma_audio_buffer_570426236): ma_result_570425879 {.
      cdecl, importc: "ma_audio_buffer_alloc_and_init".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_alloc_and_init" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_uninit):
  proc ma_audio_buffer_uninit*(pAudioBuffer: ptr ma_audio_buffer_570426236): void {.
      cdecl, importc: "ma_audio_buffer_uninit".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_uninit" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_uninit_and_free):
  proc ma_audio_buffer_uninit_and_free*(pAudioBuffer: ptr ma_audio_buffer_570426236): void {.
      cdecl, importc: "ma_audio_buffer_uninit_and_free".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_uninit_and_free" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_read_pcm_frames):
  proc ma_audio_buffer_read_pcm_frames*(pAudioBuffer: ptr ma_audio_buffer_570426236;
                                        pFramesOut: pointer;
                                        frameCount: ma_uint64_570425835;
                                        pFramesRead: ptr ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_audio_buffer_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_seek_to_pcm_frame):
  proc ma_audio_buffer_seek_to_pcm_frame*(pAudioBuffer: ptr ma_audio_buffer_570426236;
      frameIndex: ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_audio_buffer_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_map):
  proc ma_audio_buffer_map*(pAudioBuffer: ptr ma_audio_buffer_570426236;
                            ppFramesOut: ptr pointer; pFrameCount: ptr ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_audio_buffer_map".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_map" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_unmap):
  proc ma_audio_buffer_unmap*(pAudioBuffer: ptr ma_audio_buffer_570426236;
                              frameCount: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_audio_buffer_unmap".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_unmap" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_at_end):
  proc ma_audio_buffer_at_end*(pAudioBuffer: ptr ma_audio_buffer_570426236): ma_bool32_570425841 {.
      cdecl, importc: "ma_audio_buffer_at_end".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_at_end" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_get_cursor_in_pcm_frames):
  proc ma_audio_buffer_get_cursor_in_pcm_frames*(
      pAudioBuffer: ptr ma_audio_buffer_570426236; pCursor: ptr ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_audio_buffer_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_get_length_in_pcm_frames):
  proc ma_audio_buffer_get_length_in_pcm_frames*(
      pAudioBuffer: ptr ma_audio_buffer_570426236; pLength: ptr ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_audio_buffer_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_get_available_frames):
  proc ma_audio_buffer_get_available_frames*(pAudioBuffer: ptr ma_audio_buffer_570426236;
      pAvailableFrames: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_audio_buffer_get_available_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_get_available_frames" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_init):
  proc ma_paged_audio_buffer_data_init*(format: ma_format_570425895;
                                        channels: ma_uint32_570425831;
                                        pData: ptr ma_paged_audio_buffer_data_570426244): ma_result_570425879 {.
      cdecl, importc: "ma_paged_audio_buffer_data_init".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_init" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_uninit):
  proc ma_paged_audio_buffer_data_uninit*(pData: ptr ma_paged_audio_buffer_data_570426244;
      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_paged_audio_buffer_data_uninit".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_uninit" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_get_head):
  proc ma_paged_audio_buffer_data_get_head*(
      pData: ptr ma_paged_audio_buffer_data_570426244): ptr ma_paged_audio_buffer_page_570426238 {.
      cdecl, importc: "ma_paged_audio_buffer_data_get_head".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_get_head" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_get_tail):
  proc ma_paged_audio_buffer_data_get_tail*(
      pData: ptr ma_paged_audio_buffer_data_570426244): ptr ma_paged_audio_buffer_page_570426238 {.
      cdecl, importc: "ma_paged_audio_buffer_data_get_tail".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_get_tail" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_get_length_in_pcm_frames):
  proc ma_paged_audio_buffer_data_get_length_in_pcm_frames*(
      pData: ptr ma_paged_audio_buffer_data_570426244; pLength: ptr ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_paged_audio_buffer_data_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_paged_audio_buffer_data_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_allocate_page):
  proc ma_paged_audio_buffer_data_allocate_page*(
      pData: ptr ma_paged_audio_buffer_data_570426244;
      pageSizeInFrames: ma_uint64_570425835; pInitialData: pointer;
      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
      ppPage: ptr ptr ma_paged_audio_buffer_page_570426238): ma_result_570425879 {.
      cdecl, importc: "ma_paged_audio_buffer_data_allocate_page".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_allocate_page" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_free_page):
  proc ma_paged_audio_buffer_data_free_page*(
      pData: ptr ma_paged_audio_buffer_data_570426244;
      pPage: ptr ma_paged_audio_buffer_page_570426238;
      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): ma_result_570425879 {.
      cdecl, importc: "ma_paged_audio_buffer_data_free_page".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_free_page" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_append_page):
  proc ma_paged_audio_buffer_data_append_page*(
      pData: ptr ma_paged_audio_buffer_data_570426244;
      pPage: ptr ma_paged_audio_buffer_page_570426238): ma_result_570425879 {.
      cdecl, importc: "ma_paged_audio_buffer_data_append_page".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_append_page" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_allocate_and_append_page):
  proc ma_paged_audio_buffer_data_allocate_and_append_page*(
      pData: ptr ma_paged_audio_buffer_data_570426244;
      pageSizeInFrames: ma_uint32_570425831; pInitialData: pointer;
      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): ma_result_570425879 {.
      cdecl, importc: "ma_paged_audio_buffer_data_allocate_and_append_page".}
else:
  static :
    hint("Declaration of " &
        "ma_paged_audio_buffer_data_allocate_and_append_page" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_config_init):
  proc ma_paged_audio_buffer_config_init*(pData: ptr ma_paged_audio_buffer_data_570426244): ma_paged_audio_buffer_config_570426248 {.
      cdecl, importc: "ma_paged_audio_buffer_config_init".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_config_init" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_init):
  proc ma_paged_audio_buffer_init*(pConfig: ptr ma_paged_audio_buffer_config_570426248;
                                   pPagedAudioBuffer: ptr ma_paged_audio_buffer_570426252): ma_result_570425879 {.
      cdecl, importc: "ma_paged_audio_buffer_init".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_init" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_uninit):
  proc ma_paged_audio_buffer_uninit*(pPagedAudioBuffer: ptr ma_paged_audio_buffer_570426252): void {.
      cdecl, importc: "ma_paged_audio_buffer_uninit".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_uninit" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_read_pcm_frames):
  proc ma_paged_audio_buffer_read_pcm_frames*(
      pPagedAudioBuffer: ptr ma_paged_audio_buffer_570426252;
      pFramesOut: pointer; frameCount: ma_uint64_570425835;
      pFramesRead: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_paged_audio_buffer_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_seek_to_pcm_frame):
  proc ma_paged_audio_buffer_seek_to_pcm_frame*(
      pPagedAudioBuffer: ptr ma_paged_audio_buffer_570426252;
      frameIndex: ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_paged_audio_buffer_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_get_cursor_in_pcm_frames):
  proc ma_paged_audio_buffer_get_cursor_in_pcm_frames*(
      pPagedAudioBuffer: ptr ma_paged_audio_buffer_570426252;
      pCursor: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_paged_audio_buffer_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_get_length_in_pcm_frames):
  proc ma_paged_audio_buffer_get_length_in_pcm_frames*(
      pPagedAudioBuffer: ptr ma_paged_audio_buffer_570426252;
      pLength: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_paged_audio_buffer_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_rb_init_ex):
  proc ma_rb_init_ex*(subbufferSizeInBytes: csize_t; subbufferCount: csize_t;
                      subbufferStrideInBytes: csize_t;
                      pOptionalPreallocatedBuffer: pointer;
                      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                      pRB: ptr ma_rb_570426256): ma_result_570425879 {.cdecl,
      importc: "ma_rb_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_rb_init_ex" &
        " already exists, not redeclaring")
when not declared(ma_rb_init):
  proc ma_rb_init*(bufferSizeInBytes: csize_t;
                   pOptionalPreallocatedBuffer: pointer;
                   pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                   pRB: ptr ma_rb_570426256): ma_result_570425879 {.cdecl,
      importc: "ma_rb_init".}
else:
  static :
    hint("Declaration of " & "ma_rb_init" & " already exists, not redeclaring")
when not declared(ma_rb_uninit):
  proc ma_rb_uninit*(pRB: ptr ma_rb_570426256): void {.cdecl,
      importc: "ma_rb_uninit".}
else:
  static :
    hint("Declaration of " & "ma_rb_uninit" & " already exists, not redeclaring")
when not declared(ma_rb_reset):
  proc ma_rb_reset*(pRB: ptr ma_rb_570426256): void {.cdecl,
      importc: "ma_rb_reset".}
else:
  static :
    hint("Declaration of " & "ma_rb_reset" & " already exists, not redeclaring")
when not declared(ma_rb_acquire_read):
  proc ma_rb_acquire_read*(pRB: ptr ma_rb_570426256; pSizeInBytes: ptr csize_t;
                           ppBufferOut: ptr pointer): ma_result_570425879 {.
      cdecl, importc: "ma_rb_acquire_read".}
else:
  static :
    hint("Declaration of " & "ma_rb_acquire_read" &
        " already exists, not redeclaring")
when not declared(ma_rb_commit_read):
  proc ma_rb_commit_read*(pRB: ptr ma_rb_570426256; sizeInBytes: csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_rb_commit_read".}
else:
  static :
    hint("Declaration of " & "ma_rb_commit_read" &
        " already exists, not redeclaring")
when not declared(ma_rb_acquire_write):
  proc ma_rb_acquire_write*(pRB: ptr ma_rb_570426256; pSizeInBytes: ptr csize_t;
                            ppBufferOut: ptr pointer): ma_result_570425879 {.
      cdecl, importc: "ma_rb_acquire_write".}
else:
  static :
    hint("Declaration of " & "ma_rb_acquire_write" &
        " already exists, not redeclaring")
when not declared(ma_rb_commit_write):
  proc ma_rb_commit_write*(pRB: ptr ma_rb_570426256; sizeInBytes: csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_rb_commit_write".}
else:
  static :
    hint("Declaration of " & "ma_rb_commit_write" &
        " already exists, not redeclaring")
when not declared(ma_rb_seek_read):
  proc ma_rb_seek_read*(pRB: ptr ma_rb_570426256; offsetInBytes: csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_rb_seek_read".}
else:
  static :
    hint("Declaration of " & "ma_rb_seek_read" &
        " already exists, not redeclaring")
when not declared(ma_rb_seek_write):
  proc ma_rb_seek_write*(pRB: ptr ma_rb_570426256; offsetInBytes: csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_rb_seek_write".}
else:
  static :
    hint("Declaration of " & "ma_rb_seek_write" &
        " already exists, not redeclaring")
when not declared(ma_rb_pointer_distance):
  proc ma_rb_pointer_distance*(pRB: ptr ma_rb_570426256): ma_int32_570425829 {.
      cdecl, importc: "ma_rb_pointer_distance".}
else:
  static :
    hint("Declaration of " & "ma_rb_pointer_distance" &
        " already exists, not redeclaring")
when not declared(ma_rb_available_read):
  proc ma_rb_available_read*(pRB: ptr ma_rb_570426256): ma_uint32_570425831 {.
      cdecl, importc: "ma_rb_available_read".}
else:
  static :
    hint("Declaration of " & "ma_rb_available_read" &
        " already exists, not redeclaring")
when not declared(ma_rb_available_write):
  proc ma_rb_available_write*(pRB: ptr ma_rb_570426256): ma_uint32_570425831 {.
      cdecl, importc: "ma_rb_available_write".}
else:
  static :
    hint("Declaration of " & "ma_rb_available_write" &
        " already exists, not redeclaring")
when not declared(ma_rb_get_subbuffer_size):
  proc ma_rb_get_subbuffer_size*(pRB: ptr ma_rb_570426256): csize_t {.cdecl,
      importc: "ma_rb_get_subbuffer_size".}
else:
  static :
    hint("Declaration of " & "ma_rb_get_subbuffer_size" &
        " already exists, not redeclaring")
when not declared(ma_rb_get_subbuffer_stride):
  proc ma_rb_get_subbuffer_stride*(pRB: ptr ma_rb_570426256): csize_t {.cdecl,
      importc: "ma_rb_get_subbuffer_stride".}
else:
  static :
    hint("Declaration of " & "ma_rb_get_subbuffer_stride" &
        " already exists, not redeclaring")
when not declared(ma_rb_get_subbuffer_offset):
  proc ma_rb_get_subbuffer_offset*(pRB: ptr ma_rb_570426256;
                                   subbufferIndex: csize_t): csize_t {.cdecl,
      importc: "ma_rb_get_subbuffer_offset".}
else:
  static :
    hint("Declaration of " & "ma_rb_get_subbuffer_offset" &
        " already exists, not redeclaring")
when not declared(ma_rb_get_subbuffer_ptr):
  proc ma_rb_get_subbuffer_ptr*(pRB: ptr ma_rb_570426256;
                                subbufferIndex: csize_t; pBuffer: pointer): pointer {.
      cdecl, importc: "ma_rb_get_subbuffer_ptr".}
else:
  static :
    hint("Declaration of " & "ma_rb_get_subbuffer_ptr" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_init_ex):
  proc ma_pcm_rb_init_ex*(format: ma_format_570425895; channels: ma_uint32_570425831;
                          subbufferSizeInFrames: ma_uint32_570425831;
                          subbufferCount: ma_uint32_570425831;
                          subbufferStrideInFrames: ma_uint32_570425831;
                          pOptionalPreallocatedBuffer: pointer;
                          pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                          pRB: ptr ma_pcm_rb_570426260): ma_result_570425879 {.
      cdecl, importc: "ma_pcm_rb_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_init_ex" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_init):
  proc ma_pcm_rb_init*(format: ma_format_570425895; channels: ma_uint32_570425831;
                       bufferSizeInFrames: ma_uint32_570425831;
                       pOptionalPreallocatedBuffer: pointer;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                       pRB: ptr ma_pcm_rb_570426260): ma_result_570425879 {.
      cdecl, importc: "ma_pcm_rb_init".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_init" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_uninit):
  proc ma_pcm_rb_uninit*(pRB: ptr ma_pcm_rb_570426260): void {.cdecl,
      importc: "ma_pcm_rb_uninit".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_uninit" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_reset):
  proc ma_pcm_rb_reset*(pRB: ptr ma_pcm_rb_570426260): void {.cdecl,
      importc: "ma_pcm_rb_reset".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_reset" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_acquire_read):
  proc ma_pcm_rb_acquire_read*(pRB: ptr ma_pcm_rb_570426260;
                               pSizeInFrames: ptr ma_uint32_570425831;
                               ppBufferOut: ptr pointer): ma_result_570425879 {.
      cdecl, importc: "ma_pcm_rb_acquire_read".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_acquire_read" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_commit_read):
  proc ma_pcm_rb_commit_read*(pRB: ptr ma_pcm_rb_570426260;
                              sizeInFrames: ma_uint32_570425831): ma_result_570425879 {.
      cdecl, importc: "ma_pcm_rb_commit_read".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_commit_read" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_acquire_write):
  proc ma_pcm_rb_acquire_write*(pRB: ptr ma_pcm_rb_570426260;
                                pSizeInFrames: ptr ma_uint32_570425831;
                                ppBufferOut: ptr pointer): ma_result_570425879 {.
      cdecl, importc: "ma_pcm_rb_acquire_write".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_acquire_write" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_commit_write):
  proc ma_pcm_rb_commit_write*(pRB: ptr ma_pcm_rb_570426260;
                               sizeInFrames: ma_uint32_570425831): ma_result_570425879 {.
      cdecl, importc: "ma_pcm_rb_commit_write".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_commit_write" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_seek_read):
  proc ma_pcm_rb_seek_read*(pRB: ptr ma_pcm_rb_570426260;
                            offsetInFrames: ma_uint32_570425831): ma_result_570425879 {.
      cdecl, importc: "ma_pcm_rb_seek_read".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_seek_read" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_seek_write):
  proc ma_pcm_rb_seek_write*(pRB: ptr ma_pcm_rb_570426260;
                             offsetInFrames: ma_uint32_570425831): ma_result_570425879 {.
      cdecl, importc: "ma_pcm_rb_seek_write".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_seek_write" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_pointer_distance):
  proc ma_pcm_rb_pointer_distance*(pRB: ptr ma_pcm_rb_570426260): ma_int32_570425829 {.
      cdecl, importc: "ma_pcm_rb_pointer_distance".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_pointer_distance" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_available_read):
  proc ma_pcm_rb_available_read*(pRB: ptr ma_pcm_rb_570426260): ma_uint32_570425831 {.
      cdecl, importc: "ma_pcm_rb_available_read".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_available_read" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_available_write):
  proc ma_pcm_rb_available_write*(pRB: ptr ma_pcm_rb_570426260): ma_uint32_570425831 {.
      cdecl, importc: "ma_pcm_rb_available_write".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_available_write" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_get_subbuffer_size):
  proc ma_pcm_rb_get_subbuffer_size*(pRB: ptr ma_pcm_rb_570426260): ma_uint32_570425831 {.
      cdecl, importc: "ma_pcm_rb_get_subbuffer_size".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_get_subbuffer_size" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_get_subbuffer_stride):
  proc ma_pcm_rb_get_subbuffer_stride*(pRB: ptr ma_pcm_rb_570426260): ma_uint32_570425831 {.
      cdecl, importc: "ma_pcm_rb_get_subbuffer_stride".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_get_subbuffer_stride" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_get_subbuffer_offset):
  proc ma_pcm_rb_get_subbuffer_offset*(pRB: ptr ma_pcm_rb_570426260;
                                       subbufferIndex: ma_uint32_570425831): ma_uint32_570425831 {.
      cdecl, importc: "ma_pcm_rb_get_subbuffer_offset".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_get_subbuffer_offset" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_get_subbuffer_ptr):
  proc ma_pcm_rb_get_subbuffer_ptr*(pRB: ptr ma_pcm_rb_570426260;
                                    subbufferIndex: ma_uint32_570425831;
                                    pBuffer: pointer): pointer {.cdecl,
      importc: "ma_pcm_rb_get_subbuffer_ptr".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_get_subbuffer_ptr" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_get_format):
  proc ma_pcm_rb_get_format*(pRB: ptr ma_pcm_rb_570426260): ma_format_570425895 {.
      cdecl, importc: "ma_pcm_rb_get_format".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_get_format" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_get_channels):
  proc ma_pcm_rb_get_channels*(pRB: ptr ma_pcm_rb_570426260): ma_uint32_570425831 {.
      cdecl, importc: "ma_pcm_rb_get_channels".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_get_channels" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_get_sample_rate):
  proc ma_pcm_rb_get_sample_rate*(pRB: ptr ma_pcm_rb_570426260): ma_uint32_570425831 {.
      cdecl, importc: "ma_pcm_rb_get_sample_rate".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_get_sample_rate" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_set_sample_rate):
  proc ma_pcm_rb_set_sample_rate*(pRB: ptr ma_pcm_rb_570426260;
                                  sampleRate: ma_uint32_570425831): void {.
      cdecl, importc: "ma_pcm_rb_set_sample_rate".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_set_sample_rate" &
        " already exists, not redeclaring")
when not declared(ma_duplex_rb_init):
  proc ma_duplex_rb_init*(captureFormat: ma_format_570425895;
                          captureChannels: ma_uint32_570425831;
                          sampleRate: ma_uint32_570425831;
                          captureInternalSampleRate: ma_uint32_570425831;
                          captureInternalPeriodSizeInFrames: ma_uint32_570425831;
                          pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                          pRB: ptr ma_duplex_rb_570426264): ma_result_570425879 {.
      cdecl, importc: "ma_duplex_rb_init".}
else:
  static :
    hint("Declaration of " & "ma_duplex_rb_init" &
        " already exists, not redeclaring")
when not declared(ma_duplex_rb_uninit):
  proc ma_duplex_rb_uninit*(pRB: ptr ma_duplex_rb_570426264): ma_result_570425879 {.
      cdecl, importc: "ma_duplex_rb_uninit".}
else:
  static :
    hint("Declaration of " & "ma_duplex_rb_uninit" &
        " already exists, not redeclaring")
when not declared(ma_result_description):
  proc ma_result_description*(result: ma_result_570425879): cstring {.cdecl,
      importc: "ma_result_description".}
else:
  static :
    hint("Declaration of " & "ma_result_description" &
        " already exists, not redeclaring")
when not declared(ma_malloc):
  proc ma_malloc*(sz: csize_t; pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): pointer {.
      cdecl, importc: "ma_malloc".}
else:
  static :
    hint("Declaration of " & "ma_malloc" & " already exists, not redeclaring")
when not declared(ma_calloc):
  proc ma_calloc*(sz: csize_t; pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): pointer {.
      cdecl, importc: "ma_calloc".}
else:
  static :
    hint("Declaration of " & "ma_calloc" & " already exists, not redeclaring")
when not declared(ma_realloc):
  proc ma_realloc*(p: pointer; sz: csize_t;
                   pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): pointer {.
      cdecl, importc: "ma_realloc".}
else:
  static :
    hint("Declaration of " & "ma_realloc" & " already exists, not redeclaring")
when not declared(ma_free):
  proc ma_free*(p: pointer; pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_free".}
else:
  static :
    hint("Declaration of " & "ma_free" & " already exists, not redeclaring")
when not declared(ma_aligned_malloc):
  proc ma_aligned_malloc*(sz: csize_t; alignment: csize_t;
                          pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): pointer {.
      cdecl, importc: "ma_aligned_malloc".}
else:
  static :
    hint("Declaration of " & "ma_aligned_malloc" &
        " already exists, not redeclaring")
when not declared(ma_aligned_free):
  proc ma_aligned_free*(p: pointer;
                        pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_aligned_free".}
else:
  static :
    hint("Declaration of " & "ma_aligned_free" &
        " already exists, not redeclaring")
when not declared(ma_get_format_name):
  proc ma_get_format_name*(format: ma_format_570425895): cstring {.cdecl,
      importc: "ma_get_format_name".}
else:
  static :
    hint("Declaration of " & "ma_get_format_name" &
        " already exists, not redeclaring")
when not declared(ma_blend_f32):
  proc ma_blend_f32*(pOut: ptr cfloat; pInA: ptr cfloat; pInB: ptr cfloat;
                     factor: cfloat; channels: ma_uint32_570425831): void {.
      cdecl, importc: "ma_blend_f32".}
else:
  static :
    hint("Declaration of " & "ma_blend_f32" & " already exists, not redeclaring")
when not declared(ma_get_bytes_per_sample):
  proc ma_get_bytes_per_sample*(format: ma_format_570425895): ma_uint32_570425831 {.
      cdecl, importc: "ma_get_bytes_per_sample".}
else:
  static :
    hint("Declaration of " & "ma_get_bytes_per_sample" &
        " already exists, not redeclaring")
when not declared(ma_log_level_to_string):
  proc ma_log_level_to_string*(logLevel: ma_uint32_570425831): cstring {.cdecl,
      importc: "ma_log_level_to_string".}
else:
  static :
    hint("Declaration of " & "ma_log_level_to_string" &
        " already exists, not redeclaring")
when not declared(ma_spinlock_lock):
  proc ma_spinlock_lock*(pSpinlock: ptr ma_spinlock_570425944): ma_result_570425879 {.
      cdecl, importc: "ma_spinlock_lock".}
else:
  static :
    hint("Declaration of " & "ma_spinlock_lock" &
        " already exists, not redeclaring")
when not declared(ma_spinlock_lock_noyield):
  proc ma_spinlock_lock_noyield*(pSpinlock: ptr ma_spinlock_570425944): ma_result_570425879 {.
      cdecl, importc: "ma_spinlock_lock_noyield".}
else:
  static :
    hint("Declaration of " & "ma_spinlock_lock_noyield" &
        " already exists, not redeclaring")
when not declared(ma_spinlock_unlock):
  proc ma_spinlock_unlock*(pSpinlock: ptr ma_spinlock_570425944): ma_result_570425879 {.
      cdecl, importc: "ma_spinlock_unlock".}
else:
  static :
    hint("Declaration of " & "ma_spinlock_unlock" &
        " already exists, not redeclaring")
when not declared(ma_mutex_init):
  proc ma_mutex_init*(pMutex: ptr ma_mutex_570425952): ma_result_570425879 {.
      cdecl, importc: "ma_mutex_init".}
else:
  static :
    hint("Declaration of " & "ma_mutex_init" &
        " already exists, not redeclaring")
when not declared(ma_mutex_uninit):
  proc ma_mutex_uninit*(pMutex: ptr ma_mutex_570425952): void {.cdecl,
      importc: "ma_mutex_uninit".}
else:
  static :
    hint("Declaration of " & "ma_mutex_uninit" &
        " already exists, not redeclaring")
when not declared(ma_mutex_lock):
  proc ma_mutex_lock*(pMutex: ptr ma_mutex_570425952): void {.cdecl,
      importc: "ma_mutex_lock".}
else:
  static :
    hint("Declaration of " & "ma_mutex_lock" &
        " already exists, not redeclaring")
when not declared(ma_mutex_unlock):
  proc ma_mutex_unlock*(pMutex: ptr ma_mutex_570425952): void {.cdecl,
      importc: "ma_mutex_unlock".}
else:
  static :
    hint("Declaration of " & "ma_mutex_unlock" &
        " already exists, not redeclaring")
when not declared(ma_event_init):
  proc ma_event_init*(pEvent: ptr ma_event_570425956): ma_result_570425879 {.
      cdecl, importc: "ma_event_init".}
else:
  static :
    hint("Declaration of " & "ma_event_init" &
        " already exists, not redeclaring")
when not declared(ma_event_uninit):
  proc ma_event_uninit*(pEvent: ptr ma_event_570425956): void {.cdecl,
      importc: "ma_event_uninit".}
else:
  static :
    hint("Declaration of " & "ma_event_uninit" &
        " already exists, not redeclaring")
when not declared(ma_event_wait):
  proc ma_event_wait*(pEvent: ptr ma_event_570425956): ma_result_570425879 {.
      cdecl, importc: "ma_event_wait".}
else:
  static :
    hint("Declaration of " & "ma_event_wait" &
        " already exists, not redeclaring")
when not declared(ma_event_signal):
  proc ma_event_signal*(pEvent: ptr ma_event_570425956): ma_result_570425879 {.
      cdecl, importc: "ma_event_signal".}
else:
  static :
    hint("Declaration of " & "ma_event_signal" &
        " already exists, not redeclaring")
when not declared(ma_semaphore_init):
  proc ma_semaphore_init*(initialValue: cint; pSemaphore: ptr ma_semaphore_570425960): ma_result_570425879 {.
      cdecl, importc: "ma_semaphore_init".}
else:
  static :
    hint("Declaration of " & "ma_semaphore_init" &
        " already exists, not redeclaring")
when not declared(ma_semaphore_uninit):
  proc ma_semaphore_uninit*(pSemaphore: ptr ma_semaphore_570425960): void {.
      cdecl, importc: "ma_semaphore_uninit".}
else:
  static :
    hint("Declaration of " & "ma_semaphore_uninit" &
        " already exists, not redeclaring")
when not declared(ma_semaphore_wait):
  proc ma_semaphore_wait*(pSemaphore: ptr ma_semaphore_570425960): ma_result_570425879 {.
      cdecl, importc: "ma_semaphore_wait".}
else:
  static :
    hint("Declaration of " & "ma_semaphore_wait" &
        " already exists, not redeclaring")
when not declared(ma_semaphore_release):
  proc ma_semaphore_release*(pSemaphore: ptr ma_semaphore_570425960): ma_result_570425879 {.
      cdecl, importc: "ma_semaphore_release".}
else:
  static :
    hint("Declaration of " & "ma_semaphore_release" &
        " already exists, not redeclaring")
when not declared(ma_fence_init):
  proc ma_fence_init*(pFence: ptr ma_fence_570426268): ma_result_570425879 {.
      cdecl, importc: "ma_fence_init".}
else:
  static :
    hint("Declaration of " & "ma_fence_init" &
        " already exists, not redeclaring")
when not declared(ma_fence_uninit):
  proc ma_fence_uninit*(pFence: ptr ma_fence_570426268): void {.cdecl,
      importc: "ma_fence_uninit".}
else:
  static :
    hint("Declaration of " & "ma_fence_uninit" &
        " already exists, not redeclaring")
when not declared(ma_fence_acquire):
  proc ma_fence_acquire*(pFence: ptr ma_fence_570426268): ma_result_570425879 {.
      cdecl, importc: "ma_fence_acquire".}
else:
  static :
    hint("Declaration of " & "ma_fence_acquire" &
        " already exists, not redeclaring")
when not declared(ma_fence_release):
  proc ma_fence_release*(pFence: ptr ma_fence_570426268): ma_result_570425879 {.
      cdecl, importc: "ma_fence_release".}
else:
  static :
    hint("Declaration of " & "ma_fence_release" &
        " already exists, not redeclaring")
when not declared(ma_fence_wait):
  proc ma_fence_wait*(pFence: ptr ma_fence_570426268): ma_result_570425879 {.
      cdecl, importc: "ma_fence_wait".}
else:
  static :
    hint("Declaration of " & "ma_fence_wait" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_signal):
  proc ma_async_notification_signal*(pNotification: pointer): ma_result_570425879 {.
      cdecl, importc: "ma_async_notification_signal".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_signal" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_poll_init):
  proc ma_async_notification_poll_init*(pNotificationPoll: ptr ma_async_notification_poll_570426278): ma_result_570425879 {.
      cdecl, importc: "ma_async_notification_poll_init".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_poll_init" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_poll_is_signalled):
  proc ma_async_notification_poll_is_signalled*(
      pNotificationPoll: ptr ma_async_notification_poll_570426278): ma_bool32_570425841 {.
      cdecl, importc: "ma_async_notification_poll_is_signalled".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_poll_is_signalled" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_event_init):
  proc ma_async_notification_event_init*(
      pNotificationEvent: ptr ma_async_notification_event_570426282): ma_result_570425879 {.
      cdecl, importc: "ma_async_notification_event_init".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_event_init" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_event_uninit):
  proc ma_async_notification_event_uninit*(
      pNotificationEvent: ptr ma_async_notification_event_570426282): ma_result_570425879 {.
      cdecl, importc: "ma_async_notification_event_uninit".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_event_uninit" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_event_wait):
  proc ma_async_notification_event_wait*(
      pNotificationEvent: ptr ma_async_notification_event_570426282): ma_result_570425879 {.
      cdecl, importc: "ma_async_notification_event_wait".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_event_wait" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_event_signal):
  proc ma_async_notification_event_signal*(
      pNotificationEvent: ptr ma_async_notification_event_570426282): ma_result_570425879 {.
      cdecl, importc: "ma_async_notification_event_signal".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_event_signal" &
        " already exists, not redeclaring")
when not declared(ma_slot_allocator_config_init):
  proc ma_slot_allocator_config_init*(capacity: ma_uint32_570425831): ma_slot_allocator_config_570426286 {.
      cdecl, importc: "ma_slot_allocator_config_init".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_config_init" &
        " already exists, not redeclaring")
when not declared(ma_slot_allocator_get_heap_size):
  proc ma_slot_allocator_get_heap_size*(pConfig: ptr ma_slot_allocator_config_570426286;
                                        pHeapSizeInBytes: ptr csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_slot_allocator_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_slot_allocator_init_preallocated):
  proc ma_slot_allocator_init_preallocated*(
      pConfig: ptr ma_slot_allocator_config_570426286; pHeap: pointer;
      pAllocator: ptr ma_slot_allocator_570426294): ma_result_570425879 {.cdecl,
      importc: "ma_slot_allocator_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_slot_allocator_init):
  proc ma_slot_allocator_init*(pConfig: ptr ma_slot_allocator_config_570426286;
      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                               pAllocator: ptr ma_slot_allocator_570426294): ma_result_570425879 {.
      cdecl, importc: "ma_slot_allocator_init".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_init" &
        " already exists, not redeclaring")
when not declared(ma_slot_allocator_uninit):
  proc ma_slot_allocator_uninit*(pAllocator: ptr ma_slot_allocator_570426294;
      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_slot_allocator_uninit".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_uninit" &
        " already exists, not redeclaring")
when not declared(ma_slot_allocator_alloc):
  proc ma_slot_allocator_alloc*(pAllocator: ptr ma_slot_allocator_570426294;
                                pSlot: ptr ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_slot_allocator_alloc".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_alloc" &
        " already exists, not redeclaring")
when not declared(ma_slot_allocator_free):
  proc ma_slot_allocator_free*(pAllocator: ptr ma_slot_allocator_570426294;
                               slot: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_slot_allocator_free".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_free" &
        " already exists, not redeclaring")
when not declared(ma_job_init):
  proc ma_job_init*(code: ma_uint16_570425827): ma_job_570426296 {.cdecl,
      importc: "ma_job_init".}
else:
  static :
    hint("Declaration of " & "ma_job_init" & " already exists, not redeclaring")
when not declared(ma_job_process):
  proc ma_job_process*(pJob: ptr ma_job_570426296): ma_result_570425879 {.cdecl,
      importc: "ma_job_process".}
else:
  static :
    hint("Declaration of " & "ma_job_process" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_config_init):
  proc ma_job_queue_config_init*(flags: ma_uint32_570425831; capacity: ma_uint32_570425831): ma_job_queue_config_570426314 {.
      cdecl, importc: "ma_job_queue_config_init".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_config_init" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_get_heap_size):
  proc ma_job_queue_get_heap_size*(pConfig: ptr ma_job_queue_config_570426314;
                                   pHeapSizeInBytes: ptr csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_job_queue_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_init_preallocated):
  proc ma_job_queue_init_preallocated*(pConfig: ptr ma_job_queue_config_570426314;
                                       pHeap: pointer; pQueue: ptr ma_job_queue_570426318): ma_result_570425879 {.
      cdecl, importc: "ma_job_queue_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_init):
  proc ma_job_queue_init*(pConfig: ptr ma_job_queue_config_570426314;
                          pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                          pQueue: ptr ma_job_queue_570426318): ma_result_570425879 {.
      cdecl, importc: "ma_job_queue_init".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_init" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_uninit):
  proc ma_job_queue_uninit*(pQueue: ptr ma_job_queue_570426318;
                            pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_job_queue_uninit".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_uninit" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_post):
  proc ma_job_queue_post*(pQueue: ptr ma_job_queue_570426318; pJob: ptr ma_job_570426296): ma_result_570425879 {.
      cdecl, importc: "ma_job_queue_post".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_post" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_next):
  proc ma_job_queue_next*(pQueue: ptr ma_job_queue_570426318; pJob: ptr ma_job_570426296): ma_result_570425879 {.
      cdecl, importc: "ma_job_queue_next".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_next" &
        " already exists, not redeclaring")
when not declared(ma_context_config_wasapi_init):
  proc ma_context_config_wasapi_init*(): ma_context_config_wasapi_570426350 {.
      cdecl, importc: "ma_context_config_wasapi_init".}
else:
  static :
    hint("Declaration of " & "ma_context_config_wasapi_init" &
        " already exists, not redeclaring")
when not declared(ma_device_config_wasapi_init):
  proc ma_device_config_wasapi_init*(): ma_device_config_wasapi_570426354 {.
      cdecl, importc: "ma_device_config_wasapi_init".}
else:
  static :
    hint("Declaration of " & "ma_device_config_wasapi_init" &
        " already exists, not redeclaring")
when not declared(ma_device_backend_wasapi):
  var ma_device_backend_wasapi* {.importc: "ma_device_backend_wasapi".}: ptr ma_device_backend_vtable_570426340
else:
  static :
    hint("Declaration of " & "ma_device_backend_wasapi" &
        " already exists, not redeclaring")
when not declared(ma_context_config_dsound_init):
  proc ma_context_config_dsound_init*(): ma_context_config_dsound_570426358 {.
      cdecl, importc: "ma_context_config_dsound_init".}
else:
  static :
    hint("Declaration of " & "ma_context_config_dsound_init" &
        " already exists, not redeclaring")
when not declared(ma_device_config_dsound_init):
  proc ma_device_config_dsound_init*(): ma_device_config_dsound_570426362 {.
      cdecl, importc: "ma_device_config_dsound_init".}
else:
  static :
    hint("Declaration of " & "ma_device_config_dsound_init" &
        " already exists, not redeclaring")
when not declared(ma_device_backend_dsound):
  var ma_device_backend_dsound* {.importc: "ma_device_backend_dsound".}: ptr ma_device_backend_vtable_570426340
else:
  static :
    hint("Declaration of " & "ma_device_backend_dsound" &
        " already exists, not redeclaring")
when not declared(ma_context_config_winmm_init):
  proc ma_context_config_winmm_init*(): ma_context_config_winmm_570426366 {.
      cdecl, importc: "ma_context_config_winmm_init".}
else:
  static :
    hint("Declaration of " & "ma_context_config_winmm_init" &
        " already exists, not redeclaring")
when not declared(ma_device_config_winmm_init):
  proc ma_device_config_winmm_init*(): ma_device_config_winmm_570426370 {.cdecl,
      importc: "ma_device_config_winmm_init".}
else:
  static :
    hint("Declaration of " & "ma_device_config_winmm_init" &
        " already exists, not redeclaring")
when not declared(ma_device_backend_winmm):
  var ma_device_backend_winmm* {.importc: "ma_device_backend_winmm".}: ptr ma_device_backend_vtable_570426340
else:
  static :
    hint("Declaration of " & "ma_device_backend_winmm" &
        " already exists, not redeclaring")
when not declared(ma_context_config_coreaudio_init):
  proc ma_context_config_coreaudio_init*(): ma_context_config_coreaudio_570426382 {.
      cdecl, importc: "ma_context_config_coreaudio_init".}
else:
  static :
    hint("Declaration of " & "ma_context_config_coreaudio_init" &
        " already exists, not redeclaring")
when not declared(ma_device_config_coreaudio_init):
  proc ma_device_config_coreaudio_init*(): ma_device_config_coreaudio_570426386 {.
      cdecl, importc: "ma_device_config_coreaudio_init".}
else:
  static :
    hint("Declaration of " & "ma_device_config_coreaudio_init" &
        " already exists, not redeclaring")
when not declared(ma_device_backend_coreaudio):
  var ma_device_backend_coreaudio* {.importc: "ma_device_backend_coreaudio".}: ptr ma_device_backend_vtable_570426340
else:
  static :
    hint("Declaration of " & "ma_device_backend_coreaudio" &
        " already exists, not redeclaring")
when not declared(ma_context_config_pulseaudio_init):
  proc ma_context_config_pulseaudio_init*(): ma_context_config_pulseaudio_570426390 {.
      cdecl, importc: "ma_context_config_pulseaudio_init".}
else:
  static :
    hint("Declaration of " & "ma_context_config_pulseaudio_init" &
        " already exists, not redeclaring")
when not declared(ma_device_config_pulseaudio_init):
  proc ma_device_config_pulseaudio_init*(): ma_device_config_pulseaudio_570426394 {.
      cdecl, importc: "ma_device_config_pulseaudio_init".}
else:
  static :
    hint("Declaration of " & "ma_device_config_pulseaudio_init" &
        " already exists, not redeclaring")
when not declared(ma_device_backend_pulseaudio):
  var ma_device_backend_pulseaudio* {.importc: "ma_device_backend_pulseaudio".}: ptr ma_device_backend_vtable_570426340
else:
  static :
    hint("Declaration of " & "ma_device_backend_pulseaudio" &
        " already exists, not redeclaring")
when not declared(ma_context_config_alsa_init):
  proc ma_context_config_alsa_init*(): ma_context_config_alsa_570426398 {.cdecl,
      importc: "ma_context_config_alsa_init".}
else:
  static :
    hint("Declaration of " & "ma_context_config_alsa_init" &
        " already exists, not redeclaring")
when not declared(ma_device_config_alsa_init):
  proc ma_device_config_alsa_init*(): ma_device_config_alsa_570426402 {.cdecl,
      importc: "ma_device_config_alsa_init".}
else:
  static :
    hint("Declaration of " & "ma_device_config_alsa_init" &
        " already exists, not redeclaring")
when not declared(ma_device_backend_alsa):
  var ma_device_backend_alsa* {.importc: "ma_device_backend_alsa".}: ptr ma_device_backend_vtable_570426340
else:
  static :
    hint("Declaration of " & "ma_device_backend_alsa" &
        " already exists, not redeclaring")
when not declared(ma_context_config_jack_init):
  proc ma_context_config_jack_init*(): ma_context_config_jack_570426406 {.cdecl,
      importc: "ma_context_config_jack_init".}
else:
  static :
    hint("Declaration of " & "ma_context_config_jack_init" &
        " already exists, not redeclaring")
when not declared(ma_device_config_jack_init):
  proc ma_device_config_jack_init*(): ma_device_config_jack_570426410 {.cdecl,
      importc: "ma_device_config_jack_init".}
else:
  static :
    hint("Declaration of " & "ma_device_config_jack_init" &
        " already exists, not redeclaring")
when not declared(ma_device_backend_jack):
  var ma_device_backend_jack* {.importc: "ma_device_backend_jack".}: ptr ma_device_backend_vtable_570426340
else:
  static :
    hint("Declaration of " & "ma_device_backend_jack" &
        " already exists, not redeclaring")
when not declared(ma_context_config_sndio_init):
  proc ma_context_config_sndio_init*(): ma_context_config_sndio_570426414 {.
      cdecl, importc: "ma_context_config_sndio_init".}
else:
  static :
    hint("Declaration of " & "ma_context_config_sndio_init" &
        " already exists, not redeclaring")
when not declared(ma_device_config_sndio_init):
  proc ma_device_config_sndio_init*(): ma_device_config_sndio_570426418 {.cdecl,
      importc: "ma_device_config_sndio_init".}
else:
  static :
    hint("Declaration of " & "ma_device_config_sndio_init" &
        " already exists, not redeclaring")
when not declared(ma_device_backend_sndio):
  var ma_device_backend_sndio* {.importc: "ma_device_backend_sndio".}: ptr ma_device_backend_vtable_570426340
else:
  static :
    hint("Declaration of " & "ma_device_backend_sndio" &
        " already exists, not redeclaring")
when not declared(ma_context_config_audio4_init):
  proc ma_context_config_audio4_init*(): ma_context_config_audio4_570426422 {.
      cdecl, importc: "ma_context_config_audio4_init".}
else:
  static :
    hint("Declaration of " & "ma_context_config_audio4_init" &
        " already exists, not redeclaring")
when not declared(ma_device_config_audio4_init):
  proc ma_device_config_audio4_init*(): ma_device_config_audio4_570426426 {.
      cdecl, importc: "ma_device_config_audio4_init".}
else:
  static :
    hint("Declaration of " & "ma_device_config_audio4_init" &
        " already exists, not redeclaring")
when not declared(ma_device_backend_audio4):
  var ma_device_backend_audio4* {.importc: "ma_device_backend_audio4".}: ptr ma_device_backend_vtable_570426340
else:
  static :
    hint("Declaration of " & "ma_device_backend_audio4" &
        " already exists, not redeclaring")
when not declared(ma_context_config_oss_init):
  proc ma_context_config_oss_init*(): ma_context_config_oss_570426430 {.cdecl,
      importc: "ma_context_config_oss_init".}
else:
  static :
    hint("Declaration of " & "ma_context_config_oss_init" &
        " already exists, not redeclaring")
when not declared(ma_device_config_oss_init):
  proc ma_device_config_oss_init*(): ma_device_config_oss_570426434 {.cdecl,
      importc: "ma_device_config_oss_init".}
else:
  static :
    hint("Declaration of " & "ma_device_config_oss_init" &
        " already exists, not redeclaring")
when not declared(ma_device_backend_oss):
  var ma_device_backend_oss* {.importc: "ma_device_backend_oss".}: ptr ma_device_backend_vtable_570426340
else:
  static :
    hint("Declaration of " & "ma_device_backend_oss" &
        " already exists, not redeclaring")
when not declared(ma_context_config_aaudio_init):
  proc ma_context_config_aaudio_init*(): ma_context_config_aaudio_570426458 {.
      cdecl, importc: "ma_context_config_aaudio_init".}
else:
  static :
    hint("Declaration of " & "ma_context_config_aaudio_init" &
        " already exists, not redeclaring")
when not declared(ma_device_config_aaudio_init):
  proc ma_device_config_aaudio_init*(): ma_device_config_aaudio_570426462 {.
      cdecl, importc: "ma_device_config_aaudio_init".}
else:
  static :
    hint("Declaration of " & "ma_device_config_aaudio_init" &
        " already exists, not redeclaring")
when not declared(ma_device_backend_aaudio):
  var ma_device_backend_aaudio* {.importc: "ma_device_backend_aaudio".}: ptr ma_device_backend_vtable_570426340
else:
  static :
    hint("Declaration of " & "ma_device_backend_aaudio" &
        " already exists, not redeclaring")
when not declared(ma_context_config_opensl_init):
  proc ma_context_config_opensl_init*(): ma_context_config_opensl_570426474 {.
      cdecl, importc: "ma_context_config_opensl_init".}
else:
  static :
    hint("Declaration of " & "ma_context_config_opensl_init" &
        " already exists, not redeclaring")
when not declared(ma_device_config_opensl_init):
  proc ma_device_config_opensl_init*(): ma_device_config_opensl_570426478 {.
      cdecl, importc: "ma_device_config_opensl_init".}
else:
  static :
    hint("Declaration of " & "ma_device_config_opensl_init" &
        " already exists, not redeclaring")
when not declared(ma_device_backend_opensl):
  var ma_device_backend_opensl* {.importc: "ma_device_backend_opensl".}: ptr ma_device_backend_vtable_570426340
else:
  static :
    hint("Declaration of " & "ma_device_backend_opensl" &
        " already exists, not redeclaring")
when not declared(ma_context_config_webaudio_init):
  proc ma_context_config_webaudio_init*(): ma_context_config_webaudio_570426486 {.
      cdecl, importc: "ma_context_config_webaudio_init".}
else:
  static :
    hint("Declaration of " & "ma_context_config_webaudio_init" &
        " already exists, not redeclaring")
when not declared(ma_device_config_webaudio_init):
  proc ma_device_config_webaudio_init*(): ma_device_config_webaudio_570426490 {.
      cdecl, importc: "ma_device_config_webaudio_init".}
else:
  static :
    hint("Declaration of " & "ma_device_config_webaudio_init" &
        " already exists, not redeclaring")
when not declared(ma_device_backend_webaudio):
  var ma_device_backend_webaudio* {.importc: "ma_device_backend_webaudio".}: ptr ma_device_backend_vtable_570426340
else:
  static :
    hint("Declaration of " & "ma_device_backend_webaudio" &
        " already exists, not redeclaring")
when not declared(ma_context_config_null_init):
  proc ma_context_config_null_init*(): ma_context_config_null_570426494 {.cdecl,
      importc: "ma_context_config_null_init".}
else:
  static :
    hint("Declaration of " & "ma_context_config_null_init" &
        " already exists, not redeclaring")
when not declared(ma_device_config_null_init):
  proc ma_device_config_null_init*(): ma_device_config_null_570426498 {.cdecl,
      importc: "ma_device_config_null_init".}
else:
  static :
    hint("Declaration of " & "ma_device_config_null_init" &
        " already exists, not redeclaring")
when not declared(ma_device_backend_null):
  var ma_device_backend_null* {.importc: "ma_device_backend_null".}: ptr ma_device_backend_vtable_570426340
else:
  static :
    hint("Declaration of " & "ma_device_backend_null" &
        " already exists, not redeclaring")
when not declared(ma_device_backend_config_init):
  proc ma_device_backend_config_init*(pVTable: ptr ma_device_backend_vtable_570426340;
                                      pConfig: pointer): ma_device_backend_config_570426502 {.
      cdecl, importc: "ma_device_backend_config_init".}
else:
  static :
    hint("Declaration of " & "ma_device_backend_config_init" &
        " already exists, not redeclaring")
when not declared(ma_get_stock_device_backends):
  proc ma_get_stock_device_backends*(pBackends: ptr ma_device_backend_config_570426502;
                                     backendsCap: csize_t): ma_uint32_570425831 {.
      cdecl, importc: "ma_get_stock_device_backends".}
else:
  static :
    hint("Declaration of " & "ma_get_stock_device_backends" &
        " already exists, not redeclaring")
when not declared(ma_get_device_backend_info):
  proc ma_get_device_backend_info*(pBackendVTable: ptr ma_device_backend_vtable_570426340;
                                   pBackendInfo: ptr ma_device_backend_info_570426506): void {.
      cdecl, importc: "ma_get_device_backend_info".}
else:
  static :
    hint("Declaration of " & "ma_get_device_backend_info" &
        " already exists, not redeclaring")
when not declared(ma_device_job_thread_config_init):
  proc ma_device_job_thread_config_init*(): ma_device_job_thread_config_570426518 {.
      cdecl, importc: "ma_device_job_thread_config_init".}
else:
  static :
    hint("Declaration of " & "ma_device_job_thread_config_init" &
        " already exists, not redeclaring")
when not declared(ma_device_job_thread_init):
  proc ma_device_job_thread_init*(pConfig: ptr ma_device_job_thread_config_570426518;
      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                                  pJobThread: ptr ma_device_job_thread_570426522): ma_result_570425879 {.
      cdecl, importc: "ma_device_job_thread_init".}
else:
  static :
    hint("Declaration of " & "ma_device_job_thread_init" &
        " already exists, not redeclaring")
when not declared(ma_device_job_thread_uninit):
  proc ma_device_job_thread_uninit*(pJobThread: ptr ma_device_job_thread_570426522;
      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_device_job_thread_uninit".}
else:
  static :
    hint("Declaration of " & "ma_device_job_thread_uninit" &
        " already exists, not redeclaring")
when not declared(ma_device_job_thread_post):
  proc ma_device_job_thread_post*(pJobThread: ptr ma_device_job_thread_570426522;
                                  pJob: ptr ma_job_570426296): ma_result_570425879 {.
      cdecl, importc: "ma_device_job_thread_post".}
else:
  static :
    hint("Declaration of " & "ma_device_job_thread_post" &
        " already exists, not redeclaring")
when not declared(ma_device_job_thread_next):
  proc ma_device_job_thread_next*(pJobThread: ptr ma_device_job_thread_570426522;
                                  pJob: ptr ma_job_570426296): ma_result_570425879 {.
      cdecl, importc: "ma_device_job_thread_next".}
else:
  static :
    hint("Declaration of " & "ma_device_job_thread_next" &
        " already exists, not redeclaring")
when not declared(ma_device_id_equal):
  proc ma_device_id_equal*(pA: ptr ma_device_id_570426570; pB: ptr ma_device_id_570426570): ma_bool32_570425841 {.
      cdecl, importc: "ma_device_id_equal".}
else:
  static :
    hint("Declaration of " & "ma_device_id_equal" &
        " already exists, not redeclaring")
when not declared(ma_context_config_init):
  proc ma_context_config_init*(): ma_context_config_570426324 {.cdecl,
      importc: "ma_context_config_init".}
else:
  static :
    hint("Declaration of " & "ma_context_config_init" &
        " already exists, not redeclaring")
when not declared(ma_context_init):
  proc ma_context_init*(pBackends: ptr ma_device_backend_config_570426502;
                        backendCount: ma_uint32_570425831;
                        pConfig: ptr ma_context_config_570426324;
                        pContext: ptr ma_context_570426320): ma_result_570425879 {.
      cdecl, importc: "ma_context_init".}
else:
  static :
    hint("Declaration of " & "ma_context_init" &
        " already exists, not redeclaring")
when not declared(ma_context_uninit):
  proc ma_context_uninit*(pContext: ptr ma_context_570426320): ma_result_570425879 {.
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
  proc ma_context_get_log*(pContext: ptr ma_context_570426320): ptr ma_log_570425970 {.
      cdecl, importc: "ma_context_get_log".}
else:
  static :
    hint("Declaration of " & "ma_context_get_log" &
        " already exists, not redeclaring")
when not declared(ma_context_get_allocation_callbacks):
  proc ma_context_get_allocation_callbacks*(pContext: ptr ma_context_570426320): ptr ma_allocation_callbacks_570425918 {.
      cdecl, importc: "ma_context_get_allocation_callbacks".}
else:
  static :
    hint("Declaration of " & "ma_context_get_allocation_callbacks" &
        " already exists, not redeclaring")
when not declared(ma_context_get_thread_priority):
  proc ma_context_get_thread_priority*(pContext: ptr ma_context_570426320): ma_thread_priority_570425948 {.
      cdecl, importc: "ma_context_get_thread_priority".}
else:
  static :
    hint("Declaration of " & "ma_context_get_thread_priority" &
        " already exists, not redeclaring")
when not declared(ma_context_get_backend_state):
  proc ma_context_get_backend_state*(pContext: ptr ma_context_570426320): pointer {.
      cdecl, importc: "ma_context_get_backend_state".}
else:
  static :
    hint("Declaration of " & "ma_context_get_backend_state" &
        " already exists, not redeclaring")
when not declared(ma_context_get_backend_info):
  proc ma_context_get_backend_info*(pContext: ptr ma_context_570426320;
                                    pBackendInfo: ptr ma_device_backend_info_570426506): void {.
      cdecl, importc: "ma_context_get_backend_info".}
else:
  static :
    hint("Declaration of " & "ma_context_get_backend_info" &
        " already exists, not redeclaring")
when not declared(ma_context_enumerate_devices):
  proc ma_context_enumerate_devices*(pContext: ptr ma_context_570426320;
                                     callback: ma_enum_devices_callback_proc_570426580;
                                     pUserData: pointer): ma_result_570425879 {.
      cdecl, importc: "ma_context_enumerate_devices".}
else:
  static :
    hint("Declaration of " & "ma_context_enumerate_devices" &
        " already exists, not redeclaring")
when not declared(ma_context_get_devices):
  proc ma_context_get_devices*(pContext: ptr ma_context_570426320;
                               ppPlaybackDeviceInfos: ptr ptr ma_device_info_570426574;
                               pPlaybackDeviceCount: ptr ma_uint32_570425831;
                               ppCaptureDeviceInfos: ptr ptr ma_device_info_570426574;
                               pCaptureDeviceCount: ptr ma_uint32_570425831): ma_result_570425879 {.
      cdecl, importc: "ma_context_get_devices".}
else:
  static :
    hint("Declaration of " & "ma_context_get_devices" &
        " already exists, not redeclaring")
when not declared(ma_context_get_device_info):
  proc ma_context_get_device_info*(pContext: ptr ma_context_570426320;
                                   deviceType: ma_device_type_570426558;
                                   pDeviceID: ptr ma_device_id_570426570;
                                   pDeviceInfo: ptr ma_device_info_570426574): ma_result_570425879 {.
      cdecl, importc: "ma_context_get_device_info".}
else:
  static :
    hint("Declaration of " & "ma_context_get_device_info" &
        " already exists, not redeclaring")
when not declared(ma_device_config_init):
  proc ma_device_config_init*(deviceType: ma_device_type_570426558): ma_device_config_570426332 {.
      cdecl, importc: "ma_device_config_init".}
else:
  static :
    hint("Declaration of " & "ma_device_config_init" &
        " already exists, not redeclaring")
when not declared(ma_device_init):
  proc ma_device_init*(pContext: ptr ma_context_570426320;
                       pConfig: ptr ma_device_config_570426332;
                       pDevice: ptr ma_device_570426328): ma_result_570425879 {.
      cdecl, importc: "ma_device_init".}
else:
  static :
    hint("Declaration of " & "ma_device_init" &
        " already exists, not redeclaring")
when not declared(ma_device_init_ex):
  proc ma_device_init_ex*(pBackends: ptr ma_device_backend_config_570426502;
                          backendCount: ma_uint32_570425831;
                          pContextConfig: ptr ma_context_config_570426324;
                          pConfig: ptr ma_device_config_570426332;
                          pDevice: ptr ma_device_570426328): ma_result_570425879 {.
      cdecl, importc: "ma_device_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_device_init_ex" &
        " already exists, not redeclaring")
when not declared(ma_device_uninit):
  proc ma_device_uninit*(pDevice: ptr ma_device_570426328): void {.cdecl,
      importc: "ma_device_uninit".}
else:
  static :
    hint("Declaration of " & "ma_device_uninit" &
        " already exists, not redeclaring")
when not declared(ma_device_get_context):
  proc ma_device_get_context*(pDevice: ptr ma_device_570426328): ptr ma_context_570426320 {.
      cdecl, importc: "ma_device_get_context".}
else:
  static :
    hint("Declaration of " & "ma_device_get_context" &
        " already exists, not redeclaring")
when not declared(ma_device_get_log):
  proc ma_device_get_log*(pDevice: ptr ma_device_570426328): ptr ma_log_570425970 {.
      cdecl, importc: "ma_device_get_log".}
else:
  static :
    hint("Declaration of " & "ma_device_get_log" &
        " already exists, not redeclaring")
when not declared(ma_device_get_type):
  proc ma_device_get_type*(pDevice: ptr ma_device_570426328): ma_device_type_570426558 {.
      cdecl, importc: "ma_device_get_type".}
else:
  static :
    hint("Declaration of " & "ma_device_get_type" &
        " already exists, not redeclaring")
when not declared(ma_device_get_allocation_callbacks):
  proc ma_device_get_allocation_callbacks*(pDevice: ptr ma_device_570426328): ptr ma_allocation_callbacks_570425918 {.
      cdecl, importc: "ma_device_get_allocation_callbacks".}
else:
  static :
    hint("Declaration of " & "ma_device_get_allocation_callbacks" &
        " already exists, not redeclaring")
when not declared(ma_device_get_backend_state):
  proc ma_device_get_backend_state*(pDevice: ptr ma_device_570426328): pointer {.
      cdecl, importc: "ma_device_get_backend_state".}
else:
  static :
    hint("Declaration of " & "ma_device_get_backend_state" &
        " already exists, not redeclaring")
when not declared(ma_device_get_info):
  proc ma_device_get_info*(pDevice: ptr ma_device_570426328;
                           type_arg: ma_device_type_570426558;
                           pDeviceInfo: ptr ma_device_info_570426574): ma_result_570425879 {.
      cdecl, importc: "ma_device_get_info".}
else:
  static :
    hint("Declaration of " & "ma_device_get_info" &
        " already exists, not redeclaring")
when not declared(ma_device_get_name):
  proc ma_device_get_name*(pDevice: ptr ma_device_570426328;
                           type_arg: ma_device_type_570426558; pName: cstring;
                           nameCap: csize_t;
                           pLengthNotIncludingNullTerminator: ptr csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_device_get_name".}
else:
  static :
    hint("Declaration of " & "ma_device_get_name" &
        " already exists, not redeclaring")
when not declared(ma_device_start):
  proc ma_device_start*(pDevice: ptr ma_device_570426328): ma_result_570425879 {.
      cdecl, importc: "ma_device_start".}
else:
  static :
    hint("Declaration of " & "ma_device_start" &
        " already exists, not redeclaring")
when not declared(ma_device_stop):
  proc ma_device_stop*(pDevice: ptr ma_device_570426328): ma_result_570425879 {.
      cdecl, importc: "ma_device_stop".}
else:
  static :
    hint("Declaration of " & "ma_device_stop" &
        " already exists, not redeclaring")
when not declared(ma_device_is_started):
  proc ma_device_is_started*(pDevice: ptr ma_device_570426328): ma_bool32_570425841 {.
      cdecl, importc: "ma_device_is_started".}
else:
  static :
    hint("Declaration of " & "ma_device_is_started" &
        " already exists, not redeclaring")
when not declared(ma_device_get_status):
  proc ma_device_get_status*(pDevice: ptr ma_device_570426328): ma_device_status_570426510 {.
      cdecl, importc: "ma_device_get_status".}
else:
  static :
    hint("Declaration of " & "ma_device_get_status" &
        " already exists, not redeclaring")
when not declared(ma_device_post_init):
  proc ma_device_post_init*(pDevice: ptr ma_device_570426328;
                            deviceType: ma_device_type_570426558;
                            pPlaybackDescriptor: ptr ma_device_descriptor_570426336;
                            pCaptureDescriptor: ptr ma_device_descriptor_570426336): ma_result_570425879 {.
      cdecl, importc: "ma_device_post_init".}
else:
  static :
    hint("Declaration of " & "ma_device_post_init" &
        " already exists, not redeclaring")
when not declared(ma_device_set_master_volume):
  proc ma_device_set_master_volume*(pDevice: ptr ma_device_570426328;
                                    volume: cfloat): ma_result_570425879 {.
      cdecl, importc: "ma_device_set_master_volume".}
else:
  static :
    hint("Declaration of " & "ma_device_set_master_volume" &
        " already exists, not redeclaring")
when not declared(ma_device_get_master_volume):
  proc ma_device_get_master_volume*(pDevice: ptr ma_device_570426328;
                                    pVolume: ptr cfloat): ma_result_570425879 {.
      cdecl, importc: "ma_device_get_master_volume".}
else:
  static :
    hint("Declaration of " & "ma_device_get_master_volume" &
        " already exists, not redeclaring")
when not declared(ma_device_set_master_volume_db):
  proc ma_device_set_master_volume_db*(pDevice: ptr ma_device_570426328;
                                       gainDB: cfloat): ma_result_570425879 {.
      cdecl, importc: "ma_device_set_master_volume_db".}
else:
  static :
    hint("Declaration of " & "ma_device_set_master_volume_db" &
        " already exists, not redeclaring")
when not declared(ma_device_get_master_volume_db):
  proc ma_device_get_master_volume_db*(pDevice: ptr ma_device_570426328;
                                       pGainDB: ptr cfloat): ma_result_570425879 {.
      cdecl, importc: "ma_device_get_master_volume_db".}
else:
  static :
    hint("Declaration of " & "ma_device_get_master_volume_db" &
        " already exists, not redeclaring")
when not declared(ma_device_handle_backend_data_callback):
  proc ma_device_handle_backend_data_callback*(pDevice: ptr ma_device_570426328;
      pOutput: pointer; pInput: pointer; frameCount: ma_uint32_570425831): ma_result_570425879 {.
      cdecl, importc: "ma_device_handle_backend_data_callback".}
else:
  static :
    hint("Declaration of " & "ma_device_handle_backend_data_callback" &
        " already exists, not redeclaring")
when not declared(ma_device_post_notification):
  proc ma_device_post_notification*(notification: ma_device_notification_570426550): void {.
      cdecl, importc: "ma_device_post_notification".}
else:
  static :
    hint("Declaration of " & "ma_device_post_notification" &
        " already exists, not redeclaring")
when not declared(ma_device_post_notification_started):
  proc ma_device_post_notification_started*(pDevice: ptr ma_device_570426328): void {.
      cdecl, importc: "ma_device_post_notification_started".}
else:
  static :
    hint("Declaration of " & "ma_device_post_notification_started" &
        " already exists, not redeclaring")
when not declared(ma_device_post_notification_stopped):
  proc ma_device_post_notification_stopped*(pDevice: ptr ma_device_570426328): void {.
      cdecl, importc: "ma_device_post_notification_stopped".}
else:
  static :
    hint("Declaration of " & "ma_device_post_notification_stopped" &
        " already exists, not redeclaring")
when not declared(ma_device_post_notification_rerouted):
  proc ma_device_post_notification_rerouted*(pDevice: ptr ma_device_570426328): void {.
      cdecl, importc: "ma_device_post_notification_rerouted".}
else:
  static :
    hint("Declaration of " & "ma_device_post_notification_rerouted" &
        " already exists, not redeclaring")
when not declared(ma_device_post_notification_interruption_began):
  proc ma_device_post_notification_interruption_began*(pDevice: ptr ma_device_570426328): void {.
      cdecl, importc: "ma_device_post_notification_interruption_began".}
else:
  static :
    hint("Declaration of " & "ma_device_post_notification_interruption_began" &
        " already exists, not redeclaring")
when not declared(ma_device_post_notification_interruption_ended):
  proc ma_device_post_notification_interruption_ended*(pDevice: ptr ma_device_570426328): void {.
      cdecl, importc: "ma_device_post_notification_interruption_ended".}
else:
  static :
    hint("Declaration of " & "ma_device_post_notification_interruption_ended" &
        " already exists, not redeclaring")
when not declared(ma_device_post_notification_unlocked):
  proc ma_device_post_notification_unlocked*(pDevice: ptr ma_device_570426328): void {.
      cdecl, importc: "ma_device_post_notification_unlocked".}
else:
  static :
    hint("Declaration of " & "ma_device_post_notification_unlocked" &
        " already exists, not redeclaring")
when not declared(ma_calculate_buffer_size_in_frames_from_descriptor):
  proc ma_calculate_buffer_size_in_frames_from_descriptor*(
      pDescriptor: ptr ma_device_descriptor_570426336;
      nativeSampleRate: ma_uint32_570425831): ma_uint32_570425831 {.cdecl,
      importc: "ma_calculate_buffer_size_in_frames_from_descriptor".}
else:
  static :
    hint("Declaration of " &
        "ma_calculate_buffer_size_in_frames_from_descriptor" &
        " already exists, not redeclaring")
when not declared(ma_calculate_buffer_size_in_milliseconds_from_frames):
  proc ma_calculate_buffer_size_in_milliseconds_from_frames*(
      bufferSizeInFrames: ma_uint32_570425831; sampleRate: ma_uint32_570425831): ma_uint32_570425831 {.
      cdecl, importc: "ma_calculate_buffer_size_in_milliseconds_from_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_calculate_buffer_size_in_milliseconds_from_frames" &
        " already exists, not redeclaring")
when not declared(ma_calculate_buffer_size_in_frames_from_milliseconds):
  proc ma_calculate_buffer_size_in_frames_from_milliseconds*(
      bufferSizeInMilliseconds: ma_uint32_570425831; sampleRate: ma_uint32_570425831): ma_uint32_570425831 {.
      cdecl, importc: "ma_calculate_buffer_size_in_frames_from_milliseconds".}
else:
  static :
    hint("Declaration of " &
        "ma_calculate_buffer_size_in_frames_from_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_copy_pcm_frames):
  proc ma_copy_pcm_frames*(dst: pointer; src: pointer; frameCount: ma_uint64_570425835;
                           format: ma_format_570425895; channels: ma_uint32_570425831): void {.
      cdecl, importc: "ma_copy_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_copy_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_silence_pcm_frames):
  proc ma_silence_pcm_frames*(p: pointer; frameCount: ma_uint64_570425835;
                              format: ma_format_570425895; channels: ma_uint32_570425831): void {.
      cdecl, importc: "ma_silence_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_silence_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_offset_pcm_frames_ptr):
  proc ma_offset_pcm_frames_ptr*(p: pointer; offsetInFrames: ma_uint64_570425835;
                                 format: ma_format_570425895;
                                 channels: ma_uint32_570425831): pointer {.
      cdecl, importc: "ma_offset_pcm_frames_ptr".}
else:
  static :
    hint("Declaration of " & "ma_offset_pcm_frames_ptr" &
        " already exists, not redeclaring")
when not declared(ma_offset_pcm_frames_const_ptr):
  proc ma_offset_pcm_frames_const_ptr*(p: pointer; offsetInFrames: ma_uint64_570425835;
                                       format: ma_format_570425895;
                                       channels: ma_uint32_570425831): pointer {.
      cdecl, importc: "ma_offset_pcm_frames_const_ptr".}
else:
  static :
    hint("Declaration of " & "ma_offset_pcm_frames_const_ptr" &
        " already exists, not redeclaring")
when not declared(ma_clip_samples_u8):
  proc ma_clip_samples_u8*(pDst: ptr ma_uint8_570425823; pSrc: ptr ma_int16_570425825;
                           count: ma_uint64_570425835): void {.cdecl,
      importc: "ma_clip_samples_u8".}
else:
  static :
    hint("Declaration of " & "ma_clip_samples_u8" &
        " already exists, not redeclaring")
when not declared(ma_clip_samples_s16):
  proc ma_clip_samples_s16*(pDst: ptr ma_int16_570425825; pSrc: ptr ma_int32_570425829;
                            count: ma_uint64_570425835): void {.cdecl,
      importc: "ma_clip_samples_s16".}
else:
  static :
    hint("Declaration of " & "ma_clip_samples_s16" &
        " already exists, not redeclaring")
when not declared(ma_clip_samples_s24):
  proc ma_clip_samples_s24*(pDst: ptr ma_uint8_570425823; pSrc: ptr ma_int64_570425833;
                            count: ma_uint64_570425835): void {.cdecl,
      importc: "ma_clip_samples_s24".}
else:
  static :
    hint("Declaration of " & "ma_clip_samples_s24" &
        " already exists, not redeclaring")
when not declared(ma_clip_samples_s32):
  proc ma_clip_samples_s32*(pDst: ptr ma_int32_570425829; pSrc: ptr ma_int64_570425833;
                            count: ma_uint64_570425835): void {.cdecl,
      importc: "ma_clip_samples_s32".}
else:
  static :
    hint("Declaration of " & "ma_clip_samples_s32" &
        " already exists, not redeclaring")
when not declared(ma_clip_samples_f32):
  proc ma_clip_samples_f32*(pDst: ptr cfloat; pSrc: ptr cfloat; count: ma_uint64_570425835): void {.
      cdecl, importc: "ma_clip_samples_f32".}
else:
  static :
    hint("Declaration of " & "ma_clip_samples_f32" &
        " already exists, not redeclaring")
when not declared(ma_clip_pcm_frames):
  proc ma_clip_pcm_frames*(pDst: pointer; pSrc: pointer; frameCount: ma_uint64_570425835;
                           format: ma_format_570425895; channels: ma_uint32_570425831): void {.
      cdecl, importc: "ma_clip_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_clip_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_u8):
  proc ma_copy_and_apply_volume_factor_u8*(pSamplesOut: ptr ma_uint8_570425823;
      pSamplesIn: ptr ma_uint8_570425823; sampleCount: ma_uint64_570425835;
      factor: cfloat): void {.cdecl,
                              importc: "ma_copy_and_apply_volume_factor_u8".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_u8" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_s16):
  proc ma_copy_and_apply_volume_factor_s16*(pSamplesOut: ptr ma_int16_570425825;
      pSamplesIn: ptr ma_int16_570425825; sampleCount: ma_uint64_570425835;
      factor: cfloat): void {.cdecl,
                              importc: "ma_copy_and_apply_volume_factor_s16".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_s16" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_s24):
  proc ma_copy_and_apply_volume_factor_s24*(pSamplesOut: pointer;
      pSamplesIn: pointer; sampleCount: ma_uint64_570425835; factor: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_factor_s24".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_s24" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_s32):
  proc ma_copy_and_apply_volume_factor_s32*(pSamplesOut: ptr ma_int32_570425829;
      pSamplesIn: ptr ma_int32_570425829; sampleCount: ma_uint64_570425835;
      factor: cfloat): void {.cdecl,
                              importc: "ma_copy_and_apply_volume_factor_s32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_s32" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_f32):
  proc ma_copy_and_apply_volume_factor_f32*(pSamplesOut: ptr cfloat;
      pSamplesIn: ptr cfloat; sampleCount: ma_uint64_570425835; factor: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_factor_f32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_f32" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_u8):
  proc ma_apply_volume_factor_u8*(pSamples: ptr ma_uint8_570425823;
                                  sampleCount: ma_uint64_570425835;
                                  factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_u8".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_u8" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_s16):
  proc ma_apply_volume_factor_s16*(pSamples: ptr ma_int16_570425825;
                                   sampleCount: ma_uint64_570425835;
                                   factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_s16".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_s16" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_s24):
  proc ma_apply_volume_factor_s24*(pSamples: pointer; sampleCount: ma_uint64_570425835;
                                   factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_s24".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_s24" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_s32):
  proc ma_apply_volume_factor_s32*(pSamples: ptr ma_int32_570425829;
                                   sampleCount: ma_uint64_570425835;
                                   factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_s32".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_s32" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_f32):
  proc ma_apply_volume_factor_f32*(pSamples: ptr cfloat; sampleCount: ma_uint64_570425835;
                                   factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_f32".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_f32" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_pcm_frames_u8):
  proc ma_copy_and_apply_volume_factor_pcm_frames_u8*(pFramesOut: ptr ma_uint8_570425823;
      pFramesIn: ptr ma_uint8_570425823; frameCount: ma_uint64_570425835;
      channels: ma_uint32_570425831; factor: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_pcm_frames_u8".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_pcm_frames_u8" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_pcm_frames_s16):
  proc ma_copy_and_apply_volume_factor_pcm_frames_s16*(pFramesOut: ptr ma_int16_570425825;
      pFramesIn: ptr ma_int16_570425825; frameCount: ma_uint64_570425835;
      channels: ma_uint32_570425831; factor: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_pcm_frames_s16".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_pcm_frames_s16" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_pcm_frames_s24):
  proc ma_copy_and_apply_volume_factor_pcm_frames_s24*(pFramesOut: pointer;
      pFramesIn: pointer; frameCount: ma_uint64_570425835; channels: ma_uint32_570425831;
      factor: cfloat): void {.cdecl, importc: "ma_copy_and_apply_volume_factor_pcm_frames_s24".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_pcm_frames_s24" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_pcm_frames_s32):
  proc ma_copy_and_apply_volume_factor_pcm_frames_s32*(pFramesOut: ptr ma_int32_570425829;
      pFramesIn: ptr ma_int32_570425829; frameCount: ma_uint64_570425835;
      channels: ma_uint32_570425831; factor: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_pcm_frames_s32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_pcm_frames_s32" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_pcm_frames_f32):
  proc ma_copy_and_apply_volume_factor_pcm_frames_f32*(pFramesOut: ptr cfloat;
      pFramesIn: ptr cfloat; frameCount: ma_uint64_570425835;
      channels: ma_uint32_570425831; factor: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_pcm_frames_f32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_pcm_frames_f32" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_pcm_frames):
  proc ma_copy_and_apply_volume_factor_pcm_frames*(pFramesOut: pointer;
      pFramesIn: pointer; frameCount: ma_uint64_570425835; format: ma_format_570425895;
      channels: ma_uint32_570425831; factor: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_pcm_frames_u8):
  proc ma_apply_volume_factor_pcm_frames_u8*(pFrames: ptr ma_uint8_570425823;
      frameCount: ma_uint64_570425835; channels: ma_uint32_570425831;
      factor: cfloat): void {.cdecl,
                              importc: "ma_apply_volume_factor_pcm_frames_u8".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_pcm_frames_u8" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_pcm_frames_s16):
  proc ma_apply_volume_factor_pcm_frames_s16*(pFrames: ptr ma_int16_570425825;
      frameCount: ma_uint64_570425835; channels: ma_uint32_570425831;
      factor: cfloat): void {.cdecl,
                              importc: "ma_apply_volume_factor_pcm_frames_s16".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_pcm_frames_s16" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_pcm_frames_s24):
  proc ma_apply_volume_factor_pcm_frames_s24*(pFrames: pointer;
      frameCount: ma_uint64_570425835; channels: ma_uint32_570425831;
      factor: cfloat): void {.cdecl,
                              importc: "ma_apply_volume_factor_pcm_frames_s24".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_pcm_frames_s24" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_pcm_frames_s32):
  proc ma_apply_volume_factor_pcm_frames_s32*(pFrames: ptr ma_int32_570425829;
      frameCount: ma_uint64_570425835; channels: ma_uint32_570425831;
      factor: cfloat): void {.cdecl,
                              importc: "ma_apply_volume_factor_pcm_frames_s32".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_pcm_frames_s32" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_pcm_frames_f32):
  proc ma_apply_volume_factor_pcm_frames_f32*(pFrames: ptr cfloat;
      frameCount: ma_uint64_570425835; channels: ma_uint32_570425831;
      factor: cfloat): void {.cdecl,
                              importc: "ma_apply_volume_factor_pcm_frames_f32".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_pcm_frames_f32" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_pcm_frames):
  proc ma_apply_volume_factor_pcm_frames*(pFrames: pointer;
      frameCount: ma_uint64_570425835; format: ma_format_570425895;
      channels: ma_uint32_570425831; factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_per_channel_f32):
  proc ma_copy_and_apply_volume_factor_per_channel_f32*(pFramesOut: ptr cfloat;
      pFramesIn: ptr cfloat; frameCount: ma_uint64_570425835;
      channels: ma_uint32_570425831; pChannelGains: ptr cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_per_channel_f32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_per_channel_f32" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_and_clip_samples_u8):
  proc ma_copy_and_apply_volume_and_clip_samples_u8*(pDst: ptr ma_uint8_570425823;
      pSrc: ptr ma_int16_570425825; count: ma_uint64_570425835; volume: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_and_clip_samples_u8".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_and_clip_samples_u8" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_and_clip_samples_s16):
  proc ma_copy_and_apply_volume_and_clip_samples_s16*(pDst: ptr ma_int16_570425825;
      pSrc: ptr ma_int32_570425829; count: ma_uint64_570425835; volume: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_and_clip_samples_s16".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_and_clip_samples_s16" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_and_clip_samples_s24):
  proc ma_copy_and_apply_volume_and_clip_samples_s24*(pDst: ptr ma_uint8_570425823;
      pSrc: ptr ma_int64_570425833; count: ma_uint64_570425835; volume: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_and_clip_samples_s24".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_and_clip_samples_s24" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_and_clip_samples_s32):
  proc ma_copy_and_apply_volume_and_clip_samples_s32*(pDst: ptr ma_int32_570425829;
      pSrc: ptr ma_int64_570425833; count: ma_uint64_570425835; volume: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_and_clip_samples_s32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_and_clip_samples_s32" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_and_clip_samples_f32):
  proc ma_copy_and_apply_volume_and_clip_samples_f32*(pDst: ptr cfloat;
      pSrc: ptr cfloat; count: ma_uint64_570425835; volume: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_and_clip_samples_f32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_and_clip_samples_f32" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_and_clip_pcm_frames):
  proc ma_copy_and_apply_volume_and_clip_pcm_frames*(pDst: pointer;
      pSrc: pointer; frameCount: ma_uint64_570425835; format: ma_format_570425895;
      channels: ma_uint32_570425831; volume: cfloat): void {.cdecl,
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
                              frameCount: ma_uint64_570425835;
                              channels: ma_uint32_570425831; volume: cfloat): ma_result_570425879 {.
      cdecl, importc: "ma_mix_pcm_frames_f32".}
else:
  static :
    hint("Declaration of " & "ma_mix_pcm_frames_f32" &
        " already exists, not redeclaring")
when not declared(ma_vfs_open):
  proc ma_vfs_open*(pVFS: pointer; pFilePath: cstring; openMode: ma_uint32_570425831;
                    pFile: ptr ma_vfs_file_570426584): ma_result_570425879 {.
      cdecl, importc: "ma_vfs_open".}
else:
  static :
    hint("Declaration of " & "ma_vfs_open" & " already exists, not redeclaring")
when not declared(ma_vfs_open_w):
  proc ma_vfs_open_w*(pVFS: pointer; pFilePath: ptr wchar_t_570426306;
                      openMode: ma_uint32_570425831; pFile: ptr ma_vfs_file_570426584): ma_result_570425879 {.
      cdecl, importc: "ma_vfs_open_w".}
else:
  static :
    hint("Declaration of " & "ma_vfs_open_w" &
        " already exists, not redeclaring")
when not declared(ma_vfs_close):
  proc ma_vfs_close*(pVFS: pointer; file: ma_vfs_file_570426584): ma_result_570425879 {.
      cdecl, importc: "ma_vfs_close".}
else:
  static :
    hint("Declaration of " & "ma_vfs_close" & " already exists, not redeclaring")
when not declared(ma_vfs_read):
  proc ma_vfs_read*(pVFS: pointer; file: ma_vfs_file_570426584; pDst: pointer;
                    sizeInBytes: csize_t; pBytesRead: ptr csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_vfs_read".}
else:
  static :
    hint("Declaration of " & "ma_vfs_read" & " already exists, not redeclaring")
when not declared(ma_vfs_write):
  proc ma_vfs_write*(pVFS: pointer; file: ma_vfs_file_570426584; pSrc: pointer;
                     sizeInBytes: csize_t; pBytesWritten: ptr csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_vfs_write".}
else:
  static :
    hint("Declaration of " & "ma_vfs_write" & " already exists, not redeclaring")
when not declared(ma_vfs_seek):
  proc ma_vfs_seek*(pVFS: pointer; file: ma_vfs_file_570426584;
                    offset: ma_int64_570425833; origin: ma_seek_origin_570426592): ma_result_570425879 {.
      cdecl, importc: "ma_vfs_seek".}
else:
  static :
    hint("Declaration of " & "ma_vfs_seek" & " already exists, not redeclaring")
when not declared(ma_vfs_tell):
  proc ma_vfs_tell*(pVFS: pointer; file: ma_vfs_file_570426584;
                    pCursor: ptr ma_int64_570425833): ma_result_570425879 {.
      cdecl, importc: "ma_vfs_tell".}
else:
  static :
    hint("Declaration of " & "ma_vfs_tell" & " already exists, not redeclaring")
when not declared(ma_vfs_info):
  proc ma_vfs_info*(pVFS: pointer; file: ma_vfs_file_570426584;
                    pInfo: ptr ma_file_info_570426596): ma_result_570425879 {.
      cdecl, importc: "ma_vfs_info".}
else:
  static :
    hint("Declaration of " & "ma_vfs_info" & " already exists, not redeclaring")
when not declared(ma_vfs_open_and_read_file):
  proc ma_vfs_open_and_read_file*(pVFS: pointer; pFilePath: cstring;
                                  ppData: ptr pointer; pSize: ptr csize_t;
      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): ma_result_570425879 {.
      cdecl, importc: "ma_vfs_open_and_read_file".}
else:
  static :
    hint("Declaration of " & "ma_vfs_open_and_read_file" &
        " already exists, not redeclaring")
when not declared(ma_default_vfs_init):
  proc ma_default_vfs_init*(pVFS: ptr ma_default_vfs_570426604;
                            pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): ma_result_570425879 {.
      cdecl, importc: "ma_default_vfs_init".}
else:
  static :
    hint("Declaration of " & "ma_default_vfs_init" &
        " already exists, not redeclaring")
when not declared(ma_encoding_format_from_path):
  proc ma_encoding_format_from_path*(pFilePath: cstring): ma_encoding_format_570426614 {.
      cdecl, importc: "ma_encoding_format_from_path".}
else:
  static :
    hint("Declaration of " & "ma_encoding_format_from_path" &
        " already exists, not redeclaring")
when not declared(ma_encoding_format_from_path_w):
  proc ma_encoding_format_from_path_w*(pFilePath: ptr wchar_t_570426306): ma_encoding_format_570426614 {.
      cdecl, importc: "ma_encoding_format_from_path_w".}
else:
  static :
    hint("Declaration of " & "ma_encoding_format_from_path_w" &
        " already exists, not redeclaring")
when not declared(ma_decoder_config_init):
  proc ma_decoder_config_init*(outputFormat: ma_format_570425895;
                               outputChannels: ma_uint32_570425831;
                               outputSampleRate: ma_uint32_570425831): ma_decoder_config_570426636 {.
      cdecl, importc: "ma_decoder_config_init".}
else:
  static :
    hint("Declaration of " & "ma_decoder_config_init" &
        " already exists, not redeclaring")
when not declared(ma_decoder_config_init_default):
  proc ma_decoder_config_init_default*(): ma_decoder_config_570426636 {.cdecl,
      importc: "ma_decoder_config_init_default".}
else:
  static :
    hint("Declaration of " & "ma_decoder_config_init_default" &
        " already exists, not redeclaring")
when not declared(ma_decoder_init):
  proc ma_decoder_init*(onRead: ma_decoder_read_proc_570426628;
                        onSeek: ma_decoder_seek_proc_570426630;
                        onTell: ma_decoder_tell_proc_570426632;
                        pUserData: pointer; pConfig: ptr ma_decoder_config_570426636;
                        pDecoder: ptr ma_decoder_570426616): ma_result_570425879 {.
      cdecl, importc: "ma_decoder_init".}
else:
  static :
    hint("Declaration of " & "ma_decoder_init" &
        " already exists, not redeclaring")
when not declared(ma_decoder_init_memory):
  proc ma_decoder_init_memory*(pData: pointer; dataSize: csize_t;
                               pConfig: ptr ma_decoder_config_570426636;
                               pDecoder: ptr ma_decoder_570426616): ma_result_570425879 {.
      cdecl, importc: "ma_decoder_init_memory".}
else:
  static :
    hint("Declaration of " & "ma_decoder_init_memory" &
        " already exists, not redeclaring")
when not declared(ma_decoder_init_vfs):
  proc ma_decoder_init_vfs*(pVFS: pointer; pFilePath: cstring;
                            pConfig: ptr ma_decoder_config_570426636;
                            pDecoder: ptr ma_decoder_570426616): ma_result_570425879 {.
      cdecl, importc: "ma_decoder_init_vfs".}
else:
  static :
    hint("Declaration of " & "ma_decoder_init_vfs" &
        " already exists, not redeclaring")
when not declared(ma_decoder_init_vfs_w):
  proc ma_decoder_init_vfs_w*(pVFS: pointer; pFilePath: ptr wchar_t_570426306;
                              pConfig: ptr ma_decoder_config_570426636;
                              pDecoder: ptr ma_decoder_570426616): ma_result_570425879 {.
      cdecl, importc: "ma_decoder_init_vfs_w".}
else:
  static :
    hint("Declaration of " & "ma_decoder_init_vfs_w" &
        " already exists, not redeclaring")
when not declared(ma_decoder_init_file):
  proc ma_decoder_init_file*(pFilePath: cstring; pConfig: ptr ma_decoder_config_570426636;
                             pDecoder: ptr ma_decoder_570426616): ma_result_570425879 {.
      cdecl, importc: "ma_decoder_init_file".}
else:
  static :
    hint("Declaration of " & "ma_decoder_init_file" &
        " already exists, not redeclaring")
when not declared(ma_decoder_init_file_w):
  proc ma_decoder_init_file_w*(pFilePath: ptr wchar_t_570426306;
                               pConfig: ptr ma_decoder_config_570426636;
                               pDecoder: ptr ma_decoder_570426616): ma_result_570425879 {.
      cdecl, importc: "ma_decoder_init_file_w".}
else:
  static :
    hint("Declaration of " & "ma_decoder_init_file_w" &
        " already exists, not redeclaring")
when not declared(ma_decoder_uninit):
  proc ma_decoder_uninit*(pDecoder: ptr ma_decoder_570426616): ma_result_570425879 {.
      cdecl, importc: "ma_decoder_uninit".}
else:
  static :
    hint("Declaration of " & "ma_decoder_uninit" &
        " already exists, not redeclaring")
when not declared(ma_decoder_read_pcm_frames):
  proc ma_decoder_read_pcm_frames*(pDecoder: ptr ma_decoder_570426616;
                                   pFramesOut: pointer; frameCount: ma_uint64_570425835;
                                   pFramesRead: ptr ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_decoder_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_decoder_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_decoder_seek_to_pcm_frame):
  proc ma_decoder_seek_to_pcm_frame*(pDecoder: ptr ma_decoder_570426616;
                                     frameIndex: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_decoder_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_decoder_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_decoder_get_data_format):
  proc ma_decoder_get_data_format*(pDecoder: ptr ma_decoder_570426616;
                                   pFormat: ptr ma_format_570425895;
                                   pChannels: ptr ma_uint32_570425831;
                                   pSampleRate: ptr ma_uint32_570425831;
                                   pChannelMap: ptr ma_channel_570425871;
                                   channelMapCap: csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_decoder_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_decoder_get_data_format" &
        " already exists, not redeclaring")
when not declared(ma_decoder_get_cursor_in_pcm_frames):
  proc ma_decoder_get_cursor_in_pcm_frames*(pDecoder: ptr ma_decoder_570426616;
      pCursor: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_decoder_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_decoder_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_decoder_get_length_in_pcm_frames):
  proc ma_decoder_get_length_in_pcm_frames*(pDecoder: ptr ma_decoder_570426616;
      pLength: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_decoder_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_decoder_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_decoder_get_available_frames):
  proc ma_decoder_get_available_frames*(pDecoder: ptr ma_decoder_570426616;
                                        pAvailableFrames: ptr ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_decoder_get_available_frames".}
else:
  static :
    hint("Declaration of " & "ma_decoder_get_available_frames" &
        " already exists, not redeclaring")
when not declared(ma_decoder_get_encoding_format):
  proc ma_decoder_get_encoding_format*(pDecoder: ptr ma_decoder_570426616): ma_encoding_format_570426614 {.
      cdecl, importc: "ma_decoder_get_encoding_format".}
else:
  static :
    hint("Declaration of " & "ma_decoder_get_encoding_format" &
        " already exists, not redeclaring")
when not declared(ma_decode_from_vfs):
  proc ma_decode_from_vfs*(pVFS: pointer; pFilePath: cstring;
                           pConfig: ptr ma_decoder_config_570426636;
                           pFrameCountOut: ptr ma_uint64_570425835;
                           ppPCMFramesOut: ptr pointer): ma_result_570425879 {.
      cdecl, importc: "ma_decode_from_vfs".}
else:
  static :
    hint("Declaration of " & "ma_decode_from_vfs" &
        " already exists, not redeclaring")
when not declared(ma_decode_file):
  proc ma_decode_file*(pFilePath: cstring; pConfig: ptr ma_decoder_config_570426636;
                       pFrameCountOut: ptr ma_uint64_570425835;
                       ppPCMFramesOut: ptr pointer): ma_result_570425879 {.
      cdecl, importc: "ma_decode_file".}
else:
  static :
    hint("Declaration of " & "ma_decode_file" &
        " already exists, not redeclaring")
when not declared(ma_decode_memory):
  proc ma_decode_memory*(pData: pointer; dataSize: csize_t;
                         pConfig: ptr ma_decoder_config_570426636;
                         pFrameCountOut: ptr ma_uint64_570425835;
                         ppPCMFramesOut: ptr pointer): ma_result_570425879 {.
      cdecl, importc: "ma_decode_memory".}
else:
  static :
    hint("Declaration of " & "ma_decode_memory" &
        " already exists, not redeclaring")
when not declared(ma_decoding_backend_wav):
  var ma_decoding_backend_wav* {.importc: "ma_decoding_backend_wav".}: ptr ma_decoding_backend_vtable_570426626
else:
  static :
    hint("Declaration of " & "ma_decoding_backend_wav" &
        " already exists, not redeclaring")
when not declared(ma_decoding_backend_flac):
  var ma_decoding_backend_flac* {.importc: "ma_decoding_backend_flac".}: ptr ma_decoding_backend_vtable_570426626
else:
  static :
    hint("Declaration of " & "ma_decoding_backend_flac" &
        " already exists, not redeclaring")
when not declared(ma_decoding_backend_mp3):
  var ma_decoding_backend_mp3* {.importc: "ma_decoding_backend_mp3".}: ptr ma_decoding_backend_vtable_570426626
else:
  static :
    hint("Declaration of " & "ma_decoding_backend_mp3" &
        " already exists, not redeclaring")
when not declared(ma_encoder_config_init):
  proc ma_encoder_config_init*(encodingFormat: ma_encoding_format_570426614;
                               format: ma_format_570425895; channels: ma_uint32_570425831;
                               sampleRate: ma_uint32_570425831): ma_encoder_config_570426654 {.
      cdecl, importc: "ma_encoder_config_init".}
else:
  static :
    hint("Declaration of " & "ma_encoder_config_init" &
        " already exists, not redeclaring")
when not declared(ma_encoder_init):
  proc ma_encoder_init*(onWrite: ma_encoder_write_proc_570426642;
                        onSeek: ma_encoder_seek_proc_570426644;
                        pUserData: pointer; pConfig: ptr ma_encoder_config_570426654;
                        pEncoder: ptr ma_encoder_570426638): ma_result_570425879 {.
      cdecl, importc: "ma_encoder_init".}
else:
  static :
    hint("Declaration of " & "ma_encoder_init" &
        " already exists, not redeclaring")
when not declared(ma_encoder_init_vfs):
  proc ma_encoder_init_vfs*(pVFS: pointer; pFilePath: cstring;
                            pConfig: ptr ma_encoder_config_570426654;
                            pEncoder: ptr ma_encoder_570426638): ma_result_570425879 {.
      cdecl, importc: "ma_encoder_init_vfs".}
else:
  static :
    hint("Declaration of " & "ma_encoder_init_vfs" &
        " already exists, not redeclaring")
when not declared(ma_encoder_init_vfs_w):
  proc ma_encoder_init_vfs_w*(pVFS: pointer; pFilePath: ptr wchar_t_570426306;
                              pConfig: ptr ma_encoder_config_570426654;
                              pEncoder: ptr ma_encoder_570426638): ma_result_570425879 {.
      cdecl, importc: "ma_encoder_init_vfs_w".}
else:
  static :
    hint("Declaration of " & "ma_encoder_init_vfs_w" &
        " already exists, not redeclaring")
when not declared(ma_encoder_init_file):
  proc ma_encoder_init_file*(pFilePath: cstring; pConfig: ptr ma_encoder_config_570426654;
                             pEncoder: ptr ma_encoder_570426638): ma_result_570425879 {.
      cdecl, importc: "ma_encoder_init_file".}
else:
  static :
    hint("Declaration of " & "ma_encoder_init_file" &
        " already exists, not redeclaring")
when not declared(ma_encoder_init_file_w):
  proc ma_encoder_init_file_w*(pFilePath: ptr wchar_t_570426306;
                               pConfig: ptr ma_encoder_config_570426654;
                               pEncoder: ptr ma_encoder_570426638): ma_result_570425879 {.
      cdecl, importc: "ma_encoder_init_file_w".}
else:
  static :
    hint("Declaration of " & "ma_encoder_init_file_w" &
        " already exists, not redeclaring")
when not declared(ma_encoder_uninit):
  proc ma_encoder_uninit*(pEncoder: ptr ma_encoder_570426638): void {.cdecl,
      importc: "ma_encoder_uninit".}
else:
  static :
    hint("Declaration of " & "ma_encoder_uninit" &
        " already exists, not redeclaring")
when not declared(ma_encoder_write_pcm_frames):
  proc ma_encoder_write_pcm_frames*(pEncoder: ptr ma_encoder_570426638;
                                    pFramesIn: pointer; frameCount: ma_uint64_570425835;
                                    pFramesWritten: ptr ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_encoder_write_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_encoder_write_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_waveform_config_init):
  proc ma_waveform_config_init*(format: ma_format_570425895;
                                channels: ma_uint32_570425831;
                                sampleRate: ma_uint32_570425831;
                                type_arg: ma_waveform_type_570426658;
                                amplitude: cdouble; frequency: cdouble): ma_waveform_config_570426662 {.
      cdecl, importc: "ma_waveform_config_init".}
else:
  static :
    hint("Declaration of " & "ma_waveform_config_init" &
        " already exists, not redeclaring")
when not declared(ma_waveform_init):
  proc ma_waveform_init*(pConfig: ptr ma_waveform_config_570426662;
                         pWaveform: ptr ma_waveform_570426666): ma_result_570425879 {.
      cdecl, importc: "ma_waveform_init".}
else:
  static :
    hint("Declaration of " & "ma_waveform_init" &
        " already exists, not redeclaring")
when not declared(ma_waveform_uninit):
  proc ma_waveform_uninit*(pWaveform: ptr ma_waveform_570426666): void {.cdecl,
      importc: "ma_waveform_uninit".}
else:
  static :
    hint("Declaration of " & "ma_waveform_uninit" &
        " already exists, not redeclaring")
when not declared(ma_waveform_read_pcm_frames):
  proc ma_waveform_read_pcm_frames*(pWaveform: ptr ma_waveform_570426666;
                                    pFramesOut: pointer; frameCount: ma_uint64_570425835;
                                    pFramesRead: ptr ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_waveform_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_waveform_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_waveform_seek_to_pcm_frame):
  proc ma_waveform_seek_to_pcm_frame*(pWaveform: ptr ma_waveform_570426666;
                                      frameIndex: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_waveform_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_waveform_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_waveform_set_amplitude):
  proc ma_waveform_set_amplitude*(pWaveform: ptr ma_waveform_570426666;
                                  amplitude: cdouble): ma_result_570425879 {.
      cdecl, importc: "ma_waveform_set_amplitude".}
else:
  static :
    hint("Declaration of " & "ma_waveform_set_amplitude" &
        " already exists, not redeclaring")
when not declared(ma_waveform_set_frequency):
  proc ma_waveform_set_frequency*(pWaveform: ptr ma_waveform_570426666;
                                  frequency: cdouble): ma_result_570425879 {.
      cdecl, importc: "ma_waveform_set_frequency".}
else:
  static :
    hint("Declaration of " & "ma_waveform_set_frequency" &
        " already exists, not redeclaring")
when not declared(ma_waveform_set_type):
  proc ma_waveform_set_type*(pWaveform: ptr ma_waveform_570426666;
                             type_arg: ma_waveform_type_570426658): ma_result_570425879 {.
      cdecl, importc: "ma_waveform_set_type".}
else:
  static :
    hint("Declaration of " & "ma_waveform_set_type" &
        " already exists, not redeclaring")
when not declared(ma_waveform_set_sample_rate):
  proc ma_waveform_set_sample_rate*(pWaveform: ptr ma_waveform_570426666;
                                    sampleRate: ma_uint32_570425831): ma_result_570425879 {.
      cdecl, importc: "ma_waveform_set_sample_rate".}
else:
  static :
    hint("Declaration of " & "ma_waveform_set_sample_rate" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_config_init):
  proc ma_pulsewave_config_init*(format: ma_format_570425895;
                                 channels: ma_uint32_570425831;
                                 sampleRate: ma_uint32_570425831;
                                 dutyCycle: cdouble; amplitude: cdouble;
                                 frequency: cdouble): ma_pulsewave_config_570426670 {.
      cdecl, importc: "ma_pulsewave_config_init".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_config_init" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_init):
  proc ma_pulsewave_init*(pConfig: ptr ma_pulsewave_config_570426670;
                          pWaveform: ptr ma_pulsewave_570426674): ma_result_570425879 {.
      cdecl, importc: "ma_pulsewave_init".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_init" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_uninit):
  proc ma_pulsewave_uninit*(pWaveform: ptr ma_pulsewave_570426674): void {.
      cdecl, importc: "ma_pulsewave_uninit".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_uninit" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_read_pcm_frames):
  proc ma_pulsewave_read_pcm_frames*(pWaveform: ptr ma_pulsewave_570426674;
                                     pFramesOut: pointer; frameCount: ma_uint64_570425835;
                                     pFramesRead: ptr ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_pulsewave_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_seek_to_pcm_frame):
  proc ma_pulsewave_seek_to_pcm_frame*(pWaveform: ptr ma_pulsewave_570426674;
                                       frameIndex: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_pulsewave_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_set_amplitude):
  proc ma_pulsewave_set_amplitude*(pWaveform: ptr ma_pulsewave_570426674;
                                   amplitude: cdouble): ma_result_570425879 {.
      cdecl, importc: "ma_pulsewave_set_amplitude".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_set_amplitude" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_set_frequency):
  proc ma_pulsewave_set_frequency*(pWaveform: ptr ma_pulsewave_570426674;
                                   frequency: cdouble): ma_result_570425879 {.
      cdecl, importc: "ma_pulsewave_set_frequency".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_set_frequency" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_set_sample_rate):
  proc ma_pulsewave_set_sample_rate*(pWaveform: ptr ma_pulsewave_570426674;
                                     sampleRate: ma_uint32_570425831): ma_result_570425879 {.
      cdecl, importc: "ma_pulsewave_set_sample_rate".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_set_sample_rate" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_set_duty_cycle):
  proc ma_pulsewave_set_duty_cycle*(pWaveform: ptr ma_pulsewave_570426674;
                                    dutyCycle: cdouble): ma_result_570425879 {.
      cdecl, importc: "ma_pulsewave_set_duty_cycle".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_set_duty_cycle" &
        " already exists, not redeclaring")
when not declared(ma_noise_config_init):
  proc ma_noise_config_init*(format: ma_format_570425895; channels: ma_uint32_570425831;
                             type_arg: ma_noise_type_570426678; seed: ma_int32_570425829;
                             amplitude: cdouble): ma_noise_config_570426682 {.
      cdecl, importc: "ma_noise_config_init".}
else:
  static :
    hint("Declaration of " & "ma_noise_config_init" &
        " already exists, not redeclaring")
when not declared(ma_noise_get_heap_size):
  proc ma_noise_get_heap_size*(pConfig: ptr ma_noise_config_570426682;
                               pHeapSizeInBytes: ptr csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_noise_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_noise_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_noise_init_preallocated):
  proc ma_noise_init_preallocated*(pConfig: ptr ma_noise_config_570426682;
                                   pHeap: pointer; pNoise: ptr ma_noise_570426686): ma_result_570425879 {.
      cdecl, importc: "ma_noise_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_noise_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_noise_init):
  proc ma_noise_init*(pConfig: ptr ma_noise_config_570426682;
                      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                      pNoise: ptr ma_noise_570426686): ma_result_570425879 {.
      cdecl, importc: "ma_noise_init".}
else:
  static :
    hint("Declaration of " & "ma_noise_init" &
        " already exists, not redeclaring")
when not declared(ma_noise_uninit):
  proc ma_noise_uninit*(pNoise: ptr ma_noise_570426686;
                        pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_noise_uninit".}
else:
  static :
    hint("Declaration of " & "ma_noise_uninit" &
        " already exists, not redeclaring")
when not declared(ma_noise_read_pcm_frames):
  proc ma_noise_read_pcm_frames*(pNoise: ptr ma_noise_570426686;
                                 pFramesOut: pointer; frameCount: ma_uint64_570425835;
                                 pFramesRead: ptr ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_noise_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_noise_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_noise_set_amplitude):
  proc ma_noise_set_amplitude*(pNoise: ptr ma_noise_570426686;
                               amplitude: cdouble): ma_result_570425879 {.cdecl,
      importc: "ma_noise_set_amplitude".}
else:
  static :
    hint("Declaration of " & "ma_noise_set_amplitude" &
        " already exists, not redeclaring")
when not declared(ma_noise_set_seed):
  proc ma_noise_set_seed*(pNoise: ptr ma_noise_570426686; seed: ma_int32_570425829): ma_result_570425879 {.
      cdecl, importc: "ma_noise_set_seed".}
else:
  static :
    hint("Declaration of " & "ma_noise_set_seed" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_pipeline_notifications_init):
  proc ma_resource_manager_pipeline_notifications_init*(): ma_resource_manager_pipeline_notifications_570426718 {.
      cdecl, importc: "ma_resource_manager_pipeline_notifications_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_pipeline_notifications_init" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_config_init):
  proc ma_resource_manager_data_source_config_init*(): ma_resource_manager_data_source_config_570426726 {.
      cdecl, importc: "ma_resource_manager_data_source_config_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_config_init" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_config_init):
  proc ma_resource_manager_config_init*(): ma_resource_manager_config_570426738 {.
      cdecl, importc: "ma_resource_manager_config_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_config_init" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_init):
  proc ma_resource_manager_init*(pConfig: ptr ma_resource_manager_config_570426738;
                                 pResourceManager: ptr ma_resource_manager_570426688): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_init" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_uninit):
  proc ma_resource_manager_uninit*(pResourceManager: ptr ma_resource_manager_570426688): void {.
      cdecl, importc: "ma_resource_manager_uninit".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_uninit" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_get_log):
  proc ma_resource_manager_get_log*(pResourceManager: ptr ma_resource_manager_570426688): ptr ma_log_570425970 {.
      cdecl, importc: "ma_resource_manager_get_log".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_get_log" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_register_file):
  proc ma_resource_manager_register_file*(
      pResourceManager: ptr ma_resource_manager_570426688; pFilePath: cstring;
      flags: ma_uint32_570425831): ma_result_570425879 {.cdecl,
      importc: "ma_resource_manager_register_file".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_register_file" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_register_file_w):
  proc ma_resource_manager_register_file_w*(
      pResourceManager: ptr ma_resource_manager_570426688;
      pFilePath: ptr wchar_t_570426306; flags: ma_uint32_570425831): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_register_file_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_register_file_w" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_register_decoded_data):
  proc ma_resource_manager_register_decoded_data*(
      pResourceManager: ptr ma_resource_manager_570426688; pName: cstring;
      pData: pointer; frameCount: ma_uint64_570425835; format: ma_format_570425895;
      channels: ma_uint32_570425831; sampleRate: ma_uint32_570425831): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_register_decoded_data".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_register_decoded_data" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_register_decoded_data_w):
  proc ma_resource_manager_register_decoded_data_w*(
      pResourceManager: ptr ma_resource_manager_570426688; pName: ptr wchar_t_570426306;
      pData: pointer; frameCount: ma_uint64_570425835; format: ma_format_570425895;
      channels: ma_uint32_570425831; sampleRate: ma_uint32_570425831): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_register_decoded_data_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_register_decoded_data_w" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_register_encoded_data):
  proc ma_resource_manager_register_encoded_data*(
      pResourceManager: ptr ma_resource_manager_570426688; pName: cstring;
      pData: pointer; sizeInBytes: csize_t): ma_result_570425879 {.cdecl,
      importc: "ma_resource_manager_register_encoded_data".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_register_encoded_data" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_register_encoded_data_w):
  proc ma_resource_manager_register_encoded_data_w*(
      pResourceManager: ptr ma_resource_manager_570426688; pName: ptr wchar_t_570426306;
      pData: pointer; sizeInBytes: csize_t): ma_result_570425879 {.cdecl,
      importc: "ma_resource_manager_register_encoded_data_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_register_encoded_data_w" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_unregister_file):
  proc ma_resource_manager_unregister_file*(
      pResourceManager: ptr ma_resource_manager_570426688; pFilePath: cstring): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_unregister_file".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_unregister_file" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_unregister_file_w):
  proc ma_resource_manager_unregister_file_w*(
      pResourceManager: ptr ma_resource_manager_570426688;
      pFilePath: ptr wchar_t_570426306): ma_result_570425879 {.cdecl,
      importc: "ma_resource_manager_unregister_file_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_unregister_file_w" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_unregister_data):
  proc ma_resource_manager_unregister_data*(
      pResourceManager: ptr ma_resource_manager_570426688; pName: cstring): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_unregister_data".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_unregister_data" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_unregister_data_w):
  proc ma_resource_manager_unregister_data_w*(
      pResourceManager: ptr ma_resource_manager_570426688; pName: ptr wchar_t_570426306): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_unregister_data_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_unregister_data_w" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_init_ex):
  proc ma_resource_manager_data_buffer_init_ex*(
      pResourceManager: ptr ma_resource_manager_570426688;
      pConfig: ptr ma_resource_manager_data_source_config_570426726;
      pDataBuffer: ptr ma_resource_manager_data_buffer_570426696): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_data_buffer_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_init_ex" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_init):
  proc ma_resource_manager_data_buffer_init*(
      pResourceManager: ptr ma_resource_manager_570426688; pFilePath: cstring;
      flags: ma_uint32_570425831;
      pNotifications: ptr ma_resource_manager_pipeline_notifications_570426718;
      pDataBuffer: ptr ma_resource_manager_data_buffer_570426696): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_data_buffer_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_init" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_init_w):
  proc ma_resource_manager_data_buffer_init_w*(
      pResourceManager: ptr ma_resource_manager_570426688;
      pFilePath: ptr wchar_t_570426306; flags: ma_uint32_570425831;
      pNotifications: ptr ma_resource_manager_pipeline_notifications_570426718;
      pDataBuffer: ptr ma_resource_manager_data_buffer_570426696): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_data_buffer_init_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_init_w" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_init_copy):
  proc ma_resource_manager_data_buffer_init_copy*(
      pResourceManager: ptr ma_resource_manager_570426688;
      pExistingDataBuffer: ptr ma_resource_manager_data_buffer_570426696;
      pDataBuffer: ptr ma_resource_manager_data_buffer_570426696): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_data_buffer_init_copy".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_init_copy" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_uninit):
  proc ma_resource_manager_data_buffer_uninit*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_570426696): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_data_buffer_uninit".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_uninit" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_read_pcm_frames):
  proc ma_resource_manager_data_buffer_read_pcm_frames*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_570426696;
      pFramesOut: pointer; frameCount: ma_uint64_570425835;
      pFramesRead: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_resource_manager_data_buffer_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_seek_to_pcm_frame):
  proc ma_resource_manager_data_buffer_seek_to_pcm_frame*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_570426696;
      frameIndex: ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_resource_manager_data_buffer_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_get_data_format):
  proc ma_resource_manager_data_buffer_get_data_format*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_570426696;
      pFormat: ptr ma_format_570425895; pChannels: ptr ma_uint32_570425831;
      pSampleRate: ptr ma_uint32_570425831; pChannelMap: ptr ma_channel_570425871;
      channelMapCap: csize_t): ma_result_570425879 {.cdecl,
      importc: "ma_resource_manager_data_buffer_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_get_data_format" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_get_cursor_in_pcm_frames):
  proc ma_resource_manager_data_buffer_get_cursor_in_pcm_frames*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_570426696;
      pCursor: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_resource_manager_data_buffer_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_buffer_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_get_length_in_pcm_frames):
  proc ma_resource_manager_data_buffer_get_length_in_pcm_frames*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_570426696;
      pLength: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_resource_manager_data_buffer_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_buffer_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_result):
  proc ma_resource_manager_data_buffer_result*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_570426696): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_data_buffer_result".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_result" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_set_looping):
  proc ma_resource_manager_data_buffer_set_looping*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_570426696;
      isLooping: ma_bool32_570425841): ma_result_570425879 {.cdecl,
      importc: "ma_resource_manager_data_buffer_set_looping".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_set_looping" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_is_looping):
  proc ma_resource_manager_data_buffer_is_looping*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_570426696): ma_bool32_570425841 {.
      cdecl, importc: "ma_resource_manager_data_buffer_is_looping".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_is_looping" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_get_available_frames):
  proc ma_resource_manager_data_buffer_get_available_frames*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_570426696;
      pAvailableFrames: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_resource_manager_data_buffer_get_available_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_buffer_get_available_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_init_ex):
  proc ma_resource_manager_data_stream_init_ex*(
      pResourceManager: ptr ma_resource_manager_570426688;
      pConfig: ptr ma_resource_manager_data_source_config_570426726;
      pDataStream: ptr ma_resource_manager_data_stream_570426700): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_data_stream_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_init_ex" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_init):
  proc ma_resource_manager_data_stream_init*(
      pResourceManager: ptr ma_resource_manager_570426688; pFilePath: cstring;
      flags: ma_uint32_570425831;
      pNotifications: ptr ma_resource_manager_pipeline_notifications_570426718;
      pDataStream: ptr ma_resource_manager_data_stream_570426700): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_data_stream_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_init" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_init_w):
  proc ma_resource_manager_data_stream_init_w*(
      pResourceManager: ptr ma_resource_manager_570426688;
      pFilePath: ptr wchar_t_570426306; flags: ma_uint32_570425831;
      pNotifications: ptr ma_resource_manager_pipeline_notifications_570426718;
      pDataStream: ptr ma_resource_manager_data_stream_570426700): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_data_stream_init_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_init_w" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_uninit):
  proc ma_resource_manager_data_stream_uninit*(
      pDataStream: ptr ma_resource_manager_data_stream_570426700): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_data_stream_uninit".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_uninit" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_read_pcm_frames):
  proc ma_resource_manager_data_stream_read_pcm_frames*(
      pDataStream: ptr ma_resource_manager_data_stream_570426700;
      pFramesOut: pointer; frameCount: ma_uint64_570425835;
      pFramesRead: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_resource_manager_data_stream_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_seek_to_pcm_frame):
  proc ma_resource_manager_data_stream_seek_to_pcm_frame*(
      pDataStream: ptr ma_resource_manager_data_stream_570426700;
      frameIndex: ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_resource_manager_data_stream_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_get_data_format):
  proc ma_resource_manager_data_stream_get_data_format*(
      pDataStream: ptr ma_resource_manager_data_stream_570426700;
      pFormat: ptr ma_format_570425895; pChannels: ptr ma_uint32_570425831;
      pSampleRate: ptr ma_uint32_570425831; pChannelMap: ptr ma_channel_570425871;
      channelMapCap: csize_t): ma_result_570425879 {.cdecl,
      importc: "ma_resource_manager_data_stream_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_get_data_format" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_get_cursor_in_pcm_frames):
  proc ma_resource_manager_data_stream_get_cursor_in_pcm_frames*(
      pDataStream: ptr ma_resource_manager_data_stream_570426700;
      pCursor: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_resource_manager_data_stream_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_stream_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_get_length_in_pcm_frames):
  proc ma_resource_manager_data_stream_get_length_in_pcm_frames*(
      pDataStream: ptr ma_resource_manager_data_stream_570426700;
      pLength: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_resource_manager_data_stream_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_stream_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_result):
  proc ma_resource_manager_data_stream_result*(
      pDataStream: ptr ma_resource_manager_data_stream_570426700): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_data_stream_result".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_result" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_set_looping):
  proc ma_resource_manager_data_stream_set_looping*(
      pDataStream: ptr ma_resource_manager_data_stream_570426700;
      isLooping: ma_bool32_570425841): ma_result_570425879 {.cdecl,
      importc: "ma_resource_manager_data_stream_set_looping".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_set_looping" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_is_looping):
  proc ma_resource_manager_data_stream_is_looping*(
      pDataStream: ptr ma_resource_manager_data_stream_570426700): ma_bool32_570425841 {.
      cdecl, importc: "ma_resource_manager_data_stream_is_looping".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_is_looping" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_get_available_frames):
  proc ma_resource_manager_data_stream_get_available_frames*(
      pDataStream: ptr ma_resource_manager_data_stream_570426700;
      pAvailableFrames: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_resource_manager_data_stream_get_available_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_stream_get_available_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_init_ex):
  proc ma_resource_manager_data_source_init_ex*(
      pResourceManager: ptr ma_resource_manager_570426688;
      pConfig: ptr ma_resource_manager_data_source_config_570426726;
      pDataSource: ptr ma_resource_manager_data_source_570426704): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_data_source_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_init_ex" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_init):
  proc ma_resource_manager_data_source_init*(
      pResourceManager: ptr ma_resource_manager_570426688; pName: cstring;
      flags: ma_uint32_570425831;
      pNotifications: ptr ma_resource_manager_pipeline_notifications_570426718;
      pDataSource: ptr ma_resource_manager_data_source_570426704): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_data_source_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_init" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_init_w):
  proc ma_resource_manager_data_source_init_w*(
      pResourceManager: ptr ma_resource_manager_570426688; pName: ptr wchar_t_570426306;
      flags: ma_uint32_570425831;
      pNotifications: ptr ma_resource_manager_pipeline_notifications_570426718;
      pDataSource: ptr ma_resource_manager_data_source_570426704): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_data_source_init_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_init_w" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_init_copy):
  proc ma_resource_manager_data_source_init_copy*(
      pResourceManager: ptr ma_resource_manager_570426688;
      pExistingDataSource: ptr ma_resource_manager_data_source_570426704;
      pDataSource: ptr ma_resource_manager_data_source_570426704): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_data_source_init_copy".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_init_copy" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_uninit):
  proc ma_resource_manager_data_source_uninit*(
      pDataSource: ptr ma_resource_manager_data_source_570426704): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_data_source_uninit".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_uninit" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_read_pcm_frames):
  proc ma_resource_manager_data_source_read_pcm_frames*(
      pDataSource: ptr ma_resource_manager_data_source_570426704;
      pFramesOut: pointer; frameCount: ma_uint64_570425835;
      pFramesRead: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_resource_manager_data_source_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_seek_to_pcm_frame):
  proc ma_resource_manager_data_source_seek_to_pcm_frame*(
      pDataSource: ptr ma_resource_manager_data_source_570426704;
      frameIndex: ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_resource_manager_data_source_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_get_data_format):
  proc ma_resource_manager_data_source_get_data_format*(
      pDataSource: ptr ma_resource_manager_data_source_570426704;
      pFormat: ptr ma_format_570425895; pChannels: ptr ma_uint32_570425831;
      pSampleRate: ptr ma_uint32_570425831; pChannelMap: ptr ma_channel_570425871;
      channelMapCap: csize_t): ma_result_570425879 {.cdecl,
      importc: "ma_resource_manager_data_source_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_get_data_format" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_get_cursor_in_pcm_frames):
  proc ma_resource_manager_data_source_get_cursor_in_pcm_frames*(
      pDataSource: ptr ma_resource_manager_data_source_570426704;
      pCursor: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_resource_manager_data_source_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_source_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_get_length_in_pcm_frames):
  proc ma_resource_manager_data_source_get_length_in_pcm_frames*(
      pDataSource: ptr ma_resource_manager_data_source_570426704;
      pLength: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_resource_manager_data_source_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_source_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_result):
  proc ma_resource_manager_data_source_result*(
      pDataSource: ptr ma_resource_manager_data_source_570426704): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_data_source_result".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_result" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_set_looping):
  proc ma_resource_manager_data_source_set_looping*(
      pDataSource: ptr ma_resource_manager_data_source_570426704;
      isLooping: ma_bool32_570425841): ma_result_570425879 {.cdecl,
      importc: "ma_resource_manager_data_source_set_looping".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_set_looping" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_is_looping):
  proc ma_resource_manager_data_source_is_looping*(
      pDataSource: ptr ma_resource_manager_data_source_570426704): ma_bool32_570425841 {.
      cdecl, importc: "ma_resource_manager_data_source_is_looping".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_is_looping" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_get_available_frames):
  proc ma_resource_manager_data_source_get_available_frames*(
      pDataSource: ptr ma_resource_manager_data_source_570426704;
      pAvailableFrames: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_resource_manager_data_source_get_available_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_source_get_available_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_post_job):
  proc ma_resource_manager_post_job*(pResourceManager: ptr ma_resource_manager_570426688;
                                     pJob: ptr ma_job_570426296): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_post_job".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_post_job" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_post_job_quit):
  proc ma_resource_manager_post_job_quit*(
      pResourceManager: ptr ma_resource_manager_570426688): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_post_job_quit".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_post_job_quit" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_next_job):
  proc ma_resource_manager_next_job*(pResourceManager: ptr ma_resource_manager_570426688;
                                     pJob: ptr ma_job_570426296): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_next_job".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_next_job" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_process_job):
  proc ma_resource_manager_process_job*(pResourceManager: ptr ma_resource_manager_570426688;
                                        pJob: ptr ma_job_570426296): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_process_job".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_process_job" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_process_next_job):
  proc ma_resource_manager_process_next_job*(
      pResourceManager: ptr ma_resource_manager_570426688): ma_result_570425879 {.
      cdecl, importc: "ma_resource_manager_process_next_job".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_process_next_job" &
        " already exists, not redeclaring")
when not declared(ma_node_config_init):
  proc ma_node_config_init*(): ma_node_config_570426764 {.cdecl,
      importc: "ma_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_node_get_heap_size):
  proc ma_node_get_heap_size*(pNodeGraph: ptr ma_node_graph_570426744;
                              pConfig: ptr ma_node_config_570426764;
                              pHeapSizeInBytes: ptr csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_node_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_node_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_node_init_preallocated):
  proc ma_node_init_preallocated*(pNodeGraph: ptr ma_node_graph_570426744;
                                  pConfig: ptr ma_node_config_570426764;
                                  pHeap: pointer; pNode: pointer): ma_result_570425879 {.
      cdecl, importc: "ma_node_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_node_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_node_init):
  proc ma_node_init*(pNodeGraph: ptr ma_node_graph_570426744;
                     pConfig: ptr ma_node_config_570426764;
                     pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                     pNode: pointer): ma_result_570425879 {.cdecl,
      importc: "ma_node_init".}
else:
  static :
    hint("Declaration of " & "ma_node_init" & " already exists, not redeclaring")
when not declared(ma_node_uninit):
  proc ma_node_uninit*(pNode: pointer;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_node_get_node_graph):
  proc ma_node_get_node_graph*(pNode: pointer): ptr ma_node_graph_570426744 {.
      cdecl, importc: "ma_node_get_node_graph".}
else:
  static :
    hint("Declaration of " & "ma_node_get_node_graph" &
        " already exists, not redeclaring")
when not declared(ma_node_get_input_bus_count):
  proc ma_node_get_input_bus_count*(pNode: pointer): ma_uint32_570425831 {.
      cdecl, importc: "ma_node_get_input_bus_count".}
else:
  static :
    hint("Declaration of " & "ma_node_get_input_bus_count" &
        " already exists, not redeclaring")
when not declared(ma_node_get_output_bus_count):
  proc ma_node_get_output_bus_count*(pNode: pointer): ma_uint32_570425831 {.
      cdecl, importc: "ma_node_get_output_bus_count".}
else:
  static :
    hint("Declaration of " & "ma_node_get_output_bus_count" &
        " already exists, not redeclaring")
when not declared(ma_node_get_input_channels):
  proc ma_node_get_input_channels*(pNode: pointer; inputBusIndex: ma_uint32_570425831): ma_uint32_570425831 {.
      cdecl, importc: "ma_node_get_input_channels".}
else:
  static :
    hint("Declaration of " & "ma_node_get_input_channels" &
        " already exists, not redeclaring")
when not declared(ma_node_get_output_channels):
  proc ma_node_get_output_channels*(pNode: pointer; outputBusIndex: ma_uint32_570425831): ma_uint32_570425831 {.
      cdecl, importc: "ma_node_get_output_channels".}
else:
  static :
    hint("Declaration of " & "ma_node_get_output_channels" &
        " already exists, not redeclaring")
when not declared(ma_node_attach_output_bus):
  proc ma_node_attach_output_bus*(pNode: pointer; outputBusIndex: ma_uint32_570425831;
                                  pOtherNode: pointer;
                                  otherNodeInputBusIndex: ma_uint32_570425831): ma_result_570425879 {.
      cdecl, importc: "ma_node_attach_output_bus".}
else:
  static :
    hint("Declaration of " & "ma_node_attach_output_bus" &
        " already exists, not redeclaring")
when not declared(ma_node_detach_output_bus):
  proc ma_node_detach_output_bus*(pNode: pointer; outputBusIndex: ma_uint32_570425831): ma_result_570425879 {.
      cdecl, importc: "ma_node_detach_output_bus".}
else:
  static :
    hint("Declaration of " & "ma_node_detach_output_bus" &
        " already exists, not redeclaring")
when not declared(ma_node_detach_all_output_buses):
  proc ma_node_detach_all_output_buses*(pNode: pointer): ma_result_570425879 {.
      cdecl, importc: "ma_node_detach_all_output_buses".}
else:
  static :
    hint("Declaration of " & "ma_node_detach_all_output_buses" &
        " already exists, not redeclaring")
when not declared(ma_node_set_output_bus_volume):
  proc ma_node_set_output_bus_volume*(pNode: pointer; outputBusIndex: ma_uint32_570425831;
                                      volume: cfloat): ma_result_570425879 {.
      cdecl, importc: "ma_node_set_output_bus_volume".}
else:
  static :
    hint("Declaration of " & "ma_node_set_output_bus_volume" &
        " already exists, not redeclaring")
when not declared(ma_node_get_output_bus_volume):
  proc ma_node_get_output_bus_volume*(pNode: pointer; outputBusIndex: ma_uint32_570425831): cfloat {.
      cdecl, importc: "ma_node_get_output_bus_volume".}
else:
  static :
    hint("Declaration of " & "ma_node_get_output_bus_volume" &
        " already exists, not redeclaring")
when not declared(ma_node_set_state):
  proc ma_node_set_state*(pNode: pointer; state: ma_node_state_570426756): ma_result_570425879 {.
      cdecl, importc: "ma_node_set_state".}
else:
  static :
    hint("Declaration of " & "ma_node_set_state" &
        " already exists, not redeclaring")
when not declared(ma_node_get_state):
  proc ma_node_get_state*(pNode: pointer): ma_node_state_570426756 {.cdecl,
      importc: "ma_node_get_state".}
else:
  static :
    hint("Declaration of " & "ma_node_get_state" &
        " already exists, not redeclaring")
when not declared(ma_node_set_state_time):
  proc ma_node_set_state_time*(pNode: pointer; state: ma_node_state_570426756;
                               globalTime: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_node_set_state_time".}
else:
  static :
    hint("Declaration of " & "ma_node_set_state_time" &
        " already exists, not redeclaring")
when not declared(ma_node_get_state_time):
  proc ma_node_get_state_time*(pNode: pointer; state: ma_node_state_570426756): ma_uint64_570425835 {.
      cdecl, importc: "ma_node_get_state_time".}
else:
  static :
    hint("Declaration of " & "ma_node_get_state_time" &
        " already exists, not redeclaring")
when not declared(ma_node_get_state_by_time):
  proc ma_node_get_state_by_time*(pNode: pointer; globalTime: ma_uint64_570425835): ma_node_state_570426756 {.
      cdecl, importc: "ma_node_get_state_by_time".}
else:
  static :
    hint("Declaration of " & "ma_node_get_state_by_time" &
        " already exists, not redeclaring")
when not declared(ma_node_get_state_by_time_range):
  proc ma_node_get_state_by_time_range*(pNode: pointer;
                                        globalTimeBeg: ma_uint64_570425835;
                                        globalTimeEnd: ma_uint64_570425835): ma_node_state_570426756 {.
      cdecl, importc: "ma_node_get_state_by_time_range".}
else:
  static :
    hint("Declaration of " & "ma_node_get_state_by_time_range" &
        " already exists, not redeclaring")
when not declared(ma_node_get_time):
  proc ma_node_get_time*(pNode: pointer): ma_uint64_570425835 {.cdecl,
      importc: "ma_node_get_time".}
else:
  static :
    hint("Declaration of " & "ma_node_get_time" &
        " already exists, not redeclaring")
when not declared(ma_node_set_time):
  proc ma_node_set_time*(pNode: pointer; localTime: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_node_set_time".}
else:
  static :
    hint("Declaration of " & "ma_node_set_time" &
        " already exists, not redeclaring")
when not declared(ma_node_graph_config_init):
  proc ma_node_graph_config_init*(channels: ma_uint32_570425831): ma_node_graph_config_570426780 {.
      cdecl, importc: "ma_node_graph_config_init".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_config_init" &
        " already exists, not redeclaring")
when not declared(ma_node_graph_init):
  proc ma_node_graph_init*(pConfig: ptr ma_node_graph_config_570426780;
                           pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                           pNodeGraph: ptr ma_node_graph_570426744): ma_result_570425879 {.
      cdecl, importc: "ma_node_graph_init".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_init" &
        " already exists, not redeclaring")
when not declared(ma_node_graph_uninit):
  proc ma_node_graph_uninit*(pNodeGraph: ptr ma_node_graph_570426744;
                             pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_node_graph_uninit".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_uninit" &
        " already exists, not redeclaring")
when not declared(ma_node_graph_get_endpoint):
  proc ma_node_graph_get_endpoint*(pNodeGraph: ptr ma_node_graph_570426744): pointer {.
      cdecl, importc: "ma_node_graph_get_endpoint".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_get_endpoint" &
        " already exists, not redeclaring")
when not declared(ma_node_graph_read_pcm_frames):
  proc ma_node_graph_read_pcm_frames*(pNodeGraph: ptr ma_node_graph_570426744;
                                      pFramesOut: pointer;
                                      frameCount: ma_uint64_570425835;
                                      pFramesRead: ptr ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_node_graph_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_node_graph_get_channels):
  proc ma_node_graph_get_channels*(pNodeGraph: ptr ma_node_graph_570426744): ma_uint32_570425831 {.
      cdecl, importc: "ma_node_graph_get_channels".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_get_channels" &
        " already exists, not redeclaring")
when not declared(ma_node_graph_get_time):
  proc ma_node_graph_get_time*(pNodeGraph: ptr ma_node_graph_570426744): ma_uint64_570425835 {.
      cdecl, importc: "ma_node_graph_get_time".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_get_time" &
        " already exists, not redeclaring")
when not declared(ma_node_graph_set_time):
  proc ma_node_graph_set_time*(pNodeGraph: ptr ma_node_graph_570426744;
                               globalTime: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_node_graph_set_time".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_set_time" &
        " already exists, not redeclaring")
when not declared(ma_data_source_node_config_init):
  proc ma_data_source_node_config_init*(pDataSource: pointer): ma_data_source_node_config_570426784 {.
      cdecl, importc: "ma_data_source_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_data_source_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_data_source_node_init):
  proc ma_data_source_node_init*(pNodeGraph: ptr ma_node_graph_570426744;
                                 pConfig: ptr ma_data_source_node_config_570426784;
      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                                 pDataSourceNode: ptr ma_data_source_node_570426788): ma_result_570425879 {.
      cdecl, importc: "ma_data_source_node_init".}
else:
  static :
    hint("Declaration of " & "ma_data_source_node_init" &
        " already exists, not redeclaring")
when not declared(ma_data_source_node_uninit):
  proc ma_data_source_node_uninit*(pDataSourceNode: ptr ma_data_source_node_570426788;
      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_data_source_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_data_source_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_data_source_node_set_looping):
  proc ma_data_source_node_set_looping*(pDataSourceNode: ptr ma_data_source_node_570426788;
                                        isLooping: ma_bool32_570425841): ma_result_570425879 {.
      cdecl, importc: "ma_data_source_node_set_looping".}
else:
  static :
    hint("Declaration of " & "ma_data_source_node_set_looping" &
        " already exists, not redeclaring")
when not declared(ma_data_source_node_is_looping):
  proc ma_data_source_node_is_looping*(pDataSourceNode: ptr ma_data_source_node_570426788): ma_bool32_570425841 {.
      cdecl, importc: "ma_data_source_node_is_looping".}
else:
  static :
    hint("Declaration of " & "ma_data_source_node_is_looping" &
        " already exists, not redeclaring")
when not declared(ma_splitter_node_config_init):
  proc ma_splitter_node_config_init*(channels: ma_uint32_570425831): ma_splitter_node_config_570426792 {.
      cdecl, importc: "ma_splitter_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_splitter_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_splitter_node_init):
  proc ma_splitter_node_init*(pNodeGraph: ptr ma_node_graph_570426744;
                              pConfig: ptr ma_splitter_node_config_570426792;
      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                              pSplitterNode: ptr ma_splitter_node_570426796): ma_result_570425879 {.
      cdecl, importc: "ma_splitter_node_init".}
else:
  static :
    hint("Declaration of " & "ma_splitter_node_init" &
        " already exists, not redeclaring")
when not declared(ma_splitter_node_uninit):
  proc ma_splitter_node_uninit*(pSplitterNode: ptr ma_splitter_node_570426796;
      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_splitter_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_splitter_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_biquad_node_config_init):
  proc ma_biquad_node_config_init*(channels: ma_uint32_570425831; b0: cfloat;
                                   b1: cfloat; b2: cfloat; a0: cfloat;
                                   a1: cfloat; a2: cfloat): ma_biquad_node_config_570426800 {.
      cdecl, importc: "ma_biquad_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_biquad_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_biquad_node_init):
  proc ma_biquad_node_init*(pNodeGraph: ptr ma_node_graph_570426744;
                            pConfig: ptr ma_biquad_node_config_570426800;
                            pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                            pNode: ptr ma_biquad_node_570426804): ma_result_570425879 {.
      cdecl, importc: "ma_biquad_node_init".}
else:
  static :
    hint("Declaration of " & "ma_biquad_node_init" &
        " already exists, not redeclaring")
when not declared(ma_biquad_node_reinit):
  proc ma_biquad_node_reinit*(pConfig: ptr ma_biquad_config_570425978;
                              pNode: ptr ma_biquad_node_570426804): ma_result_570425879 {.
      cdecl, importc: "ma_biquad_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_biquad_node_reinit" &
        " already exists, not redeclaring")
when not declared(ma_biquad_node_uninit):
  proc ma_biquad_node_uninit*(pNode: ptr ma_biquad_node_570426804;
                              pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_biquad_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_biquad_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_lpf_node_config_init):
  proc ma_lpf_node_config_init*(channels: ma_uint32_570425831;
                                sampleRate: ma_uint32_570425831;
                                cutoffFrequency: cdouble; order: ma_uint32_570425831): ma_lpf_node_config_570426808 {.
      cdecl, importc: "ma_lpf_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_lpf_node_init):
  proc ma_lpf_node_init*(pNodeGraph: ptr ma_node_graph_570426744;
                         pConfig: ptr ma_lpf_node_config_570426808;
                         pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                         pNode: ptr ma_lpf_node_570426812): ma_result_570425879 {.
      cdecl, importc: "ma_lpf_node_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf_node_init" &
        " already exists, not redeclaring")
when not declared(ma_lpf_node_reinit):
  proc ma_lpf_node_reinit*(pConfig: ptr ma_lpf_config_570426000;
                           pNode: ptr ma_lpf_node_570426812): ma_result_570425879 {.
      cdecl, importc: "ma_lpf_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_lpf_node_reinit" &
        " already exists, not redeclaring")
when not declared(ma_lpf_node_uninit):
  proc ma_lpf_node_uninit*(pNode: ptr ma_lpf_node_570426812;
                           pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_lpf_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_lpf_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_hpf_node_config_init):
  proc ma_hpf_node_config_init*(channels: ma_uint32_570425831;
                                sampleRate: ma_uint32_570425831;
                                cutoffFrequency: cdouble; order: ma_uint32_570425831): ma_hpf_node_config_570426816 {.
      cdecl, importc: "ma_hpf_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_hpf_node_init):
  proc ma_hpf_node_init*(pNodeGraph: ptr ma_node_graph_570426744;
                         pConfig: ptr ma_hpf_node_config_570426816;
                         pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                         pNode: ptr ma_hpf_node_570426820): ma_result_570425879 {.
      cdecl, importc: "ma_hpf_node_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf_node_init" &
        " already exists, not redeclaring")
when not declared(ma_hpf_node_reinit):
  proc ma_hpf_node_reinit*(pConfig: ptr ma_hpf_config_570426022;
                           pNode: ptr ma_hpf_node_570426820): ma_result_570425879 {.
      cdecl, importc: "ma_hpf_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_hpf_node_reinit" &
        " already exists, not redeclaring")
when not declared(ma_hpf_node_uninit):
  proc ma_hpf_node_uninit*(pNode: ptr ma_hpf_node_570426820;
                           pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_hpf_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_hpf_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_bpf_node_config_init):
  proc ma_bpf_node_config_init*(channels: ma_uint32_570425831;
                                sampleRate: ma_uint32_570425831;
                                cutoffFrequency: cdouble; order: ma_uint32_570425831): ma_bpf_node_config_570426824 {.
      cdecl, importc: "ma_bpf_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_bpf_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_bpf_node_init):
  proc ma_bpf_node_init*(pNodeGraph: ptr ma_node_graph_570426744;
                         pConfig: ptr ma_bpf_node_config_570426824;
                         pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                         pNode: ptr ma_bpf_node_570426828): ma_result_570425879 {.
      cdecl, importc: "ma_bpf_node_init".}
else:
  static :
    hint("Declaration of " & "ma_bpf_node_init" &
        " already exists, not redeclaring")
when not declared(ma_bpf_node_reinit):
  proc ma_bpf_node_reinit*(pConfig: ptr ma_bpf_config_570426038;
                           pNode: ptr ma_bpf_node_570426828): ma_result_570425879 {.
      cdecl, importc: "ma_bpf_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_bpf_node_reinit" &
        " already exists, not redeclaring")
when not declared(ma_bpf_node_uninit):
  proc ma_bpf_node_uninit*(pNode: ptr ma_bpf_node_570426828;
                           pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_bpf_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_bpf_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_notch_node_config_init):
  proc ma_notch_node_config_init*(channels: ma_uint32_570425831;
                                  sampleRate: ma_uint32_570425831; q: cdouble;
                                  frequency: cdouble): ma_notch_node_config_570426832 {.
      cdecl, importc: "ma_notch_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_notch_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_notch_node_init):
  proc ma_notch_node_init*(pNodeGraph: ptr ma_node_graph_570426744;
                           pConfig: ptr ma_notch_node_config_570426832;
                           pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                           pNode: ptr ma_notch_node_570426836): ma_result_570425879 {.
      cdecl, importc: "ma_notch_node_init".}
else:
  static :
    hint("Declaration of " & "ma_notch_node_init" &
        " already exists, not redeclaring")
when not declared(ma_notch_node_reinit):
  proc ma_notch_node_reinit*(pConfig: ptr ma_notch_config_570426048;
                             pNode: ptr ma_notch_node_570426836): ma_result_570425879 {.
      cdecl, importc: "ma_notch_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_notch_node_reinit" &
        " already exists, not redeclaring")
when not declared(ma_notch_node_uninit):
  proc ma_notch_node_uninit*(pNode: ptr ma_notch_node_570426836;
                             pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_notch_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_notch_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_peak_node_config_init):
  proc ma_peak_node_config_init*(channels: ma_uint32_570425831;
                                 sampleRate: ma_uint32_570425831;
                                 gainDB: cdouble; q: cdouble; frequency: cdouble): ma_peak_node_config_570426840 {.
      cdecl, importc: "ma_peak_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_peak_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_peak_node_init):
  proc ma_peak_node_init*(pNodeGraph: ptr ma_node_graph_570426744;
                          pConfig: ptr ma_peak_node_config_570426840;
                          pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                          pNode: ptr ma_peak_node_570426844): ma_result_570425879 {.
      cdecl, importc: "ma_peak_node_init".}
else:
  static :
    hint("Declaration of " & "ma_peak_node_init" &
        " already exists, not redeclaring")
when not declared(ma_peak_node_reinit):
  proc ma_peak_node_reinit*(pConfig: ptr ma_peak_config_570426058;
                            pNode: ptr ma_peak_node_570426844): ma_result_570425879 {.
      cdecl, importc: "ma_peak_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_peak_node_reinit" &
        " already exists, not redeclaring")
when not declared(ma_peak_node_uninit):
  proc ma_peak_node_uninit*(pNode: ptr ma_peak_node_570426844;
                            pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_peak_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_peak_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_loshelf_node_config_init):
  proc ma_loshelf_node_config_init*(channels: ma_uint32_570425831;
                                    sampleRate: ma_uint32_570425831;
                                    gainDB: cdouble; q: cdouble;
                                    frequency: cdouble): ma_loshelf_node_config_570426848 {.
      cdecl, importc: "ma_loshelf_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_loshelf_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_loshelf_node_init):
  proc ma_loshelf_node_init*(pNodeGraph: ptr ma_node_graph_570426744;
                             pConfig: ptr ma_loshelf_node_config_570426848;
                             pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                             pNode: ptr ma_loshelf_node_570426852): ma_result_570425879 {.
      cdecl, importc: "ma_loshelf_node_init".}
else:
  static :
    hint("Declaration of " & "ma_loshelf_node_init" &
        " already exists, not redeclaring")
when not declared(ma_loshelf_node_reinit):
  proc ma_loshelf_node_reinit*(pConfig: ptr ma_loshelf_config_570426068;
                               pNode: ptr ma_loshelf_node_570426852): ma_result_570425879 {.
      cdecl, importc: "ma_loshelf_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_loshelf_node_reinit" &
        " already exists, not redeclaring")
when not declared(ma_loshelf_node_uninit):
  proc ma_loshelf_node_uninit*(pNode: ptr ma_loshelf_node_570426852;
      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_loshelf_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_loshelf_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_hishelf_node_config_init):
  proc ma_hishelf_node_config_init*(channels: ma_uint32_570425831;
                                    sampleRate: ma_uint32_570425831;
                                    gainDB: cdouble; q: cdouble;
                                    frequency: cdouble): ma_hishelf_node_config_570426856 {.
      cdecl, importc: "ma_hishelf_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_hishelf_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_hishelf_node_init):
  proc ma_hishelf_node_init*(pNodeGraph: ptr ma_node_graph_570426744;
                             pConfig: ptr ma_hishelf_node_config_570426856;
                             pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                             pNode: ptr ma_hishelf_node_570426860): ma_result_570425879 {.
      cdecl, importc: "ma_hishelf_node_init".}
else:
  static :
    hint("Declaration of " & "ma_hishelf_node_init" &
        " already exists, not redeclaring")
when not declared(ma_hishelf_node_reinit):
  proc ma_hishelf_node_reinit*(pConfig: ptr ma_hishelf_config_570426078;
                               pNode: ptr ma_hishelf_node_570426860): ma_result_570425879 {.
      cdecl, importc: "ma_hishelf_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_hishelf_node_reinit" &
        " already exists, not redeclaring")
when not declared(ma_hishelf_node_uninit):
  proc ma_hishelf_node_uninit*(pNode: ptr ma_hishelf_node_570426860;
      pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_hishelf_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_hishelf_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_delay_node_config_init):
  proc ma_delay_node_config_init*(channels: ma_uint32_570425831;
                                  sampleRate: ma_uint32_570425831;
                                  delayInFrames: ma_uint32_570425831;
                                  decay: cfloat): ma_delay_node_config_570426864 {.
      cdecl, importc: "ma_delay_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_delay_node_init):
  proc ma_delay_node_init*(pNodeGraph: ptr ma_node_graph_570426744;
                           pConfig: ptr ma_delay_node_config_570426864;
                           pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                           pDelayNode: ptr ma_delay_node_570426868): ma_result_570425879 {.
      cdecl, importc: "ma_delay_node_init".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_init" &
        " already exists, not redeclaring")
when not declared(ma_delay_node_uninit):
  proc ma_delay_node_uninit*(pDelayNode: ptr ma_delay_node_570426868;
                             pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_delay_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_delay_node_set_decay):
  proc ma_delay_node_set_decay*(pDelayNode: ptr ma_delay_node_570426868;
                                value: cfloat): void {.cdecl,
      importc: "ma_delay_node_set_decay".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_set_decay" &
        " already exists, not redeclaring")
when not declared(ma_delay_node_get_decay):
  proc ma_delay_node_get_decay*(pDelayNode: ptr ma_delay_node_570426868): cfloat {.
      cdecl, importc: "ma_delay_node_get_decay".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_get_decay" &
        " already exists, not redeclaring")
when not declared(ma_engine_node_config_init):
  proc ma_engine_node_config_init*(pEngine: ptr ma_engine_570426870;
                                   type_arg: ma_engine_node_type_570426884;
                                   flags: ma_uint32_570425831): ma_engine_node_config_570426888 {.
      cdecl, importc: "ma_engine_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_engine_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_engine_node_get_heap_size):
  proc ma_engine_node_get_heap_size*(pConfig: ptr ma_engine_node_config_570426888;
                                     pHeapSizeInBytes: ptr csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_engine_node_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_engine_node_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_engine_node_init_preallocated):
  proc ma_engine_node_init_preallocated*(pConfig: ptr ma_engine_node_config_570426888;
      pHeap: pointer; pEngineNode: ptr ma_engine_node_570426892): ma_result_570425879 {.
      cdecl, importc: "ma_engine_node_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_engine_node_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_engine_node_init):
  proc ma_engine_node_init*(pConfig: ptr ma_engine_node_config_570426888;
                            pAllocationCallbacks: ptr ma_allocation_callbacks_570425918;
                            pEngineNode: ptr ma_engine_node_570426892): ma_result_570425879 {.
      cdecl, importc: "ma_engine_node_init".}
else:
  static :
    hint("Declaration of " & "ma_engine_node_init" &
        " already exists, not redeclaring")
when not declared(ma_engine_node_uninit):
  proc ma_engine_node_uninit*(pEngineNode: ptr ma_engine_node_570426892;
                              pAllocationCallbacks: ptr ma_allocation_callbacks_570425918): void {.
      cdecl, importc: "ma_engine_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_engine_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_sound_notifications_init):
  proc ma_sound_notifications_init*(): ma_sound_notifications_570426896 {.cdecl,
      importc: "ma_sound_notifications_init".}
else:
  static :
    hint("Declaration of " & "ma_sound_notifications_init" &
        " already exists, not redeclaring")
when not declared(ma_sound_config_init):
  proc ma_sound_config_init*(pEngine: ptr ma_engine_570426870): ma_sound_config_570426900 {.
      cdecl, importc: "ma_sound_config_init".}
else:
  static :
    hint("Declaration of " & "ma_sound_config_init" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_config_init):
  proc ma_sound_group_config_init*(pEngine: ptr ma_engine_570426870): ma_sound_group_config_570426906 {.
      cdecl, importc: "ma_sound_group_config_init".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_config_init" &
        " already exists, not redeclaring")
when not declared(ma_engine_config_init):
  proc ma_engine_config_init*(): ma_engine_config_570426914 {.cdecl,
      importc: "ma_engine_config_init".}
else:
  static :
    hint("Declaration of " & "ma_engine_config_init" &
        " already exists, not redeclaring")
when not declared(ma_engine_init):
  proc ma_engine_init*(pConfig: ptr ma_engine_config_570426914;
                       pEngine: ptr ma_engine_570426870): ma_result_570425879 {.
      cdecl, importc: "ma_engine_init".}
else:
  static :
    hint("Declaration of " & "ma_engine_init" &
        " already exists, not redeclaring")
when not declared(ma_engine_uninit):
  proc ma_engine_uninit*(pEngine: ptr ma_engine_570426870): void {.cdecl,
      importc: "ma_engine_uninit".}
else:
  static :
    hint("Declaration of " & "ma_engine_uninit" &
        " already exists, not redeclaring")
when not declared(ma_engine_read_pcm_frames):
  proc ma_engine_read_pcm_frames*(pEngine: ptr ma_engine_570426870;
                                  pFramesOut: pointer; frameCount: ma_uint64_570425835;
                                  pFramesRead: ptr ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_engine_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_engine_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_node_graph):
  proc ma_engine_get_node_graph*(pEngine: ptr ma_engine_570426870): ptr ma_node_graph_570426744 {.
      cdecl, importc: "ma_engine_get_node_graph".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_node_graph" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_resource_manager):
  proc ma_engine_get_resource_manager*(pEngine: ptr ma_engine_570426870): ptr ma_resource_manager_570426688 {.
      cdecl, importc: "ma_engine_get_resource_manager".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_resource_manager" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_device):
  proc ma_engine_get_device*(pEngine: ptr ma_engine_570426870): ptr ma_device_570426328 {.
      cdecl, importc: "ma_engine_get_device".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_device" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_log):
  proc ma_engine_get_log*(pEngine: ptr ma_engine_570426870): ptr ma_log_570425970 {.
      cdecl, importc: "ma_engine_get_log".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_log" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_endpoint):
  proc ma_engine_get_endpoint*(pEngine: ptr ma_engine_570426870): pointer {.
      cdecl, importc: "ma_engine_get_endpoint".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_endpoint" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_time_in_pcm_frames):
  proc ma_engine_get_time_in_pcm_frames*(pEngine: ptr ma_engine_570426870): ma_uint64_570425835 {.
      cdecl, importc: "ma_engine_get_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_time_in_milliseconds):
  proc ma_engine_get_time_in_milliseconds*(pEngine: ptr ma_engine_570426870): ma_uint64_570425835 {.
      cdecl, importc: "ma_engine_get_time_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_time_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_engine_set_time_in_pcm_frames):
  proc ma_engine_set_time_in_pcm_frames*(pEngine: ptr ma_engine_570426870;
      globalTime: ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_engine_set_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_engine_set_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_engine_set_time_in_milliseconds):
  proc ma_engine_set_time_in_milliseconds*(pEngine: ptr ma_engine_570426870;
      globalTime: ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_engine_set_time_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_engine_set_time_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_channels):
  proc ma_engine_get_channels*(pEngine: ptr ma_engine_570426870): ma_uint32_570425831 {.
      cdecl, importc: "ma_engine_get_channels".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_channels" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_sample_rate):
  proc ma_engine_get_sample_rate*(pEngine: ptr ma_engine_570426870): ma_uint32_570425831 {.
      cdecl, importc: "ma_engine_get_sample_rate".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_sample_rate" &
        " already exists, not redeclaring")
when not declared(ma_engine_start):
  proc ma_engine_start*(pEngine: ptr ma_engine_570426870): ma_result_570425879 {.
      cdecl, importc: "ma_engine_start".}
else:
  static :
    hint("Declaration of " & "ma_engine_start" &
        " already exists, not redeclaring")
when not declared(ma_engine_stop):
  proc ma_engine_stop*(pEngine: ptr ma_engine_570426870): ma_result_570425879 {.
      cdecl, importc: "ma_engine_stop".}
else:
  static :
    hint("Declaration of " & "ma_engine_stop" &
        " already exists, not redeclaring")
when not declared(ma_engine_set_volume):
  proc ma_engine_set_volume*(pEngine: ptr ma_engine_570426870; volume: cfloat): ma_result_570425879 {.
      cdecl, importc: "ma_engine_set_volume".}
else:
  static :
    hint("Declaration of " & "ma_engine_set_volume" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_volume):
  proc ma_engine_get_volume*(pEngine: ptr ma_engine_570426870): cfloat {.cdecl,
      importc: "ma_engine_get_volume".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_volume" &
        " already exists, not redeclaring")
when not declared(ma_engine_set_gain_db):
  proc ma_engine_set_gain_db*(pEngine: ptr ma_engine_570426870; gainDB: cfloat): ma_result_570425879 {.
      cdecl, importc: "ma_engine_set_gain_db".}
else:
  static :
    hint("Declaration of " & "ma_engine_set_gain_db" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_gain_db):
  proc ma_engine_get_gain_db*(pEngine: ptr ma_engine_570426870): cfloat {.cdecl,
      importc: "ma_engine_get_gain_db".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_gain_db" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_listener_count):
  proc ma_engine_get_listener_count*(pEngine: ptr ma_engine_570426870): ma_uint32_570425831 {.
      cdecl, importc: "ma_engine_get_listener_count".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_listener_count" &
        " already exists, not redeclaring")
when not declared(ma_engine_find_closest_listener):
  proc ma_engine_find_closest_listener*(pEngine: ptr ma_engine_570426870;
                                        absolutePosX: cfloat;
                                        absolutePosY: cfloat;
                                        absolutePosZ: cfloat): ma_uint32_570425831 {.
      cdecl, importc: "ma_engine_find_closest_listener".}
else:
  static :
    hint("Declaration of " & "ma_engine_find_closest_listener" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_set_position):
  proc ma_engine_listener_set_position*(pEngine: ptr ma_engine_570426870;
                                        listenerIndex: ma_uint32_570425831;
                                        x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_engine_listener_set_position".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_set_position" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_get_position):
  proc ma_engine_listener_get_position*(pEngine: ptr ma_engine_570426870;
                                        listenerIndex: ma_uint32_570425831): ma_vec3f_570426122 {.
      cdecl, importc: "ma_engine_listener_get_position".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_get_position" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_set_direction):
  proc ma_engine_listener_set_direction*(pEngine: ptr ma_engine_570426870;
      listenerIndex: ma_uint32_570425831; x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_engine_listener_set_direction".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_set_direction" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_get_direction):
  proc ma_engine_listener_get_direction*(pEngine: ptr ma_engine_570426870;
      listenerIndex: ma_uint32_570425831): ma_vec3f_570426122 {.cdecl,
      importc: "ma_engine_listener_get_direction".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_get_direction" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_set_velocity):
  proc ma_engine_listener_set_velocity*(pEngine: ptr ma_engine_570426870;
                                        listenerIndex: ma_uint32_570425831;
                                        x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_engine_listener_set_velocity".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_set_velocity" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_get_velocity):
  proc ma_engine_listener_get_velocity*(pEngine: ptr ma_engine_570426870;
                                        listenerIndex: ma_uint32_570425831): ma_vec3f_570426122 {.
      cdecl, importc: "ma_engine_listener_get_velocity".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_get_velocity" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_set_cone):
  proc ma_engine_listener_set_cone*(pEngine: ptr ma_engine_570426870;
                                    listenerIndex: ma_uint32_570425831;
                                    innerAngleInRadians: cfloat;
                                    outerAngleInRadians: cfloat;
                                    outerGain: cfloat): void {.cdecl,
      importc: "ma_engine_listener_set_cone".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_set_cone" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_get_cone):
  proc ma_engine_listener_get_cone*(pEngine: ptr ma_engine_570426870;
                                    listenerIndex: ma_uint32_570425831;
                                    pInnerAngleInRadians: ptr cfloat;
                                    pOuterAngleInRadians: ptr cfloat;
                                    pOuterGain: ptr cfloat): void {.cdecl,
      importc: "ma_engine_listener_get_cone".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_get_cone" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_set_world_up):
  proc ma_engine_listener_set_world_up*(pEngine: ptr ma_engine_570426870;
                                        listenerIndex: ma_uint32_570425831;
                                        x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_engine_listener_set_world_up".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_set_world_up" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_get_world_up):
  proc ma_engine_listener_get_world_up*(pEngine: ptr ma_engine_570426870;
                                        listenerIndex: ma_uint32_570425831): ma_vec3f_570426122 {.
      cdecl, importc: "ma_engine_listener_get_world_up".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_get_world_up" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_set_enabled):
  proc ma_engine_listener_set_enabled*(pEngine: ptr ma_engine_570426870;
                                       listenerIndex: ma_uint32_570425831;
                                       isEnabled: ma_bool32_570425841): void {.
      cdecl, importc: "ma_engine_listener_set_enabled".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_set_enabled" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_is_enabled):
  proc ma_engine_listener_is_enabled*(pEngine: ptr ma_engine_570426870;
                                      listenerIndex: ma_uint32_570425831): ma_bool32_570425841 {.
      cdecl, importc: "ma_engine_listener_is_enabled".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_is_enabled" &
        " already exists, not redeclaring")
when not declared(ma_engine_play_sound_ex):
  proc ma_engine_play_sound_ex*(pEngine: ptr ma_engine_570426870;
                                pFilePath: cstring; pNode: pointer;
                                nodeInputBusIndex: ma_uint32_570425831): ma_result_570425879 {.
      cdecl, importc: "ma_engine_play_sound_ex".}
else:
  static :
    hint("Declaration of " & "ma_engine_play_sound_ex" &
        " already exists, not redeclaring")
when not declared(ma_engine_play_sound):
  proc ma_engine_play_sound*(pEngine: ptr ma_engine_570426870;
                             pFilePath: cstring; pGroup: ptr ma_sound_group_570426908): ma_result_570425879 {.
      cdecl, importc: "ma_engine_play_sound".}
else:
  static :
    hint("Declaration of " & "ma_engine_play_sound" &
        " already exists, not redeclaring")
when not declared(ma_sound_init_from_file):
  proc ma_sound_init_from_file*(pEngine: ptr ma_engine_570426870;
                                pFilePath: cstring; flags: ma_uint32_570425831;
                                pGroup: ptr ma_sound_group_570426908;
                                pNotifications: ptr ma_sound_notifications_570426896;
                                pSound: ptr ma_sound_570426874): ma_result_570425879 {.
      cdecl, importc: "ma_sound_init_from_file".}
else:
  static :
    hint("Declaration of " & "ma_sound_init_from_file" &
        " already exists, not redeclaring")
when not declared(ma_sound_init_from_file_w):
  proc ma_sound_init_from_file_w*(pEngine: ptr ma_engine_570426870;
                                  pFilePath: ptr wchar_t_570426306;
                                  flags: ma_uint32_570425831;
                                  pGroup: ptr ma_sound_group_570426908;
                                  pNotifications: ptr ma_sound_notifications_570426896;
                                  pSound: ptr ma_sound_570426874): ma_result_570425879 {.
      cdecl, importc: "ma_sound_init_from_file_w".}
else:
  static :
    hint("Declaration of " & "ma_sound_init_from_file_w" &
        " already exists, not redeclaring")
when not declared(ma_sound_init_copy):
  proc ma_sound_init_copy*(pEngine: ptr ma_engine_570426870;
                           pExistingSound: ptr ma_sound_570426874;
                           flags: ma_uint32_570425831;
                           pGroup: ptr ma_sound_group_570426908;
                           pNotifications: ptr ma_sound_notifications_570426896;
                           pSound: ptr ma_sound_570426874): ma_result_570425879 {.
      cdecl, importc: "ma_sound_init_copy".}
else:
  static :
    hint("Declaration of " & "ma_sound_init_copy" &
        " already exists, not redeclaring")
when not declared(ma_sound_init_from_data_source):
  proc ma_sound_init_from_data_source*(pEngine: ptr ma_engine_570426870;
                                       pDataSource: pointer; flags: ma_uint32_570425831;
                                       pGroup: ptr ma_sound_group_570426908;
      pNotifications: ptr ma_sound_notifications_570426896; pSound: ptr ma_sound_570426874): ma_result_570425879 {.
      cdecl, importc: "ma_sound_init_from_data_source".}
else:
  static :
    hint("Declaration of " & "ma_sound_init_from_data_source" &
        " already exists, not redeclaring")
when not declared(ma_sound_init_ex):
  proc ma_sound_init_ex*(pEngine: ptr ma_engine_570426870;
                         pConfig: ptr ma_sound_config_570426900;
                         pSound: ptr ma_sound_570426874): ma_result_570425879 {.
      cdecl, importc: "ma_sound_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_sound_init_ex" &
        " already exists, not redeclaring")
when not declared(ma_sound_uninit):
  proc ma_sound_uninit*(pSound: ptr ma_sound_570426874): void {.cdecl,
      importc: "ma_sound_uninit".}
else:
  static :
    hint("Declaration of " & "ma_sound_uninit" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_engine):
  proc ma_sound_get_engine*(pSound: ptr ma_sound_570426874): ptr ma_engine_570426870 {.
      cdecl, importc: "ma_sound_get_engine".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_engine" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_data_source):
  proc ma_sound_get_data_source*(pSound: ptr ma_sound_570426874): pointer {.
      cdecl, importc: "ma_sound_get_data_source".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_data_source" &
        " already exists, not redeclaring")
when not declared(ma_sound_start):
  proc ma_sound_start*(pSound: ptr ma_sound_570426874): ma_result_570425879 {.
      cdecl, importc: "ma_sound_start".}
else:
  static :
    hint("Declaration of " & "ma_sound_start" &
        " already exists, not redeclaring")
when not declared(ma_sound_stop):
  proc ma_sound_stop*(pSound: ptr ma_sound_570426874): ma_result_570425879 {.
      cdecl, importc: "ma_sound_stop".}
else:
  static :
    hint("Declaration of " & "ma_sound_stop" &
        " already exists, not redeclaring")
when not declared(ma_sound_stop_with_fade_in_pcm_frames):
  proc ma_sound_stop_with_fade_in_pcm_frames*(pSound: ptr ma_sound_570426874;
      fadeLengthInFrames: ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_sound_stop_with_fade_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_stop_with_fade_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_stop_with_fade_in_milliseconds):
  proc ma_sound_stop_with_fade_in_milliseconds*(pSound: ptr ma_sound_570426874;
      fadeLengthInFrames: ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_sound_stop_with_fade_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_stop_with_fade_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_volume):
  proc ma_sound_set_volume*(pSound: ptr ma_sound_570426874; volume: cfloat): void {.
      cdecl, importc: "ma_sound_set_volume".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_volume" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_volume):
  proc ma_sound_get_volume*(pSound: ptr ma_sound_570426874): cfloat {.cdecl,
      importc: "ma_sound_get_volume".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_volume" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_pan):
  proc ma_sound_set_pan*(pSound: ptr ma_sound_570426874; pan: cfloat): void {.
      cdecl, importc: "ma_sound_set_pan".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_pan" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_pan):
  proc ma_sound_get_pan*(pSound: ptr ma_sound_570426874): cfloat {.cdecl,
      importc: "ma_sound_get_pan".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_pan" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_pan_mode):
  proc ma_sound_set_pan_mode*(pSound: ptr ma_sound_570426874;
                              panMode: ma_pan_mode_570426102): void {.cdecl,
      importc: "ma_sound_set_pan_mode".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_pan_mode" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_pan_mode):
  proc ma_sound_get_pan_mode*(pSound: ptr ma_sound_570426874): ma_pan_mode_570426102 {.
      cdecl, importc: "ma_sound_get_pan_mode".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_pan_mode" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_pitch):
  proc ma_sound_set_pitch*(pSound: ptr ma_sound_570426874; pitch: cfloat): void {.
      cdecl, importc: "ma_sound_set_pitch".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_pitch" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_pitch):
  proc ma_sound_get_pitch*(pSound: ptr ma_sound_570426874): cfloat {.cdecl,
      importc: "ma_sound_get_pitch".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_pitch" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_spatialization_enabled):
  proc ma_sound_set_spatialization_enabled*(pSound: ptr ma_sound_570426874;
      enabled: ma_bool32_570425841): void {.cdecl,
      importc: "ma_sound_set_spatialization_enabled".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_spatialization_enabled" &
        " already exists, not redeclaring")
when not declared(ma_sound_is_spatialization_enabled):
  proc ma_sound_is_spatialization_enabled*(pSound: ptr ma_sound_570426874): ma_bool32_570425841 {.
      cdecl, importc: "ma_sound_is_spatialization_enabled".}
else:
  static :
    hint("Declaration of " & "ma_sound_is_spatialization_enabled" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_pinned_listener_index):
  proc ma_sound_set_pinned_listener_index*(pSound: ptr ma_sound_570426874;
      listenerIndex: ma_uint32_570425831): void {.cdecl,
      importc: "ma_sound_set_pinned_listener_index".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_pinned_listener_index" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_pinned_listener_index):
  proc ma_sound_get_pinned_listener_index*(pSound: ptr ma_sound_570426874): ma_uint32_570425831 {.
      cdecl, importc: "ma_sound_get_pinned_listener_index".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_pinned_listener_index" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_listener_index):
  proc ma_sound_get_listener_index*(pSound: ptr ma_sound_570426874): ma_uint32_570425831 {.
      cdecl, importc: "ma_sound_get_listener_index".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_listener_index" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_direction_to_listener):
  proc ma_sound_get_direction_to_listener*(pSound: ptr ma_sound_570426874): ma_vec3f_570426122 {.
      cdecl, importc: "ma_sound_get_direction_to_listener".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_direction_to_listener" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_position):
  proc ma_sound_set_position*(pSound: ptr ma_sound_570426874; x: cfloat;
                              y: cfloat; z: cfloat): void {.cdecl,
      importc: "ma_sound_set_position".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_position" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_position):
  proc ma_sound_get_position*(pSound: ptr ma_sound_570426874): ma_vec3f_570426122 {.
      cdecl, importc: "ma_sound_get_position".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_position" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_direction):
  proc ma_sound_set_direction*(pSound: ptr ma_sound_570426874; x: cfloat;
                               y: cfloat; z: cfloat): void {.cdecl,
      importc: "ma_sound_set_direction".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_direction" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_direction):
  proc ma_sound_get_direction*(pSound: ptr ma_sound_570426874): ma_vec3f_570426122 {.
      cdecl, importc: "ma_sound_get_direction".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_direction" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_velocity):
  proc ma_sound_set_velocity*(pSound: ptr ma_sound_570426874; x: cfloat;
                              y: cfloat; z: cfloat): void {.cdecl,
      importc: "ma_sound_set_velocity".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_velocity" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_velocity):
  proc ma_sound_get_velocity*(pSound: ptr ma_sound_570426874): ma_vec3f_570426122 {.
      cdecl, importc: "ma_sound_get_velocity".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_velocity" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_attenuation_model):
  proc ma_sound_set_attenuation_model*(pSound: ptr ma_sound_570426874;
                                       attenuationModel: ma_attenuation_model_570426130): void {.
      cdecl, importc: "ma_sound_set_attenuation_model".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_attenuation_model" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_attenuation_model):
  proc ma_sound_get_attenuation_model*(pSound: ptr ma_sound_570426874): ma_attenuation_model_570426130 {.
      cdecl, importc: "ma_sound_get_attenuation_model".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_attenuation_model" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_positioning):
  proc ma_sound_set_positioning*(pSound: ptr ma_sound_570426874;
                                 positioning: ma_positioning_570426134): void {.
      cdecl, importc: "ma_sound_set_positioning".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_positioning" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_positioning):
  proc ma_sound_get_positioning*(pSound: ptr ma_sound_570426874): ma_positioning_570426134 {.
      cdecl, importc: "ma_sound_get_positioning".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_positioning" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_rolloff):
  proc ma_sound_set_rolloff*(pSound: ptr ma_sound_570426874; rolloff: cfloat): void {.
      cdecl, importc: "ma_sound_set_rolloff".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_rolloff" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_rolloff):
  proc ma_sound_get_rolloff*(pSound: ptr ma_sound_570426874): cfloat {.cdecl,
      importc: "ma_sound_get_rolloff".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_rolloff" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_min_gain):
  proc ma_sound_set_min_gain*(pSound: ptr ma_sound_570426874; minGain: cfloat): void {.
      cdecl, importc: "ma_sound_set_min_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_min_gain" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_min_gain):
  proc ma_sound_get_min_gain*(pSound: ptr ma_sound_570426874): cfloat {.cdecl,
      importc: "ma_sound_get_min_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_min_gain" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_max_gain):
  proc ma_sound_set_max_gain*(pSound: ptr ma_sound_570426874; maxGain: cfloat): void {.
      cdecl, importc: "ma_sound_set_max_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_max_gain" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_max_gain):
  proc ma_sound_get_max_gain*(pSound: ptr ma_sound_570426874): cfloat {.cdecl,
      importc: "ma_sound_get_max_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_max_gain" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_min_distance):
  proc ma_sound_set_min_distance*(pSound: ptr ma_sound_570426874;
                                  minDistance: cfloat): void {.cdecl,
      importc: "ma_sound_set_min_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_min_distance" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_min_distance):
  proc ma_sound_get_min_distance*(pSound: ptr ma_sound_570426874): cfloat {.
      cdecl, importc: "ma_sound_get_min_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_min_distance" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_max_distance):
  proc ma_sound_set_max_distance*(pSound: ptr ma_sound_570426874;
                                  maxDistance: cfloat): void {.cdecl,
      importc: "ma_sound_set_max_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_max_distance" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_max_distance):
  proc ma_sound_get_max_distance*(pSound: ptr ma_sound_570426874): cfloat {.
      cdecl, importc: "ma_sound_get_max_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_max_distance" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_cone):
  proc ma_sound_set_cone*(pSound: ptr ma_sound_570426874;
                          innerAngleInRadians: cfloat;
                          outerAngleInRadians: cfloat; outerGain: cfloat): void {.
      cdecl, importc: "ma_sound_set_cone".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_cone" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_cone):
  proc ma_sound_get_cone*(pSound: ptr ma_sound_570426874;
                          pInnerAngleInRadians: ptr cfloat;
                          pOuterAngleInRadians: ptr cfloat;
                          pOuterGain: ptr cfloat): void {.cdecl,
      importc: "ma_sound_get_cone".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_cone" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_doppler_factor):
  proc ma_sound_set_doppler_factor*(pSound: ptr ma_sound_570426874;
                                    dopplerFactor: cfloat): void {.cdecl,
      importc: "ma_sound_set_doppler_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_doppler_factor" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_doppler_factor):
  proc ma_sound_get_doppler_factor*(pSound: ptr ma_sound_570426874): cfloat {.
      cdecl, importc: "ma_sound_get_doppler_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_doppler_factor" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_directional_attenuation_factor):
  proc ma_sound_set_directional_attenuation_factor*(pSound: ptr ma_sound_570426874;
      directionalAttenuationFactor: cfloat): void {.cdecl,
      importc: "ma_sound_set_directional_attenuation_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_directional_attenuation_factor" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_directional_attenuation_factor):
  proc ma_sound_get_directional_attenuation_factor*(pSound: ptr ma_sound_570426874): cfloat {.
      cdecl, importc: "ma_sound_get_directional_attenuation_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_directional_attenuation_factor" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_fade_in_pcm_frames):
  proc ma_sound_set_fade_in_pcm_frames*(pSound: ptr ma_sound_570426874;
                                        volumeBeg: cfloat; volumeEnd: cfloat;
                                        fadeLengthInFrames: ma_uint64_570425835): void {.
      cdecl, importc: "ma_sound_set_fade_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_fade_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_fade_in_milliseconds):
  proc ma_sound_set_fade_in_milliseconds*(pSound: ptr ma_sound_570426874;
      volumeBeg: cfloat; volumeEnd: cfloat; fadeLengthInMilliseconds: ma_uint64_570425835): void {.
      cdecl, importc: "ma_sound_set_fade_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_fade_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_fade_start_in_pcm_frames):
  proc ma_sound_set_fade_start_in_pcm_frames*(pSound: ptr ma_sound_570426874;
      volumeBeg: cfloat; volumeEnd: cfloat; fadeLengthInFrames: ma_uint64_570425835;
      absoluteGlobalTimeInFrames: ma_uint64_570425835): void {.cdecl,
      importc: "ma_sound_set_fade_start_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_fade_start_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_fade_start_in_milliseconds):
  proc ma_sound_set_fade_start_in_milliseconds*(pSound: ptr ma_sound_570426874;
      volumeBeg: cfloat; volumeEnd: cfloat; fadeLengthInMilliseconds: ma_uint64_570425835;
      absoluteGlobalTimeInMilliseconds: ma_uint64_570425835): void {.cdecl,
      importc: "ma_sound_set_fade_start_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_fade_start_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_current_fade_volume):
  proc ma_sound_get_current_fade_volume*(pSound: ptr ma_sound_570426874): cfloat {.
      cdecl, importc: "ma_sound_get_current_fade_volume".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_current_fade_volume" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_start_time_in_pcm_frames):
  proc ma_sound_set_start_time_in_pcm_frames*(pSound: ptr ma_sound_570426874;
      absoluteGlobalTimeInFrames: ma_uint64_570425835): void {.cdecl,
      importc: "ma_sound_set_start_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_start_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_start_time_in_milliseconds):
  proc ma_sound_set_start_time_in_milliseconds*(pSound: ptr ma_sound_570426874;
      absoluteGlobalTimeInMilliseconds: ma_uint64_570425835): void {.cdecl,
      importc: "ma_sound_set_start_time_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_start_time_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_stop_time_in_pcm_frames):
  proc ma_sound_set_stop_time_in_pcm_frames*(pSound: ptr ma_sound_570426874;
      absoluteGlobalTimeInFrames: ma_uint64_570425835): void {.cdecl,
      importc: "ma_sound_set_stop_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_stop_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_stop_time_in_milliseconds):
  proc ma_sound_set_stop_time_in_milliseconds*(pSound: ptr ma_sound_570426874;
      absoluteGlobalTimeInMilliseconds: ma_uint64_570425835): void {.cdecl,
      importc: "ma_sound_set_stop_time_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_stop_time_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_stop_time_with_fade_in_pcm_frames):
  proc ma_sound_set_stop_time_with_fade_in_pcm_frames*(pSound: ptr ma_sound_570426874;
      stopAbsoluteGlobalTimeInFrames: ma_uint64_570425835;
      fadeLengthInFrames: ma_uint64_570425835): void {.cdecl,
      importc: "ma_sound_set_stop_time_with_fade_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_stop_time_with_fade_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_stop_time_with_fade_in_milliseconds):
  proc ma_sound_set_stop_time_with_fade_in_milliseconds*(pSound: ptr ma_sound_570426874;
      stopAbsoluteGlobalTimeInMilliseconds: ma_uint64_570425835;
      fadeLengthInMilliseconds: ma_uint64_570425835): void {.cdecl,
      importc: "ma_sound_set_stop_time_with_fade_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_stop_time_with_fade_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_is_playing):
  proc ma_sound_is_playing*(pSound: ptr ma_sound_570426874): ma_bool32_570425841 {.
      cdecl, importc: "ma_sound_is_playing".}
else:
  static :
    hint("Declaration of " & "ma_sound_is_playing" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_time_in_pcm_frames):
  proc ma_sound_get_time_in_pcm_frames*(pSound: ptr ma_sound_570426874): ma_uint64_570425835 {.
      cdecl, importc: "ma_sound_get_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_time_in_milliseconds):
  proc ma_sound_get_time_in_milliseconds*(pSound: ptr ma_sound_570426874): ma_uint64_570425835 {.
      cdecl, importc: "ma_sound_get_time_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_time_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_looping):
  proc ma_sound_set_looping*(pSound: ptr ma_sound_570426874;
                             isLooping: ma_bool32_570425841): void {.cdecl,
      importc: "ma_sound_set_looping".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_looping" &
        " already exists, not redeclaring")
when not declared(ma_sound_is_looping):
  proc ma_sound_is_looping*(pSound: ptr ma_sound_570426874): ma_bool32_570425841 {.
      cdecl, importc: "ma_sound_is_looping".}
else:
  static :
    hint("Declaration of " & "ma_sound_is_looping" &
        " already exists, not redeclaring")
when not declared(ma_sound_at_end):
  proc ma_sound_at_end*(pSound: ptr ma_sound_570426874): ma_bool32_570425841 {.
      cdecl, importc: "ma_sound_at_end".}
else:
  static :
    hint("Declaration of " & "ma_sound_at_end" &
        " already exists, not redeclaring")
when not declared(ma_sound_seek_to_pcm_frame):
  proc ma_sound_seek_to_pcm_frame*(pSound: ptr ma_sound_570426874;
                                   frameIndex: ma_uint64_570425835): ma_result_570425879 {.
      cdecl, importc: "ma_sound_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_sound_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_sound_seek_to_second):
  proc ma_sound_seek_to_second*(pSound: ptr ma_sound_570426874;
                                seekPointInSeconds: cfloat): ma_result_570425879 {.
      cdecl, importc: "ma_sound_seek_to_second".}
else:
  static :
    hint("Declaration of " & "ma_sound_seek_to_second" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_data_format):
  proc ma_sound_get_data_format*(pSound: ptr ma_sound_570426874;
                                 pFormat: ptr ma_format_570425895;
                                 pChannels: ptr ma_uint32_570425831;
                                 pSampleRate: ptr ma_uint32_570425831;
                                 pChannelMap: ptr ma_channel_570425871;
                                 channelMapCap: csize_t): ma_result_570425879 {.
      cdecl, importc: "ma_sound_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_data_format" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_cursor_in_pcm_frames):
  proc ma_sound_get_cursor_in_pcm_frames*(pSound: ptr ma_sound_570426874;
      pCursor: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_sound_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_length_in_pcm_frames):
  proc ma_sound_get_length_in_pcm_frames*(pSound: ptr ma_sound_570426874;
      pLength: ptr ma_uint64_570425835): ma_result_570425879 {.cdecl,
      importc: "ma_sound_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_cursor_in_seconds):
  proc ma_sound_get_cursor_in_seconds*(pSound: ptr ma_sound_570426874;
                                       pCursor: ptr cfloat): ma_result_570425879 {.
      cdecl, importc: "ma_sound_get_cursor_in_seconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_cursor_in_seconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_length_in_seconds):
  proc ma_sound_get_length_in_seconds*(pSound: ptr ma_sound_570426874;
                                       pLength: ptr cfloat): ma_result_570425879 {.
      cdecl, importc: "ma_sound_get_length_in_seconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_length_in_seconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_init):
  proc ma_sound_group_init*(pEngine: ptr ma_engine_570426870; flags: ma_uint32_570425831;
                            pParentGroup: ptr ma_sound_group_570426908;
                            pGroup: ptr ma_sound_group_570426908): ma_result_570425879 {.
      cdecl, importc: "ma_sound_group_init".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_init" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_init_ex):
  proc ma_sound_group_init_ex*(pEngine: ptr ma_engine_570426870;
                               pConfig: ptr ma_sound_group_config_570426906;
                               pGroup: ptr ma_sound_group_570426908): ma_result_570425879 {.
      cdecl, importc: "ma_sound_group_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_init_ex" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_uninit):
  proc ma_sound_group_uninit*(pGroup: ptr ma_sound_group_570426908): void {.
      cdecl, importc: "ma_sound_group_uninit".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_uninit" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_engine):
  proc ma_sound_group_get_engine*(pGroup: ptr ma_sound_group_570426908): ptr ma_engine_570426870 {.
      cdecl, importc: "ma_sound_group_get_engine".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_engine" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_start):
  proc ma_sound_group_start*(pGroup: ptr ma_sound_group_570426908): ma_result_570425879 {.
      cdecl, importc: "ma_sound_group_start".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_start" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_stop):
  proc ma_sound_group_stop*(pGroup: ptr ma_sound_group_570426908): ma_result_570425879 {.
      cdecl, importc: "ma_sound_group_stop".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_stop" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_volume):
  proc ma_sound_group_set_volume*(pGroup: ptr ma_sound_group_570426908;
                                  volume: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_volume".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_volume" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_volume):
  proc ma_sound_group_get_volume*(pGroup: ptr ma_sound_group_570426908): cfloat {.
      cdecl, importc: "ma_sound_group_get_volume".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_volume" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_pan):
  proc ma_sound_group_set_pan*(pGroup: ptr ma_sound_group_570426908; pan: cfloat): void {.
      cdecl, importc: "ma_sound_group_set_pan".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_pan" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_pan):
  proc ma_sound_group_get_pan*(pGroup: ptr ma_sound_group_570426908): cfloat {.
      cdecl, importc: "ma_sound_group_get_pan".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_pan" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_pan_mode):
  proc ma_sound_group_set_pan_mode*(pGroup: ptr ma_sound_group_570426908;
                                    panMode: ma_pan_mode_570426102): void {.
      cdecl, importc: "ma_sound_group_set_pan_mode".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_pan_mode" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_pan_mode):
  proc ma_sound_group_get_pan_mode*(pGroup: ptr ma_sound_group_570426908): ma_pan_mode_570426102 {.
      cdecl, importc: "ma_sound_group_get_pan_mode".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_pan_mode" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_pitch):
  proc ma_sound_group_set_pitch*(pGroup: ptr ma_sound_group_570426908;
                                 pitch: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_pitch".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_pitch" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_pitch):
  proc ma_sound_group_get_pitch*(pGroup: ptr ma_sound_group_570426908): cfloat {.
      cdecl, importc: "ma_sound_group_get_pitch".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_pitch" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_spatialization_enabled):
  proc ma_sound_group_set_spatialization_enabled*(pGroup: ptr ma_sound_group_570426908;
      enabled: ma_bool32_570425841): void {.cdecl,
      importc: "ma_sound_group_set_spatialization_enabled".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_spatialization_enabled" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_is_spatialization_enabled):
  proc ma_sound_group_is_spatialization_enabled*(pGroup: ptr ma_sound_group_570426908): ma_bool32_570425841 {.
      cdecl, importc: "ma_sound_group_is_spatialization_enabled".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_is_spatialization_enabled" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_pinned_listener_index):
  proc ma_sound_group_set_pinned_listener_index*(pGroup: ptr ma_sound_group_570426908;
      listenerIndex: ma_uint32_570425831): void {.cdecl,
      importc: "ma_sound_group_set_pinned_listener_index".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_pinned_listener_index" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_pinned_listener_index):
  proc ma_sound_group_get_pinned_listener_index*(pGroup: ptr ma_sound_group_570426908): ma_uint32_570425831 {.
      cdecl, importc: "ma_sound_group_get_pinned_listener_index".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_pinned_listener_index" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_listener_index):
  proc ma_sound_group_get_listener_index*(pGroup: ptr ma_sound_group_570426908): ma_uint32_570425831 {.
      cdecl, importc: "ma_sound_group_get_listener_index".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_listener_index" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_direction_to_listener):
  proc ma_sound_group_get_direction_to_listener*(pGroup: ptr ma_sound_group_570426908): ma_vec3f_570426122 {.
      cdecl, importc: "ma_sound_group_get_direction_to_listener".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_direction_to_listener" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_position):
  proc ma_sound_group_set_position*(pGroup: ptr ma_sound_group_570426908;
                                    x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_sound_group_set_position".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_position" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_position):
  proc ma_sound_group_get_position*(pGroup: ptr ma_sound_group_570426908): ma_vec3f_570426122 {.
      cdecl, importc: "ma_sound_group_get_position".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_position" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_direction):
  proc ma_sound_group_set_direction*(pGroup: ptr ma_sound_group_570426908;
                                     x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_sound_group_set_direction".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_direction" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_direction):
  proc ma_sound_group_get_direction*(pGroup: ptr ma_sound_group_570426908): ma_vec3f_570426122 {.
      cdecl, importc: "ma_sound_group_get_direction".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_direction" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_velocity):
  proc ma_sound_group_set_velocity*(pGroup: ptr ma_sound_group_570426908;
                                    x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_sound_group_set_velocity".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_velocity" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_velocity):
  proc ma_sound_group_get_velocity*(pGroup: ptr ma_sound_group_570426908): ma_vec3f_570426122 {.
      cdecl, importc: "ma_sound_group_get_velocity".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_velocity" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_attenuation_model):
  proc ma_sound_group_set_attenuation_model*(pGroup: ptr ma_sound_group_570426908;
      attenuationModel: ma_attenuation_model_570426130): void {.cdecl,
      importc: "ma_sound_group_set_attenuation_model".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_attenuation_model" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_attenuation_model):
  proc ma_sound_group_get_attenuation_model*(pGroup: ptr ma_sound_group_570426908): ma_attenuation_model_570426130 {.
      cdecl, importc: "ma_sound_group_get_attenuation_model".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_attenuation_model" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_positioning):
  proc ma_sound_group_set_positioning*(pGroup: ptr ma_sound_group_570426908;
                                       positioning: ma_positioning_570426134): void {.
      cdecl, importc: "ma_sound_group_set_positioning".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_positioning" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_positioning):
  proc ma_sound_group_get_positioning*(pGroup: ptr ma_sound_group_570426908): ma_positioning_570426134 {.
      cdecl, importc: "ma_sound_group_get_positioning".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_positioning" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_rolloff):
  proc ma_sound_group_set_rolloff*(pGroup: ptr ma_sound_group_570426908;
                                   rolloff: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_rolloff".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_rolloff" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_rolloff):
  proc ma_sound_group_get_rolloff*(pGroup: ptr ma_sound_group_570426908): cfloat {.
      cdecl, importc: "ma_sound_group_get_rolloff".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_rolloff" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_min_gain):
  proc ma_sound_group_set_min_gain*(pGroup: ptr ma_sound_group_570426908;
                                    minGain: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_min_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_min_gain" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_min_gain):
  proc ma_sound_group_get_min_gain*(pGroup: ptr ma_sound_group_570426908): cfloat {.
      cdecl, importc: "ma_sound_group_get_min_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_min_gain" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_max_gain):
  proc ma_sound_group_set_max_gain*(pGroup: ptr ma_sound_group_570426908;
                                    maxGain: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_max_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_max_gain" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_max_gain):
  proc ma_sound_group_get_max_gain*(pGroup: ptr ma_sound_group_570426908): cfloat {.
      cdecl, importc: "ma_sound_group_get_max_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_max_gain" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_min_distance):
  proc ma_sound_group_set_min_distance*(pGroup: ptr ma_sound_group_570426908;
                                        minDistance: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_min_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_min_distance" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_min_distance):
  proc ma_sound_group_get_min_distance*(pGroup: ptr ma_sound_group_570426908): cfloat {.
      cdecl, importc: "ma_sound_group_get_min_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_min_distance" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_max_distance):
  proc ma_sound_group_set_max_distance*(pGroup: ptr ma_sound_group_570426908;
                                        maxDistance: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_max_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_max_distance" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_max_distance):
  proc ma_sound_group_get_max_distance*(pGroup: ptr ma_sound_group_570426908): cfloat {.
      cdecl, importc: "ma_sound_group_get_max_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_max_distance" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_cone):
  proc ma_sound_group_set_cone*(pGroup: ptr ma_sound_group_570426908;
                                innerAngleInRadians: cfloat;
                                outerAngleInRadians: cfloat; outerGain: cfloat): void {.
      cdecl, importc: "ma_sound_group_set_cone".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_cone" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_cone):
  proc ma_sound_group_get_cone*(pGroup: ptr ma_sound_group_570426908;
                                pInnerAngleInRadians: ptr cfloat;
                                pOuterAngleInRadians: ptr cfloat;
                                pOuterGain: ptr cfloat): void {.cdecl,
      importc: "ma_sound_group_get_cone".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_cone" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_doppler_factor):
  proc ma_sound_group_set_doppler_factor*(pGroup: ptr ma_sound_group_570426908;
      dopplerFactor: cfloat): void {.cdecl, importc: "ma_sound_group_set_doppler_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_doppler_factor" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_doppler_factor):
  proc ma_sound_group_get_doppler_factor*(pGroup: ptr ma_sound_group_570426908): cfloat {.
      cdecl, importc: "ma_sound_group_get_doppler_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_doppler_factor" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_directional_attenuation_factor):
  proc ma_sound_group_set_directional_attenuation_factor*(
      pGroup: ptr ma_sound_group_570426908; directionalAttenuationFactor: cfloat): void {.
      cdecl, importc: "ma_sound_group_set_directional_attenuation_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_directional_attenuation_factor" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_directional_attenuation_factor):
  proc ma_sound_group_get_directional_attenuation_factor*(
      pGroup: ptr ma_sound_group_570426908): cfloat {.cdecl,
      importc: "ma_sound_group_get_directional_attenuation_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_directional_attenuation_factor" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_fade_in_pcm_frames):
  proc ma_sound_group_set_fade_in_pcm_frames*(pGroup: ptr ma_sound_group_570426908;
      volumeBeg: cfloat; volumeEnd: cfloat; fadeLengthInFrames: ma_uint64_570425835): void {.
      cdecl, importc: "ma_sound_group_set_fade_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_fade_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_fade_in_milliseconds):
  proc ma_sound_group_set_fade_in_milliseconds*(pGroup: ptr ma_sound_group_570426908;
      volumeBeg: cfloat; volumeEnd: cfloat; fadeLengthInMilliseconds: ma_uint64_570425835): void {.
      cdecl, importc: "ma_sound_group_set_fade_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_fade_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_current_fade_volume):
  proc ma_sound_group_get_current_fade_volume*(pGroup: ptr ma_sound_group_570426908): cfloat {.
      cdecl, importc: "ma_sound_group_get_current_fade_volume".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_current_fade_volume" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_start_time_in_pcm_frames):
  proc ma_sound_group_set_start_time_in_pcm_frames*(pGroup: ptr ma_sound_group_570426908;
      absoluteGlobalTimeInFrames: ma_uint64_570425835): void {.cdecl,
      importc: "ma_sound_group_set_start_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_start_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_start_time_in_milliseconds):
  proc ma_sound_group_set_start_time_in_milliseconds*(
      pGroup: ptr ma_sound_group_570426908;
      absoluteGlobalTimeInMilliseconds: ma_uint64_570425835): void {.cdecl,
      importc: "ma_sound_group_set_start_time_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_start_time_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_stop_time_in_pcm_frames):
  proc ma_sound_group_set_stop_time_in_pcm_frames*(pGroup: ptr ma_sound_group_570426908;
      absoluteGlobalTimeInFrames: ma_uint64_570425835): void {.cdecl,
      importc: "ma_sound_group_set_stop_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_stop_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_stop_time_in_milliseconds):
  proc ma_sound_group_set_stop_time_in_milliseconds*(pGroup: ptr ma_sound_group_570426908;
      absoluteGlobalTimeInMilliseconds: ma_uint64_570425835): void {.cdecl,
      importc: "ma_sound_group_set_stop_time_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_stop_time_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_is_playing):
  proc ma_sound_group_is_playing*(pGroup: ptr ma_sound_group_570426908): ma_bool32_570425841 {.
      cdecl, importc: "ma_sound_group_is_playing".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_is_playing" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_time_in_pcm_frames):
  proc ma_sound_group_get_time_in_pcm_frames*(pGroup: ptr ma_sound_group_570426908): ma_uint64_570425835 {.
      cdecl, importc: "ma_sound_group_get_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_time_in_pcm_frames" &
        " already exists, not redeclaring")