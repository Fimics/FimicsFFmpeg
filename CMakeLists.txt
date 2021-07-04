cmake_minimum_required(VERSION 3.19)
project(FimicsFFmpeg)

set(CMAKE_CXX_STANDARD 14)

set(SOURCE_FILES
       # main.cpp
        #---Fmpeg解封装+解码实战
       #buffer
#        src/ffmpeg/buffer/avframe.h
#        src/ffmpeg/buffer/avframe.c
#        src/ffmpeg/buffer/avpacket.h
#        src/ffmpeg/buffer/avpacket.c
#        src/ffmpeg/buffer/main_buffer.c

        #07-01-音视频解封装流程分析
#        src/ffmpeg/FfmpegDemux.c
        #7-02-AAC ADTS分析
        src/ffmpeg/AAC_ADTS.c
        )

link_directories(./FFmpeg/macox/lib/)
include_directories(./FFmpeg/macox/include/)

add_executable(FimicsFFmpeg ${SOURCE_FILES})

target_link_libraries(
        FimicsFFmpeg
        avcodec
        avdevice
        avfilter
        avformat
        avutil
        swresample
        swscale
)
