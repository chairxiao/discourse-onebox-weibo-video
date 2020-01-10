# frozen_string_literal: true

# name: discourse-onebox-weibo-video
# about: For generating pretty oneboxes for xinhuanet.com
# version: 0.1
# authors: dengzi

Onebox = Onebox

module Onebox
  module Engine
    class WeiboOneVideobox
include Engine
include StandardEmbed

always_https
matches_regexp(/^(https?:\/\/)?video\.h5\.weibo\.(com|cn)\/(.)+\/?$/)

WIDTH  ||= 480
HEIGHT ||= 360

def to_html

  <<~HTML
    <iframe src="https://video.h5.weibo.cn/1034:4458385865637891/4458386030157315"
            width="#{WIDTH}" 
            height="#{HEIGHT}"
            frameborder='0'
            webkitallowfullscreen
            mozallowfullscreen
            allowfullscreen >
    </iframe>
    
  HTML
end
end
end
end

