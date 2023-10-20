module VideosHelper
    def extract_youtube_video_id(url)
      if url =~ /youtube\.com\/watch\?v=(\w+)/
        return $1
      elsif url =~ /youtu\.be\/(\w+)/
        return $1
      end
      return nil
    end
  end