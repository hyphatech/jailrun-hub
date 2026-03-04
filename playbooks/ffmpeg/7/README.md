# FFmpeg 7

Multimedia framework for decoding/encoding/transcoding audio & video.

## jrun example

```ucl
jail "hypha-ffmpeg7" {
  setup {
    ffmpeg7 {
      type = "ansible";
      url  = "https://github.com/hyphatech/jailrun-hub/blob/main/playbooks/ffmpeg/7/playbook.yml";
    }
  }
}
```

## Variables

None.
