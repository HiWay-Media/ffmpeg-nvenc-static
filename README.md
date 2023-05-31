# ffmpeg-nvenc-static
[![FFmpeg Nvenc Build](https://github.com/HiWay-Media/ffmpeg-nvenc-static/actions/workflows/build.yml/badge.svg)](https://github.com/HiWay-Media/ffmpeg-nvenc-static/actions/workflows/build.yml)


ffmpeg-nvenc-static is a repository that provides a statically compiled version of FFmpeg with NVIDIA NVENC support. This version of FFmpeg allows you to leverage the hardware-accelerated video encoding capabilities of NVIDIA GPUs through NVENC.

## Description

This repository contains build scripts to compile FFmpeg with NVENC support statically. By using the statically compiled binary, you can easily incorporate FFmpeg with NVENC into your projects without the need for additional dependencies or runtime libraries.

## Features

- Statically compiled version of FFmpeg with NVENC support.
- Enables hardware-accelerated video encoding using NVIDIA GPUs.
- Easy integration into projects without runtime library dependencies.

## Prerequisites

Before using the FFmpeg-NVENC static build, ensure that you have the following installed on your system:

- Docker (if using the provided Dockerfile)
- NVIDIA GPU with NVENC support (Check the [official NVENC documentation](https://developer.nvidia.com/nvidia-video-codec-sdk#NVENCFeatures) for compatible GPUs)

## Usage

1. Clone this repository to your local machine:

```shell
git clone https://github.com/HiWay-Media/ffmpeg-nvenc-static.git
```

For more detailed instructions and examples, please refer to the documentation.

## Contributions
Contributions to the ffmpeg-nvenc-static repository are welcome! If you encounter any issues, have suggestions for improvements, or want to contribute enhancements, please open an issue or submit a pull request on the GitHub repository.

Please follow the existing code style and provide clear descriptions and documentation for any changes or additions.

## License
ffmpeg-nvenc-static is licensed under the MIT License.
