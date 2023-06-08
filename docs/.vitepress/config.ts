import { defineConfig } from 'vitepress'

// https://vitepress.dev/reference/site-config
export default defineConfig({
  title: 'ffmpeg-nvenc-static',
  description: 'ffmpeg-nvenc-static is a repository that provides a statically compiled version of FFmpeg with NVIDIA NVENC support. This version of FFmpeg allows you to leverage the hardware-accelerated video encoding capabilities of NVIDIA GPUs through NVENC.',
  base: '/ffmpeg-nvenc-static/',
  themeConfig: {
    outline: [2, 3],
    socialLinks: [
      { icon: 'github', link: 'https://github.com/HiWay-Media/ffmpeg-nvenc-static' },
    ],
    sidebar: [
      { text: 'Introduction', link: '/' },
      { text: 'Getting started', link: '/getting-started' },
    ],
  },
})