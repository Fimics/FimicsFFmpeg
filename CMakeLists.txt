cmake_minimum_required(VERSION 3.19)
project(FimicsFFmpeg)

set(CMAKE_CXX_STANDARD 14)

set(SOURCE_FILES main.cpp)

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
